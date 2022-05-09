; ModuleID = '/llk/IR_all_yes/sound/core/oss/route.c_pt.bc'
source_filename = "../sound/core/oss/route.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_plugin_format = type { i32, i32, i32 }
%struct.snd_pcm_plugin = type { ptr, i32, %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [0 x i8] }
%struct.snd_pcm_plugin_channel = type { ptr, %struct.snd_pcm_channel_area, i32, i8 }
%struct.snd_pcm_channel_area = type { ptr, i32, i32 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/core/oss/route.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"route conversion\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 95, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [26 x i8] c"../sound/core/oss/route.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 103, i32 35 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_plugin_build_route(ptr noundef %plug, ptr noundef %src_format, ptr noundef %dst_format, ptr noundef writeonly %r_plugin) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef null) #4
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end57:                                         ; preds = %if.end23
  %6 = ptrtoint ptr %src_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_format, align 4
  %8 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_format, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp60.not = icmp eq i32 %7, %9
  br i1 %cmp60.not, label %if.end92, label %do.end76, !prof !15

do.end76:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end92:                                         ; preds = %if.end57
  %call = call i32 @snd_pcm_plugin_build(ptr noundef %plug, ptr noundef nonnull @.str.1, ptr noundef %src_format, ptr noundef %dst_format, i32 noundef 0, ptr noundef nonnull %plugin) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp93 = icmp slt i32 %call, 0
  br i1 %cmp93, label %if.end92.cleanup_crit_edge, label %if.end95

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end95:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plugin, align 4
  %transfer = getelementptr inbounds %struct.snd_pcm_plugin, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @route_transfer, ptr %transfer, align 4
  %13 = ptrtoint ptr %r_plugin to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %r_plugin, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.end92.cleanup_crit_edge, %do.end76, %do.end41, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end41 ], [ -6, %do.end76 ], [ 0, %if.end95 ], [ %call, %if.end92.cleanup_crit_edge ]
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
define internal i32 @route_transfer(ptr noundef readonly %plugin, ptr noundef %src_channels, ptr noundef %dst_channels, i32 noundef %frames) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %plugin, null
  %tobool1.not = icmp eq ptr %src_channels, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool2.not = icmp eq ptr %dst_channels, null
  %spec.select92 = or i1 %or.cond, %tobool2.not
  br i1 %spec.select92, label %do.end, label %if.end25, !prof !14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames)
  %cmp = icmp eq i32 %frames, 0
  br i1 %cmp, label %if.end25.cleanup_crit_edge, label %if.end27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %if.end25
  %frames28 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dst_channels, i32 0, i32 2
  %0 = ptrtoint ptr %frames28 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frames28, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %frames)
  %channels = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 4
  %dst_format = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3
  %channels34 = getelementptr inbounds %struct.snd_pcm_plugin, ptr %plugin, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %channels34 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channels34, align 4
  %7 = ptrtoint ptr %dst_format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp37 = icmp slt i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp39111 = icmp sgt i32 %6, 0
  br i1 %cmp37, label %for.cond.preheader, label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %if.end27
  br i1 %cmp39111, label %for.cond41.preheader.for.body44_crit_edge, label %for.cond41.preheader.cleanup_crit_edge

for.cond41.preheader.cleanup_crit_edge:           ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond41.preheader.for.body44_crit_edge:        ; preds = %for.cond41.preheader
  br label %for.body44

for.cond.preheader:                               ; preds = %if.end27
  br i1 %cmp39111, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %area.i = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %src_channels, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %dvp.0113 = phi ptr [ %dst_channels, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %dst.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %enabled.i = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dvp.0113, i32 0, i32 3
  %9 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %enabled.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %enabled.i, align 4
  %area1.i = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dvp.0113, i32 0, i32 1
  %call.i = tail call i32 @snd_pcm_area_copy(ptr noundef %area.i, i32 noundef 0, ptr noundef %area1.i, i32 noundef 0, i32 noundef %2, i32 noundef %8) #4
  %incdec.ptr = getelementptr %struct.snd_pcm_plugin_channel, ptr %dvp.0113, i32 1
  %inc = add nuw nsw i32 %dst.0112, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.cond41.preheader.for.body44_crit_edge
  %dvp.1108 = phi ptr [ %incdec.ptr45, %for.body44.for.body44_crit_edge ], [ %dst_channels, %for.cond41.preheader.for.body44_crit_edge ]
  %dst.1107 = phi i32 [ %inc48, %for.body44.for.body44_crit_edge ], [ 0, %for.cond41.preheader.for.body44_crit_edge ]
  %src_channels.addr.0106 = phi ptr [ %incdec.ptr46, %for.body44.for.body44_crit_edge ], [ %src_channels, %for.cond41.preheader.for.body44_crit_edge ]
  %enabled.i93 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dvp.1108, i32 0, i32 3
  %10 = ptrtoint ptr %enabled.i93 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i94 = load i8, ptr %enabled.i93, align 4
  %bf.set.i95 = or i8 %bf.load.i94, -128
  store i8 %bf.set.i95, ptr %enabled.i93, align 4
  %area.i96 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %src_channels.addr.0106, i32 0, i32 1
  %area1.i97 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dvp.1108, i32 0, i32 1
  %call.i98 = tail call i32 @snd_pcm_area_copy(ptr noundef %area.i96, i32 noundef 0, ptr noundef %area1.i97, i32 noundef 0, i32 noundef %2, i32 noundef %8) #4
  %incdec.ptr45 = getelementptr %struct.snd_pcm_plugin_channel, ptr %dvp.1108, i32 1
  %incdec.ptr46 = getelementptr %struct.snd_pcm_plugin_channel, ptr %src_channels.addr.0106, i32 1
  %inc48 = add nuw nsw i32 %dst.1107, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %inc48)
  %cmp42 = icmp sgt i32 %6, %inc48
  call void @__sanitizer_cov_trace_cmp4(i32 %inc48, i32 %4)
  %cmp43 = icmp slt i32 %inc48, %4
  %or.cond91 = select i1 %cmp42, i1 %cmp43, i1 false
  br i1 %or.cond91, label %for.body44.for.body44_crit_edge, label %for.end49

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body44

for.end49:                                        ; preds = %for.body44
  br i1 %cmp42, label %if.then51, label %for.end49.cleanup_crit_edge

for.end49.cleanup_crit_edge:                      ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then51:                                        ; preds = %for.end49
  %sub = sub i32 %6, %inc48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp7.i = icmp sgt i32 %sub, 0
  br i1 %cmp7.i, label %if.then51.for.body.i_crit_edge, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then51.for.body.i_crit_edge:                   ; preds = %if.then51
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then51.for.body.i_crit_edge
  %dst.09.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then51.for.body.i_crit_edge ]
  %dvp.addr.08.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %incdec.ptr45, %if.then51.for.body.i_crit_edge ]
  %wanted.i = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dvp.addr.08.i, i32 0, i32 3
  %11 = ptrtoint ptr %wanted.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i99 = load i8, ptr %wanted.i, align 4
  %12 = and i8 %bf.load.i99, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %area.i100 = getelementptr inbounds %struct.snd_pcm_plugin_channel, ptr %dvp.addr.08.i, i32 0, i32 1
  %call.i101 = tail call i32 @snd_pcm_area_silence(ptr noundef %area.i100, i32 noundef 0, i32 noundef %2, i32 noundef %8) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %13 = ptrtoint ptr %wanted.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load1.i = load i8, ptr %wanted.i, align 4
  %bf.clear2.i = and i8 %bf.load1.i, 127
  store i8 %bf.clear2.i, ptr %wanted.i, align 4
  %incdec.ptr.i = getelementptr %struct.snd_pcm_plugin_channel, ptr %dvp.addr.08.i, i32 1
  %inc.i = add nuw nsw i32 %dst.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %for.end49.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %for.cond41.preheader.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end25.cleanup_crit_edge ], [ %2, %for.end49.cleanup_crit_edge ], [ %2, %if.then51.cleanup_crit_edge ], [ %2, %for.cond.preheader.cleanup_crit_edge ], [ %2, %for.cond41.preheader.cleanup_crit_edge ], [ %2, %for.body.cleanup_crit_edge ], [ %2, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_area_copy(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_area_silence(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
!1 = !{!"../sound/core/oss/route.c", i32 95, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/core/oss/route.c", i32 103, i32 35}
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
