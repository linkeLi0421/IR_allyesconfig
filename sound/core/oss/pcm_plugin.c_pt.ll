; ModuleID = '/llk/IR_all_yes/sound/core/oss/pcm_plugin.c_pt.bc'
source_filename = "../sound/core/oss/pcm_plugin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_plugin = type { ptr, i32, %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [0 x i8] }
%struct.snd_pcm_plugin_format = type { i32, i32, i32 }
%struct.snd_pcm_plugin_channel = type { ptr, %struct.snd_pcm_channel_area, i32, i8 }
%struct.snd_pcm_channel_area = type { ptr, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/core/oss/pcm_plugin.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@preferred_formats = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 2, i32 3, i32 4, i32 5, i32 32, i32 33, i32 34, i32 35, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 0, i32 1], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 108, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 254, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"preferred_formats\00", align 1
@___asan_gen_.12 = private constant [31 x i8] c"../sound/core/oss/pcm_plugin.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 296, i32 31 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @preferred_formats], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preferred_formats to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plug_alloc(ptr nocapture noundef readonly %plug, i32 noundef %frames) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %plugin_first = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 18
  %2 = ptrtoint ptr %plugin_first to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plugin_first, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cleanup65

if.end23:                                         ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end23.while.cond_crit_edge, label %if.else

if.end23.while.cond_crit_edge:                    ; preds = %if.end23
  br label %while.cond

while.cond:                                       ; preds = %if.end35.while.cond_crit_edge, %if.end23.while.cond_crit_edge
  %frames.addr.0 = phi i32 [ %frames.addr.1, %if.end35.while.cond_crit_edge ], [ %frames, %if.end23.while.cond_crit_edge ]
  %plugin.0 = phi ptr [ %11, %if.end35.while.cond_crit_edge ], [ %3, %if.end23.while.cond_crit_edge ]
  %next = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.0, i32 0, i32 13
  %6 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next, align 4
  %tobool28.not = icmp eq ptr %7, null
  br i1 %tobool28.not, label %while.cond.cleanup65_crit_edge, label %while.body

while.cond.cleanup65_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup65

while.body:                                       ; preds = %while.cond
  %dst_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.0, i32 0, i32 8
  %8 = ptrtoint ptr %dst_frames to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst_frames, align 4
  %tobool29.not = icmp eq ptr %9, null
  br i1 %tobool29.not, label %while.body.if.end32_crit_edge, label %if.then30

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %9(ptr noundef %plugin.0, i32 noundef %frames.addr.0) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %while.body.if.end32_crit_edge
  %frames.addr.1 = phi i32 [ %call, %if.then30 ], [ %frames.addr.0, %while.body.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frames.addr.1)
  %cmp33 = icmp slt i32 %frames.addr.1, 1
  br i1 %cmp33, label %if.end32.cleanup65_crit_edge, label %if.end35

if.end32.cleanup65_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup65

if.end35:                                         ; preds = %if.end32
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next, align 4
  %call37 = tail call fastcc i32 @snd_pcm_plugin_alloc(ptr noundef %11, i32 noundef %frames.addr.1)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end35.cleanup65_crit_edge, label %if.end35.while.cond_crit_edge

if.end35.while.cond_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end35.cleanup65_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup65

if.else:                                          ; preds = %if.end23
  %plugin_last = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 59, i32 19
  %12 = ptrtoint ptr %plugin_last to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plugin_last, align 4
  br label %while.cond44

while.cond44:                                     ; preds = %if.end54.while.cond44_crit_edge, %if.else
  %frames.addr.2 = phi i32 [ %frames, %if.else ], [ %frames.addr.3, %if.end54.while.cond44_crit_edge ]
  %plugin41.0 = phi ptr [ %13, %if.else ], [ %19, %if.end54.while.cond44_crit_edge ]
  %prev = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin41.0, i32 0, i32 12
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev, align 4
  %tobool45.not = icmp eq ptr %15, null
  br i1 %tobool45.not, label %while.cond44.cleanup65_crit_edge, label %while.body46

while.cond44.cleanup65_crit_edge:                 ; preds = %while.cond44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup65

while.body46:                                     ; preds = %while.cond44
  %src_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin41.0, i32 0, i32 7
  %16 = ptrtoint ptr %src_frames to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src_frames, align 4
  %tobool47.not = icmp eq ptr %17, null
  br i1 %tobool47.not, label %while.body46.if.end51_crit_edge, label %if.then48

while.body46.if.end51_crit_edge:                  ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then48:                                        ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 %17(ptr noundef %plugin41.0, i32 noundef %frames.addr.2) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %while.body46.if.end51_crit_edge
  %frames.addr.3 = phi i32 [ %call50, %if.then48 ], [ %frames.addr.2, %while.body46.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frames.addr.3)
  %cmp52 = icmp slt i32 %frames.addr.3, 1
  br i1 %cmp52, label %if.end51.cleanup65_crit_edge, label %if.end54

if.end51.cleanup65_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup65

if.end54:                                         ; preds = %if.end51
  %18 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev, align 4
  %call56 = tail call fastcc i32 @snd_pcm_plugin_alloc(ptr noundef %19, i32 noundef %frames.addr.3)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end54.cleanup65_crit_edge, label %if.end54.while.cond44_crit_edge

if.end54.while.cond44_crit_edge:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond44

if.end54.cleanup65_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup65

cleanup65:                                        ; preds = %if.end54.cleanup65_crit_edge, %if.end51.cleanup65_crit_edge, %while.cond44.cleanup65_crit_edge, %if.end35.cleanup65_crit_edge, %if.end32.cleanup65_crit_edge, %while.cond.cleanup65_crit_edge, %do.end
  %retval.2 = phi i32 [ -6, %do.end ], [ -6, %if.end32.cleanup65_crit_edge ], [ %call37, %if.end35.cleanup65_crit_edge ], [ 0, %while.cond.cleanup65_crit_edge ], [ -6, %if.end51.cleanup65_crit_edge ], [ %call56, %if.end54.cleanup65_crit_edge ], [ 0, %while.cond44.cleanup65_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_pcm_plugin_alloc(ptr nocapture noundef %plugin, i32 noundef %frames) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %src_format = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2
  %dst_format = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3
  %format.0 = select i1 %cmp, ptr %src_format, ptr %dst_format
  %2 = ptrtoint ptr %format.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format.0, align 4
  %call = tail call i32 @snd_pcm_format_physical_width(i32 noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %channels = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %format.0, i32 0, i32 2
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels, align 4
  %mul = mul i32 %call, %frames
  %mul5 = mul i32 %mul, %5
  %rem = and i32 %mul5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end29, label %do.end, !prof !16

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end4
  %div182 = lshr i32 %mul5, 3
  %buf_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 18
  %6 = ptrtoint ptr %buf_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %frames)
  %cmp30 = icmp ult i32 %7, %frames
  br i1 %cmp30, label %if.then31, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %buf = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 17
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  tail call void @kvfree(ptr noundef %9) #6
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %div182, i32 noundef 3520, i32 noundef -1) #9
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %buf, align 4
  %11 = ptrtoint ptr %buf_frames to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %frames, ptr %buf_frames, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end29.if.end35_crit_edge
  %buf36 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 17
  %12 = ptrtoint ptr %buf36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf36, align 4
  %tobool37.not = icmp eq ptr %13, null
  br i1 %tobool37.not, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %buf_frames to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %buf_frames, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %buf_channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 19
  %15 = ptrtoint ptr %buf_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf_channels, align 4
  %access = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 6
  %17 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %access, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.end40.cleanup_crit_edge [
    i32 3, label %for.cond.preheader
    i32 4, label %if.then58
  ]

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end40
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp44187.not = icmp eq i32 %21, 0
  br i1 %cmp44187.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %c.0189 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %16, %for.cond.preheader.for.body_crit_edge ]
  %channel.0188 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %frames45 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %c.0189, i32 0, i32 2
  %22 = ptrtoint ptr %frames45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %frames, ptr %frames45, align 4
  %enabled = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %c.0189, i32 0, i32 3
  %23 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %enabled, align 4
  %bf.set = and i8 %bf.load, 63
  %bf.clear47 = or i8 %bf.set, -128
  store i8 %bf.clear47, ptr %enabled, align 4
  %24 = ptrtoint ptr %buf36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf36, align 4
  %area = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %c.0189, i32 0, i32 1
  %26 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %area, align 4
  %mul50 = mul i32 %channel.0188, %call
  %first = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %c.0189, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul50, ptr %first, align 4
  %28 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channels, align 4
  %mul53 = mul i32 %29, %call
  %step = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %c.0189, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul53, ptr %step, align 4
  %inc = add nuw i32 %channel.0188, 1
  %incdec.ptr = getelementptr %struct.snd_pcm_plugin_channel, ptr %c.0189, i32 1
  %31 = load i32, ptr %channels, align 4
  %cmp44 = icmp ult i32 %inc, %31
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then58:                                        ; preds = %if.end40
  %32 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channels, align 4
  %div182.frozen = freeze i32 %div182
  %.frozen = freeze i32 %33
  %div96 = udiv i32 %div182.frozen, %.frozen
  %34 = mul i32 %div96, %.frozen
  %rem61.decomposed = sub i32 %div182.frozen, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem61.decomposed)
  %tobool62.not = icmp eq i32 %rem61.decomposed, 0
  br i1 %tobool62.not, label %if.end94, label %do.end78, !prof !16

do.end78:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 89, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end94:                                         ; preds = %if.then58
  %35 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp99184.not = icmp eq i32 %36, 0
  br i1 %cmp99184.not, label %if.end94.cleanup_crit_edge, label %if.end94.for.body100_crit_edge

if.end94.for.body100_crit_edge:                   ; preds = %if.end94
  br label %for.body100

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body100:                                      ; preds = %for.body100.for.body100_crit_edge, %if.end94.for.body100_crit_edge
  %c.1186 = phi ptr [ %incdec.ptr120, %for.body100.for.body100_crit_edge ], [ %16, %if.end94.for.body100_crit_edge ]
  %channel.1185 = phi i32 [ %inc119, %for.body100.for.body100_crit_edge ], [ 0, %if.end94.for.body100_crit_edge ]
  %frames101 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %c.1186, i32 0, i32 2
  %37 = ptrtoint ptr %frames101 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %frames, ptr %frames101, align 4
  %enabled102 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %c.1186, i32 0, i32 3
  %38 = ptrtoint ptr %enabled102 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load103 = load i8, ptr %enabled102, align 4
  %bf.set105 = and i8 %bf.load103, 63
  %bf.clear108 = or i8 %bf.set105, -128
  store i8 %bf.clear108, ptr %enabled102, align 4
  %39 = ptrtoint ptr %buf36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf36, align 4
  %mul111 = mul i32 %channel.1185, %div96
  %add.ptr = getelementptr i8, ptr %40, i32 %mul111
  %area112 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %c.1186, i32 0, i32 1
  %41 = ptrtoint ptr %area112 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr, ptr %area112, align 4
  %first115 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %c.1186, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %first115 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %first115, align 4
  %step117 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %c.1186, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %step117 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call, ptr %step117, align 4
  %inc119 = add nuw i32 %channel.1185, 1
  %incdec.ptr120 = getelementptr %struct.snd_pcm_plugin_channel, ptr %c.1186, i32 1
  %44 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channels, align 4
  %cmp99 = icmp ult i32 %inc119, %45
  br i1 %cmp99, label %for.body100.for.body100_crit_edge, label %for.body100.cleanup_crit_edge

for.body100.cleanup_crit_edge:                    ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body100.for.body100_crit_edge:                ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body100

cleanup:                                          ; preds = %for.body100.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %do.end78, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then38, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ -22, %do.end78 ], [ -12, %if.then38 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end94.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 0, %for.body100.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_pcm_plugin_client_channels(ptr nocapture noundef readonly %plugin, i32 noundef returned %frames, ptr nocapture noundef writeonly %channels) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 19
  %0 = ptrtoint ptr %buf_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_channels, align 4
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %channels, align 4
  ret i32 %frames
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plugin_build(ptr noundef %plug, ptr noundef %name, ptr noundef readonly %src_format, ptr noundef readonly %dst_format, i32 noundef %extra, ptr nocapture noundef writeonly %ret) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plug, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 157, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %tobool25.not = icmp eq ptr %src_format, null
  %tobool26.not = icmp eq ptr %dst_format, null
  %spec.select = or i1 %tobool25.not, %tobool26.not
  br i1 %spec.select, label %do.end44, label %if.end8.i.i, !prof !15

do.end44:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end23
  %add = add i32 %extra, 96
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %if.end8.i.i.cleanup_crit_edge, label %if.end62

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %if.end8.i.i
  %0 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %name, ptr %call9.i.i, align 128
  %plug64 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 14
  %1 = ptrtoint ptr %plug64 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %plug, ptr %plug64, align 8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 5
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream, align 4
  %stream65 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %stream65 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %stream65, align 4
  %access = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %access, align 8
  %src_format66 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %src_format66, ptr %src_format, i32 12)
  %7 = ptrtoint ptr %src_format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src_format, align 4
  %call67 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %8) #6
  %src_width = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %src_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call67, ptr %src_width, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67)
  %cmp70 = icmp slt i32 %call67, 1
  br i1 %cmp70, label %do.end86, label %if.end62.if.end92_crit_edge, !prof !15

if.end62.if.end92_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

do.end86:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef null) #6
  br label %if.end92

if.end92:                                         ; preds = %do.end86, %if.end62.if.end92_crit_edge
  %dst_format100 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %dst_format100, ptr %dst_format, i32 12)
  %11 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst_format, align 4
  %call102 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %12) #6
  %dst_width = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %dst_width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call102, ptr %dst_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call102)
  %cmp105 = icmp slt i32 %call102, 1
  br i1 %cmp105, label %do.end121, label %if.end92.if.end127_crit_edge, !prof !15

if.end92.if.end127_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

do.end121:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 173, i32 noundef 9, ptr noundef null) #6
  br label %if.end127

if.end127:                                        ; preds = %do.end121, %if.end92.if.end127_crit_edge
  %14 = ptrtoint ptr %stream65 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp136 = icmp eq i32 %15, 0
  %src_format.dst_format = select i1 %cmp136, ptr %src_format, ptr %dst_format
  %channels.0.in = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %src_format.dst_format, i32 0, i32 2
  %16 = ptrtoint ptr %channels.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %channels.0 = load i32, ptr %channels.0.in, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %channels.0, i32 24) #6
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !15

kcalloc.exit.thread:                              ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  %buf_channels185 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %buf_channels185 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %buf_channels185, align 4
  br label %if.end.i

if.end7.i.i:                                      ; preds = %if.end127
  %20 = extractvalue { i32, i1 } %17, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #9
  %buf_channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 19
  %21 = ptrtoint ptr %buf_channels to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i, ptr %buf_channels, align 4
  %cmp143 = icmp eq ptr %call8.i.i, null
  br i1 %cmp143, label %if.end7.i.i.if.end.i_crit_edge, label %if.end146

if.end7.i.i.if.end.i_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end7.i.i.if.end.i_crit_edge, %kcalloc.exit.thread
  %buf_channels187 = phi ptr [ %buf_channels185, %kcalloc.exit.thread ], [ %buf_channels, %if.end7.i.i.if.end.i_crit_edge ]
  %private_free.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private_free.i, align 16
  %tobool1.not.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i, label %if.end.i.snd_pcm_plugin_free.exit_crit_edge, label %if.then2.i

if.end.i.snd_pcm_plugin_free.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_pcm_plugin_free.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %23(ptr noundef nonnull %call9.i.i) #6
  br label %snd_pcm_plugin_free.exit

snd_pcm_plugin_free.exit:                         ; preds = %if.then2.i, %if.end.i.snd_pcm_plugin_free.exit_crit_edge
  %24 = ptrtoint ptr %buf_channels187 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf_channels187, align 4
  tail call void @kfree(ptr noundef %25) #6
  %buf.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 17
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf.i, align 4
  tail call void @kvfree(ptr noundef %27) #6
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

if.end146:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %client_channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %call9.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %client_channels to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @snd_pcm_plugin_client_channels, ptr %client_channels, align 4
  %29 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end146, %snd_pcm_plugin_free.exit, %if.end8.i.i.cleanup_crit_edge, %do.end44, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end44 ], [ -12, %snd_pcm_plugin_free.exit ], [ 0, %if.end146 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plugin_free(ptr noundef %plugin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plugin, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %private_free = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 16
  %0 = ptrtoint ptr %private_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_free, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %1(ptr noundef nonnull %plugin) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %buf_channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 19
  %2 = ptrtoint ptr %buf_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_channels, align 4
  tail call void @kfree(ptr noundef %3) #6
  %buf = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 17
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  tail call void @kvfree(ptr noundef %5) #6
  tail call void @kfree(ptr noundef nonnull %plugin) #6
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plug_client_size(ptr noundef readonly %plug, i32 noundef %drv_frames) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plug, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end23:                                         ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %1, label %do.end38 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end23
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 11
  %3 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime.i, align 4
  %plugin_last.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 59, i32 19
  %5 = ptrtoint ptr %plugin_last.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plugin_last.i, align 4
  %tobool.not29.i = icmp ne ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drv_frames)
  %cmp30.i = icmp sgt i32 %drv_frames, 0
  %or.cond31.i = and i1 %cmp30.i, %tobool.not29.i
  br i1 %or.cond31.i, label %sw.bb.while.body.i_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %plugin.033.i = phi ptr [ %8, %if.end5.i.while.body.i_crit_edge ], [ %6, %sw.bb.while.body.i_crit_edge ]
  %frames.addr.032.i = phi i32 [ %frames.addr.1.i, %if.end5.i.while.body.i_crit_edge ], [ %drv_frames, %sw.bb.while.body.i_crit_edge ]
  %prev.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.033.i, i32 0, i32 12
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %src_frames.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.033.i, i32 0, i32 7
  %9 = ptrtoint ptr %src_frames.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src_frames.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %while.body.i.if.end5.i_crit_edge, label %if.then.i

while.body.i.if.end5.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %while.body.i
  %call.i = tail call i32 %10(ptr noundef nonnull %plugin.033.i, i32 noundef %frames.addr.032.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i.return_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %while.body.i.if.end5.i_crit_edge
  %frames.addr.1.i = phi i32 [ %call.i, %if.then.i.if.end5.i_crit_edge ], [ %frames.addr.032.i, %while.body.i.if.end5.i_crit_edge ]
  %tobool.not.i = icmp ne ptr %8, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames.addr.1.i)
  %cmp.i = icmp sgt i32 %frames.addr.1.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end5.i.while.body.i_crit_edge, label %if.end5.i.return_crit_edge

if.end5.i.return_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

sw.bb24:                                          ; preds = %if.end23
  %runtime.i58 = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 11
  %11 = ptrtoint ptr %runtime.i58 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime.i58, align 4
  %plugin_first.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 59, i32 18
  %13 = ptrtoint ptr %plugin_first.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plugin_first.i, align 8
  %tobool.not1.i = icmp ne ptr %14, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drv_frames)
  %cmp2.i = icmp sgt i32 %drv_frames, 0
  %or.cond3.i = and i1 %cmp2.i, %tobool.not1.i
  br i1 %or.cond3.i, label %sw.bb24.while.body.i59_crit_edge, label %sw.bb24.return_crit_edge

sw.bb24.return_crit_edge:                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb24.while.body.i59_crit_edge:                 ; preds = %sw.bb24
  br label %while.body.i59

while.body.i59:                                   ; preds = %if.end13.i.while.body.i59_crit_edge, %sw.bb24.while.body.i59_crit_edge
  %plugin.05.i = phi ptr [ %16, %if.end13.i.while.body.i59_crit_edge ], [ %14, %sw.bb24.while.body.i59_crit_edge ]
  %frames.addr.04.i = phi i32 [ %frames.addr.2.i, %if.end13.i.while.body.i59_crit_edge ], [ %drv_frames, %sw.bb24.while.body.i59_crit_edge ]
  %next.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.05.i, i32 0, i32 13
  %15 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next.i, align 4
  %dst_frames.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.05.i, i32 0, i32 8
  %17 = ptrtoint ptr %dst_frames.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst_frames.i, align 4
  %tobool7.not.i = icmp eq ptr %18, null
  br i1 %tobool7.not.i, label %while.body.i59.if.end13.i_crit_edge, label %if.then8.i

while.body.i59.if.end13.i_crit_edge:              ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then8.i:                                       ; preds = %while.body.i59
  %call.i60 = tail call i32 %18(ptr noundef nonnull %plugin.05.i, i32 noundef %frames.addr.04.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp10.i = icmp slt i32 %call.i60, 0
  br i1 %cmp10.i, label %if.then8.i.return_crit_edge, label %if.then8.i.if.end13.i_crit_edge

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then8.i.return_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %while.body.i59.if.end13.i_crit_edge
  %frames.addr.2.i = phi i32 [ %call.i60, %if.then8.i.if.end13.i_crit_edge ], [ %frames.addr.04.i, %while.body.i59.if.end13.i_crit_edge ]
  %tobool.not.i61 = icmp ne ptr %16, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames.addr.2.i)
  %cmp.i62 = icmp sgt i32 %frames.addr.2.i, 0
  %or.cond.i63 = select i1 %tobool.not.i61, i1 %cmp.i62, i1 false
  br i1 %or.cond.i63, label %if.end13.i.while.body.i59_crit_edge, label %if.end13.i.return_crit_edge

if.end13.i.return_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end13.i.while.body.i59_crit_edge:              ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i59

do.end38:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 254, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %return

return:                                           ; preds = %do.end38, %if.end13.i.return_crit_edge, %if.then8.i.return_crit_edge, %sw.bb24.return_crit_edge, %if.end5.i.return_crit_edge, %if.then.i.return_crit_edge, %sw.bb.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -22, %do.end38 ], [ %drv_frames, %sw.bb.return_crit_edge ], [ %drv_frames, %sw.bb24.return_crit_edge ], [ %call.i, %if.then.i.return_crit_edge ], [ %frames.addr.1.i, %if.end5.i.return_crit_edge ], [ %call.i60, %if.then8.i.return_crit_edge ], [ %frames.addr.2.i, %if.end13.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plug_slave_size(ptr noundef readonly %plug, i32 noundef %clt_frames) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plug, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 261, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end23:                                         ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %do.end38 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end23
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 11
  %3 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime.i, align 4
  %plugin_first.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 59, i32 18
  %5 = ptrtoint ptr %plugin_first.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plugin_first.i, align 8
  %tobool.not1.i = icmp ne ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clt_frames)
  %cmp2.i = icmp sgt i32 %clt_frames, 0
  %or.cond3.i = and i1 %cmp2.i, %tobool.not1.i
  br i1 %or.cond3.i, label %sw.bb.while.body.i_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %plugin.05.i = phi ptr [ %8, %if.end13.i.while.body.i_crit_edge ], [ %6, %sw.bb.while.body.i_crit_edge ]
  %frames.addr.04.i = phi i32 [ %frames.addr.2.i, %if.end13.i.while.body.i_crit_edge ], [ %clt_frames, %sw.bb.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.05.i, i32 0, i32 13
  %7 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next.i, align 4
  %dst_frames.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.05.i, i32 0, i32 8
  %9 = ptrtoint ptr %dst_frames.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst_frames.i, align 4
  %tobool7.not.i = icmp eq ptr %10, null
  br i1 %tobool7.not.i, label %while.body.i.if.end13.i_crit_edge, label %if.then8.i

while.body.i.if.end13.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then8.i:                                       ; preds = %while.body.i
  %call.i = tail call i32 %10(ptr noundef nonnull %plugin.05.i, i32 noundef %frames.addr.04.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp slt i32 %call.i, 0
  br i1 %cmp10.i, label %if.then8.i.return_crit_edge, label %if.then8.i.if.end13.i_crit_edge

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then8.i.return_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %while.body.i.if.end13.i_crit_edge
  %frames.addr.2.i = phi i32 [ %call.i, %if.then8.i.if.end13.i_crit_edge ], [ %frames.addr.04.i, %while.body.i.if.end13.i_crit_edge ]
  %tobool.not.i = icmp ne ptr %8, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames.addr.2.i)
  %cmp.i = icmp sgt i32 %frames.addr.2.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end13.i.while.body.i_crit_edge, label %if.end13.i.return_crit_edge

if.end13.i.return_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

sw.bb24:                                          ; preds = %if.end23
  %runtime.i58 = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 11
  %11 = ptrtoint ptr %runtime.i58 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime.i58, align 4
  %plugin_last.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 59, i32 19
  %13 = ptrtoint ptr %plugin_last.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plugin_last.i, align 4
  %tobool.not29.i = icmp ne ptr %14, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clt_frames)
  %cmp30.i = icmp sgt i32 %clt_frames, 0
  %or.cond31.i = and i1 %cmp30.i, %tobool.not29.i
  br i1 %or.cond31.i, label %sw.bb24.while.body.i59_crit_edge, label %sw.bb24.return_crit_edge

sw.bb24.return_crit_edge:                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb24.while.body.i59_crit_edge:                 ; preds = %sw.bb24
  br label %while.body.i59

while.body.i59:                                   ; preds = %if.end5.i.while.body.i59_crit_edge, %sw.bb24.while.body.i59_crit_edge
  %plugin.033.i = phi ptr [ %16, %if.end5.i.while.body.i59_crit_edge ], [ %14, %sw.bb24.while.body.i59_crit_edge ]
  %frames.addr.032.i = phi i32 [ %frames.addr.1.i, %if.end5.i.while.body.i59_crit_edge ], [ %clt_frames, %sw.bb24.while.body.i59_crit_edge ]
  %prev.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.033.i, i32 0, i32 12
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %src_frames.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.033.i, i32 0, i32 7
  %17 = ptrtoint ptr %src_frames.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src_frames.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %while.body.i59.if.end5.i_crit_edge, label %if.then.i

while.body.i59.if.end5.i_crit_edge:               ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %while.body.i59
  %call.i60 = tail call i32 %18(ptr noundef nonnull %plugin.033.i, i32 noundef %frames.addr.032.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp3.i = icmp slt i32 %call.i60, 0
  br i1 %cmp3.i, label %if.then.i.return_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %while.body.i59.if.end5.i_crit_edge
  %frames.addr.1.i = phi i32 [ %call.i60, %if.then.i.if.end5.i_crit_edge ], [ %frames.addr.032.i, %while.body.i59.if.end5.i_crit_edge ]
  %tobool.not.i62 = icmp ne ptr %16, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames.addr.1.i)
  %cmp.i63 = icmp sgt i32 %frames.addr.1.i, 0
  %or.cond.i64 = select i1 %tobool.not.i62, i1 %cmp.i63, i1 false
  br i1 %or.cond.i64, label %if.end5.i.while.body.i59_crit_edge, label %if.end5.i.return_crit_edge

if.end5.i.return_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end5.i.while.body.i59_crit_edge:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i59

do.end38:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %return

return:                                           ; preds = %do.end38, %if.end5.i.return_crit_edge, %if.then.i.return_crit_edge, %sw.bb24.return_crit_edge, %if.end13.i.return_crit_edge, %if.then8.i.return_crit_edge, %sw.bb.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -22, %do.end38 ], [ %clt_frames, %sw.bb.return_crit_edge ], [ %clt_frames, %sw.bb24.return_crit_edge ], [ %call.i, %if.then8.i.return_crit_edge ], [ %frames.addr.2.i, %if.end13.i.return_crit_edge ], [ %call.i60, %if.then.i.return_crit_edge ], [ %frames.addr.1.i, %if.end5.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plug_slave_format(i32 noundef %format, ptr nocapture noundef readonly %format_mask) local_unnamed_addr #0 align 64 {
entry:
  %formats.i = alloca %struct.snd_mask, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %format, 5
  %arrayidx.i = getelementptr [8 x i32], ptr %format_mask, i32 0, i32 %shr.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %format, 31
  %shl.i = shl nuw i32 1, %and.i
  %and1.i = and i32 %1, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup64_crit_edge

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %formats.i) #6
  %2 = getelementptr inbounds [8 x i32], ptr %formats.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %formats.i, ptr %format_mask, i32 32)
  %4 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %formats.i, align 4
  %and1.i94 = and i32 %5, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i94)
  %tobool.not.i = icmp eq i32 %and1.i94, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 1048576, i32 1064959
  %spec.select.i = or i32 %spec.select.v.i, %5
  %6 = ptrtoint ptr %formats.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.i, ptr %formats.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  %and10.i = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.snd_pcm_plug_formats.exit_crit_edge, label %if.then12.i

if.end.snd_pcm_plug_formats.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_pcm_plug_formats.exit

if.then12.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or18.i = or i32 %8, 15
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or18.i, ptr %2, align 4
  br label %snd_pcm_plug_formats.exit

snd_pcm_plug_formats.exit:                        ; preds = %if.then12.i, %if.end.snd_pcm_plug_formats.exit_crit_edge
  %arrayidx.i.i = getelementptr [8 x i32], ptr %formats.i, i32 0, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %and1.i.i = and i32 %11, %shl.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %formats.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not, label %snd_pcm_plug_formats.exit.cleanup64_crit_edge, label %if.end4

snd_pcm_plug_formats.exit.cleanup64_crit_edge:    ; preds = %snd_pcm_plug_formats.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.end4:                                          ; preds = %snd_pcm_plug_formats.exit
  %call5 = tail call i32 @snd_pcm_format_linear(i32 noundef %format) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else48, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call8 = tail call i32 @snd_pcm_format_width(i32 noundef %format) #6
  %call9 = tail call i32 @snd_pcm_format_unsigned(i32 noundef %format) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp sgt i32 %call9, 0
  %conv = zext i1 %cmp to i32
  %call10 = tail call i32 @snd_pcm_format_big_endian(i32 noundef %format) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %sub23 = add i32 %call8, 32
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.then7
  %best_format.0107 = phi i32 [ -1, %if.then7 ], [ %best_format.2, %cleanup.for.body_crit_edge ]
  %best.0106 = phi i32 [ -1, %if.then7 ], [ %best.2, %cleanup.for.body_crit_edge ]
  %i.0105 = phi i32 [ 0, %if.then7 ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [18 x i32], ptr @preferred_formats, i32 0, i32 %i.0105
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %shr.i95 = lshr i32 %13, 5
  %arrayidx.i96 = getelementptr [8 x i32], ptr %format_mask, i32 0, i32 %shr.i95
  %14 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i96, align 4
  %and.i97 = and i32 %13, 31
  %shl.i98 = shl nuw i32 1, %and.i97
  %and1.i99 = and i32 %shl.i98, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i99)
  %tobool16.not = icmp eq i32 %and1.i99, 0
  br i1 %tobool16.not, label %for.body.cleanup_crit_edge, label %if.end18

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 @snd_pcm_format_width(i32 noundef %13) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %call8)
  %cmp20.not = icmp ult i32 %call19, %call8
  %sub = sub i32 %call19, %call8
  %add = sub i32 %sub23, %call19
  %badness.0 = select i1 %cmp20.not, i32 %add, i32 %sub
  %call25 = tail call i32 @snd_pcm_format_unsigned(i32 noundef %13) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call25, i32 %conv)
  %cmp26 = icmp ne i32 %call25, %conv
  %conv27 = zext i1 %cmp26 to i32
  %add28 = add i32 %badness.0, %conv27
  %call29 = tail call i32 @snd_pcm_format_big_endian(i32 noundef %13) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %conv12)
  %cmp30 = icmp ne i32 %call29, %conv12
  %conv31 = zext i1 %cmp30 to i32
  %add32 = add i32 %add28, %conv31
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %best.0106)
  %cmp33 = icmp ult i32 %add32, %best.0106
  %16 = tail call i32 @llvm.umin.i32(i32 %add32, i32 %best.0106)
  %best_format.1 = select i1 %cmp33, i32 %13, i32 %best_format.0107
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %for.body.cleanup_crit_edge
  %best.2 = phi i32 [ %16, %if.end18 ], [ %best.0106, %for.body.cleanup_crit_edge ]
  %best_format.2 = phi i32 [ %best_format.1, %if.end18 ], [ %best_format.0107, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_format.2)
  %cmp38 = icmp sgt i32 %best_format.2, -1
  %best_format.0. = select i1 %cmp38, i32 %best_format.2, i32 -22
  br label %cleanup64

if.else48:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %format)
  %cond = icmp eq i32 %format, 20
  br i1 %cond, label %if.else48.for.body52_crit_edge, label %if.else48.cleanup64_crit_edge

if.else48.cleanup64_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

if.else48.for.body52_crit_edge:                   ; preds = %if.else48
  br label %for.body52

for.cond49:                                       ; preds = %for.body52
  %inc62 = add nuw nsw i32 %i.1108, 1
  %exitcond109.not = icmp eq i32 %inc62, 18
  br i1 %exitcond109.not, label %for.cond49.cleanup64_crit_edge, label %for.cond49.for.body52_crit_edge

for.cond49.for.body52_crit_edge:                  ; preds = %for.cond49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body52

for.cond49.cleanup64_crit_edge:                   ; preds = %for.cond49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

for.body52:                                       ; preds = %for.cond49.for.body52_crit_edge, %if.else48.for.body52_crit_edge
  %i.1108 = phi i32 [ %inc62, %for.cond49.for.body52_crit_edge ], [ 0, %if.else48.for.body52_crit_edge ]
  %arrayidx53 = getelementptr [18 x i32], ptr @preferred_formats, i32 0, i32 %i.1108
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx53, align 4
  %shr.i100 = lshr i32 %18, 5
  %arrayidx.i101 = getelementptr [8 x i32], ptr %format_mask, i32 0, i32 %shr.i100
  %19 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i101, align 4
  %and.i102 = and i32 %18, 31
  %shl.i103 = shl nuw i32 1, %and.i102
  %and1.i104 = and i32 %shl.i103, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i104)
  %tobool55.not = icmp eq i32 %and1.i104, 0
  br i1 %tobool55.not, label %for.cond49, label %for.body52.cleanup64_crit_edge

for.body52.cleanup64_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup64

cleanup64:                                        ; preds = %for.body52.cleanup64_crit_edge, %for.cond49.cleanup64_crit_edge, %if.else48.cleanup64_crit_edge, %for.end, %snd_pcm_plug_formats.exit.cleanup64_crit_edge, %entry.cleanup64_crit_edge
  %retval.3 = phi i32 [ %best_format.0., %for.end ], [ %format, %entry.cleanup64_crit_edge ], [ -22, %snd_pcm_plug_formats.exit.cleanup64_crit_edge ], [ -22, %if.else48.cleanup64_crit_edge ], [ -22, %for.cond49.cleanup64_crit_edge ], [ %18, %for.body52.cleanup64_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_linear(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_unsigned(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_big_endian(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plug_format_plugins(ptr noundef %plug, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %slave_params) local_unnamed_addr #0 align 64 {
entry:
  %tmpformat = alloca %struct.snd_pcm_plugin_format, align 4
  %srcformat = alloca %struct.snd_pcm_plugin_format, align 4
  %plugin = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmpformat) #6
  %0 = ptrtoint ptr %tmpformat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmpformat, align 4, !annotation !17
  %1 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %tmpformat, i32 0, i32 1
  %2 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %tmpformat, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %srcformat) #6
  %3 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %srcformat, i32 0, i32 1
  %4 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %srcformat, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plugin) #6
  %5 = ptrtoint ptr %plugin to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %plugin, align 4
  %stream1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 5
  %6 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream1, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  %arrayidx.i.i243 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx.i.i243 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i243, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %lor.rhs.if.then.i.i_crit_edge

lor.rhs.if.then.i.i_crit_edge:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %lor.rhs.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %lor.rhs.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %11, %lor.rhs.if.then.i.i_crit_edge ], [ %14, %for.inc.i.i.if.then.i.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #6, !range !18
  %add.i.i = or i32 %12, %i.09.lcssa.i.i
  br label %params_access.exit

for.inc.i.i:                                      ; preds = %lor.rhs
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 1, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_access.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.i.i.params_access.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_access.exit

params_access.exit:                               ; preds = %for.inc.i.i.params_access.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_access.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retval.0.i.i)
  %cmp3 = icmp eq i32 %retval.0.i.i, 3
  br label %lor.end

lor.end:                                          ; preds = %params_access.exit, %entry.lor.end_crit_edge
  %15 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp3, %params_access.exit ]
  %16 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %7, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %lor.end
  %arrayidx.i.i244 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i244 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i244, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i245 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i245, label %for.inc.i.i252, label %sw.bb.if.then.i.i249_crit_edge

sw.bb.if.then.i.i249_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i249

if.then.i.i249:                                   ; preds = %for.inc.i.i252.if.then.i.i249_crit_edge, %sw.bb.if.then.i.i249_crit_edge
  %i.09.lcssa.i.i246 = phi i32 [ 0, %sw.bb.if.then.i.i249_crit_edge ], [ 32, %for.inc.i.i252.if.then.i.i249_crit_edge ]
  %.lcssa.i.i247 = phi i32 [ %18, %sw.bb.if.then.i.i249_crit_edge ], [ %21, %for.inc.i.i252.if.then.i.i249_crit_edge ]
  %19 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i247, i1 true) #6, !range !18
  %add.i.i248 = or i32 %19, %i.09.lcssa.i.i246
  br label %params_format.exit

for.inc.i.i252:                                   ; preds = %sw.bb
  %arrayidx.1.i.i250 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i.i250 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1.i.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.1.i.i251 = icmp eq i32 %21, 0
  br i1 %tobool.not.1.i.i251, label %for.inc.i.i252.params_format.exit_crit_edge, label %for.inc.i.i252.if.then.i.i249_crit_edge

for.inc.i.i252.if.then.i.i249_crit_edge:          ; preds = %for.inc.i.i252
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i249

for.inc.i.i252.params_format.exit_crit_edge:      ; preds = %for.inc.i.i252
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i252.params_format.exit_crit_edge, %if.then.i.i249
  %retval.0.i.i253 = phi i32 [ %add.i.i248, %if.then.i.i249 ], [ 0, %for.inc.i.i252.params_format.exit_crit_edge ]
  %arrayidx.i.i254 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %arrayidx.i.i254 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i254, align 4
  %arrayidx.i.i256 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i256 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i256, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i257 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i257, label %for.inc.i.i264, label %params_format.exit.if.then.i.i261_crit_edge

params_format.exit.if.then.i.i261_crit_edge:      ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i261

if.then.i.i261:                                   ; preds = %for.inc.i.i264.if.then.i.i261_crit_edge, %params_format.exit.if.then.i.i261_crit_edge
  %i.09.lcssa.i.i258 = phi i32 [ 0, %params_format.exit.if.then.i.i261_crit_edge ], [ 32, %for.inc.i.i264.if.then.i.i261_crit_edge ]
  %.lcssa.i.i259 = phi i32 [ %25, %params_format.exit.if.then.i.i261_crit_edge ], [ %28, %for.inc.i.i264.if.then.i.i261_crit_edge ]
  %26 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i259, i1 true) #6, !range !18
  %add.i.i260 = or i32 %26, %i.09.lcssa.i.i258
  br label %params_format.exit266

for.inc.i.i264:                                   ; preds = %params_format.exit
  %arrayidx.1.i.i262 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i.i262 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1.i.i262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.1.i.i263 = icmp eq i32 %28, 0
  br i1 %tobool.not.1.i.i263, label %for.inc.i.i264.params_format.exit266_crit_edge, label %for.inc.i.i264.if.then.i.i261_crit_edge

for.inc.i.i264.if.then.i.i261_crit_edge:          ; preds = %for.inc.i.i264
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i261

for.inc.i.i264.params_format.exit266_crit_edge:   ; preds = %for.inc.i.i264
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit266

params_format.exit266:                            ; preds = %for.inc.i.i264.params_format.exit266_crit_edge, %if.then.i.i261
  %retval.0.i.i265 = phi i32 [ %add.i.i260, %if.then.i.i261 ], [ 0, %for.inc.i.i264.params_format.exit266_crit_edge ]
  %29 = ptrtoint ptr %srcformat to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i265, ptr %srcformat, align 4
  %arrayidx.i.i267 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %arrayidx.i.i267 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i267, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %3, align 4
  %arrayidx.i.i268 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %arrayidx.i.i268 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i268, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %4, align 4
  %cond = select i1 %15, i32 3, i32 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %lor.end
  %arrayidx.i.i269 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx.i.i269 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i270 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i270, label %for.inc.i.i277, label %sw.bb13.if.then.i.i274_crit_edge

sw.bb13.if.then.i.i274_crit_edge:                 ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i274

if.then.i.i274:                                   ; preds = %for.inc.i.i277.if.then.i.i274_crit_edge, %sw.bb13.if.then.i.i274_crit_edge
  %i.09.lcssa.i.i271 = phi i32 [ 0, %sw.bb13.if.then.i.i274_crit_edge ], [ 32, %for.inc.i.i277.if.then.i.i274_crit_edge ]
  %.lcssa.i.i272 = phi i32 [ %37, %sw.bb13.if.then.i.i274_crit_edge ], [ %40, %for.inc.i.i277.if.then.i.i274_crit_edge ]
  %38 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i272, i1 true) #6, !range !18
  %add.i.i273 = or i32 %38, %i.09.lcssa.i.i271
  br label %params_format.exit279

for.inc.i.i277:                                   ; preds = %sw.bb13
  %arrayidx.1.i.i275 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i.i275 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1.i.i275, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1.i.i276 = icmp eq i32 %40, 0
  br i1 %tobool.not.1.i.i276, label %for.inc.i.i277.params_format.exit279_crit_edge, label %for.inc.i.i277.if.then.i.i274_crit_edge

for.inc.i.i277.if.then.i.i274_crit_edge:          ; preds = %for.inc.i.i277
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i274

for.inc.i.i277.params_format.exit279_crit_edge:   ; preds = %for.inc.i.i277
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit279

params_format.exit279:                            ; preds = %for.inc.i.i277.params_format.exit279_crit_edge, %if.then.i.i274
  %retval.0.i.i278 = phi i32 [ %add.i.i273, %if.then.i.i274 ], [ 0, %for.inc.i.i277.params_format.exit279_crit_edge ]
  %arrayidx.i.i280 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %arrayidx.i.i280 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i280, align 4
  %arrayidx.i.i281 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %arrayidx.i.i281 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i281, align 4
  %arrayidx.i.i282 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx.i.i282 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i283 = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i283, label %for.inc.i.i290, label %params_format.exit279.if.then.i.i287_crit_edge

params_format.exit279.if.then.i.i287_crit_edge:   ; preds = %params_format.exit279
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i287

if.then.i.i287:                                   ; preds = %for.inc.i.i290.if.then.i.i287_crit_edge, %params_format.exit279.if.then.i.i287_crit_edge
  %i.09.lcssa.i.i284 = phi i32 [ 0, %params_format.exit279.if.then.i.i287_crit_edge ], [ 32, %for.inc.i.i290.if.then.i.i287_crit_edge ]
  %.lcssa.i.i285 = phi i32 [ %46, %params_format.exit279.if.then.i.i287_crit_edge ], [ %49, %for.inc.i.i290.if.then.i.i287_crit_edge ]
  %47 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i285, i1 true) #6, !range !18
  %add.i.i286 = or i32 %47, %i.09.lcssa.i.i284
  br label %params_format.exit292

for.inc.i.i290:                                   ; preds = %params_format.exit279
  %arrayidx.1.i.i288 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx.1.i.i288 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.1.i.i288, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.1.i.i289 = icmp eq i32 %49, 0
  br i1 %tobool.not.1.i.i289, label %for.inc.i.i290.params_format.exit292_crit_edge, label %for.inc.i.i290.if.then.i.i287_crit_edge

for.inc.i.i290.if.then.i.i287_crit_edge:          ; preds = %for.inc.i.i290
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i287

for.inc.i.i290.params_format.exit292_crit_edge:   ; preds = %for.inc.i.i290
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit292

params_format.exit292:                            ; preds = %for.inc.i.i290.params_format.exit292_crit_edge, %if.then.i.i287
  %retval.0.i.i291 = phi i32 [ %add.i.i286, %if.then.i.i287 ], [ 0, %for.inc.i.i290.params_format.exit292_crit_edge ]
  %50 = ptrtoint ptr %srcformat to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i.i291, ptr %srcformat, align 4
  %arrayidx.i.i293 = getelementptr %struct.snd_pcm_hw_params, ptr %slave_params, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %arrayidx.i.i293 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i293, align 4
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %3, align 4
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %9, ptr %4, align 4
  %cond27 = select i1 %15, i32 3, i32 4
  br label %sw.epilog

do.end:                                           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 406, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %cleanup

sw.epilog:                                        ; preds = %params_format.exit292, %params_format.exit266
  %dstformat.sroa.13.0 = phi i32 [ %44, %params_format.exit292 ], [ %9, %params_format.exit266 ]
  %dstformat.sroa.7.0 = phi i32 [ %42, %params_format.exit292 ], [ %23, %params_format.exit266 ]
  %dstformat.sroa.0.0 = phi i32 [ %retval.0.i.i278, %params_format.exit292 ], [ %retval.0.i.i253, %params_format.exit266 ]
  %src_access.0 = phi i32 [ %cond27, %params_format.exit292 ], [ 3, %params_format.exit266 ]
  %dst_access.0 = phi i32 [ 3, %params_format.exit292 ], [ %cond, %params_format.exit266 ]
  %55 = call ptr @memcpy(ptr %tmpformat, ptr %srcformat, i32 12)
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %3, align 4
  %mul.i = mul i32 %57, 95
  %div.i = udiv i32 %mul.i, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %dstformat.sroa.7.0)
  %cmp.not.i = icmp ugt i32 %div.i, %dstformat.sroa.7.0
  %mul1.i = mul i32 %57, 105
  %div2.i = udiv i32 %mul1.i, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.i, i32 %dstformat.sroa.7.0)
  %cmp3.i = icmp ult i32 %div2.i, %dstformat.sroa.7.0
  %tobool46.not = or i1 %cmp.not.i, %cmp3.i
  br i1 %tobool46.not, label %land.lhs.true, label %sw.epilog.if.end65_crit_edge

sw.epilog.if.end65_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

land.lhs.true:                                    ; preds = %sw.epilog
  %58 = ptrtoint ptr %srcformat to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %srcformat, align 4
  %call48 = tail call i32 @snd_pcm_format_linear(i32 noundef %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then50:                                        ; preds = %land.lhs.true
  %60 = ptrtoint ptr %srcformat to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %srcformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %61)
  %cmp52.not = icmp eq i32 %61, 20
  br i1 %cmp52.not, label %if.end54, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.then50
  %62 = ptrtoint ptr %tmpformat to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %tmpformat, align 4
  %call56 = call i32 @snd_pcm_plugin_build_mulaw(ptr noundef %plug, ptr noundef nonnull %srcformat, ptr noundef nonnull %tmpformat, ptr noundef nonnull %plugin) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end54.cleanup_crit_edge, label %if.end59

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end54
  %63 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %plugin, align 4
  %call60 = call i32 @snd_pcm_plugin_append(ptr noundef %64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %plugin, align 4
  %call63 = call i32 @snd_pcm_plugin_free(ptr noundef %66)
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %67 = call ptr @memcpy(ptr %srcformat, ptr %tmpformat, i32 12)
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %land.lhs.true.if.end65_crit_edge, %sw.epilog.if.end65_crit_edge
  %src_access.1 = phi i32 [ %src_access.0, %sw.epilog.if.end65_crit_edge ], [ %src_access.0, %land.lhs.true.if.end65_crit_edge ], [ %dst_access.0, %if.end64 ]
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %dstformat.sroa.13.0)
  %cmp68 = icmp ugt i32 %69, %dstformat.sroa.13.0
  br i1 %cmp68, label %if.then69, label %if.end65.if.end81_crit_edge

if.end65.if.end81_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then69:                                        ; preds = %if.end65
  %70 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %dstformat.sroa.13.0, ptr %2, align 4
  %call72 = call i32 @snd_pcm_plugin_build_route(ptr noundef %plug, ptr noundef nonnull %srcformat, ptr noundef nonnull %tmpformat, ptr noundef nonnull %plugin) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then69.cleanup_crit_edge, label %if.end75

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %if.then69
  %71 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %plugin, align 4
  %call76 = call i32 @snd_pcm_plugin_append(ptr noundef %72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end75
  %73 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %plugin, align 4
  %tobool.not.i = icmp eq ptr %74, null
  br i1 %tobool.not.i, label %if.then78.cleanup_crit_edge, label %if.end.i

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then78
  %private_free.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %74, i32 0, i32 16
  %75 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %private_free.i, align 4
  %tobool1.not.i = icmp eq ptr %76, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %76(ptr noundef nonnull %74) #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %buf_channels.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %74, i32 0, i32 19
  %77 = ptrtoint ptr %buf_channels.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf_channels.i, align 4
  call void @kfree(ptr noundef %78) #6
  %buf.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %74, i32 0, i32 17
  %79 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buf.i, align 4
  call void @kvfree(ptr noundef %80) #6
  call void @kfree(ptr noundef nonnull %74) #6
  br label %cleanup

if.end80:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %81 = call ptr @memcpy(ptr %srcformat, ptr %tmpformat, i32 12)
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end65.if.end81_crit_edge
  %src_access.2 = phi i32 [ %dst_access.0, %if.end80 ], [ %src_access.1, %if.end65.if.end81_crit_edge ]
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %3, align 4
  %mul.i295 = mul i32 %83, 95
  %div.i296 = udiv i32 %mul.i295, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i296, i32 %dstformat.sroa.7.0)
  %cmp.not.i297 = icmp ugt i32 %div.i296, %dstformat.sroa.7.0
  %mul1.i298 = mul i32 %83, 105
  %div2.i299 = udiv i32 %mul1.i298, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.i299, i32 %dstformat.sroa.7.0)
  %cmp3.i300 = icmp ult i32 %div2.i299, %dstformat.sroa.7.0
  %tobool85.not = or i1 %cmp.not.i297, %cmp3.i300
  br i1 %tobool85.not, label %if.then86, label %if.end81.if.end112_crit_edge

if.end81.if.end112_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then86:                                        ; preds = %if.end81
  %84 = ptrtoint ptr %srcformat to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %srcformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %cmp88.not = icmp eq i32 %85, 3
  br i1 %cmp88.not, label %if.then86.if.end100_crit_edge, label %if.then89

if.then86.if.end100_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then89:                                        ; preds = %if.then86
  %86 = ptrtoint ptr %tmpformat to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %tmpformat, align 4
  %call91 = call i32 @snd_pcm_plugin_build_linear(ptr noundef %plug, ptr noundef nonnull %srcformat, ptr noundef nonnull %tmpformat, ptr noundef nonnull %plugin) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then89.cleanup_crit_edge, label %if.end94

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end94:                                         ; preds = %if.then89
  %87 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %plugin, align 4
  %call95 = call i32 @snd_pcm_plugin_append(ptr noundef %88) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %plugin, align 4
  %call98 = call i32 @snd_pcm_plugin_free(ptr noundef %90)
  br label %cleanup

if.end99:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %91 = call ptr @memcpy(ptr %srcformat, ptr %tmpformat, i32 12)
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then86.if.end100_crit_edge
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %dstformat.sroa.7.0, ptr %1, align 4
  %call103 = call i32 @snd_pcm_plugin_build_rate(ptr noundef %plug, ptr noundef nonnull %srcformat, ptr noundef nonnull %tmpformat, ptr noundef nonnull %plugin) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.end100.cleanup_crit_edge, label %if.end106

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end106:                                        ; preds = %if.end100
  %93 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %plugin, align 4
  %call107 = call i32 @snd_pcm_plugin_append(ptr noundef %94) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.end106
  %95 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %plugin, align 4
  %tobool.not.i302 = icmp eq ptr %96, null
  br i1 %tobool.not.i302, label %if.then109.cleanup_crit_edge, label %if.end.i305

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i305:                                      ; preds = %if.then109
  %private_free.i303 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %96, i32 0, i32 16
  %97 = ptrtoint ptr %private_free.i303 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %private_free.i303, align 4
  %tobool1.not.i304 = icmp eq ptr %98, null
  br i1 %tobool1.not.i304, label %if.end.i305.if.end4.i309_crit_edge, label %if.then2.i306

if.end.i305.if.end4.i309_crit_edge:               ; preds = %if.end.i305
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i309

if.then2.i306:                                    ; preds = %if.end.i305
  call void @__sanitizer_cov_trace_pc() #8
  call void %98(ptr noundef nonnull %96) #6
  br label %if.end4.i309

if.end4.i309:                                     ; preds = %if.then2.i306, %if.end.i305.if.end4.i309_crit_edge
  %buf_channels.i307 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %96, i32 0, i32 19
  %99 = ptrtoint ptr %buf_channels.i307 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %buf_channels.i307, align 4
  call void @kfree(ptr noundef %100) #6
  %buf.i308 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %96, i32 0, i32 17
  %101 = ptrtoint ptr %buf.i308 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %buf.i308, align 4
  call void @kvfree(ptr noundef %102) #6
  call void @kfree(ptr noundef nonnull %96) #6
  br label %cleanup

if.end111:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %103 = call ptr @memcpy(ptr %srcformat, ptr %tmpformat, i32 12)
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.end81.if.end112_crit_edge
  %src_access.3 = phi i32 [ %src_access.2, %if.end81.if.end112_crit_edge ], [ %dst_access.0, %if.end111 ]
  %104 = ptrtoint ptr %srcformat to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %srcformat, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %dstformat.sroa.0.0)
  %cmp115.not = icmp eq i32 %105, %dstformat.sroa.0.0
  br i1 %cmp115.not, label %if.end112.if.end145_crit_edge, label %if.then116

if.end112.if.end145_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then116:                                       ; preds = %if.end112
  %106 = ptrtoint ptr %tmpformat to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %dstformat.sroa.0.0, ptr %tmpformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %105)
  %cmp120 = icmp eq i32 %105, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %dstformat.sroa.0.0)
  %cmp122 = icmp eq i32 %dstformat.sroa.0.0, 20
  %or.cond = select i1 %cmp120, i1 true, i1 %cmp122
  br i1 %or.cond, label %if.then123, label %if.else

if.then123:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  %call124 = call i32 @snd_pcm_plugin_build_mulaw(ptr noundef %plug, ptr noundef nonnull %srcformat, ptr noundef nonnull %tmpformat, ptr noundef nonnull %plugin) #6
  br label %if.end136

if.else:                                          ; preds = %if.then116
  %call126 = call i32 @snd_pcm_format_linear(i32 noundef %105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.else.cleanup_crit_edge, label %land.lhs.true128

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true128:                                 ; preds = %if.else
  %107 = ptrtoint ptr %tmpformat to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tmpformat, align 4
  %call130 = call i32 @snd_pcm_format_linear(i32 noundef %108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %land.lhs.true128.cleanup_crit_edge, label %if.then132

land.lhs.true128.cleanup_crit_edge:               ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then132:                                       ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #8
  %call133 = call i32 @snd_pcm_plugin_build_linear(ptr noundef %plug, ptr noundef nonnull %srcformat, ptr noundef nonnull %tmpformat, ptr noundef nonnull %plugin) #6
  br label %if.end136

if.end136:                                        ; preds = %if.then132, %if.then123
  %err.0 = phi i32 [ %call124, %if.then123 ], [ %call133, %if.then132 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp137 = icmp slt i32 %err.0, 0
  br i1 %cmp137, label %if.end136.cleanup_crit_edge, label %if.end139

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end139:                                        ; preds = %if.end136
  %109 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %plugin, align 4
  %call140 = call i32 @snd_pcm_plugin_append(ptr noundef %110) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %if.then142, label %if.end144

if.then142:                                       ; preds = %if.end139
  %111 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %plugin, align 4
  %tobool.not.i311 = icmp eq ptr %112, null
  br i1 %tobool.not.i311, label %if.then142.cleanup_crit_edge, label %if.end.i314

if.then142.cleanup_crit_edge:                     ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i314:                                      ; preds = %if.then142
  %private_free.i312 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %112, i32 0, i32 16
  %113 = ptrtoint ptr %private_free.i312 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %private_free.i312, align 4
  %tobool1.not.i313 = icmp eq ptr %114, null
  br i1 %tobool1.not.i313, label %if.end.i314.if.end4.i318_crit_edge, label %if.then2.i315

if.end.i314.if.end4.i318_crit_edge:               ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i318

if.then2.i315:                                    ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #8
  call void %114(ptr noundef nonnull %112) #6
  br label %if.end4.i318

if.end4.i318:                                     ; preds = %if.then2.i315, %if.end.i314.if.end4.i318_crit_edge
  %buf_channels.i316 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %112, i32 0, i32 19
  %115 = ptrtoint ptr %buf_channels.i316 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buf_channels.i316, align 4
  call void @kfree(ptr noundef %116) #6
  %buf.i317 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %112, i32 0, i32 17
  %117 = ptrtoint ptr %buf.i317 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %buf.i317, align 4
  call void @kvfree(ptr noundef %118) #6
  call void @kfree(ptr noundef nonnull %112) #6
  br label %cleanup

if.end144:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  %119 = call ptr @memcpy(ptr %srcformat, ptr %tmpformat, i32 12)
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end112.if.end145_crit_edge
  %src_access.4 = phi i32 [ %dst_access.0, %if.end144 ], [ %src_access.3, %if.end112.if.end145_crit_edge ]
  %120 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %dstformat.sroa.13.0)
  %cmp148 = icmp ult i32 %121, %dstformat.sroa.13.0
  br i1 %cmp148, label %if.then149, label %if.end161

if.then149:                                       ; preds = %if.end145
  %122 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %dstformat.sroa.13.0, ptr %2, align 4
  %call152 = call i32 @snd_pcm_plugin_build_route(ptr noundef %plug, ptr noundef nonnull %srcformat, ptr noundef nonnull %tmpformat, ptr noundef nonnull %plugin) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp153 = icmp slt i32 %call152, 0
  br i1 %cmp153, label %if.then149.cleanup_crit_edge, label %if.end155

if.then149.cleanup_crit_edge:                     ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end155:                                        ; preds = %if.then149
  %123 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %plugin, align 4
  %call156 = call i32 @snd_pcm_plugin_append(ptr noundef %124) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then158, label %if.end161.thread

if.then158:                                       ; preds = %if.end155
  %125 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %plugin, align 4
  %tobool.not.i320 = icmp eq ptr %126, null
  br i1 %tobool.not.i320, label %if.then158.cleanup_crit_edge, label %if.end.i323

if.then158.cleanup_crit_edge:                     ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i323:                                      ; preds = %if.then158
  %private_free.i321 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %126, i32 0, i32 16
  %127 = ptrtoint ptr %private_free.i321 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %private_free.i321, align 4
  %tobool1.not.i322 = icmp eq ptr %128, null
  br i1 %tobool1.not.i322, label %if.end.i323.if.end4.i327_crit_edge, label %if.then2.i324

if.end.i323.if.end4.i327_crit_edge:               ; preds = %if.end.i323
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i327

if.then2.i324:                                    ; preds = %if.end.i323
  call void @__sanitizer_cov_trace_pc() #8
  call void %128(ptr noundef nonnull %126) #6
  br label %if.end4.i327

if.end4.i327:                                     ; preds = %if.then2.i324, %if.end.i323.if.end4.i327_crit_edge
  %buf_channels.i325 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %126, i32 0, i32 19
  %129 = ptrtoint ptr %buf_channels.i325 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %buf_channels.i325, align 4
  call void @kfree(ptr noundef %130) #6
  %buf.i326 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %126, i32 0, i32 17
  %131 = ptrtoint ptr %buf.i326 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %buf.i326, align 4
  call void @kvfree(ptr noundef %132) #6
  call void @kfree(ptr noundef nonnull %126) #6
  br label %cleanup

if.end161.thread:                                 ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  %133 = call ptr @memcpy(ptr %srcformat, ptr %tmpformat, i32 12)
  br label %cleanup

if.end161:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_cmp4(i32 %src_access.4, i32 %dst_access.0)
  %cmp162.not = icmp eq i32 %src_access.4, %dst_access.0
  br i1 %cmp162.not, label %if.end161.cleanup_crit_edge, label %if.then163

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then163:                                       ; preds = %if.end161
  %call164 = call i32 @snd_pcm_plugin_build_copy(ptr noundef %plug, ptr noundef nonnull %srcformat, ptr noundef nonnull %tmpformat, ptr noundef nonnull %plugin) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.then163.cleanup_crit_edge, label %if.end167

if.then163.cleanup_crit_edge:                     ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end167:                                        ; preds = %if.then163
  %134 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %plugin, align 4
  %call168 = call i32 @snd_pcm_plugin_append(ptr noundef %135) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then170, label %if.end167.cleanup_crit_edge

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then170:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %plugin, align 4
  %call171 = call i32 @snd_pcm_plugin_free(ptr noundef %137)
  br label %cleanup

cleanup:                                          ; preds = %if.then170, %if.end167.cleanup_crit_edge, %if.then163.cleanup_crit_edge, %if.end161.cleanup_crit_edge, %if.end161.thread, %if.end4.i327, %if.then158.cleanup_crit_edge, %if.then149.cleanup_crit_edge, %if.end4.i318, %if.then142.cleanup_crit_edge, %if.end136.cleanup_crit_edge, %land.lhs.true128.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end4.i309, %if.then109.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.then97, %if.then89.cleanup_crit_edge, %if.end4.i, %if.then78.cleanup_crit_edge, %if.then69.cleanup_crit_edge, %if.then62, %if.end54.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call168, %if.then170 ], [ %call95, %if.then97 ], [ %call60, %if.then62 ], [ -22, %if.then50.cleanup_crit_edge ], [ %call56, %if.end54.cleanup_crit_edge ], [ %call72, %if.then69.cleanup_crit_edge ], [ %call91, %if.then89.cleanup_crit_edge ], [ %call103, %if.end100.cleanup_crit_edge ], [ -22, %land.lhs.true128.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %err.0, %if.end136.cleanup_crit_edge ], [ %call152, %if.then149.cleanup_crit_edge ], [ %call164, %if.then163.cleanup_crit_edge ], [ 0, %if.end167.cleanup_crit_edge ], [ 0, %if.end161.cleanup_crit_edge ], [ %call76, %if.then78.cleanup_crit_edge ], [ %call76, %if.end4.i ], [ %call107, %if.then109.cleanup_crit_edge ], [ %call107, %if.end4.i309 ], [ %call140, %if.then142.cleanup_crit_edge ], [ %call140, %if.end4.i318 ], [ %call156, %if.then158.cleanup_crit_edge ], [ %call156, %if.end4.i327 ], [ 0, %if.end161.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plugin) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %srcformat) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmpformat) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_build_mulaw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_build_route(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_build_linear(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_build_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_build_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plug_client_channels_buf(ptr nocapture noundef readonly %plug, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef writeonly %channels) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 5
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream1, align 4
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end24, !prof !15

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %plugin_first = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 18
  %4 = ptrtoint ptr %plugin_first to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plugin_first, align 8
  %src_format = getelementptr inbounds %struct.snd_pcm_plugin, ptr %5, i32 0, i32 2
  br label %if.end28

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %plugin_last = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 59, i32 19
  %6 = ptrtoint ptr %plugin_last to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plugin_last, align 4
  %dst_format = getelementptr inbounds %struct.snd_pcm_plugin, ptr %7, i32 0, i32 3
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then25
  %format.0 = phi ptr [ %src_format, %if.then25 ], [ %dst_format, %if.else ]
  %plugin.0 = phi ptr [ %5, %if.then25 ], [ %7, %if.else ]
  %buf_channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.0, i32 0, i32 19
  %8 = ptrtoint ptr %buf_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf_channels, align 4
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %channels, align 4
  %11 = ptrtoint ptr %format.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format.0, align 4
  %call = tail call i32 @snd_pcm_format_physical_width(i32 noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp30 = icmp slt i32 %call, 0
  br i1 %cmp30, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %channels33 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %format.0, i32 0, i32 2
  %13 = ptrtoint ptr %channels33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channels33, align 4
  %access = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.0, i32 0, i32 6
  %15 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp35.not = icmp ne i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp37 = icmp ugt i32 %14, 1
  %spec.select = select i1 %cmp35.not, i1 %cmp37, i1 false
  br i1 %spec.select, label %if.end32.cleanup.sink.split_crit_edge, label %for.cond.preheader, !prof !15

if.end32.cleanup.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp70109 = icmp sgt i32 %14, 0
  br i1 %cmp70109, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp71 = icmp eq i32 %1, 1
  %bf.clear73 = select i1 %cmp71, i8 -64, i8 -128
  %mul76 = mul i32 %14, %call
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %channel.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %v.0110 = phi ptr [ %9, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %frames = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %v.0110, i32 0, i32 2
  %17 = ptrtoint ptr %frames to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %count, ptr %frames, align 4
  %enabled = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %v.0110, i32 0, i32 3
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %enabled, align 4
  %bf.set = and i8 %bf.load, 63
  %bf.set74 = or i8 %bf.clear73, %bf.set
  store i8 %bf.set74, ptr %enabled, align 4
  %area = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %v.0110, i32 0, i32 1
  %19 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf, ptr %area, align 4
  %mul = mul i32 %channel.0111, %call
  %first = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %v.0110, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %first, align 4
  %step = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %v.0110, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul76, ptr %step, align 4
  %inc = add nuw nsw i32 %channel.0111, 1
  %incdec.ptr = getelementptr %struct.snd_pcm_plugin_channel, ptr %v.0110, i32 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end32.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 565, %entry.cleanup.sink.split_crit_edge ], [ 581, %if.end32.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end28.cleanup_crit_edge ], [ %count, %for.cond.preheader.cleanup_crit_edge ], [ -6, %cleanup.sink.split ], [ %count, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plug_write_transfer(ptr nocapture noundef readonly %plug, ptr noundef %src_channels, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %dst_channels = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_channels) #6
  %0 = ptrtoint ptr %dst_channels to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst_channels, align 4, !annotation !17
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 11
  %1 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %runtime, align 4
  %plugin_first = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 59, i32 18
  %3 = ptrtoint ptr %plugin_first to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plugin_first, align 8
  %tobool.not74 = icmp eq ptr %4, null
  br i1 %tobool.not74, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %entry.while.body_crit_edge
  %frames.079 = phi i32 [ %call27, %if.end30.while.body_crit_edge ], [ %size, %entry.while.body_crit_edge ]
  %plugin.076 = phi ptr [ %6, %if.end30.while.body_crit_edge ], [ %4, %entry.while.body_crit_edge ]
  %src_channels.addr.075 = phi ptr [ %19, %if.end30.while.body_crit_edge ], [ %src_channels, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frames.079)
  %cmp = icmp slt i32 %frames.079, 1
  br i1 %cmp, label %while.body.cleanup32_crit_edge, label %if.end

while.body.cleanup32_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end:                                           ; preds = %while.body
  %next1 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.076, i32 0, i32 13
  %5 = ptrtoint ptr %next1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next1, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %dst_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.076, i32 0, i32 8
  %7 = ptrtoint ptr %dst_frames to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst_frames, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.then3.if.end10_crit_edge, label %if.then5

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %if.then3
  %call = call i32 %8(ptr noundef nonnull %plugin.076, i32 noundef %frames.079) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp7 = icmp slt i32 %call, 1
  br i1 %cmp7, label %if.then5.cleanup32_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5.cleanup32_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.then3.if.end10_crit_edge
  %frames1.0 = phi i32 [ %call, %if.then5.if.end10_crit_edge ], [ %frames.079, %if.then3.if.end10_crit_edge ]
  %client_channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %6, i32 0, i32 9
  %9 = ptrtoint ptr %client_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client_channels, align 4
  %call11 = call i32 %10(ptr noundef nonnull %6, i32 noundef %frames1.0, ptr noundef nonnull %dst_channels) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup32_crit_edge, label %if.end14

if.end10.cleanup32_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %frames1.0)
  %cmp15.not = icmp eq i32 %call11, %frames1.0
  br i1 %cmp15.not, label %if.end14.if.end26_crit_edge, label %if.then16

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then16:                                        ; preds = %if.end14
  %src_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.076, i32 0, i32 7
  %11 = ptrtoint ptr %src_frames to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src_frames, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %if.then16.if.end26_crit_edge, label %if.then18

if.then16.if.end26_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then18:                                        ; preds = %if.then16
  %call20 = call i32 %12(ptr noundef nonnull %plugin.076, i32 noundef %frames1.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %if.then18.cleanup32_crit_edge, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then18.cleanup32_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dst_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dst_channels, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then18.if.end26_crit_edge, %if.then16.if.end26_crit_edge, %if.end14.if.end26_crit_edge
  %frames.3 = phi i32 [ %frames.079, %if.else ], [ %call20, %if.then18.if.end26_crit_edge ], [ %call11, %if.then16.if.end26_crit_edge ], [ %frames.079, %if.end14.if.end26_crit_edge ]
  %transfer = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.076, i32 0, i32 10
  %14 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transfer, align 4
  %16 = ptrtoint ptr %dst_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst_channels, align 4
  %call27 = call i32 %15(ptr noundef nonnull %plugin.076, ptr noundef %src_channels.addr.075, ptr noundef %17, i32 noundef %frames.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup32_crit_edge, label %if.end30

if.end26.cleanup32_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end30:                                         ; preds = %if.end26
  %18 = ptrtoint ptr %dst_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst_channels, align 4
  br i1 %tobool2.not, label %if.end30.while.end_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end30.while.end_crit_edge, %entry.while.end_crit_edge
  %frames.0.lcssa = phi i32 [ %size, %entry.while.end_crit_edge ], [ %call27, %if.end30.while.end_crit_edge ]
  %20 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime, align 4
  %plugin_last.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 59, i32 19
  %22 = ptrtoint ptr %plugin_last.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plugin_last.i, align 4
  %tobool.not29.i = icmp ne ptr %23, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames.0.lcssa)
  %cmp30.i = icmp sgt i32 %frames.0.lcssa, 0
  %or.cond31.i = and i1 %cmp30.i, %tobool.not29.i
  br i1 %or.cond31.i, label %while.end.while.body.i_crit_edge, label %while.end.cleanup32_crit_edge

while.end.cleanup32_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

while.end.while.body.i_crit_edge:                 ; preds = %while.end
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %while.end.while.body.i_crit_edge
  %plugin.033.i = phi ptr [ %25, %if.end5.i.while.body.i_crit_edge ], [ %23, %while.end.while.body.i_crit_edge ]
  %frames.addr.032.i = phi i32 [ %spec.select.i, %if.end5.i.while.body.i_crit_edge ], [ %frames.0.lcssa, %while.end.while.body.i_crit_edge ]
  %prev.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.033.i, i32 0, i32 12
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %src_frames.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.033.i, i32 0, i32 7
  %26 = ptrtoint ptr %src_frames.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src_frames.i, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %while.body.i.if.end5.i_crit_edge, label %if.then.i

while.body.i.if.end5.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %while.body.i
  %call.i = call i32 %27(ptr noundef nonnull %plugin.033.i, i32 noundef %frames.addr.032.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i.cleanup32_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i.cleanup32_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %while.body.i.if.end5.i_crit_edge
  %frames.addr.1.i = phi i32 [ %call.i, %if.then.i.if.end5.i_crit_edge ], [ %frames.addr.032.i, %while.body.i.if.end5.i_crit_edge ]
  %buf_frames.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.033.i, i32 0, i32 18
  %28 = ptrtoint ptr %buf_frames.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool7.not.i = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %frames.addr.1.i, i32 %29)
  %cmp10.i = icmp ugt i32 %frames.addr.1.i, %29
  %or.cond28.i = select i1 %tobool7.not.i, i1 %cmp10.i, i1 false
  %spec.select.i = select i1 %or.cond28.i, i32 %29, i32 %frames.addr.1.i
  %tobool.not.i = icmp ne ptr %25, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp.i = icmp sgt i32 %spec.select.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end5.i.while.body.i_crit_edge, label %if.end5.i.cleanup32_crit_edge

if.end5.i.cleanup32_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

cleanup32:                                        ; preds = %if.end5.i.cleanup32_crit_edge, %if.then.i.cleanup32_crit_edge, %while.end.cleanup32_crit_edge, %if.end26.cleanup32_crit_edge, %if.then18.cleanup32_crit_edge, %if.end10.cleanup32_crit_edge, %if.then5.cleanup32_crit_edge, %while.body.cleanup32_crit_edge
  %retval.3 = phi i32 [ %frames.0.lcssa, %while.end.cleanup32_crit_edge ], [ %call.i, %if.then.i.cleanup32_crit_edge ], [ %spec.select.i, %if.end5.i.cleanup32_crit_edge ], [ %call, %if.then5.cleanup32_crit_edge ], [ %call11, %if.end10.cleanup32_crit_edge ], [ %call20, %if.then18.cleanup32_crit_edge ], [ %call27, %if.end26.cleanup32_crit_edge ], [ %frames.079, %while.body.cleanup32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_channels) #6
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plug_read_transfer(ptr nocapture noundef readonly %plug, ptr noundef %dst_channels_final, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %dst_channels = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_channels) #6
  %0 = ptrtoint ptr %dst_channels to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst_channels, align 4, !annotation !17
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 11
  %1 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %runtime.i, align 4
  %plugin_last.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 59, i32 19
  %3 = ptrtoint ptr %plugin_last.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plugin_last.i, align 4
  %tobool.not29.i = icmp ne ptr %4, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp30.i = icmp sgt i32 %size, 0
  %or.cond31.i = and i1 %cmp30.i, %tobool.not29.i
  br i1 %or.cond31.i, label %entry.while.body.i_crit_edge, label %entry.calc_src_frames.exit_crit_edge

entry.calc_src_frames.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_src_frames.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %plugin.033.i = phi ptr [ %6, %if.end5.i.while.body.i_crit_edge ], [ %4, %entry.while.body.i_crit_edge ]
  %frames.addr.032.i = phi i32 [ %spec.select.i, %if.end5.i.while.body.i_crit_edge ], [ %size, %entry.while.body.i_crit_edge ]
  %prev.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.033.i, i32 0, i32 12
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %src_frames.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.033.i, i32 0, i32 7
  %7 = ptrtoint ptr %src_frames.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src_frames.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %while.body.i.if.end5.i_crit_edge, label %if.then.i

while.body.i.if.end5.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %while.body.i
  %call.i = tail call i32 %8(ptr noundef nonnull %plugin.033.i, i32 noundef %frames.addr.032.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %while.body.i.if.end5.i_crit_edge
  %frames.addr.1.i = phi i32 [ %call.i, %if.then.i.if.end5.i_crit_edge ], [ %frames.addr.032.i, %while.body.i.if.end5.i_crit_edge ]
  %buf_frames.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.033.i, i32 0, i32 18
  %9 = ptrtoint ptr %buf_frames.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not.i = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %frames.addr.1.i, i32 %10)
  %cmp10.i = icmp ugt i32 %frames.addr.1.i, %10
  %or.cond28.i = select i1 %tobool7.not.i, i1 %cmp10.i, i1 false
  %spec.select.i = select i1 %or.cond28.i, i32 %10, i32 %frames.addr.1.i
  %tobool.not.i = icmp ne ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp.i = icmp sgt i32 %spec.select.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end5.i.while.body.i_crit_edge, label %if.end5.i.calc_src_frames.exit_crit_edge

if.end5.i.calc_src_frames.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %calc_src_frames.exit

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

calc_src_frames.exit:                             ; preds = %if.end5.i.calc_src_frames.exit_crit_edge, %entry.calc_src_frames.exit_crit_edge
  %retval.0.i = phi i32 [ %size, %entry.calc_src_frames.exit_crit_edge ], [ %spec.select.i, %if.end5.i.calc_src_frames.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %calc_src_frames.exit.cleanup_crit_edge, label %if.end

calc_src_frames.exit.cleanup_crit_edge:           ; preds = %calc_src_frames.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %calc_src_frames.exit
  %11 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime.i, align 4
  %plugin_first = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 59, i32 18
  %13 = ptrtoint ptr %plugin_first to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plugin_first, align 8
  %tobool.not39 = icmp ne ptr %14, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp140 = icmp ne i32 %retval.0.i, 0
  %or.cond41 = select i1 %tobool.not39, i1 %cmp140, i1 false
  br i1 %or.cond41, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %if.end.while.body_crit_edge
  %frames.045 = phi i32 [ %call10, %if.end13.while.body_crit_edge ], [ %retval.0.i, %if.end.while.body_crit_edge ]
  %src_channels.044 = phi ptr [ %25, %if.end13.while.body_crit_edge ], [ null, %if.end.while.body_crit_edge ]
  %plugin.042 = phi ptr [ %16, %if.end13.while.body_crit_edge ], [ %14, %if.end.while.body_crit_edge ]
  %next2 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.042, i32 0, i32 13
  %15 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next2, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %while.body
  %client_channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.042, i32 0, i32 9
  %17 = ptrtoint ptr %client_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client_channels, align 4
  %call5 = call i32 %18(ptr noundef nonnull %plugin.042, i32 noundef %frames.045, ptr noundef nonnull %dst_channels) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then4.cleanup_crit_edge, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dst_channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dst_channels_final, ptr %dst_channels, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4.if.end9_crit_edge
  %frames.1 = phi i32 [ %frames.045, %if.else ], [ %call5, %if.then4.if.end9_crit_edge ]
  %transfer = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin.042, i32 0, i32 10
  %20 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer, align 4
  %22 = ptrtoint ptr %dst_channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst_channels, align 4
  %call10 = call i32 %21(ptr noundef nonnull %plugin.042, ptr noundef %src_channels.044, ptr noundef %23, i32 noundef %frames.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %24 = ptrtoint ptr %dst_channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst_channels, align 4
  %tobool.not = icmp ne ptr %16, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp1 = icmp ne i32 %call10, 0
  %or.cond = select i1 %tobool.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.end13.while.body_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %calc_src_frames.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %calc_src_frames.exit.cleanup_crit_edge ], [ %retval.0.i, %if.end.cleanup_crit_edge ], [ %call5, %if.then4.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call10, %if.end13.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_channels) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_area_silence(ptr nocapture noundef readonly %dst_area, i32 noundef %dst_offset, i32 noundef %samples, i32 noundef %format) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst_area, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %first = getelementptr inbounds %struct.snd_pcm_channel_area, ptr %dst_area, i32 0, i32 1
  %2 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first, align 4
  %step = getelementptr inbounds %struct.snd_pcm_channel_area, ptr %dst_area, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  %mul = mul i32 %5, %dst_offset
  %add = add i32 %mul, %3
  %div74 = lshr i32 %add, 3
  %add.ptr = getelementptr i8, ptr %1, i32 %div74
  %call = tail call i32 @snd_pcm_format_physical_width(i32 noundef %format) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %step, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call)
  %cmp5 = icmp eq i32 %7, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %cmp6 = icmp ugt i32 %call, 7
  %or.cond = and i1 %cmp6, %cmp5
  br i1 %or.cond, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @snd_pcm_format_set_silence(i32 noundef %format, ptr noundef %add.ptr, i32 noundef %samples) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %call10 = tail call ptr @snd_pcm_format_silence_64(i32 noundef %format) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %step, align 4
  %div1575 = lshr i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp16 = icmp eq i32 %call, 4
  br i1 %cmp16, label %if.then17, label %if.else35

if.then17:                                        ; preds = %if.end13
  %rem20 = and i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples)
  %cmp21.not84 = icmp eq i32 %samples, 0
  br i1 %cmp21.not84, label %if.then17.cleanup_crit_edge, label %while.body.preheader

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.preheader:                             ; preds = %if.then17
  %10 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %first, align 4
  %rem = and i32 %11, 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dec87.in = phi i32 [ %dec87, %while.body.while.body_crit_edge ], [ %samples, %while.body.preheader ]
  %dstbit.086 = phi i32 [ %spec.select76, %while.body.while.body_crit_edge ], [ %rem, %while.body.preheader ]
  %dst.085 = phi ptr [ %spec.select, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %dec87 = add i32 %dec87.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dstbit.086)
  %tobool22.not = icmp eq i32 %dstbit.086, 0
  %12 = ptrtoint ptr %dst.085 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dst.085, align 1
  %. = select i1 %tobool22.not, i8 15, i8 -16
  %14 = and i8 %13, %.
  store i8 %14, ptr %dst.085, align 1
  %add.ptr29 = getelementptr i8, ptr %dst.085, i32 %div1575
  %add30 = add i32 %dstbit.086, %rem20
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add30)
  %cmp31 = icmp eq i32 %add30, 8
  %spec.select.idx = zext i1 %cmp31 to i32
  %spec.select = getelementptr i8, ptr %add.ptr29, i32 %spec.select.idx
  %spec.select76 = select i1 %cmp31, i32 0, i32 %add30
  %cmp21.not = icmp eq i32 %dec87, 0
  br i1 %cmp21.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else35:                                        ; preds = %if.end13
  %div367778 = lshr i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples)
  %cmp39.not80 = icmp eq i32 %samples, 0
  br i1 %cmp39.not80, label %if.else35.cleanup_crit_edge, label %if.else35.while.body41_crit_edge

if.else35.while.body41_crit_edge:                 ; preds = %if.else35
  br label %while.body41

if.else35.cleanup_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body41:                                     ; preds = %while.body41.while.body41_crit_edge, %if.else35.while.body41_crit_edge
  %dst.282 = phi ptr [ %add.ptr42, %while.body41.while.body41_crit_edge ], [ %add.ptr, %if.else35.while.body41_crit_edge ]
  %samples.addr.181 = phi i32 [ %dec38, %while.body41.while.body41_crit_edge ], [ %samples, %if.else35.while.body41_crit_edge ]
  %dec38 = add i32 %samples.addr.181, -1
  %15 = call ptr @memcpy(ptr %dst.282, ptr %call10, i32 %div367778)
  %add.ptr42 = getelementptr i8, ptr %dst.282, i32 %div1575
  %cmp39.not = icmp eq i32 %dec38, 0
  br i1 %cmp39.not, label %while.body41.cleanup_crit_edge, label %while.body41.while.body41_crit_edge

while.body41.while.body41_crit_edge:              ; preds = %while.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body41

while.body41.cleanup_crit_edge:                   ; preds = %while.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.body41.cleanup_crit_edge, %if.else35.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %if.else35.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ 0, %while.body41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_set_silence(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pcm_format_silence_64(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_area_copy(ptr nocapture noundef readonly %src_area, i32 noundef %src_offset, ptr nocapture noundef readonly %dst_area, i32 noundef %dst_offset, i32 noundef %samples, i32 noundef %format) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_area, align 4
  %first = getelementptr inbounds %struct.snd_pcm_channel_area, ptr %src_area, i32 0, i32 1
  %2 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first, align 4
  %step = getelementptr inbounds %struct.snd_pcm_channel_area, ptr %src_area, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  %mul = mul i32 %5, %src_offset
  %add = add i32 %mul, %3
  %div136 = lshr i32 %add, 3
  %add.ptr = getelementptr i8, ptr %1, i32 %div136
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_pcm_area_silence(ptr noundef %dst_area, i32 noundef %dst_offset, i32 noundef %samples, i32 noundef %format)
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %dst_area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst_area, align 4
  %first3 = getelementptr inbounds %struct.snd_pcm_channel_area, ptr %dst_area, i32 0, i32 1
  %8 = ptrtoint ptr %first3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %first3, align 4
  %step4 = getelementptr inbounds %struct.snd_pcm_channel_area, ptr %dst_area, i32 0, i32 2
  %10 = ptrtoint ptr %step4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %step4, align 4
  %mul5 = mul i32 %11, %dst_offset
  %add6 = add i32 %mul5, %9
  %div7137 = lshr i32 %add6, 3
  %add.ptr8 = getelementptr i8, ptr %7, i32 %div7137
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %format) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp = icmp slt i32 %call13, 1
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %step, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call13)
  %cmp17 = icmp eq i32 %13, %call13
  br i1 %cmp17, label %land.lhs.true, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end15
  %14 = ptrtoint ptr %step4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %step4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call13)
  %cmp19 = icmp eq i32 %15, %call13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call13)
  %cmp21 = icmp ugt i32 %call13, 7
  %or.cond = and i1 %cmp21, %cmp19
  br i1 %or.cond, label %if.then22, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %mul23 = mul i32 %call13, %samples
  %div24141 = lshr i32 %mul23, 3
  %16 = call ptr @memcpy(ptr %add.ptr8, ptr %add.ptr, i32 %div24141)
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %div27138 = lshr i32 %13, 3
  %17 = ptrtoint ptr %step4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %step4, align 4
  %div29139 = lshr i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call13)
  %cmp30 = icmp eq i32 %call13, 4
  br i1 %cmp30, label %if.then31, label %if.else73

if.then31:                                        ; preds = %if.end25
  %rem34 = and i32 %13, 7
  %rem38 = and i32 %18, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples)
  %cmp39.not151 = icmp eq i32 %samples, 0
  br i1 %cmp39.not151, label %if.then31.cleanup_crit_edge, label %while.body.preheader

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.preheader:                             ; preds = %if.then31
  %19 = ptrtoint ptr %first3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %first3, align 4
  %rem36 = and i32 %20, 7
  %21 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %first, align 4
  %rem = and i32 %22, 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dec157.in = phi i32 [ %dec157, %while.body.while.body_crit_edge ], [ %samples, %while.body.preheader ]
  %dstbit.0156 = phi i32 [ %dstbit.1, %while.body.while.body_crit_edge ], [ %rem36, %while.body.preheader ]
  %srcbit.0155 = phi i32 [ %spec.select142, %while.body.while.body_crit_edge ], [ %rem, %while.body.preheader ]
  %dst.0154 = phi ptr [ %dst.1, %while.body.while.body_crit_edge ], [ %add.ptr8, %while.body.preheader ]
  %src.0152 = phi ptr [ %spec.select, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %dec157 = add i32 %dec157.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcbit.0155)
  %tobool40.not = icmp eq i32 %srcbit.0155, 0
  %23 = ptrtoint ptr %src.0152 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %src.0152, align 1
  %25 = and i8 %24, 15
  %26 = lshr i8 %24, 4
  %srcval.0 = select i1 %tobool40.not, i8 %26, i8 %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dstbit.0156)
  %tobool47.not = icmp eq i32 %dstbit.0156, 0
  %27 = ptrtoint ptr %dst.0154 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dst.0154, align 1
  %29 = and i8 %28, 15
  %shl = shl nuw i8 %srcval.0, 4
  %or57 = or i8 %29, %shl
  %30 = and i8 %28, -16
  %or140 = or i8 %30, %srcval.0
  %storemerge = select i1 %tobool47.not, i8 %or57, i8 %or140
  store i8 %storemerge, ptr %dst.0154, align 1
  %add.ptr60 = getelementptr i8, ptr %src.0152, i32 %div27138
  %add61 = add i32 %srcbit.0155, %rem34
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add61)
  %cmp62 = icmp eq i32 %add61, 8
  %spec.select.idx = zext i1 %cmp62 to i32
  %spec.select = getelementptr i8, ptr %add.ptr60, i32 %spec.select.idx
  %spec.select142 = select i1 %cmp62, i32 0, i32 %add61
  %add.ptr66 = getelementptr i8, ptr %dst.0154, i32 %div29139
  %add67 = add i32 %dstbit.0156, %rem38
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add67)
  %cmp68 = icmp eq i32 %add67, 8
  %dst.1.idx = zext i1 %cmp68 to i32
  %dst.1 = getelementptr i8, ptr %add.ptr66, i32 %dst.1.idx
  %dstbit.1 = select i1 %cmp68, i32 0, i32 %add67
  %cmp39.not = icmp eq i32 %dec157, 0
  br i1 %cmp39.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else73:                                        ; preds = %if.end25
  %div74143144 = lshr i32 %call13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples)
  %cmp77.not146 = icmp eq i32 %samples, 0
  br i1 %cmp77.not146, label %if.else73.cleanup_crit_edge, label %if.else73.while.body79_crit_edge

if.else73.while.body79_crit_edge:                 ; preds = %if.else73
  br label %while.body79

if.else73.cleanup_crit_edge:                      ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body79:                                     ; preds = %while.body79.while.body79_crit_edge, %if.else73.while.body79_crit_edge
  %dst.2149 = phi ptr [ %add.ptr81, %while.body79.while.body79_crit_edge ], [ %add.ptr8, %if.else73.while.body79_crit_edge ]
  %src.2148 = phi ptr [ %add.ptr80, %while.body79.while.body79_crit_edge ], [ %add.ptr, %if.else73.while.body79_crit_edge ]
  %samples.addr.1147 = phi i32 [ %dec76, %while.body79.while.body79_crit_edge ], [ %samples, %if.else73.while.body79_crit_edge ]
  %dec76 = add i32 %samples.addr.1147, -1
  %31 = call ptr @memcpy(ptr %dst.2149, ptr %src.2148, i32 %div74143144)
  %add.ptr80 = getelementptr i8, ptr %src.2148, i32 %div27138
  %add.ptr81 = getelementptr i8, ptr %dst.2149, i32 %div29139
  %cmp77.not = icmp eq i32 %dec76, 0
  br i1 %cmp77.not, label %while.body79.cleanup_crit_edge, label %while.body79.while.body79_crit_edge

while.body79.while.body79_crit_edge:              ; preds = %while.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body79

while.body79.cleanup_crit_edge:                   ; preds = %while.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.body79.cleanup_crit_edge, %if.else73.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.then22, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then22 ], [ %call, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ 0, %if.then31.cleanup_crit_edge ], [ 0, %if.else73.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ 0, %while.body79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/oss/pcm_plugin.c", i32 108, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/core/oss/pcm_plugin.c", i32 254, i32 3}
!4 = !{ptr @preferred_formats, !5, !"preferred_formats", i1 false, i1 false}
!5 = !{!"../sound/core/oss/pcm_plugin.c", i32 296, i32 31}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{!"auto-init"}
!18 = !{i32 0, i32 33}
