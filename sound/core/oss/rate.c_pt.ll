; ModuleID = '/llk/IR_all_yes/sound/core/oss/rate.c_pt.bc'
source_filename = "../sound/core/oss/rate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_plugin_format = type { i32, i32, i32 }
%struct.snd_pcm_plugin = type { ptr, i32, %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [0 x i8] }
%struct.rate_channel = type { i16, i16 }
%struct.snd_pcm_plugin_channel = type { ptr, %struct.snd_pcm_channel_area, i32, i8 }
%struct.snd_pcm_channel_area = type { ptr, i32, i32 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/core/oss/rate.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rate conversion\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 309, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [25 x i8] c"../sound/core/oss/rate.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 324, i32 35 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plugin_build_rate(ptr noundef %plug, ptr noundef %src_format, ptr noundef %dst_format, ptr noundef writeonly %r_plugin) local_unnamed_addr #0 align 64 {
entry:
  %plugin = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plugin) #4
  %0 = ptrtoint ptr %plugin to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %plugin, align 4, !annotation !13
  %tobool.not = icmp eq ptr %r_plugin, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  %1 = ptrtoint ptr %r_plugin to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %r_plugin, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %src_format, i32 0, i32 2
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channels, align 4
  %channels25 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %dst_format, i32 0, i32 2
  %4 = ptrtoint ptr %channels25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end57, label %do.end41, !prof !15

do.end41:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 313, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end57:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp60 = icmp eq i32 %3, 0
  br i1 %cmp60, label %do.end76, label %if.end92, !prof !14

do.end76:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end92:                                         ; preds = %if.end57
  %6 = ptrtoint ptr %src_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp94.not = icmp eq i32 %7, 3
  br i1 %cmp94.not, label %if.end126, label %do.end110, !prof !15

do.end110:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end126:                                        ; preds = %if.end92
  %8 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp129.not = icmp eq i32 %9, 3
  br i1 %cmp129.not, label %if.end161, label %do.end145, !prof !15

do.end145:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 319, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end161:                                        ; preds = %if.end126
  %rate = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %src_format, i32 0, i32 1
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %rate163 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %dst_format, i32 0, i32 1
  %12 = ptrtoint ptr %rate163 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate163, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp164 = icmp eq i32 %11, %13
  br i1 %cmp164, label %do.end180, label %if.end196, !prof !14

do.end180:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 321, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end196:                                        ; preds = %if.end161
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #4
  %15 = extractvalue { i32, i1 } %14, 1
  %16 = extractvalue { i32, i1 } %14, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %16, i32 20) #4
  %retval.0.i = select i1 %15, i32 -1, i32 %spec.select.i
  %call198 = call i32 @snd_pcm_plugin_build(ptr noundef %plug, ptr noundef nonnull @.str.1, ptr noundef %src_format, ptr noundef %dst_format, i32 noundef %retval.0.i, ptr noundef nonnull %plugin) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %cmp199 = icmp slt i32 %call198, 0
  br i1 %cmp199, label %if.end196.cleanup_crit_edge, label %if.end201

if.end196.cleanup_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end201:                                        ; preds = %if.end196
  %17 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plugin, align 4
  %extra_data = getelementptr inbounds %struct.snd_pcm_plugin, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate, align 4
  %21 = ptrtoint ptr %rate163 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate163, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp204 = icmp ult i32 %20, %22
  br i1 %cmp204, label %if.then205, label %if.else

if.then205:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl i32 %20, 11
  %shr = lshr i32 %22, 1
  br label %if.end218

if.else:                                          ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #6
  %shl210 = shl i32 %22, 11
  %shr212 = lshr i32 %20, 1
  br label %if.end218

if.end218:                                        ; preds = %if.else, %if.then205
  %shr212.sink = phi i32 [ %shr212, %if.else ], [ %shl, %if.then205 ]
  %shl210.sink = phi i32 [ %shl210, %if.else ], [ %shr, %if.then205 ]
  %.sink = phi i32 [ %20, %if.else ], [ %22, %if.then205 ]
  %resample_shrink.sink = phi ptr [ @resample_shrink, %if.else ], [ @resample_expand, %if.then205 ]
  %add213 = add i32 %shl210.sink, %shr212.sink
  %div215 = udiv i32 %add213, %.sink
  %23 = ptrtoint ptr %extra_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div215, ptr %extra_data, align 4
  %24 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %18, i32 1, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resample_shrink.sink, ptr %24, align 4
  %pos = getelementptr inbounds %struct.snd_pcm_plugin, ptr %18, i32 1, i32 1
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %pos, align 4
  %channels.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %18, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp10.not.i = icmp eq i32 %28, 0
  br i1 %cmp10.not.i, label %if.end218.rate_init.exit_crit_edge, label %for.body.lr.ph.i

if.end218.rate_init.exit_crit_edge:               ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #6
  br label %rate_init.exit

for.body.lr.ph.i:                                 ; preds = %if.end218
  %channels1.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %18, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %channel.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x %struct.rate_channel], ptr %channels1.i, i32 0, i32 %channel.011.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %arrayidx.i, align 4
  %last_S2.i = getelementptr [0 x %struct.rate_channel], ptr %channels1.i, i32 0, i32 %channel.011.i, i32 1
  %30 = ptrtoint ptr %last_S2.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %last_S2.i, align 2
  %inc.i = add nuw i32 %channel.011.i, 1
  %31 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rate_init.exit_crit_edge

for.body.i.rate_init.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rate_init.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

rate_init.exit:                                   ; preds = %for.body.i.rate_init.exit_crit_edge, %if.end218.rate_init.exit_crit_edge
  %old_dst_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %18, i32 1, i32 2, i32 2
  %33 = ptrtoint ptr %old_dst_frames to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %old_dst_frames, align 4
  %old_src_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %18, i32 1, i32 2, i32 1
  %34 = ptrtoint ptr %old_src_frames to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %old_src_frames, align 4
  %35 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %plugin, align 4
  %transfer = getelementptr inbounds %struct.snd_pcm_plugin, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @rate_transfer, ptr %transfer, align 4
  %src_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %36, i32 0, i32 7
  %38 = ptrtoint ptr %src_frames to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @rate_src_frames, ptr %src_frames, align 4
  %dst_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %36, i32 0, i32 8
  %39 = ptrtoint ptr %dst_frames to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @rate_dst_frames, ptr %dst_frames, align 4
  %action = getelementptr inbounds %struct.snd_pcm_plugin, ptr %36, i32 0, i32 11
  %40 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rate_action, ptr %action, align 4
  %41 = ptrtoint ptr %r_plugin to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %36, ptr %r_plugin, align 4
  br label %cleanup

cleanup:                                          ; preds = %rate_init.exit, %if.end196.cleanup_crit_edge, %do.end180, %do.end145, %do.end110, %do.end76, %do.end41, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end41 ], [ -6, %do.end76 ], [ -6, %do.end110 ], [ -6, %do.end145 ], [ -6, %do.end180 ], [ 0, %rate_init.exit ], [ %call198, %if.end196.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plugin) #4
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
define internal void @resample_expand(ptr nocapture noundef %plugin, ptr nocapture noundef readonly %src_channels, ptr noundef %dst_channels, i32 noundef %src_frames, i32 noundef %dst_frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %extra_data = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 20
  %channels2 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %channels2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp133.not = icmp eq i32 %1, 0
  br i1 %cmp133.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 3
  %pos3 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_frames)
  %cmp44123 = icmp sgt i32 %dst_frames, 0
  %dst_format = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rchannels.0137 = phi ptr [ %channels, %for.body.lr.ph ], [ %rchannels.1, %for.inc.for.body_crit_edge ]
  %channel.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %pos3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos3, align 4
  %last_S2 = getelementptr inbounds %struct.rate_channel, ptr %rchannels.0137, i32 0, i32 1
  %enabled = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0134, i32 3
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %if.end15

if.then:                                          ; preds = %for.body
  %wanted = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0134, i32 3
  %5 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load5 = load i8, ptr %wanted, align 4
  %6 = and i8 %bf.load5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %area = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0134, i32 1
  %7 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_format, align 4
  %call = tail call i32 @snd_pcm_area_silence(ptr noundef %area, i32 noundef 0, i32 noundef %dst_frames, i32 noundef %8) #4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load13 = load i8, ptr %wanted, align 4
  %bf.clear14 = and i8 %bf.load13, 127
  store i8 %bf.clear14, ptr %wanted, align 4
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %10 = ptrtoint ptr %last_S2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %last_S2, align 2
  %12 = ptrtoint ptr %rchannels.0137 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rchannels.0137, align 2
  %enabled17 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0134, i32 3
  %14 = ptrtoint ptr %enabled17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load18 = load i8, ptr %enabled17, align 4
  %bf.set20 = or i8 %bf.load18, -128
  store i8 %bf.set20, ptr %enabled17, align 4
  %step = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0134, i32 1, i32 2
  %15 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %step, align 4
  %div38119 = lshr i32 %16, 4
  %step41 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0134, i32 1, i32 2
  %17 = ptrtoint ptr %step41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %step41, align 4
  %div43121 = lshr i32 %18, 4
  br i1 %cmp44123, label %while.body.preheader, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.preheader:                             ; preds = %if.end15
  %area27 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0134, i32 1
  %19 = ptrtoint ptr %area27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %area27, align 4
  %first31 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0134, i32 1, i32 1
  %21 = ptrtoint ptr %first31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %first31, align 4
  %div33117 = lshr i32 %22, 4
  %add.ptr34 = getelementptr i16, ptr %20, i32 %div33117
  %area22 = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0134, i32 1
  %23 = ptrtoint ptr %area22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %area22, align 4
  %first = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0134, i32 1, i32 1
  %25 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %first, align 4
  %div25115 = lshr i32 %26, 4
  %add.ptr = getelementptr i16, ptr %24, i32 %div25115
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %while.body.preheader
  %dec130.in = phi i32 [ %dec130, %if.end53.while.body_crit_edge ], [ %dst_frames, %while.body.preheader ]
  %src_frames1.0129 = phi i32 [ %src_frames1.1, %if.end53.while.body_crit_edge ], [ %src_frames, %while.body.preheader ]
  %dst.0128 = phi ptr [ %add.ptr66, %if.end53.while.body_crit_edge ], [ %add.ptr34, %while.body.preheader ]
  %src.0127 = phi ptr [ %src.1, %if.end53.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %S2.0126 = phi i16 [ %S2.1, %if.end53.while.body_crit_edge ], [ %11, %while.body.preheader ]
  %S1.0125 = phi i16 [ %S1.1, %if.end53.while.body_crit_edge ], [ %13, %while.body.preheader ]
  %pos.1124 = phi i32 [ %add67, %if.end53.while.body_crit_edge ], [ %3, %while.body.preheader ]
  %dec130 = add nsw i32 %dec130.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %pos.1124)
  %tobool45.not = icmp ult i32 %pos.1124, 2048
  br i1 %tobool45.not, label %while.body.if.end53_crit_edge, label %if.then46

while.body.if.end53_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then46:                                        ; preds = %while.body
  %and47 = and i32 %pos.1124, 2047
  %dec48 = add i32 %src_frames1.0129, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_frames1.0129)
  %cmp49 = icmp sgt i32 %src_frames1.0129, 0
  br i1 %cmp49, label %if.then50, label %if.then46.if.end53_crit_edge

if.then46.if.end53_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %src.0127 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %src.0127, align 2
  %add.ptr51 = getelementptr i16, ptr %src.0127, i32 %div38119
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.then46.if.end53_crit_edge, %while.body.if.end53_crit_edge
  %pos.2 = phi i32 [ %and47, %if.then50 ], [ %and47, %if.then46.if.end53_crit_edge ], [ %pos.1124, %while.body.if.end53_crit_edge ]
  %S1.1 = phi i16 [ %S2.0126, %if.then50 ], [ %S2.0126, %if.then46.if.end53_crit_edge ], [ %S1.0125, %while.body.if.end53_crit_edge ]
  %S2.1 = phi i16 [ %28, %if.then50 ], [ %S2.0126, %if.then46.if.end53_crit_edge ], [ %S2.0126, %while.body.if.end53_crit_edge ]
  %src.1 = phi ptr [ %add.ptr51, %if.then50 ], [ %src.0127, %if.then46.if.end53_crit_edge ], [ %src.0127, %while.body.if.end53_crit_edge ]
  %src_frames1.1 = phi i32 [ %dec48, %if.then50 ], [ %dec48, %if.then46.if.end53_crit_edge ], [ %src_frames1.0129, %while.body.if.end53_crit_edge ]
  %conv = sext i16 %S1.1 to i32
  %conv54 = sext i16 %S2.1 to i32
  %sub = sub nsw i32 %conv54, %conv
  %mul = mul nsw i32 %sub, %pos.2
  %div56 = sdiv i32 %mul, 2048
  %add = add nsw i32 %div56, %conv
  %29 = tail call i32 @llvm.smin.i32(i32 %add, i32 32767)
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 -32768)
  %conv65 = trunc i32 %30 to i16
  %31 = ptrtoint ptr %dst.0128 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv65, ptr %dst.0128, align 2
  %add.ptr66 = getelementptr i16, ptr %dst.0128, i32 %div43121
  %32 = ptrtoint ptr %extra_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %extra_data, align 4
  %add67 = add i32 %33, %pos.2
  %cmp44 = icmp ugt i32 %dec130.in, 1
  br i1 %cmp44, label %if.end53.while.body_crit_edge, label %if.end53.while.end_crit_edge

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end53.while.end_crit_edge, %if.end15.while.end_crit_edge
  %pos.1.lcssa = phi i32 [ %3, %if.end15.while.end_crit_edge ], [ %add67, %if.end53.while.end_crit_edge ]
  %S1.0.lcssa = phi i16 [ %13, %if.end15.while.end_crit_edge ], [ %S1.1, %if.end53.while.end_crit_edge ]
  %S2.0.lcssa = phi i16 [ %11, %if.end15.while.end_crit_edge ], [ %S2.1, %if.end53.while.end_crit_edge ]
  %34 = ptrtoint ptr %rchannels.0137 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %S1.0.lcssa, ptr %rchannels.0137, align 2
  %35 = ptrtoint ptr %last_S2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %S2.0.lcssa, ptr %last_S2, align 2
  %incdec.ptr = getelementptr %struct.rate_channel, ptr %rchannels.0137, i32 1
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.end
  %pos.3 = phi i32 [ %pos.1.lcssa, %while.end ], [ %3, %if.end ]
  %rchannels.1 = phi ptr [ %incdec.ptr, %while.end ], [ %rchannels.0137, %if.end ]
  %inc = add nuw i32 %channel.0134, 1
  %36 = ptrtoint ptr %channels2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channels2, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pos.3, %for.inc.for.end_crit_edge ]
  %pos70 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 1
  %38 = ptrtoint ptr %pos70 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %pos.0.lcssa, ptr %pos70, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @resample_shrink(ptr nocapture noundef %plugin, ptr nocapture noundef readonly %src_channels, ptr noundef %dst_channels, i32 noundef %src_frames, i32 noundef %dst_frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %extra_data = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 20
  %channels2 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %channels2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp132.not = icmp eq i32 %1, 0
  br i1 %cmp132.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 3
  %pos3 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_frames)
  %cmp44123 = icmp sgt i32 %dst_frames, 0
  %dst_format = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rchannels.0136 = phi ptr [ %channels, %for.body.lr.ph ], [ %rchannels.1, %for.inc.for.body_crit_edge ]
  %channel.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %pos3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos3, align 4
  %last_S2 = getelementptr inbounds %struct.rate_channel, ptr %rchannels.0136, i32 0, i32 1
  %enabled = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0133, i32 3
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %if.end15

if.then:                                          ; preds = %for.body
  %wanted = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0133, i32 3
  %5 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load5 = load i8, ptr %wanted, align 4
  %6 = and i8 %bf.load5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %area = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0133, i32 1
  %7 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_format, align 4
  %call = tail call i32 @snd_pcm_area_silence(ptr noundef %area, i32 noundef 0, i32 noundef %dst_frames, i32 noundef %8) #4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load13 = load i8, ptr %wanted, align 4
  %bf.clear14 = and i8 %bf.load13, 127
  store i8 %bf.clear14, ptr %wanted, align 4
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %10 = ptrtoint ptr %last_S2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %last_S2, align 2
  %12 = ptrtoint ptr %rchannels.0136 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rchannels.0136, align 2
  %enabled17 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0133, i32 3
  %14 = ptrtoint ptr %enabled17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load18 = load i8, ptr %enabled17, align 4
  %bf.set20 = or i8 %bf.load18, -128
  store i8 %bf.set20, ptr %enabled17, align 4
  %step = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0133, i32 1, i32 2
  %15 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %step, align 4
  %div38120 = lshr i32 %16, 4
  %step41 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0133, i32 1, i32 2
  %17 = ptrtoint ptr %step41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %step41, align 4
  %div43122 = lshr i32 %18, 4
  br i1 %cmp44123, label %while.body.preheader, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.preheader:                             ; preds = %if.end15
  %area27 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0133, i32 1
  %19 = ptrtoint ptr %area27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %area27, align 4
  %first31 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0133, i32 1, i32 1
  %21 = ptrtoint ptr %first31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %first31, align 4
  %div33118 = lshr i32 %22, 4
  %add.ptr34 = getelementptr i16, ptr %20, i32 %div33118
  %area22 = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0133, i32 1
  %23 = ptrtoint ptr %area22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %area22, align 4
  %first = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0133, i32 1, i32 1
  %25 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %first, align 4
  %div25116 = lshr i32 %26, 4
  %add.ptr = getelementptr i16, ptr %24, i32 %div25116
  br label %while.body

while.body:                                       ; preds = %if.end66.while.body_crit_edge, %while.body.preheader
  %dst_frames1.0129 = phi i32 [ %dst_frames1.1, %if.end66.while.body_crit_edge ], [ %dst_frames, %while.body.preheader ]
  %src_frames1.0128 = phi i32 [ %dec, %if.end66.while.body_crit_edge ], [ %src_frames, %while.body.preheader ]
  %dst.0127 = phi ptr [ %dst.1, %if.end66.while.body_crit_edge ], [ %add.ptr34, %while.body.preheader ]
  %src.0126 = phi ptr [ %src.1, %if.end66.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %S2.0125 = phi i16 [ %S2.1, %if.end66.while.body_crit_edge ], [ %11, %while.body.preheader ]
  %pos.1124 = phi i32 [ %add67, %if.end66.while.body_crit_edge ], [ %3, %while.body.preheader ]
  %dec = add i32 %src_frames1.0128, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_frames1.0128)
  %cmp45 = icmp sgt i32 %src_frames1.0128, 0
  br i1 %cmp45, label %if.then46, label %while.body.if.end48_crit_edge

while.body.if.end48_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then46:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %src.0126 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %src.0126, align 2
  %add.ptr47 = getelementptr i16, ptr %src.0126, i32 %div38120
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %while.body.if.end48_crit_edge
  %S2.1 = phi i16 [ %28, %if.then46 ], [ %S2.0125, %while.body.if.end48_crit_edge ]
  %src.1 = phi ptr [ %add.ptr47, %if.then46 ], [ %src.0126, %while.body.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %pos.1124)
  %tobool49.not = icmp ult i32 %pos.1124, 2048
  br i1 %tobool49.not, label %if.end48.if.end66_crit_edge, label %if.then50

if.end48.if.end66_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %and51 = and i32 %pos.1124, 2047
  %conv = sext i16 %S2.0125 to i32
  %conv52 = sext i16 %S2.1 to i32
  %sub = sub nsw i32 %conv52, %conv
  %mul = mul nsw i32 %sub, %and51
  %div54 = sdiv i32 %mul, 2048
  %add = add nsw i32 %div54, %conv
  %29 = tail call i32 @llvm.smin.i32(i32 %add, i32 32767)
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 -32768)
  %conv63 = trunc i32 %30 to i16
  %31 = ptrtoint ptr %dst.0127 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv63, ptr %dst.0127, align 2
  %add.ptr64 = getelementptr i16, ptr %dst.0127, i32 %div43122
  %dec65 = add nsw i32 %dst_frames1.0129, -1
  br label %if.end66

if.end66:                                         ; preds = %if.then50, %if.end48.if.end66_crit_edge
  %pos.2 = phi i32 [ %and51, %if.then50 ], [ %pos.1124, %if.end48.if.end66_crit_edge ]
  %dst.1 = phi ptr [ %add.ptr64, %if.then50 ], [ %dst.0127, %if.end48.if.end66_crit_edge ]
  %dst_frames1.1 = phi i32 [ %dec65, %if.then50 ], [ %dst_frames1.0129, %if.end48.if.end66_crit_edge ]
  %32 = ptrtoint ptr %extra_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %extra_data, align 4
  %add67 = add i32 %33, %pos.2
  %cmp44 = icmp sgt i32 %dst_frames1.1, 0
  br i1 %cmp44, label %if.end66.while.body_crit_edge, label %if.end66.while.end_crit_edge

if.end66.while.end_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end66.while.body_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end66.while.end_crit_edge, %if.end15.while.end_crit_edge
  %pos.1.lcssa = phi i32 [ %3, %if.end15.while.end_crit_edge ], [ %add67, %if.end66.while.end_crit_edge ]
  %S1.0.lcssa = phi i16 [ %13, %if.end15.while.end_crit_edge ], [ %S2.0125, %if.end66.while.end_crit_edge ]
  %S2.0.lcssa = phi i16 [ %11, %if.end15.while.end_crit_edge ], [ %S2.1, %if.end66.while.end_crit_edge ]
  %34 = ptrtoint ptr %rchannels.0136 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %S1.0.lcssa, ptr %rchannels.0136, align 2
  %35 = ptrtoint ptr %last_S2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %S2.0.lcssa, ptr %last_S2, align 2
  %incdec.ptr = getelementptr %struct.rate_channel, ptr %rchannels.0136, i32 1
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.end
  %pos.3 = phi i32 [ %pos.1.lcssa, %while.end ], [ %3, %if.end ]
  %rchannels.1 = phi ptr [ %incdec.ptr, %while.end ], [ %rchannels.0136, %if.end ]
  %inc = add nuw i32 %channel.0133, 1
  %36 = ptrtoint ptr %channels2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channels2, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pos.3, %for.inc.for.end_crit_edge ]
  %pos70 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 1
  %38 = ptrtoint ptr %pos70 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %pos.0.lcssa, ptr %pos70, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rate_transfer(ptr noundef %plugin, ptr noundef %src_channels, ptr noundef %dst_channels, i32 noundef %frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plugin, null
  %tobool1.not = icmp eq ptr %src_channels, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool2.not = icmp eq ptr %dst_channels, null
  %spec.select147 = or i1 %or.cond, %tobool2.not
  br i1 %spec.select147, label %do.end, label %if.end25, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %cleanup121

if.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames)
  %cmp = icmp eq i32 %frames, 0
  br i1 %cmp, label %if.end25.cleanup121_crit_edge, label %for.cond.preheader

if.end25.cleanup121_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup121

for.cond.preheader:                               ; preds = %if.end25
  %channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28149.not = icmp eq i32 %1, 0
  br i1 %cmp28149.not, label %for.cond.preheader.if.end25.i_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end25.i_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i

for.cond:                                         ; preds = %lor.rhs75
  %inc = add nuw i32 %channel.0150, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.if.end25.i_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.if.end25.i_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %channel.0150 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %first = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0150, i32 1, i32 1
  %2 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first, align 4
  %rem = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool30.not = icmp eq i32 %rem, 0
  br i1 %tobool30.not, label %lor.rhs31, label %for.body.do.end52_crit_edge

for.body.do.end52_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

lor.rhs31:                                        ; preds = %for.body
  %step = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0150, i32 1, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  %rem34 = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem34)
  %tobool35.not = icmp eq i32 %rem34, 0
  br i1 %tobool35.not, label %if.end68, label %lor.rhs31.do.end52_crit_edge, !prof !15

lor.rhs31.do.end52_crit_edge:                     ; preds = %lor.rhs31
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

do.end52:                                         ; preds = %lor.rhs31.do.end52_crit_edge, %for.body.do.end52_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #4
  br label %cleanup121

if.end68:                                         ; preds = %lor.rhs31
  %first72 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0150, i32 1, i32 1
  %6 = ptrtoint ptr %first72 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first72, align 4
  %rem73 = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem73)
  %tobool74.not = icmp eq i32 %rem73, 0
  br i1 %tobool74.not, label %lor.rhs75, label %if.end68.do.end97_crit_edge

if.end68.do.end97_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end97

lor.rhs75:                                        ; preds = %if.end68
  %step78 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0150, i32 1, i32 2
  %8 = ptrtoint ptr %step78 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %step78, align 4
  %rem79 = and i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem79)
  %tobool80.not = icmp eq i32 %rem79, 0
  br i1 %tobool80.not, label %for.cond, label %lor.rhs75.do.end97_crit_edge, !prof !15

lor.rhs75.do.end97_crit_edge:                     ; preds = %lor.rhs75
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end97

do.end97:                                         ; preds = %lor.rhs75.do.end97_crit_edge, %if.end68.do.end97_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef null) #4
  br label %cleanup121

if.end25.i:                                       ; preds = %for.cond.if.end25.i_crit_edge, %for.cond.preheader.if.end25.i_crit_edge
  %extra_data.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 20
  %rate.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate.i, align 4
  %rate26.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %rate26.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp27.i = icmp ult i32 %11, %13
  br i1 %cmp27.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl.i = shl i32 %frames, 11
  %14 = ptrtoint ptr %extra_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %extra_data.i, align 4
  %div81.i = lshr i32 %15, 1
  %add.i = add i32 %div81.i, %shl.i
  %div30.i = udiv i32 %add.i, %15
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %extra_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %extra_data.i, align 4
  %mul.i = mul i32 %17, %frames
  %add32.i = add i32 %mul.i, 1024
  %shr.i = lshr i32 %add32.i, 11
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i, %if.then28.i
  %res.0.i = phi i32 [ %div30.i, %if.then28.i ], [ %shr.i, %if.else.i ]
  %old_dst_frames.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 2
  %18 = ptrtoint ptr %old_dst_frames.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old_dst_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp34.i = icmp sgt i32 %19, 0
  br i1 %cmp34.i, label %if.then35.i, label %if.end33.i.if.end52.i_crit_edge

if.end33.i.if.end52.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52.i

if.then35.i:                                      ; preds = %if.end33.i
  %old_src_frames.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 1
  %20 = ptrtoint ptr %old_src_frames.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old_src_frames.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %frames)
  %cmp3782.i = icmp slt i32 %19, %frames
  br i1 %cmp3782.i, label %if.then35.i.while.body.i_crit_edge, label %if.then35.i.while.cond40.preheader.i_crit_edge

if.then35.i.while.cond40.preheader.i_crit_edge:   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond40.preheader.i

if.then35.i.while.body.i_crit_edge:               ; preds = %if.then35.i
  br label %while.body.i

while.cond40.preheader.i:                         ; preds = %while.body.i.while.cond40.preheader.i_crit_edge, %if.then35.i.while.cond40.preheader.i_crit_edge
  %frames1.0.lcssa.i = phi i32 [ %frames, %if.then35.i.while.cond40.preheader.i_crit_edge ], [ %shr38.i, %while.body.i.while.cond40.preheader.i_crit_edge ]
  %res1.0.lcssa.i = phi i32 [ %21, %if.then35.i.while.cond40.preheader.i_crit_edge ], [ %shl39.i, %while.body.i.while.cond40.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %frames1.0.lcssa.i)
  %cmp4286.i = icmp sgt i32 %19, %frames1.0.lcssa.i
  br i1 %cmp4286.i, label %while.cond40.preheader.i.while.body43.i_crit_edge, label %while.cond40.preheader.i.while.end46.i_crit_edge

while.cond40.preheader.i.while.end46.i_crit_edge: ; preds = %while.cond40.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end46.i

while.cond40.preheader.i.while.body43.i_crit_edge: ; preds = %while.cond40.preheader.i
  br label %while.body43.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then35.i.while.body.i_crit_edge
  %res1.084.i = phi i32 [ %shl39.i, %while.body.i.while.body.i_crit_edge ], [ %21, %if.then35.i.while.body.i_crit_edge ]
  %frames1.083.i = phi i32 [ %shr38.i, %while.body.i.while.body.i_crit_edge ], [ %frames, %if.then35.i.while.body.i_crit_edge ]
  %shr38.i = ashr i32 %frames1.083.i, 1
  %shl39.i = shl i32 %res1.084.i, 1
  %cmp37.i = icmp slt i32 %19, %shr38.i
  br i1 %cmp37.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond40.preheader.i_crit_edge

while.body.i.while.cond40.preheader.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond40.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body43.i:                                   ; preds = %while.body43.i.while.body43.i_crit_edge, %while.cond40.preheader.i.while.body43.i_crit_edge
  %res1.188.i = phi i32 [ %shr45.i, %while.body43.i.while.body43.i_crit_edge ], [ %res1.0.lcssa.i, %while.cond40.preheader.i.while.body43.i_crit_edge ]
  %frames1.187.i = phi i32 [ %shl44.i, %while.body43.i.while.body43.i_crit_edge ], [ %frames1.0.lcssa.i, %while.cond40.preheader.i.while.body43.i_crit_edge ]
  %shl44.i = shl i32 %frames1.187.i, 1
  %shr45.i = ashr i32 %res1.188.i, 1
  %cmp42.i = icmp sgt i32 %19, %shl44.i
  br i1 %cmp42.i, label %while.body43.i.while.body43.i_crit_edge, label %while.body43.i.while.end46.i_crit_edge

while.body43.i.while.end46.i_crit_edge:           ; preds = %while.body43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end46.i

while.body43.i.while.body43.i_crit_edge:          ; preds = %while.body43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body43.i

while.end46.i:                                    ; preds = %while.body43.i.while.end46.i_crit_edge, %while.cond40.preheader.i.while.end46.i_crit_edge
  %frames1.1.lcssa.i = phi i32 [ %frames1.0.lcssa.i, %while.cond40.preheader.i.while.end46.i_crit_edge ], [ %shl44.i, %while.body43.i.while.end46.i_crit_edge ]
  %res1.1.lcssa.i = phi i32 [ %res1.0.lcssa.i, %while.cond40.preheader.i.while.end46.i_crit_edge ], [ %shr45.i, %while.body43.i.while.end46.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %frames1.1.lcssa.i)
  %cmp48.i = icmp eq i32 %19, %frames1.1.lcssa.i
  br i1 %cmp48.i, label %while.end46.i.rate_dst_frames.exit_crit_edge, label %while.end46.i.if.end52.i_crit_edge

while.end46.i.if.end52.i_crit_edge:               ; preds = %while.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52.i

while.end46.i.rate_dst_frames.exit_crit_edge:     ; preds = %while.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rate_dst_frames.exit

if.end52.i:                                       ; preds = %while.end46.i.if.end52.i_crit_edge, %if.end33.i.if.end52.i_crit_edge
  %22 = ptrtoint ptr %old_dst_frames.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %frames, ptr %old_dst_frames.i, align 4
  %old_src_frames54.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 1
  %23 = ptrtoint ptr %old_src_frames54.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %res.0.i, ptr %old_src_frames54.i, align 4
  br label %rate_dst_frames.exit

rate_dst_frames.exit:                             ; preds = %if.end52.i, %while.end46.i.rate_dst_frames.exit_crit_edge
  %retval.1.i = phi i32 [ %res.0.i, %if.end52.i ], [ %res1.1.lcssa.i, %while.end46.i.rate_dst_frames.exit_crit_edge ]
  %frames115 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 0, i32 2
  %24 = ptrtoint ptr %frames115 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frames115, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %retval.1.i, i32 %25)
  %func = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %func, align 4
  tail call void %28(ptr noundef %plugin, ptr noundef %src_channels, ptr noundef %dst_channels, i32 noundef %frames, i32 noundef %26) #4
  br label %cleanup121

cleanup121:                                       ; preds = %rate_dst_frames.exit, %do.end97, %do.end52, %if.end25.cleanup121_crit_edge, %do.end
  %retval.1 = phi i32 [ -6, %do.end ], [ %26, %rate_dst_frames.exit ], [ 0, %if.end25.cleanup121_crit_edge ], [ -6, %do.end97 ], [ -6, %do.end52 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rate_src_frames(ptr noundef %plugin, i32 noundef %frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plugin, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #4
  br label %cleanup55

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames)
  %cmp = icmp eq i32 %frames, 0
  br i1 %cmp, label %if.end23.cleanup55_crit_edge, label %if.end25

if.end23.cleanup55_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup55

if.end25:                                         ; preds = %if.end23
  %extra_data = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 20
  %rate = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  %rate26 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %rate26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp27 = icmp ult i32 %1, %3
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %extra_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extra_data, align 4
  %mul = mul i32 %5, %frames
  %add = add i32 %mul, 1024
  %shr = lshr i32 %add, 11
  br label %if.end33

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl i32 %frames, 11
  %6 = ptrtoint ptr %extra_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extra_data, align 4
  %div81 = lshr i32 %7, 1
  %add31 = add i32 %div81, %shl
  %div32 = udiv i32 %add31, %7
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then28
  %res.0 = phi i32 [ %shr, %if.then28 ], [ %div32, %if.else ]
  %old_src_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 1
  %8 = ptrtoint ptr %old_src_frames to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old_src_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp34 = icmp sgt i32 %9, 0
  br i1 %cmp34, label %if.then35, label %if.end33.if.end52_crit_edge

if.end33.if.end52_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then35:                                        ; preds = %if.end33
  %old_dst_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 2
  %10 = ptrtoint ptr %old_dst_frames to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old_dst_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %frames)
  %cmp3782 = icmp slt i32 %9, %frames
  br i1 %cmp3782, label %if.then35.while.body_crit_edge, label %if.then35.while.cond40.preheader_crit_edge

if.then35.while.cond40.preheader_crit_edge:       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond40.preheader

if.then35.while.body_crit_edge:                   ; preds = %if.then35
  br label %while.body

while.cond40.preheader:                           ; preds = %while.body.while.cond40.preheader_crit_edge, %if.then35.while.cond40.preheader_crit_edge
  %frames1.0.lcssa = phi i32 [ %frames, %if.then35.while.cond40.preheader_crit_edge ], [ %shr38, %while.body.while.cond40.preheader_crit_edge ]
  %res1.0.lcssa = phi i32 [ %11, %if.then35.while.cond40.preheader_crit_edge ], [ %shl39, %while.body.while.cond40.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %frames1.0.lcssa)
  %cmp4286 = icmp sgt i32 %9, %frames1.0.lcssa
  br i1 %cmp4286, label %while.cond40.preheader.while.body43_crit_edge, label %while.cond40.preheader.while.end46_crit_edge

while.cond40.preheader.while.end46_crit_edge:     ; preds = %while.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end46

while.cond40.preheader.while.body43_crit_edge:    ; preds = %while.cond40.preheader
  br label %while.body43

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then35.while.body_crit_edge
  %res1.084 = phi i32 [ %shl39, %while.body.while.body_crit_edge ], [ %11, %if.then35.while.body_crit_edge ]
  %frames1.083 = phi i32 [ %shr38, %while.body.while.body_crit_edge ], [ %frames, %if.then35.while.body_crit_edge ]
  %shr38 = ashr i32 %frames1.083, 1
  %shl39 = shl i32 %res1.084, 1
  %cmp37 = icmp slt i32 %9, %shr38
  br i1 %cmp37, label %while.body.while.body_crit_edge, label %while.body.while.cond40.preheader_crit_edge

while.body.while.cond40.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond40.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body43:                                     ; preds = %while.body43.while.body43_crit_edge, %while.cond40.preheader.while.body43_crit_edge
  %res1.188 = phi i32 [ %shr45, %while.body43.while.body43_crit_edge ], [ %res1.0.lcssa, %while.cond40.preheader.while.body43_crit_edge ]
  %frames1.187 = phi i32 [ %shl44, %while.body43.while.body43_crit_edge ], [ %frames1.0.lcssa, %while.cond40.preheader.while.body43_crit_edge ]
  %shl44 = shl i32 %frames1.187, 1
  %shr45 = ashr i32 %res1.188, 1
  %cmp42 = icmp sgt i32 %9, %shl44
  br i1 %cmp42, label %while.body43.while.body43_crit_edge, label %while.body43.while.end46_crit_edge

while.body43.while.end46_crit_edge:               ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end46

while.body43.while.body43_crit_edge:              ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body43

while.end46:                                      ; preds = %while.body43.while.end46_crit_edge, %while.cond40.preheader.while.end46_crit_edge
  %frames1.1.lcssa = phi i32 [ %frames1.0.lcssa, %while.cond40.preheader.while.end46_crit_edge ], [ %shl44, %while.body43.while.end46_crit_edge ]
  %res1.1.lcssa = phi i32 [ %res1.0.lcssa, %while.cond40.preheader.while.end46_crit_edge ], [ %shr45, %while.body43.while.end46_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %frames1.1.lcssa)
  %cmp48 = icmp eq i32 %9, %frames1.1.lcssa
  br i1 %cmp48, label %while.end46.cleanup55_crit_edge, label %while.end46.if.end52_crit_edge

while.end46.if.end52_crit_edge:                   ; preds = %while.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

while.end46.cleanup55_crit_edge:                  ; preds = %while.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup55

if.end52:                                         ; preds = %while.end46.if.end52_crit_edge, %if.end33.if.end52_crit_edge
  %12 = ptrtoint ptr %old_src_frames to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %frames, ptr %old_src_frames, align 4
  %old_dst_frames54 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 2
  %13 = ptrtoint ptr %old_dst_frames54 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %res.0, ptr %old_dst_frames54, align 4
  br label %cleanup55

cleanup55:                                        ; preds = %if.end52, %while.end46.cleanup55_crit_edge, %if.end23.cleanup55_crit_edge, %do.end
  %retval.1 = phi i32 [ -6, %do.end ], [ %res.0, %if.end52 ], [ %res1.1.lcssa, %while.end46.cleanup55_crit_edge ], [ 0, %if.end23.cleanup55_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rate_dst_frames(ptr noundef %plugin, i32 noundef %frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plugin, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef null) #4
  br label %cleanup55

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames)
  %cmp = icmp eq i32 %frames, 0
  br i1 %cmp, label %if.end23.cleanup55_crit_edge, label %if.end25

if.end23.cleanup55_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup55

if.end25:                                         ; preds = %if.end23
  %extra_data = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 20
  %rate = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  %rate26 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %rate26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp27 = icmp ult i32 %1, %3
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl i32 %frames, 11
  %4 = ptrtoint ptr %extra_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extra_data, align 4
  %div81 = lshr i32 %5, 1
  %add = add i32 %div81, %shl
  %div30 = udiv i32 %add, %5
  br label %if.end33

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %extra_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extra_data, align 4
  %mul = mul i32 %7, %frames
  %add32 = add i32 %mul, 1024
  %shr = lshr i32 %add32, 11
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then28
  %res.0 = phi i32 [ %div30, %if.then28 ], [ %shr, %if.else ]
  %old_dst_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 2
  %8 = ptrtoint ptr %old_dst_frames to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old_dst_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp34 = icmp sgt i32 %9, 0
  br i1 %cmp34, label %if.then35, label %if.end33.if.end52_crit_edge

if.end33.if.end52_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then35:                                        ; preds = %if.end33
  %old_src_frames = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 1
  %10 = ptrtoint ptr %old_src_frames to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old_src_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %frames)
  %cmp3782 = icmp slt i32 %9, %frames
  br i1 %cmp3782, label %if.then35.while.body_crit_edge, label %if.then35.while.cond40.preheader_crit_edge

if.then35.while.cond40.preheader_crit_edge:       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond40.preheader

if.then35.while.body_crit_edge:                   ; preds = %if.then35
  br label %while.body

while.cond40.preheader:                           ; preds = %while.body.while.cond40.preheader_crit_edge, %if.then35.while.cond40.preheader_crit_edge
  %frames1.0.lcssa = phi i32 [ %frames, %if.then35.while.cond40.preheader_crit_edge ], [ %shr38, %while.body.while.cond40.preheader_crit_edge ]
  %res1.0.lcssa = phi i32 [ %11, %if.then35.while.cond40.preheader_crit_edge ], [ %shl39, %while.body.while.cond40.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %frames1.0.lcssa)
  %cmp4286 = icmp sgt i32 %9, %frames1.0.lcssa
  br i1 %cmp4286, label %while.cond40.preheader.while.body43_crit_edge, label %while.cond40.preheader.while.end46_crit_edge

while.cond40.preheader.while.end46_crit_edge:     ; preds = %while.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end46

while.cond40.preheader.while.body43_crit_edge:    ; preds = %while.cond40.preheader
  br label %while.body43

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then35.while.body_crit_edge
  %res1.084 = phi i32 [ %shl39, %while.body.while.body_crit_edge ], [ %11, %if.then35.while.body_crit_edge ]
  %frames1.083 = phi i32 [ %shr38, %while.body.while.body_crit_edge ], [ %frames, %if.then35.while.body_crit_edge ]
  %shr38 = ashr i32 %frames1.083, 1
  %shl39 = shl i32 %res1.084, 1
  %cmp37 = icmp slt i32 %9, %shr38
  br i1 %cmp37, label %while.body.while.body_crit_edge, label %while.body.while.cond40.preheader_crit_edge

while.body.while.cond40.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond40.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body43:                                     ; preds = %while.body43.while.body43_crit_edge, %while.cond40.preheader.while.body43_crit_edge
  %res1.188 = phi i32 [ %shr45, %while.body43.while.body43_crit_edge ], [ %res1.0.lcssa, %while.cond40.preheader.while.body43_crit_edge ]
  %frames1.187 = phi i32 [ %shl44, %while.body43.while.body43_crit_edge ], [ %frames1.0.lcssa, %while.cond40.preheader.while.body43_crit_edge ]
  %shl44 = shl i32 %frames1.187, 1
  %shr45 = ashr i32 %res1.188, 1
  %cmp42 = icmp sgt i32 %9, %shl44
  br i1 %cmp42, label %while.body43.while.body43_crit_edge, label %while.body43.while.end46_crit_edge

while.body43.while.end46_crit_edge:               ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end46

while.body43.while.body43_crit_edge:              ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body43

while.end46:                                      ; preds = %while.body43.while.end46_crit_edge, %while.cond40.preheader.while.end46_crit_edge
  %frames1.1.lcssa = phi i32 [ %frames1.0.lcssa, %while.cond40.preheader.while.end46_crit_edge ], [ %shl44, %while.body43.while.end46_crit_edge ]
  %res1.1.lcssa = phi i32 [ %res1.0.lcssa, %while.cond40.preheader.while.end46_crit_edge ], [ %shr45, %while.body43.while.end46_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %frames1.1.lcssa)
  %cmp48 = icmp eq i32 %9, %frames1.1.lcssa
  br i1 %cmp48, label %while.end46.cleanup55_crit_edge, label %while.end46.if.end52_crit_edge

while.end46.if.end52_crit_edge:                   ; preds = %while.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

while.end46.cleanup55_crit_edge:                  ; preds = %while.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup55

if.end52:                                         ; preds = %while.end46.if.end52_crit_edge, %if.end33.if.end52_crit_edge
  %12 = ptrtoint ptr %old_dst_frames to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %frames, ptr %old_dst_frames, align 4
  %old_src_frames54 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 1
  %13 = ptrtoint ptr %old_src_frames54 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %res.0, ptr %old_src_frames54, align 4
  br label %cleanup55

cleanup55:                                        ; preds = %if.end52, %while.end46.cleanup55_crit_edge, %if.end23.cleanup55_crit_edge, %do.end
  %retval.1 = phi i32 [ -6, %do.end ], [ %res.0, %if.end52 ], [ %res1.1.lcssa, %while.end46.cleanup55_crit_edge ], [ 0, %if.end23.cleanup55_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rate_action(ptr noundef %plugin, i32 noundef %action, i32 noundef %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plugin, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action)
  %switch = icmp ult i32 %action, 2
  br i1 %switch, label %sw.bb, label %if.end23.return_crit_edge

if.end23.return_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %if.end23
  %pos.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 1
  %0 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pos.i, align 4
  %channels.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp10.not.i = icmp eq i32 %2, 0
  br i1 %cmp10.not.i, label %sw.bb.return_crit_edge, label %for.body.lr.ph.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %channels1.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %channel.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x %struct.rate_channel], ptr %channels1.i, i32 0, i32 %channel.011.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %arrayidx.i, align 4
  %last_S2.i = getelementptr [0 x %struct.rate_channel], ptr %channels1.i, i32 0, i32 %channel.011.i, i32 1
  %4 = ptrtoint ptr %last_S2.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %last_S2.i, align 2
  %inc.i = add nuw i32 %channel.011.i, 1
  %5 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %6
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.return_crit_edge

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

return:                                           ; preds = %for.body.i.return_crit_edge, %sw.bb.return_crit_edge, %if.end23.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end23.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %for.body.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_area_silence(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
!1 = !{!"../sound/core/oss/rate.c", i32 309, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/core/oss/rate.c", i32 324, i32 35}
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
!15 = !{!"branch_weights", i32 2000, i32 1}
