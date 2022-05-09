; ModuleID = '/llk/IR_all_yes/sound/core/oss/copy.c_pt.bc'
source_filename = "../sound/core/oss/copy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_plugin_format = type { i32, i32, i32 }
%struct.snd_pcm_plugin = type { ptr, i32, %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [0 x i8] }
%struct.snd_pcm_plugin_channel = type { ptr, %struct.snd_pcm_channel_area, i32, i8 }
%struct.snd_pcm_channel_area = type { ptr, i32, i32 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/core/oss/copy.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"copy\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 70, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [25 x i8] c"../sound/core/oss/copy.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 85, i32 35 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plugin_build_copy(ptr noundef %plug, ptr noundef %src_format, ptr noundef %dst_format, ptr noundef writeonly %r_plugin) local_unnamed_addr #0 align 64 {
entry:
  %plugin = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plugin) #3
  %0 = ptrtoint ptr %plugin to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %plugin, align 4, !annotation !13
  %tobool.not = icmp eq ptr %r_plugin, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end23:                                         ; preds = %entry
  %1 = ptrtoint ptr %r_plugin to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %r_plugin, align 4
  %2 = ptrtoint ptr %src_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_format, align 4
  %4 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_format, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end57, label %do.end41, !prof !15

do.end41:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end57:                                         ; preds = %if.end23
  %rate = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %src_format, i32 0, i32 1
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %rate59 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %dst_format, i32 0, i32 1
  %8 = ptrtoint ptr %rate59 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp60.not = icmp eq i32 %7, %9
  br i1 %cmp60.not, label %if.end92, label %do.end76, !prof !15

do.end76:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end92:                                         ; preds = %if.end57
  %channels = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %src_format, i32 0, i32 2
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels, align 4
  %channels94 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %dst_format, i32 0, i32 2
  %12 = ptrtoint ptr %channels94 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp95.not = icmp eq i32 %11, %13
  br i1 %cmp95.not, label %if.end127, label %do.end111, !prof !15

do.end111:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end127:                                        ; preds = %if.end92
  %call = tail call i32 @snd_pcm_format_physical_width(i32 noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp130 = icmp slt i32 %call, 1
  br i1 %cmp130, label %do.end146, label %if.end162, !prof !14

do.end146:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 82, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end162:                                        ; preds = %if.end127
  %call163 = call i32 @snd_pcm_plugin_build(ptr noundef %plug, ptr noundef nonnull @.str.1, ptr noundef %src_format, ptr noundef %dst_format, i32 noundef 0, ptr noundef nonnull %plugin) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.end162.cleanup_crit_edge, label %if.end166

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end166:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plugin, align 4
  %transfer = getelementptr inbounds %struct.snd_pcm_plugin, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @copy_transfer, ptr %transfer, align 4
  %17 = ptrtoint ptr %r_plugin to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %r_plugin, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end166, %if.end162.cleanup_crit_edge, %do.end146, %do.end111, %do.end76, %do.end41, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end41 ], [ -6, %do.end76 ], [ -6, %do.end111 ], [ -6, %do.end146 ], [ 0, %if.end166 ], [ %call163, %if.end162.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plugin) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_build(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @copy_transfer(ptr noundef readonly %plugin, ptr noundef %src_channels, ptr noundef %dst_channels, i32 noundef %frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plugin, null
  %tobool1.not = icmp eq ptr %src_channels, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool2.not = icmp eq ptr %dst_channels, null
  %spec.select = or i1 %or.cond, %tobool2.not
  br i1 %spec.select, label %entry.cleanup.sink.split_crit_edge, label %if.end25, !prof !14

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames)
  %cmp = icmp eq i32 %frames, 0
  br i1 %cmp, label %if.end25.cleanup_crit_edge, label %if.end27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end27:                                         ; preds = %if.end25
  %src_format = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2
  %channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28158.not = icmp eq i32 %1, 0
  br i1 %cmp28158.not, label %if.end27.cleanup_crit_edge, label %for.body.lr.ph

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end27
  %dst_format = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %src_channels.addr.0161 = phi ptr [ %src_channels, %for.body.lr.ph ], [ %src_channels.addr.1, %for.inc.for.body_crit_edge ]
  %dst_channels.addr.0160 = phi ptr [ %dst_channels, %for.body.lr.ph ], [ %dst_channels.addr.1, %for.inc.for.body_crit_edge ]
  %channel.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %area = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %src_channels.addr.0161, i32 0, i32 1
  %first = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %src_channels.addr.0161, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first, align 4
  %rem = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool30.not = icmp eq i32 %rem, 0
  br i1 %tobool30.not, label %lor.rhs31, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

lor.rhs31:                                        ; preds = %for.body
  %step = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %src_channels.addr.0161, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  %rem33 = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem33)
  %tobool34.not = icmp eq i32 %rem33, 0
  br i1 %tobool34.not, label %if.end67, label %lor.rhs31.cleanup.sink.split_crit_edge, !prof !15

lor.rhs31.cleanup.sink.split_crit_edge:           ; preds = %lor.rhs31
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end67:                                         ; preds = %lor.rhs31
  %area69 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dst_channels.addr.0160, i32 0, i32 1
  %first70 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dst_channels.addr.0160, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %first70 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first70, align 4
  %rem71 = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem71)
  %tobool72.not = icmp eq i32 %rem71, 0
  br i1 %tobool72.not, label %lor.rhs73, label %if.end67.cleanup.sink.split_crit_edge

if.end67.cleanup.sink.split_crit_edge:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

lor.rhs73:                                        ; preds = %if.end67
  %step75 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dst_channels.addr.0160, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %step75 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %step75, align 4
  %rem76 = and i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem76)
  %tobool77.not = icmp eq i32 %rem76, 0
  br i1 %tobool77.not, label %if.end110, label %lor.rhs73.cleanup.sink.split_crit_edge, !prof !15

lor.rhs73.cleanup.sink.split_crit_edge:           ; preds = %lor.rhs73
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end110:                                        ; preds = %lor.rhs73
  %enabled = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %src_channels.addr.0161, i32 0, i32 3
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool111.not = icmp sgt i8 %bf.load, -1
  %wanted = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dst_channels.addr.0160, i32 0, i32 3
  %11 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load113 = load i8, ptr %wanted, align 4
  br i1 %tobool111.not, label %if.then112, label %if.end123

if.then112:                                       ; preds = %if.end110
  %12 = and i8 %bf.load113, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool116.not = icmp eq i8 %12, 0
  br i1 %tobool116.not, label %if.then112.if.end119_crit_edge, label %if.then117

if.then112.if.end119_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end119

if.then117:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_format, align 4
  %call = tail call i32 @snd_pcm_area_silence(ptr noundef %area69, i32 noundef 0, i32 noundef %frames, i32 noundef %14) #3
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.then112.if.end119_crit_edge
  %15 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load121 = load i8, ptr %wanted, align 4
  %bf.clear122 = and i8 %bf.load121, 127
  store i8 %bf.clear122, ptr %wanted, align 4
  br label %for.inc

if.end123:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #5
  %bf.set127 = or i8 %bf.load113, -128
  %16 = ptrtoint ptr %wanted to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bf.set127, ptr %wanted, align 4
  %17 = ptrtoint ptr %src_format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_format, align 4
  %call132 = tail call i32 @snd_pcm_area_copy(ptr noundef %area, i32 noundef 0, ptr noundef %area69, i32 noundef 0, i32 noundef %frames, i32 noundef %18) #3
  %incdec.ptr = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels.addr.0161, i32 1
  %incdec.ptr133 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels.addr.0160, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.end123, %if.end119
  %dst_channels.addr.1 = phi ptr [ %incdec.ptr133, %if.end123 ], [ %dst_channels.addr.0160, %if.end119 ]
  %src_channels.addr.1 = phi ptr [ %incdec.ptr, %if.end123 ], [ %src_channels.addr.0161, %if.end119 ]
  %inc = add nuw i32 %channel.0159, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.sink.split:                               ; preds = %lor.rhs73.cleanup.sink.split_crit_edge, %if.end67.cleanup.sink.split_crit_edge, %lor.rhs31.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 35, %entry.cleanup.sink.split_crit_edge ], [ 42, %for.body.cleanup.sink.split_crit_edge ], [ 42, %lor.rhs31.cleanup.sink.split_crit_edge ], [ 45, %if.end67.cleanup.sink.split_crit_edge ], [ 45, %lor.rhs73.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25.cleanup_crit_edge ], [ %frames, %if.end27.cleanup_crit_edge ], [ -6, %cleanup.sink.split ], [ %frames, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_area_silence(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_area_copy(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/oss/copy.c", i32 70, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/core/oss/copy.c", i32 85, i32 35}
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
