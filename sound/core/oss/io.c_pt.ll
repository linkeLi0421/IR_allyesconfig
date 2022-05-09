; ModuleID = '/llk/IR_all_yes/sound/core/oss/io.c_pt.bc'
source_filename = "../sound/core/oss/io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_plugin_format = type { i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_plugin = type { ptr, i32, %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [0 x i8] }
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
%struct.snd_pcm_plugin_channel = type { ptr, %struct.snd_pcm_channel_area, i32, i8 }
%struct.snd_pcm_channel_area = type { ptr, i32, i32 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sound/core/oss/io.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"I/O io\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 116, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [23 x i8] c"../sound/core/oss/io.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 124, i32 35 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plugin_build_io(ptr noundef %plug, ptr noundef readonly %params, ptr noundef writeonly %r_plugin) local_unnamed_addr #0 align 64 {
entry:
  %format = alloca %struct.snd_pcm_plugin_format, align 4
  %plugin = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %format) #4
  %0 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %format, i32 0, i32 1
  %1 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %format, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plugin) #4
  %2 = ptrtoint ptr %plugin to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %plugin, align 4, !annotation !13
  %tobool.not = icmp eq ptr %r_plugin, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  %3 = ptrtoint ptr %r_plugin to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %r_plugin, align 4
  %tobool25.not = icmp eq ptr %plug, null
  %tobool26.not = icmp eq ptr %params, null
  %spec.select = or i1 %tobool25.not, %tobool26.not
  br i1 %spec.select, label %do.end44, label %if.end60, !prof !14

do.end44:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end60:                                         ; preds = %if.end23
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end60.if.then.i.i_crit_edge

if.end60.if.then.i.i_crit_edge:                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.end60.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end60.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %5, %if.end60.if.then.i.i_crit_edge ], [ %8, %for.inc.i.i.if.then.i.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #4, !range !15
  %add.i.i = or i32 %6, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end60
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i.i, ptr %format, align 4
  %arrayidx.i.i90 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i90 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i90, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %0, align 4
  %arrayidx.i.i91 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i91, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %1, align 4
  %mul = shl i32 %14, 2
  %call65 = call i32 @snd_pcm_plugin_build(ptr noundef nonnull %plug, ptr noundef nonnull @.str.1, ptr noundef nonnull %format, ptr noundef nonnull %format, i32 noundef %mul, ptr noundef nonnull %plugin) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp = icmp slt i32 %call65, 0
  br i1 %cmp, label %params_format.exit.cleanup_crit_edge, label %if.end67

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end67:                                         ; preds = %params_format.exit
  %arrayidx.i.i92 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 0
  %16 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i93 = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i93, label %for.inc.i.i100, label %if.end67.params_access.exit_crit_edge

if.end67.params_access.exit_crit_edge:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_access.exit

for.inc.i.i100:                                   ; preds = %if.end67
  %arrayidx.1.i.i98 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i.i98 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1.i.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1.i.i99 = icmp eq i32 %19, 0
  br i1 %tobool.not.1.i.i99, label %params_access.exit.thread, label %for.inc.i.i100.params_access.exit_crit_edge

for.inc.i.i100.params_access.exit_crit_edge:      ; preds = %for.inc.i.i100
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_access.exit

params_access.exit:                               ; preds = %for.inc.i.i100.params_access.exit_crit_edge, %if.end67.params_access.exit_crit_edge
  %i.09.lcssa.i.i94 = phi i32 [ 0, %if.end67.params_access.exit_crit_edge ], [ 32, %for.inc.i.i100.params_access.exit_crit_edge ]
  %.lcssa.i.i95 = phi i32 [ %17, %if.end67.params_access.exit_crit_edge ], [ %19, %for.inc.i.i100.params_access.exit_crit_edge ]
  %20 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i95, i1 true) #4, !range !15
  %add.i.i96 = or i32 %20, %i.09.lcssa.i.i94
  %21 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %plugin, align 4
  %access = getelementptr inbounds %struct.snd_pcm_plugin, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i.i96, ptr %access, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 5
  %24 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp69 = icmp eq i32 %25, 0
  br i1 %cmp69, label %if.then70, label %params_access.exit.if.else_crit_edge

params_access.exit.if.else_crit_edge:             ; preds = %params_access.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

params_access.exit.thread:                        ; preds = %for.inc.i.i100
  %26 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %plugin, align 4
  %access103 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %access103 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %access103, align 4
  %stream104 = getelementptr inbounds %struct.snd_pcm_substream, ptr %plug, i32 0, i32 5
  %29 = ptrtoint ptr %stream104 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stream104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp69105 = icmp eq i32 %30, 0
  br i1 %cmp69105, label %if.then70.thread, label %params_access.exit.thread.if.else_crit_edge

params_access.exit.thread.if.else_crit_edge:      ; preds = %params_access.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then70.thread:                                 ; preds = %params_access.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  %transfer108 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %27, i32 0, i32 10
  %31 = ptrtoint ptr %transfer108 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @io_playback_transfer, ptr %transfer108, align 4
  br label %if.end76

if.then70:                                        ; preds = %params_access.exit
  %transfer = getelementptr inbounds %struct.snd_pcm_plugin, ptr %22, i32 0, i32 10
  %32 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @io_playback_transfer, ptr %transfer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.i.i96)
  %cmp72 = icmp eq i32 %add.i.i96, 3
  br i1 %cmp72, label %if.then73, label %if.then70.if.end76_crit_edge

if.then70.if.end76_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.then73:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  %client_channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %22, i32 0, i32 9
  %33 = ptrtoint ptr %client_channels to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @io_src_channels, ptr %client_channels, align 4
  br label %if.end76

if.else:                                          ; preds = %params_access.exit.thread.if.else_crit_edge, %params_access.exit.if.else_crit_edge
  %34 = phi ptr [ %27, %params_access.exit.thread.if.else_crit_edge ], [ %22, %params_access.exit.if.else_crit_edge ]
  %transfer75 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %transfer75 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @io_capture_transfer, ptr %transfer75, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then73, %if.then70.if.end76_crit_edge, %if.then70.thread
  %36 = phi ptr [ %22, %if.then70.if.end76_crit_edge ], [ %22, %if.then73 ], [ %34, %if.else ], [ %27, %if.then70.thread ]
  %37 = ptrtoint ptr %r_plugin to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %r_plugin, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %params_format.exit.cleanup_crit_edge, %do.end44, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end44 ], [ 0, %if.end76 ], [ %call65, %params_format.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plugin) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %format) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_build(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @io_playback_transfer(ptr noundef %plugin, ptr noundef readonly %src_channels, ptr nocapture noundef readnone %dst_channels, i32 noundef %frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plugin, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end23:                                         ; preds = %entry
  %tobool25.not = icmp eq ptr %src_channels, null
  br i1 %tobool25.not, label %do.end43, label %if.end59, !prof !14

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end59:                                         ; preds = %if.end23
  %access = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 6
  %0 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  %plug = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 14
  %2 = ptrtoint ptr %plug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plug, align 4
  %area = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 0, i32 1
  %4 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %area, align 4
  %call = tail call i32 @snd_pcm_oss_write3(ptr noundef %3, ptr noundef %5, i32 noundef %frames, i32 noundef 1) #4
  br label %return

if.else:                                          ; preds = %if.end59
  %channels61 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %channels61 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels61, align 4
  %extra_data = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 20
  %tobool63.not = icmp eq ptr %extra_data, null
  br i1 %tobool63.not, label %do.end81, label %for.cond.preheader, !prof !14

for.cond.preheader:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp98132 = icmp sgt i32 %7, 0
  br i1 %cmp98132, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end81:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef null) #4
  br label %return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %channel.0133 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %enabled = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0133, i32 3
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool99.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool99.not, label %for.body.for.inc_crit_edge, label %if.then100

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then100:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %area102 = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0133, i32 1
  %9 = ptrtoint ptr %area102 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %area102, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then100, %for.body.for.inc_crit_edge
  %.sink = phi ptr [ %10, %if.then100 ], [ null, %for.body.for.inc_crit_edge ]
  %11 = getelementptr ptr, ptr %extra_data, i32 %channel.0133
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.sink, ptr %11, align 4
  %inc = add nuw nsw i32 %channel.0133, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %plug108 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 14
  %13 = ptrtoint ptr %plug108 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plug108, align 4
  %call109 = tail call i32 @snd_pcm_oss_writev3(ptr noundef %14, ptr noundef nonnull %extra_data, i32 noundef %frames) #4
  br label %return

return:                                           ; preds = %for.end, %do.end81, %if.then60, %do.end43, %do.end
  %retval.1 = phi i32 [ -6, %do.end ], [ -6, %do.end43 ], [ %call, %if.then60 ], [ -6, %do.end81 ], [ %call109, %for.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @io_src_channels(ptr noundef %plugin, i32 noundef %frames, ptr nocapture noundef writeonly %channels) #0 align 64 {
entry:
  %v = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #4
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %v, align 4, !annotation !13
  %call = call i32 @snd_pcm_plugin_client_channels(ptr noundef %plugin, i32 noundef %frames, ptr noundef nonnull %v) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %v, align 4
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %channels, align 4
  %access = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 6
  %4 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp1 = icmp eq i32 %5, 3
  br i1 %cmp1, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %channels3 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %channels3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp414.not = icmp eq i32 %7, 0
  br i1 %cmp414.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %8)
  %v.promoted = load ptr, ptr %v, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %channel.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %incdec.ptr1315 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %v.promoted, %for.body.preheader ]
  %wanted = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %incdec.ptr1315, i32 0, i32 3
  %9 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %wanted, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %wanted, align 4
  %inc = add nuw i32 %channel.016, 1
  %incdec.ptr = getelementptr %struct.snd_pcm_plugin_channel, ptr %incdec.ptr1315, i32 1
  %10 = ptrtoint ptr %channels3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels3, align 4
  %cmp4 = icmp ult i32 %inc, %11
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %frames, %if.end.cleanup_crit_edge ], [ %frames, %for.cond.preheader.cleanup_crit_edge ], [ %frames, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @io_capture_transfer(ptr noundef %plugin, ptr nocapture noundef readnone %src_channels, ptr noundef readonly %dst_channels, i32 noundef %frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plugin, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end23:                                         ; preds = %entry
  %tobool25.not = icmp eq ptr %dst_channels, null
  br i1 %tobool25.not, label %do.end43, label %if.end59, !prof !14

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end59:                                         ; preds = %if.end23
  %access = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 6
  %0 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  %plug = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 14
  %2 = ptrtoint ptr %plug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plug, align 4
  %area = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 0, i32 1
  %4 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %area, align 4
  %call = tail call i32 @snd_pcm_oss_read3(ptr noundef %3, ptr noundef %5, i32 noundef %frames, i32 noundef 1) #4
  br label %return

if.else:                                          ; preds = %if.end59
  %channels61 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %channels61 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels61, align 4
  %extra_data = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 20
  %tobool63.not = icmp eq ptr %extra_data, null
  br i1 %tobool63.not, label %do.end81, label %for.cond.preheader, !prof !14

for.cond.preheader:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp98132 = icmp sgt i32 %7, 0
  br i1 %cmp98132, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end81:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #4
  br label %return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %channel.0133 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %enabled = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0133, i32 3
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool99.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool99.not, label %for.body.for.inc_crit_edge, label %if.then100

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then100:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %area102 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0133, i32 1
  %9 = ptrtoint ptr %area102 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %area102, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then100, %for.body.for.inc_crit_edge
  %.sink = phi ptr [ %10, %if.then100 ], [ null, %for.body.for.inc_crit_edge ]
  %11 = getelementptr ptr, ptr %extra_data, i32 %channel.0133
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.sink, ptr %11, align 4
  %inc = add nuw nsw i32 %channel.0133, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %plug108 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 14
  %13 = ptrtoint ptr %plug108 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plug108, align 4
  %call109 = tail call i32 @snd_pcm_oss_readv3(ptr noundef %14, ptr noundef nonnull %extra_data, i32 noundef %frames) #4
  br label %return

return:                                           ; preds = %for.end, %do.end81, %if.then60, %do.end43, %do.end
  %retval.1 = phi i32 [ -6, %do.end ], [ -6, %do.end43 ], [ %call, %if.then60 ], [ -6, %do.end81 ], [ %call109, %for.end ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_oss_write3(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_oss_writev3(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_client_channels(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_oss_read3(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_oss_readv3(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
!1 = !{!"../sound/core/oss/io.c", i32 116, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/core/oss/io.c", i32 124, i32 35}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i32 0, i32 33}
