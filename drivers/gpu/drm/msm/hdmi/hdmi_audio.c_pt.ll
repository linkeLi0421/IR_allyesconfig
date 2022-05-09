; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/hdmi/hdmi_audio.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_msm_audio_arcs = type { i32, [7 x %struct.hdmi_msm_audio_acr] }
%struct.hdmi_msm_audio_acr = type { i32, i32 }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@.str = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"audio: enabled=%d, channels=%d, channel_allocation=0x%x, level_shift_value=%d, downmix_inhibit=%d, rate=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"video: power_on=%d, pixclock=%lu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disabling audio: no video\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"disabling audio: unsupported pixclock: %lu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"n=%u, cts=%u, multiplier=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio %sabled\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@nchannels = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 4, i32 6, i32 8], [16 x i8] zeroinitializer }, align 32
@acr_lut = internal constant { [5 x %struct.hdmi_msm_audio_arcs], [84 x i8] } { [5 x %struct.hdmi_msm_audio_arcs] [%struct.hdmi_msm_audio_arcs { i32 25200000, [7 x %struct.hdmi_msm_audio_acr] [%struct.hdmi_msm_audio_acr { i32 4096, i32 25200 }, %struct.hdmi_msm_audio_acr { i32 6272, i32 28000 }, %struct.hdmi_msm_audio_acr { i32 6144, i32 25200 }, %struct.hdmi_msm_audio_acr { i32 12544, i32 28000 }, %struct.hdmi_msm_audio_acr { i32 12288, i32 25200 }, %struct.hdmi_msm_audio_acr { i32 25088, i32 28000 }, %struct.hdmi_msm_audio_acr { i32 24576, i32 25200 }] }, %struct.hdmi_msm_audio_arcs { i32 27000000, [7 x %struct.hdmi_msm_audio_acr] [%struct.hdmi_msm_audio_acr { i32 4096, i32 27000 }, %struct.hdmi_msm_audio_acr { i32 6272, i32 30000 }, %struct.hdmi_msm_audio_acr { i32 6144, i32 27000 }, %struct.hdmi_msm_audio_acr { i32 12544, i32 30000 }, %struct.hdmi_msm_audio_acr { i32 12288, i32 27000 }, %struct.hdmi_msm_audio_acr { i32 25088, i32 30000 }, %struct.hdmi_msm_audio_acr { i32 24576, i32 27000 }] }, %struct.hdmi_msm_audio_arcs { i32 27030000, [7 x %struct.hdmi_msm_audio_acr] [%struct.hdmi_msm_audio_acr { i32 4096, i32 27027 }, %struct.hdmi_msm_audio_acr { i32 6272, i32 30030 }, %struct.hdmi_msm_audio_acr { i32 6144, i32 27027 }, %struct.hdmi_msm_audio_acr { i32 12544, i32 30030 }, %struct.hdmi_msm_audio_acr { i32 12288, i32 27027 }, %struct.hdmi_msm_audio_acr { i32 25088, i32 30030 }, %struct.hdmi_msm_audio_acr { i32 24576, i32 27027 }] }, %struct.hdmi_msm_audio_arcs { i32 74250000, [7 x %struct.hdmi_msm_audio_acr] [%struct.hdmi_msm_audio_acr { i32 4096, i32 74250 }, %struct.hdmi_msm_audio_acr { i32 6272, i32 82500 }, %struct.hdmi_msm_audio_acr { i32 6144, i32 74250 }, %struct.hdmi_msm_audio_acr { i32 12544, i32 82500 }, %struct.hdmi_msm_audio_acr { i32 12288, i32 74250 }, %struct.hdmi_msm_audio_acr { i32 25088, i32 82500 }, %struct.hdmi_msm_audio_acr { i32 24576, i32 74250 }] }, %struct.hdmi_msm_audio_arcs { i32 148500000, [7 x %struct.hdmi_msm_audio_acr] [%struct.hdmi_msm_audio_acr { i32 4096, i32 148500 }, %struct.hdmi_msm_audio_acr { i32 6272, i32 165000 }, %struct.hdmi_msm_audio_acr { i32 6144, i32 148500 }, %struct.hdmi_msm_audio_acr { i32 12544, i32 165000 }, %struct.hdmi_msm_audio_acr { i32 12288, i32 148500 }, %struct.hdmi_msm_audio_acr { i32 25088, i32 165000 }, %struct.hdmi_msm_audio_acr { i32 24576, i32 148500 }] }], [84 x i8] zeroinitializer }, align 32
@switch.table.msm_hdmi_audio_update = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 3, i32 2, i32 3, i32 2, i32 3], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 25200000, i64 27000000, i64 27030000, i64 74250000, i64 148500000]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 83, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 87, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 90, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 97, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 133, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 212, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"nchannels\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 11, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [8 x i8] c"acr_lut\00", align 1
@___asan_gen_.37 = private constant [41 x i8] c"../drivers/gpu/drm/msm/hdmi/hdmi_audio.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 38, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant [35 x i8] c"switch.table.msm_hdmi_audio_update\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nchannels, ptr @acr_lut, ptr @switch.table.msm_hdmi_audio_update], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nchannels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acr_lut to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msm_hdmi_audio_update to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_audio_update(ptr noundef %hdmi) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %audio1 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4
  %infoframe = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %audio1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %audio1, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = zext i8 %1 to i32
  %channels = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 1, i32 3
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %channels, align 2
  %conv5 = zext i8 %4 to i32
  %channel_allocation = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 1, i32 8
  %5 = ptrtoint ptr %channel_allocation to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %channel_allocation, align 4
  %conv6 = zext i8 %6 to i32
  %level_shift_value = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 1, i32 9
  %7 = ptrtoint ptr %level_shift_value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %level_shift_value, align 1
  %conv7 = zext i8 %8 to i32
  %downmix_inhibit = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 1, i32 10
  %9 = ptrtoint ptr %downmix_inhibit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %downmix_inhibit, align 2, !range !27
  %11 = zext i8 %10 to i32
  %rate = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %11, i32 noundef %13) #3
  %power_on = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 5
  %14 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %power_on, align 4, !range !27
  %16 = zext i8 %15 to i32
  %pixclock = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 6
  %17 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixclock, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %16, i32 noundef %18) #3
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %land.lhs.true

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

land.lhs.true:                                    ; preds = %entry
  %19 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %power_on, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool15.not = icmp eq i8 %20, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end.thread290_crit_edge, label %land.lhs.true17

land.lhs.true.if.end.thread290_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread290

land.lhs.true17:                                  ; preds = %land.lhs.true
  %21 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pixclock, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.then24 [
    i32 0, label %land.lhs.true17.if.end.thread290_crit_edge
    i32 25200000, label %land.lhs.true17.if.end27_crit_edge
    i32 27000000, label %cleanup3.fold.split.i
    i32 27030000, label %cleanup3.fold.split8.i
    i32 74250000, label %cleanup3.fold.split9.i
    i32 148500000, label %cleanup3.fold.split10.i
  ]

land.lhs.true17.if.end27_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

land.lhs.true17.if.end.thread290_crit_edge:       ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread290

if.end.thread290:                                 ; preds = %land.lhs.true17.if.end.thread290_crit_edge, %land.lhs.true.if.end.thread290_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2) #3
  br label %if.end27

cleanup3.fold.split.i:                            ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

cleanup3.fold.split8.i:                           ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

cleanup3.fold.split9.i:                           ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

cleanup3.fold.split10.i:                          ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then24:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %22) #3
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %cleanup3.fold.split10.i, %cleanup3.fold.split9.i, %cleanup3.fold.split8.i, %cleanup3.fold.split.i, %if.end.thread290, %land.lhs.true17.if.end27_crit_edge, %entry.if.end27_crit_edge
  %arcs.0 = phi ptr [ null, %if.then24 ], [ null, %if.end.thread290 ], [ getelementptr inbounds ([5 x %struct.hdmi_msm_audio_arcs], ptr @acr_lut, i32 0, i32 4), %cleanup3.fold.split10.i ], [ getelementptr inbounds ([5 x %struct.hdmi_msm_audio_arcs], ptr @acr_lut, i32 0, i32 3), %cleanup3.fold.split9.i ], [ getelementptr inbounds ([5 x %struct.hdmi_msm_audio_arcs], ptr @acr_lut, i32 0, i32 2), %cleanup3.fold.split8.i ], [ getelementptr inbounds ([5 x %struct.hdmi_msm_audio_arcs], ptr @acr_lut, i32 0, i32 1), %cleanup3.fold.split.i ], [ null, %entry.if.end27_crit_edge ], [ @acr_lut, %land.lhs.true17.if.end27_crit_edge ]
  %enabled.1.off0 = phi i1 [ false, %if.then24 ], [ false, %if.end.thread290 ], [ true, %cleanup3.fold.split10.i ], [ true, %cleanup3.fold.split9.i ], [ true, %cleanup3.fold.split8.i ], [ true, %cleanup3.fold.split.i ], [ false, %entry.if.end27_crit_edge ], [ true, %land.lhs.true17.if.end27_crit_edge ]
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 7
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 36
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #3
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i248 = getelementptr i8, ptr %27, i32 40
  %call.i249 = tail call i32 @msm_readl(ptr noundef %add.ptr.i248) #3
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i251 = getelementptr i8, ptr %29, i32 32
  %call.i252 = tail call i32 @msm_readl(ptr noundef %add.ptr.i251) #3
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i254 = getelementptr i8, ptr %31, i32 44
  %call.i255 = tail call i32 @msm_readl(ptr noundef %add.ptr.i254) #3
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i257 = getelementptr i8, ptr %33, i32 464
  %call.i258 = tail call i32 @msm_readl(ptr noundef %add.ptr.i257) #3
  %and = and i32 %call.i, 2147483340
  br i1 %enabled.1.off0, label %if.then34, label %if.else137

if.then34:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buf) #3
  %34 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 3
  %35 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 4
  %36 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 5
  %37 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 6
  %38 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 7
  %39 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 8
  %40 = call ptr @memset(ptr %buf, i32 255, i32 14)
  %41 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rate, align 4
  %arrayidx = getelementptr %struct.hdmi_msm_audio_arcs, ptr %arcs.0, i32 0, i32 1, i32 %42
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %cts40 = getelementptr %struct.hdmi_msm_audio_arcs, ptr %arcs.0, i32 0, i32 1, i32 %42, i32 1
  %45 = ptrtoint ptr %cts40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cts40, align 4
  %47 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %42, label %if.then34.if.end58_crit_edge [
    i32 6, label %if.then34.if.then46_crit_edge
    i32 5, label %if.then34.if.then46_crit_edge294
    i32 4, label %if.then34.if.then54_crit_edge
    i32 3, label %if.then34.if.then54_crit_edge295
  ]

if.then34.if.then54_crit_edge295:                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then54

if.then34.if.then54_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then54

if.then34.if.then46_crit_edge294:                 ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then46

if.then34.if.then46_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then46

if.then34.if.end58_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

if.then46:                                        ; preds = %if.then34.if.then46_crit_edge, %if.then34.if.then46_crit_edge294
  %shr = lshr i32 %44, 2
  br label %if.end58

if.then54:                                        ; preds = %if.then34.if.then54_crit_edge, %if.then34.if.then54_crit_edge295
  %shr55 = lshr i32 %44, 1
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.then46, %if.then34.if.end58_crit_edge
  %n.0 = phi i32 [ %shr, %if.then46 ], [ %shr55, %if.then54 ], [ %44, %if.then34.if.end58_crit_edge ]
  %multiplier.0 = phi i32 [ 4, %if.then46 ], [ 2, %if.then54 ], [ 1, %if.then34.if.end58_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %n.0, i32 noundef %46, i32 noundef %multiplier.0) #3
  %shl.i = shl nuw nsw i32 %multiplier.0, 16
  %or59 = or i32 %and, %shl.i
  %48 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rate, align 4
  %switch.tableidx = add i32 %49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %50 = icmp ult i32 %switch.tableidx, 6
  br i1 %50, label %switch.lookup, label %if.end58.if.end89_crit_edge

if.end58.if.end89_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end89

switch.lookup:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.msm_hdmi_audio_update, i32 0, i32 %switch.tableidx
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end89

if.end89:                                         ; preds = %switch.lookup, %if.end58.if.end89_crit_edge
  %select.0 = phi i32 [ %switch.load, %switch.lookup ], [ 1, %if.end58.if.end89_crit_edge ]
  %shl.i259 = shl nuw nsw i32 %select.0, 4
  %or61 = or i32 %shl.i259, %or59
  %sub = shl nuw nsw i32 %select.0, 3
  %add.i = add nuw nsw i32 %sub, 188
  %shl.i261 = shl i32 %46, 12
  %52 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i263 = getelementptr i8, ptr %53, i32 %add.i
  tail call void @msm_writel(i32 noundef %shl.i261, ptr noundef %add.ptr.i263) #3
  %add.i265 = or i32 %sub, 192
  %54 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i267 = getelementptr i8, ptr %55, i32 %add.i265
  tail call void @msm_writel(i32 noundef %n.0, ptr noundef %add.ptr.i267) #3
  %56 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %channels, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp99.not = icmp eq i8 %57, 2
  %or101 = select i1 %cmp99.not, i32 1, i32 3
  %58 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i269 = getelementptr i8, ptr %59, i32 68
  tail call void @msm_writel(i32 noundef %or101, ptr noundef %add.ptr.i269) #3
  %or103 = or i32 %or61, -2147483389
  %call104 = call i32 @hdmi_audio_infoframe_pack(ptr noundef %infoframe, ptr noundef nonnull %buf, i32 noundef 14) #3
  %60 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %34, align 1
  %conv106 = zext i8 %61 to i32
  %62 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %35, align 1
  %conv108 = zext i8 %63 to i32
  %shl109 = shl nuw nsw i32 %conv108, 8
  %or110 = or i32 %shl109, %conv106
  %64 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %36, align 1
  %conv112 = zext i8 %65 to i32
  %shl113 = shl nuw nsw i32 %conv112, 16
  %or114 = or i32 %or110, %shl113
  %66 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %37, align 1
  %conv116 = zext i8 %67 to i32
  %shl117 = shl nuw i32 %conv116, 24
  %or118 = or i32 %or114, %shl117
  %68 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i271 = getelementptr i8, ptr %69, i32 228
  call void @msm_writel(i32 noundef %or118, ptr noundef %add.ptr.i271) #3
  %70 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %38, align 1
  %conv120 = zext i8 %71 to i32
  %72 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %39, align 1
  %conv123 = zext i8 %73 to i32
  %shl124 = shl nuw nsw i32 %conv123, 8
  %or125 = or i32 %shl124, %conv120
  %74 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i273 = getelementptr i8, ptr %75, i32 232
  call void @msm_writel(i32 noundef %or125, ptr noundef %add.ptr.i273) #3
  %76 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i275 = getelementptr i8, ptr %77, i32 64
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i275) #3
  %or127 = or i32 %call.i249, 48
  %or128 = or i32 %call.i252, 1
  %or132 = or i32 %call.i255, 240
  %and133 = and i32 %call.i258, -242
  %or136 = or i32 %and133, 65
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buf) #3
  br label %if.end148

if.else137:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %and139 = and i32 %call.i, -52
  %and141 = and i32 %call.i249, -49
  %and142 = and i32 %call.i252, -2
  %and146 = and i32 %call.i255, -241
  %and147 = and i32 %call.i258, -2
  br label %if.end148

if.end148:                                        ; preds = %if.else137, %if.end89
  %cond158 = phi ptr [ @.str.7, %if.else137 ], [ @.str.6, %if.end89 ]
  %cond154 = phi i32 [ 0, %if.else137 ], [ 4, %if.end89 ]
  %acr_pkt_ctrl.0 = phi i32 [ %and139, %if.else137 ], [ %or103, %if.end89 ]
  %vbi_pkt_ctrl.0 = phi i32 [ %and141, %if.else137 ], [ %or127, %if.end89 ]
  %aud_pkt_ctrl.0 = phi i32 [ %and142, %if.else137 ], [ %or128, %if.end89 ]
  %infofrm_ctrl.0 = phi i32 [ %and146, %if.else137 ], [ %or132, %if.end89 ]
  %audio_config.0 = phi i32 [ %and147, %if.else137 ], [ %or136, %if.end89 ]
  %78 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i277 = getelementptr i8, ptr %79, i32 36
  call void @msm_writel(i32 noundef %acr_pkt_ctrl.0, ptr noundef %add.ptr.i277) #3
  %80 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i279 = getelementptr i8, ptr %81, i32 40
  call void @msm_writel(i32 noundef %vbi_pkt_ctrl.0, ptr noundef %add.ptr.i279) #3
  %82 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i281 = getelementptr i8, ptr %83, i32 32
  call void @msm_writel(i32 noundef %aud_pkt_ctrl.0, ptr noundef %add.ptr.i281) #3
  %84 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i283 = getelementptr i8, ptr %85, i32 44
  call void @msm_writel(i32 noundef %infofrm_ctrl.0, ptr noundef %add.ptr.i283) #3
  %cond151 = zext i1 %enabled.1.off0 to i32
  %or155 = or i32 %cond154, %cond151
  %86 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i285 = getelementptr i8, ptr %87, i32 716
  call void @msm_writel(i32 noundef %or155, ptr noundef %add.ptr.i285) #3
  %88 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i287 = getelementptr i8, ptr %89, i32 464
  call void @msm_writel(i32 noundef %audio_config.0, ptr noundef %add.ptr.i287) #3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond158) #3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_audio_info_setup(ptr noundef %hdmi, i1 noundef zeroext %enabled, i32 noundef %num_of_channels, i32 noundef %channel_allocation, i32 noundef %level_shift, i1 noundef zeroext %down_mix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enabled to i8
  %frombool1 = zext i1 %down_mix to i8
  %tobool.not = icmp eq ptr %hdmi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num_of_channels)
  %cmp = icmp ugt i32 %num_of_channels, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %audio2 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4
  %0 = ptrtoint ptr %audio2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %audio2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @nchannels, i32 0, i32 %num_of_channels
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %2 to i8
  %channels = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 1, i32 3
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %channels, align 2
  %conv8 = trunc i32 %channel_allocation to i8
  %channel_allocation10 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 1, i32 8
  %4 = ptrtoint ptr %channel_allocation10 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv8, ptr %channel_allocation10, align 4
  %conv11 = trunc i32 %level_shift to i8
  %level_shift_value = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 1, i32 9
  %5 = ptrtoint ptr %level_shift_value to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv11, ptr %level_shift_value, align 1
  %downmix_inhibit = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 1, i32 10
  %6 = ptrtoint ptr %downmix_inhibit to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool1, ptr %downmix_inhibit, align 2
  %call = tail call i32 @msm_hdmi_audio_update(ptr noundef nonnull %hdmi)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -6, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_audio_set_sample_rate(ptr noundef %hdmi, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hdmi, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %rate)
  %0 = icmp ugt i32 %rate, 6
  %or.cond = or i1 %tobool.not, %0
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rate5 = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %rate5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rate, ptr %rate5, align 4
  %call = tail call i32 @msm_hdmi_audio_update(ptr noundef nonnull %hdmi)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_audio.c", i32 83, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_audio.c", i32 87, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_audio.c", i32 90, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_audio.c", i32 97, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_audio.c", i32 133, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_audio.c", i32 212, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @acr_lut, !15, !"acr_lut", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_audio.c", i32 38, i32 41}
!16 = !{ptr @nchannels, !17, !"nchannels", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_audio.c", i32 11, i32 12}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
