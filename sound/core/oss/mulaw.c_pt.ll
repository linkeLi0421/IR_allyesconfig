; ModuleID = '/llk/IR_all_yes/sound/core/oss/mulaw.c_pt.bc'
source_filename = "../sound/core/oss/mulaw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_plugin_format = type { i32, i32, i32 }
%struct.snd_pcm_plugin = type { ptr, i32, %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [0 x i8] }
%struct.snd_pcm_plugin_channel = type { ptr, %struct.snd_pcm_channel_area, i32, i8 }
%struct.snd_pcm_channel_area = type { ptr, i32, i32 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/core/oss/mulaw.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Mu-Law<->linear conversion\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 311, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 329, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [26 x i8] c"../sound/core/oss/mulaw.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 335, i32 35 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plugin_build_mulaw(ptr noundef %plug, ptr noundef %src_format, ptr noundef %dst_format, ptr noundef writeonly %r_plugin) local_unnamed_addr #0 align 64 {
entry:
  %plugin = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plugin) #4
  %0 = ptrtoint ptr %plugin to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %plugin, align 4, !annotation !15
  %tobool.not = icmp eq ptr %r_plugin, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 311, i32 noundef 9, ptr noundef null) #4
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
  br i1 %cmp.not, label %if.end57, label %do.end41, !prof !17

do.end41:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #4
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
  br i1 %cmp60.not, label %if.end92, label %do.end76, !prof !17

do.end76:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end92:                                         ; preds = %if.end57
  %10 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dst_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %11)
  %cmp94 = icmp eq i32 %11, 20
  br i1 %cmp94, label %if.end92.if.end127_crit_edge, label %if.else

if.end92.if.end127_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end127

if.else:                                          ; preds = %if.end92
  %12 = ptrtoint ptr %src_format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %13)
  %cmp97 = icmp eq i32 %13, 20
  br i1 %cmp97, label %if.else.if.end127_crit_edge, label %do.end112

if.else.if.end127_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end127

do.end112:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end127:                                        ; preds = %if.else.if.end127_crit_edge, %if.end92.if.end127_crit_edge
  %func.0 = phi ptr [ @mulaw_encode, %if.end92.if.end127_crit_edge ], [ @mulaw_decode, %if.else.if.end127_crit_edge ]
  %format.0 = phi ptr [ %src_format, %if.end92.if.end127_crit_edge ], [ %dst_format, %if.else.if.end127_crit_edge ]
  %14 = ptrtoint ptr %format.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %format.0, align 4
  %call = tail call i32 @snd_pcm_format_linear(i32 noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool129.not = icmp eq i32 %call, 0
  br i1 %tobool129.not, label %if.end127.cleanup_crit_edge, label %if.end131

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end131:                                        ; preds = %if.end127
  %call132 = call i32 @snd_pcm_plugin_build(ptr noundef %plug, ptr noundef nonnull @.str.2, ptr noundef %src_format, ptr noundef %dst_format, i32 noundef 28, ptr noundef nonnull %plugin) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.end131.cleanup_crit_edge, label %if.end135

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end135:                                        ; preds = %if.end131
  %16 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %plugin, align 4
  %extra_data = getelementptr inbounds %struct.snd_pcm_plugin, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %extra_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %func.0, ptr %extra_data, align 4
  %19 = ptrtoint ptr %format.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format.0, align 4
  %call.i = call i32 @snd_pcm_format_little_endian(i32 noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  %conv.i = zext i1 %cmp.i to i32
  %cvt_endian.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %17, i32 1, i32 1
  %21 = ptrtoint ptr %cvt_endian.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %cvt_endian.i, align 4
  %call1.i = call i32 @snd_pcm_format_signed(i32 noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end135.if.end.i_crit_edge

if.end135.if.end.i_crit_edge:                     ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  %flip.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %17, i32 1, i32 3, i32 1
  %22 = ptrtoint ptr %flip.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -32768, ptr %flip.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end135.if.end.i_crit_edge
  %call2.i = call i32 @snd_pcm_format_physical_width(i32 noundef %20) #4
  %div.i = sdiv i32 %call2.i, 8
  %native_bytes.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %17, i32 1, i32 2, i32 2
  %23 = ptrtoint ptr %native_bytes.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div.i, ptr %native_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i)
  %cmp4.i = icmp ult i32 %div.i, 2
  %cond.i = select i1 %cmp4.i, i32 1, i32 2
  %copy_bytes.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %17, i32 1, i32 3
  %24 = ptrtoint ptr %copy_bytes.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i, ptr %copy_bytes.i, align 4
  %call6.i = call i32 @snd_pcm_format_little_endian(i32 noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  %25 = ptrtoint ptr %native_bytes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %native_bytes.i, align 4
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %copy_bytes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %copy_bytes.i, align 4
  %sub.i = sub i32 %26, %28
  %sub12.i = sub i32 2, %28
  %copy_ofs.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %17, i32 1, i32 2, i32 1
  %29 = ptrtoint ptr %copy_ofs.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub12.i, ptr %copy_ofs.i, align 4
  br label %init_data.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call14.i = call i32 @snd_pcm_format_width(i32 noundef %20) #4
  %div15.neg.i = sdiv i32 %call14.i, -8
  %sub16.i = add i32 %div15.neg.i, %26
  br label %init_data.exit

init_data.exit:                                   ; preds = %if.else.i, %if.then8.i
  %sub.sink.i = phi i32 [ %sub16.i, %if.else.i ], [ %sub.i, %if.then8.i ]
  %30 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %17, i32 1, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.sink.i, ptr %30, align 4
  %32 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %plugin, align 4
  %transfer = getelementptr inbounds %struct.snd_pcm_plugin, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mulaw_transfer, ptr %transfer, align 4
  %35 = ptrtoint ptr %r_plugin to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %r_plugin, align 4
  br label %cleanup

cleanup:                                          ; preds = %init_data.exit, %if.end131.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %do.end112, %do.end76, %do.end41, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end41 ], [ -6, %do.end76 ], [ 0, %init_data.exit ], [ -22, %do.end112 ], [ -22, %if.end127.cleanup_crit_edge ], [ %call132, %if.end131.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plugin) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mulaw_encode(ptr nocapture noundef readonly %plugin, ptr nocapture noundef readonly %src_channels, ptr noundef %dst_channels, i32 noundef %frames) #0 align 64 {
entry:
  %sample.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp82 = icmp sgt i32 %1, 0
  br i1 %cmp82, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames)
  %cmp37.not78 = icmp eq i32 %frames, 0
  %copy_ofs.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 1
  %native_ofs.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2
  %copy_bytes.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 3
  %cvt_endian.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 1
  %flip.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 3, i32 1
  %dst_format = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %channel.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %enabled = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.083, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %wanted = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.083, i32 3
  %3 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2 = load i8, ptr %wanted, align 4
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %for.body
  %4 = and i8 %bf.load2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %area = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.083, i32 1
  %5 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_format, align 4
  %call = tail call i32 @snd_pcm_area_silence(ptr noundef %area, i32 noundef 0, i32 noundef %frames, i32 noundef %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load10 = load i8, ptr %wanted, align 4
  %bf.clear11 = and i8 %bf.load10, 127
  store i8 %bf.clear11, ptr %wanted, align 4
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %bf.set17 = or i8 %bf.load2, -128
  %8 = ptrtoint ptr %wanted to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.set17, ptr %wanted, align 4
  %step = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.083, i32 1, i32 2
  %9 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %step, align 4
  %div3274 = lshr i32 %10, 3
  %step35 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.083, i32 1, i32 2
  %11 = ptrtoint ptr %step35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %step35, align 4
  %div3675 = lshr i32 %12, 3
  br i1 %cmp37.not78, label %if.end12.cleanup_crit_edge, label %while.body.preheader

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.preheader:                             ; preds = %if.end12
  %area23 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.083, i32 1
  %13 = ptrtoint ptr %area23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %area23, align 4
  %first27 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.083, i32 1, i32 1
  %15 = ptrtoint ptr %first27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %first27, align 4
  %div2873 = lshr i32 %16, 3
  %add.ptr29 = getelementptr i8, ptr %14, i32 %div2873
  %area19 = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.083, i32 1
  %17 = ptrtoint ptr %area19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %area19, align 4
  %first = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.083, i32 1, i32 1
  %19 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %first, align 4
  %div72 = lshr i32 %20, 3
  %add.ptr = getelementptr i8, ptr %18, i32 %div72
  br label %while.body

while.body:                                       ; preds = %cvt_native_to_s16.exit.while.body_crit_edge, %while.body.preheader
  %frames1.081 = phi i32 [ %dec, %cvt_native_to_s16.exit.while.body_crit_edge ], [ %frames, %while.body.preheader ]
  %dst.080 = phi ptr [ %add.ptr41, %cvt_native_to_s16.exit.while.body_crit_edge ], [ %add.ptr29, %while.body.preheader ]
  %src.079 = phi ptr [ %add.ptr40, %cvt_native_to_s16.exit.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %dec = add i32 %frames1.081, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sample.i) #4
  %21 = ptrtoint ptr %sample.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %sample.i, align 2
  %22 = ptrtoint ptr %copy_ofs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %copy_ofs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %sample.i, i32 %23
  %24 = ptrtoint ptr %native_ofs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %native_ofs.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %src.079, i32 %25
  %26 = ptrtoint ptr %copy_bytes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %copy_bytes.i, align 4
  %28 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr1.i, i32 %27)
  %29 = ptrtoint ptr %cvt_endian.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cvt_endian.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %while.body.cvt_native_to_s16.exit_crit_edge, label %if.then.i

while.body.cvt_native_to_s16.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cvt_native_to_s16.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %sample.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sample.i, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #4
  %34 = ptrtoint ptr %sample.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %sample.i, align 2
  br label %cvt_native_to_s16.exit

cvt_native_to_s16.exit:                           ; preds = %if.then.i, %while.body.cvt_native_to_s16.exit_crit_edge
  %35 = ptrtoint ptr %flip.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flip.i, align 4
  %37 = ptrtoint ptr %sample.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sample.i, align 2
  %xor8.i = xor i16 %38, %36
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sample.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.i)
  %cmp.i = icmp slt i16 %xor8.i, 0
  %39 = tail call i16 @llvm.abs.i16(i16 %xor8.i, i1 false)
  %narrow = add nuw i16 %39, 132
  %pcm_val.addr.0.i = zext i16 %narrow to i32
  %mask.0.i = select i1 %cmp.i, i32 127, i32 255
  %40 = tail call i32 @llvm.smin.i32(i32 %pcm_val.addr.0.i, i32 32767) #4
  %41 = and i32 %40, 30720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i = icmp eq i32 %41, 0
  %spec.select.v.i.i = select i1 %tobool.not.i.i, i32 7, i32 11
  %spec.select.i.i76 = lshr i32 %40, %spec.select.v.i.i
  %spec.select21.i.i = select i1 %tobool.not.i.i, i32 0, i32 4
  %and2.i.i = and i32 %spec.select.i.i76, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %42 = lshr i32 %spec.select.i.i76, 2
  %add6.i.i = or i32 %spec.select21.i.i, 2
  %val.addr.1.i.i = select i1 %tobool3.not.i.i, i32 %spec.select.i.i76, i32 %42
  %r.1.i.i = select i1 %tobool3.not.i.i, i32 %spec.select21.i.i, i32 %add6.i.i
  %and8.i.i = lshr i32 %val.addr.1.i.i, 1
  %43 = and i32 %and8.i.i, 1
  %44 = or i32 %43, %r.1.i.i
  %shl.i = shl nuw nsw i32 %44, 4
  %add4.i = add nuw nsw i32 %44, 3
  %shr.i77 = lshr i32 %40, %add4.i
  %and.i = and i32 %shr.i77, 15
  %conv5.i = or i32 %and.i, %shl.i
  %xor.i = xor i32 %conv5.i, %mask.0.i
  %conv6.i = trunc i32 %xor.i to i8
  %45 = ptrtoint ptr %dst.080 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv6.i, ptr %dst.080, align 1
  %add.ptr40 = getelementptr i8, ptr %src.079, i32 %div3274
  %add.ptr41 = getelementptr i8, ptr %dst.080, i32 %div3675
  %cmp37.not = icmp eq i32 %dec, 0
  br i1 %cmp37.not, label %cvt_native_to_s16.exit.cleanup_crit_edge, label %cvt_native_to_s16.exit.while.body_crit_edge

cvt_native_to_s16.exit.while.body_crit_edge:      ; preds = %cvt_native_to_s16.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cvt_native_to_s16.exit.cleanup_crit_edge:         ; preds = %cvt_native_to_s16.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %cvt_native_to_s16.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end
  %inc = add nuw nsw i32 %channel.083, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mulaw_decode(ptr nocapture noundef readonly %plugin, ptr nocapture noundef readonly %src_channels, ptr noundef %dst_channels, i32 noundef %frames) #0 align 64 {
entry:
  %sample.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp81 = icmp sgt i32 %1, 0
  br i1 %cmp81, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames)
  %cmp37.not76 = icmp eq i32 %frames, 0
  %flip.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 3, i32 1
  %cvt_endian.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 1
  %native_bytes.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 2
  %copy_bytes.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 3
  %native_ofs.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2
  %copy_ofs.i = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 1, i32 2, i32 1
  %dst_format = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %channel.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %enabled = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.082, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %wanted = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.082, i32 3
  %3 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2 = load i8, ptr %wanted, align 4
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %for.body
  %4 = and i8 %bf.load2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %area = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.082, i32 1
  %5 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst_format, align 4
  %call = tail call i32 @snd_pcm_area_silence(ptr noundef %area, i32 noundef 0, i32 noundef %frames, i32 noundef %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %wanted to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load10 = load i8, ptr %wanted, align 4
  %bf.clear11 = and i8 %bf.load10, 127
  store i8 %bf.clear11, ptr %wanted, align 4
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %bf.set17 = or i8 %bf.load2, -128
  %8 = ptrtoint ptr %wanted to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.set17, ptr %wanted, align 4
  %step = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.082, i32 1, i32 2
  %9 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %step, align 4
  %div3273 = lshr i32 %10, 3
  %step35 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.082, i32 1, i32 2
  %11 = ptrtoint ptr %step35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %step35, align 4
  %div3674 = lshr i32 %12, 3
  br i1 %cmp37.not76, label %if.end12.cleanup_crit_edge, label %while.body.preheader

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.preheader:                             ; preds = %if.end12
  %area23 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.082, i32 1
  %13 = ptrtoint ptr %area23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %area23, align 4
  %first27 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.082, i32 1, i32 1
  %15 = ptrtoint ptr %first27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %first27, align 4
  %div2872 = lshr i32 %16, 3
  %add.ptr29 = getelementptr i8, ptr %14, i32 %div2872
  %area19 = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.082, i32 1
  %17 = ptrtoint ptr %area19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %area19, align 4
  %first = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.082, i32 1, i32 1
  %19 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %first, align 4
  %div71 = lshr i32 %20, 3
  %add.ptr = getelementptr i8, ptr %18, i32 %div71
  br label %while.body

while.body:                                       ; preds = %cvt_s16_to_native.exit.while.body_crit_edge, %while.body.preheader
  %frames1.080 = phi i32 [ %dec, %cvt_s16_to_native.exit.while.body_crit_edge ], [ %frames, %while.body.preheader ]
  %dst.078 = phi ptr [ %add.ptr40, %cvt_s16_to_native.exit.while.body_crit_edge ], [ %add.ptr29, %while.body.preheader ]
  %src.077 = phi ptr [ %add.ptr39, %cvt_s16_to_native.exit.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %dec = add i32 %frames1.080, -1
  %21 = ptrtoint ptr %src.077 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %src.077, align 1
  %neg.i = xor i8 %22, -1
  %conv2.i = zext i8 %neg.i to i32
  %and.i = shl nuw nsw i32 %conv2.i, 3
  %shl.i = and i32 %and.i, 120
  %add.i = or i32 %shl.i, 132
  %and4.i = lshr i32 %conv2.i, 4
  %shr.i = and i32 %and4.i, 7
  %shl5.i = shl i32 %add.i, %shr.i
  %and7.i = and i32 %conv2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  %sub.i = sub nsw i32 132, %shl5.i
  %sub8.i = add nuw nsw i32 %shl5.i, 65404
  %cond.i = select i1 %tobool.not.i, i32 %sub8.i, i32 %sub.i
  %conv = trunc i32 %cond.i to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sample.addr.i)
  %23 = ptrtoint ptr %flip.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flip.i, align 4
  %xor17.i = xor i16 %24, %conv
  %25 = ptrtoint ptr %sample.addr.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %xor17.i, ptr %sample.addr.i, align 2
  %26 = ptrtoint ptr %cvt_endian.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cvt_endian.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i75 = icmp eq i32 %27, 0
  br i1 %tobool.not.i75, label %while.body.if.end.i_crit_edge, label %if.then.i

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %28 = tail call i16 @llvm.bswap.i16(i16 %xor17.i) #4
  %29 = ptrtoint ptr %sample.addr.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %sample.addr.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.if.end.i_crit_edge
  %30 = ptrtoint ptr %native_bytes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %native_bytes.i, align 4
  %32 = ptrtoint ptr %copy_bytes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %copy_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.i = icmp ugt i32 %31, %33
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.cvt_s16_to_native.exit_crit_edge

if.end.i.cvt_s16_to_native.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cvt_s16_to_native.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = call ptr @memset(ptr %dst.078, i32 0, i32 %31)
  br label %cvt_s16_to_native.exit

cvt_s16_to_native.exit:                           ; preds = %if.then4.i, %if.end.i.cvt_s16_to_native.exit_crit_edge
  %35 = ptrtoint ptr %native_ofs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %native_ofs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %dst.078, i32 %36
  %37 = ptrtoint ptr %copy_ofs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %copy_ofs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %sample.addr.i, i32 %38
  %39 = ptrtoint ptr %copy_bytes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %copy_bytes.i, align 4
  %41 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr7.i, i32 %40)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sample.addr.i)
  %add.ptr39 = getelementptr i8, ptr %src.077, i32 %div3273
  %add.ptr40 = getelementptr i8, ptr %dst.078, i32 %div3674
  %cmp37.not = icmp eq i32 %dec, 0
  br i1 %cmp37.not, label %cvt_s16_to_native.exit.cleanup_crit_edge, label %cvt_s16_to_native.exit.while.body_crit_edge

cvt_s16_to_native.exit.while.body_crit_edge:      ; preds = %cvt_s16_to_native.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cvt_s16_to_native.exit.cleanup_crit_edge:         ; preds = %cvt_s16_to_native.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %cvt_s16_to_native.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end
  %inc = add nuw nsw i32 %channel.082, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_linear(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_plugin_build(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mulaw_transfer(ptr noundef %plugin, ptr noundef %src_channels, ptr noundef %dst_channels, i32 noundef %frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plugin, null
  %tobool1.not = icmp eq ptr %src_channels, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool2.not = icmp eq ptr %dst_channels, null
  %spec.select144 = or i1 %or.cond, %tobool2.not
  br i1 %spec.select144, label %do.end, label %if.end25, !prof !16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #4
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
  %cmp28146.not = icmp eq i32 %1, 0
  br i1 %cmp28146.not, label %for.cond.preheader.cleanup.cont_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup.cont_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.cont

for.cond:                                         ; preds = %lor.rhs75
  %inc = add nuw i32 %channel.0147, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup.cont_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.cleanup.cont_crit_edge:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.cont

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %channel.0147 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %first = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0147, i32 1, i32 1
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
  %step = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 %channel.0147, i32 1, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step, align 4
  %rem34 = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem34)
  %tobool35.not = icmp eq i32 %rem34, 0
  br i1 %tobool35.not, label %if.end68, label %lor.rhs31.do.end52_crit_edge, !prof !17

lor.rhs31.do.end52_crit_edge:                     ; preds = %lor.rhs31
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

do.end52:                                         ; preds = %lor.rhs31.do.end52_crit_edge, %for.body.do.end52_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 264, i32 noundef 9, ptr noundef null) #4
  br label %cleanup121

if.end68:                                         ; preds = %lor.rhs31
  %first72 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0147, i32 1, i32 1
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
  %step78 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 %channel.0147, i32 1, i32 2
  %8 = ptrtoint ptr %step78 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %step78, align 4
  %rem79 = and i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem79)
  %tobool80.not = icmp eq i32 %rem79, 0
  br i1 %tobool80.not, label %for.cond, label %lor.rhs75.do.end97_crit_edge, !prof !17

lor.rhs75.do.end97_crit_edge:                     ; preds = %lor.rhs75
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end97

do.end97:                                         ; preds = %lor.rhs75.do.end97_crit_edge, %if.end68.do.end97_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 9, ptr noundef null) #4
  br label %cleanup121

cleanup.cont:                                     ; preds = %for.cond.cleanup.cont_crit_edge, %for.cond.preheader.cleanup.cont_crit_edge
  %frames115 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 0, i32 2
  %10 = ptrtoint ptr %frames115 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frames115, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %frames)
  %extra_data = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 20
  %13 = ptrtoint ptr %extra_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extra_data, align 4
  tail call void %14(ptr noundef %plugin, ptr noundef %src_channels, ptr noundef %dst_channels, i32 noundef %12) #4
  br label %cleanup121

cleanup121:                                       ; preds = %cleanup.cont, %do.end97, %do.end52, %if.end25.cleanup121_crit_edge, %do.end
  %retval.1 = phi i32 [ -6, %do.end ], [ %12, %cleanup.cont ], [ 0, %if.end25.cleanup121_crit_edge ], [ -6, %do.end97 ], [ -6, %do.end52 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_area_silence(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_little_endian(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_signed(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/oss/mulaw.c", i32 311, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/core/oss/mulaw.c", i32 329, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/core/oss/mulaw.c", i32 335, i32 35}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2000, i32 1}
