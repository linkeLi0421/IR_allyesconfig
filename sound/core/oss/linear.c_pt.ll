; ModuleID = '/llk/IR_all_yes/sound/core/oss/linear.c_pt.bc'
source_filename = "../sound/core/oss/linear.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_plugin_format = type { i32, i32, i32 }
%struct.snd_pcm_plugin = type { ptr, i32, %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [0 x i8] }
%struct.snd_pcm_plugin_channel = type { ptr, %struct.snd_pcm_channel_area, i32, i8 }
%struct.snd_pcm_channel_area = type { ptr, i32, i32 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/core/oss/linear.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"linear format conversion\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 158, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [27 x i8] c"../sound/core/oss/linear.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 170, i32 35 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plugin_build_linear(ptr noundef %plug, ptr noundef %src_format, ptr noundef %dst_format, ptr noundef writeonly %r_plugin) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  %1 = ptrtoint ptr %r_plugin to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %r_plugin, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %src_format, i32 0, i32 1
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  %rate25 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %dst_format, i32 0, i32 1
  %4 = ptrtoint ptr %rate25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end57, label %do.end41, !prof !15

do.end41:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end57:                                         ; preds = %if.end23
  %channels = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %src_format, i32 0, i32 2
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels, align 4
  %channels59 = getelementptr inbounds %struct.snd_pcm_plugin_format, ptr %dst_format, i32 0, i32 2
  %8 = ptrtoint ptr %channels59 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp60.not = icmp eq i32 %7, %9
  br i1 %cmp60.not, label %if.end92, label %do.end76, !prof !15

do.end76:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 164, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end92:                                         ; preds = %if.end57
  %10 = ptrtoint ptr %src_format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_format, align 4
  %call = tail call i32 @snd_pcm_format_linear(i32 noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool94.not = icmp eq i32 %call, 0
  br i1 %tobool94.not, label %if.end92.do.end115_crit_edge, label %lor.rhs

if.end92.do.end115_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end115

lor.rhs:                                          ; preds = %if.end92
  %12 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dst_format, align 4
  %call96 = tail call i32 @snd_pcm_format_linear(i32 noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %lor.rhs.do.end115_crit_edge, label %if.end131, !prof !14

lor.rhs.do.end115_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end115

do.end115:                                        ; preds = %lor.rhs.do.end115_crit_edge, %if.end92.do.end115_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end131:                                        ; preds = %lor.rhs
  %call132 = call i32 @snd_pcm_plugin_build(ptr noundef %plug, ptr noundef nonnull @.str.1, ptr noundef %src_format, ptr noundef %dst_format, i32 noundef 28, ptr noundef nonnull %plugin) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.end131.cleanup_crit_edge, label %if.end135

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end135:                                        ; preds = %if.end131
  %14 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plugin, align 4
  %extra_data = getelementptr inbounds %struct.snd_pcm_plugin, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %src_format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_format, align 4
  %18 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst_format, align 4
  %call.i = call i32 @snd_pcm_format_width(i32 noundef %17) #4
  %div.i = sdiv i32 %call.i, 8
  %call1.i = call i32 @snd_pcm_format_width(i32 noundef %19) #4
  %div2.i = sdiv i32 %call1.i, 8
  %call3.i = call i32 @snd_pcm_format_little_endian(i32 noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp sgt i32 %call3.i, 0
  %call4.i = call i32 @snd_pcm_format_little_endian(i32 noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp sgt i32 %call4.i, 0
  %dst_bytes7.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %15, i32 1, i32 2, i32 2
  %20 = ptrtoint ptr %dst_bytes7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div2.i, ptr %dst_bytes7.i, align 4
  %cmp8.i = xor i1 %cmp.i, %cmp5.i
  %conv9.i = zext i1 %cmp8.i to i32
  %21 = ptrtoint ptr %extra_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv9.i, ptr %extra_data, align 4
  %22 = call i32 @llvm.smin.i32(i32 %div.i, i32 %div2.i) #4
  %copy_bytes.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %15, i32 1, i32 3
  %23 = ptrtoint ptr %copy_bytes.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %copy_bytes.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub nsw i32 4, %22
  %copy_ofs.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %15, i32 1, i32 2, i32 1
  %24 = ptrtoint ptr %copy_ofs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %copy_ofs.i, align 4
  %sub14.i = sub nsw i32 %div.i, %22
  br label %if.end.i

if.else.i:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  %call15.i = call i32 @snd_pcm_format_physical_width(i32 noundef %17) #4
  %div16.i = sdiv i32 %call15.i, 8
  %sub17.i = sub nsw i32 %div16.i, %div.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %sub17.sink.i = phi i32 [ %sub14.i, %if.then.i ], [ %sub17.i, %if.else.i ]
  %25 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %15, i32 1, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub17.sink.i, ptr %25, align 4
  br i1 %cmp5.i, label %if.then20.i, label %if.else23.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %dst_bytes7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dst_bytes7.i, align 4
  %sub22.i = sub i32 4, %28
  br label %if.end28.i

if.else23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call24.i = call i32 @snd_pcm_format_physical_width(i32 noundef %19) #4
  %div25.i = sdiv i32 %call24.i, 8
  %sub26.i = sub nsw i32 %div25.i, %div2.i
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else23.i, %if.then20.i
  %sub26.sink.i = phi i32 [ %sub22.i, %if.then20.i ], [ %sub26.i, %if.else23.i ]
  %29 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %15, i32 1, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub26.sink.i, ptr %29, align 4
  %call29.i = call i32 @snd_pcm_format_signed(i32 noundef %17) #4
  %call30.i = call i32 @snd_pcm_format_signed(i32 noundef %19) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call29.i, i32 %call30.i)
  %cmp31.not.i = icmp eq i32 %call29.i, %call30.i
  br i1 %cmp31.not.i, label %if.end28.i.init_data.exit_crit_edge, label %if.then33.i

if.end28.i.init_data.exit_crit_edge:              ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_data.exit

if.then33.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  %flip.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %15, i32 1, i32 3, i32 1
  %..i = select i1 %cmp5.i, i32 128, i32 -2147483648
  %31 = ptrtoint ptr %flip.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %..i, ptr %flip.i, align 4
  br label %init_data.exit

init_data.exit:                                   ; preds = %if.then33.i, %if.end28.i.init_data.exit_crit_edge
  %32 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %plugin, align 4
  %transfer = getelementptr inbounds %struct.snd_pcm_plugin, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @linear_transfer, ptr %transfer, align 4
  %35 = ptrtoint ptr %r_plugin to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %r_plugin, align 4
  br label %cleanup

cleanup:                                          ; preds = %init_data.exit, %if.end131.cleanup_crit_edge, %do.end115, %do.end76, %do.end41, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end41 ], [ -6, %do.end76 ], [ -6, %do.end115 ], [ 0, %init_data.exit ], [ %call132, %if.end131.cleanup_crit_edge ]
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
declare dso_local i32 @snd_pcm_format_linear(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_build(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @linear_transfer(ptr noundef readonly %plugin, ptr noundef readonly %src_channels, ptr noundef %dst_channels, i32 noundef %frames) #0 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plugin, null
  %tobool1.not = icmp eq ptr %src_channels, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool2.not = icmp eq ptr %dst_channels, null
  %spec.select142 = or i1 %or.cond, %tobool2.not
  br i1 %spec.select142, label %do.end, label %if.end25, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames)
  %cmp = icmp eq i32 %frames, 0
  br i1 %cmp, label %if.end25.return_crit_edge, label %for.cond.preheader

if.end25.return_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.cond.preheader:                               ; preds = %if.end25
  %channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28146.not = icmp eq i32 %1, 0
  br i1 %cmp28146.not, label %cleanup.cont.thread, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

cleanup.cont.thread:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %frames115148 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 0, i32 2
  %2 = ptrtoint ptr %frames115148 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frames115148, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %frames)
  br label %return

for.cond:                                         ; preds = %lor.rhs75
  %inc = add nuw i32 %channel.0147, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %cleanup.cont, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %channel.0147 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %first = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0147, i32 1, i32 1
  %5 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %first, align 4
  %rem = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool30.not = icmp eq i32 %rem, 0
  br i1 %tobool30.not, label %lor.rhs31, label %for.body.do.end52_crit_edge

for.body.do.end52_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

lor.rhs31:                                        ; preds = %for.body
  %step = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0147, i32 1, i32 2
  %7 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %step, align 4
  %rem34 = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem34)
  %tobool35.not = icmp eq i32 %rem34, 0
  br i1 %tobool35.not, label %if.end68, label %lor.rhs31.do.end52_crit_edge, !prof !15

lor.rhs31.do.end52_crit_edge:                     ; preds = %lor.rhs31
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

do.end52:                                         ; preds = %lor.rhs31.do.end52_crit_edge, %for.body.do.end52_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end68:                                         ; preds = %lor.rhs31
  %first72 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0147, i32 1, i32 1
  %9 = ptrtoint ptr %first72 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %first72, align 4
  %rem73 = and i32 %10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem73)
  %tobool74.not = icmp eq i32 %rem73, 0
  br i1 %tobool74.not, label %lor.rhs75, label %if.end68.do.end97_crit_edge

if.end68.do.end97_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end97

lor.rhs75:                                        ; preds = %if.end68
  %step78 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0147, i32 1, i32 2
  %11 = ptrtoint ptr %step78 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %step78, align 4
  %rem79 = and i32 %12, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem79)
  %tobool80.not = icmp eq i32 %rem79, 0
  br i1 %tobool80.not, label %for.cond, label %lor.rhs75.do.end97_crit_edge, !prof !15

lor.rhs75.do.end97_crit_edge:                     ; preds = %lor.rhs75
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end97

do.end97:                                         ; preds = %lor.rhs75.do.end97_crit_edge, %if.end68.do.end97_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 9, ptr noundef null) #4
  br label %return

cleanup.cont:                                     ; preds = %for.cond
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %channels, align 4
  %frames115 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 0, i32 2
  %14 = ptrtoint ptr %frames115 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frames115, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %frames)
  %extra_data.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp78.i = icmp sgt i32 %.pr, 0
  br i1 %cmp78.i, label %for.body.lr.ph.i, label %cleanup.cont.return_crit_edge

cleanup.cont.return_crit_edge:                    ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.body.lr.ph.i:                                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp37.not74.i = icmp eq i32 %16, 0
  %copy_ofs.i.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 1
  %src_ofs.i.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 1
  %copy_bytes.i.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 3
  %flip.i.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 3, i32 1
  %dst_ofs.i.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2
  %dst_bytes.i.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 2
  %dst_format.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %channel.079.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %enabled.i = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.079.i, i32 3
  %17 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %wanted.i = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.079.i, i32 3
  %18 = ptrtoint ptr %wanted.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load2.i = load i8, ptr %wanted.i, align 4
  br i1 %tobool.not.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %for.body.i
  %19 = and i8 %bf.load2.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not.i = icmp eq i8 %19, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then6.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %area.i = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.079.i, i32 1
  %20 = ptrtoint ptr %dst_format.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_format.i, align 4
  %call.i = tail call i32 @snd_pcm_area_silence(ptr noundef %area.i, i32 noundef 0, i32 noundef %16, i32 noundef %21) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then.i.if.end.i_crit_edge
  %22 = ptrtoint ptr %wanted.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load10.i = load i8, ptr %wanted.i, align 4
  %bf.clear11.i = and i8 %bf.load10.i, 127
  store i8 %bf.clear11.i, ptr %wanted.i, align 4
  br label %cleanup.i

if.end12.i:                                       ; preds = %for.body.i
  %bf.set17.i = or i8 %bf.load2.i, -128
  %23 = ptrtoint ptr %wanted.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.set17.i, ptr %wanted.i, align 4
  %step.i = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.079.i, i32 1, i32 2
  %24 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %step.i, align 4
  %div3272.i = lshr i32 %25, 3
  %step35.i = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.079.i, i32 1, i32 2
  %26 = ptrtoint ptr %step35.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %step35.i, align 4
  %div3673.i = lshr i32 %27, 3
  br i1 %cmp37.not74.i, label %if.end12.i.cleanup.i_crit_edge, label %while.body.preheader.i

if.end12.i.cleanup.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

while.body.preheader.i:                           ; preds = %if.end12.i
  %area23.i = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.079.i, i32 1
  %28 = ptrtoint ptr %area23.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %area23.i, align 4
  %first27.i = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.079.i, i32 1, i32 1
  %30 = ptrtoint ptr %first27.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %first27.i, align 4
  %div2871.i = lshr i32 %31, 3
  %add.ptr29.i = getelementptr i8, ptr %29, i32 %div2871.i
  %area19.i = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.079.i, i32 1
  %32 = ptrtoint ptr %area19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %area19.i, align 4
  %first.i = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.079.i, i32 1, i32 1
  %34 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %first.i, align 4
  %div70.i = lshr i32 %35, 3
  %add.ptr.i = getelementptr i8, ptr %33, i32 %div70.i
  br label %while.body.i

while.body.i:                                     ; preds = %do_convert.exit.i.while.body.i_crit_edge, %while.body.preheader.i
  %frames1.077.i = phi i32 [ %dec.i, %do_convert.exit.i.while.body.i_crit_edge ], [ %16, %while.body.preheader.i ]
  %dst.076.i = phi ptr [ %add.ptr39.i, %do_convert.exit.i.while.body.i_crit_edge ], [ %add.ptr29.i, %while.body.preheader.i ]
  %src.075.i = phi ptr [ %add.ptr38.i, %do_convert.exit.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i ]
  %dec.i = add i32 %frames1.077.i, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #4
  %36 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tmp.i.i, align 4
  %37 = ptrtoint ptr %copy_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %copy_ofs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %tmp.i.i, i32 %38
  %39 = ptrtoint ptr %src_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %src_ofs.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %src.075.i, i32 %40
  %41 = ptrtoint ptr %copy_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %copy_bytes.i.i, align 4
  %43 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr1.i.i, i32 %42)
  %44 = ptrtoint ptr %extra_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %extra_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i, label %while.body.i.do_convert.exit.i_crit_edge, label %if.then.i.i

while.body.i.do_convert.exit.i_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_convert.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tmp.i.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #4
  %49 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tmp.i.i, align 4
  br label %do_convert.exit.i

do_convert.exit.i:                                ; preds = %if.then.i.i, %while.body.i.do_convert.exit.i_crit_edge
  %50 = ptrtoint ptr %flip.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flip.i.i, align 4
  %52 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tmp.i.i, align 4
  %xor.i.i = xor i32 %53, %51
  store i32 %xor.i.i, ptr %tmp.i.i, align 4
  %54 = ptrtoint ptr %dst_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dst_ofs.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %tmp.i.i, i32 %55
  %56 = ptrtoint ptr %dst_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dst_bytes.i.i, align 4
  %58 = call ptr @memcpy(ptr %dst.076.i, ptr %add.ptr2.i.i, i32 %57)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #4
  %add.ptr38.i = getelementptr i8, ptr %src.075.i, i32 %div3272.i
  %add.ptr39.i = getelementptr i8, ptr %dst.076.i, i32 %div3673.i
  %cmp37.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp37.not.i, label %do_convert.exit.i.cleanup.i_crit_edge, label %do_convert.exit.i.while.body.i_crit_edge

do_convert.exit.i.while.body.i_crit_edge:         ; preds = %do_convert.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do_convert.exit.i.cleanup.i_crit_edge:            ; preds = %do_convert.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %do_convert.exit.i.cleanup.i_crit_edge, %if.end12.i.cleanup.i_crit_edge, %if.end.i
  %inc.i = add nuw nsw i32 %channel.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %.pr
  br i1 %exitcond.not.i, label %cleanup.i.return_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

cleanup.i.return_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %cleanup.i.return_crit_edge, %cleanup.cont.return_crit_edge, %do.end97, %do.end52, %cleanup.cont.thread, %if.end25.return_crit_edge, %do.end
  %retval.1 = phi i32 [ -6, %do.end ], [ 0, %if.end25.return_crit_edge ], [ %16, %cleanup.cont.return_crit_edge ], [ -6, %do.end97 ], [ -6, %do.end52 ], [ %4, %cleanup.cont.thread ], [ %16, %cleanup.i.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_little_endian(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_signed(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_area_silence(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
!1 = !{!"../sound/core/oss/linear.c", i32 158, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/core/oss/linear.c", i32 170, i32 35}
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
