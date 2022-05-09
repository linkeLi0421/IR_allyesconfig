; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/ppr.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/ppr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.b43_ppr_rates = type { [4 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@b43_ppr_load_max_from_sprom.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/broadcom/b43/ppr.c\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [43 x i8] c"../drivers/net/wireless/broadcom/b43/ppr.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 114, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @b43_ppr_clear(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %ppr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ppr, i32 0, i32 52)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_ppr_add(ptr nocapture noundef readnone %dev, ptr nocapture noundef %ppr, i32 noundef %diff) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %rate.019 = phi ptr [ %ppr, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %rate.019 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate.019, align 1
  %conv = zext i8 %1 to i32
  %add = add i32 %conv, %diff
  %2 = tail call i32 @llvm.smax.i32(i32 %add, i32 0)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 127)
  %conv10 = trunc i32 %3 to i8
  %4 = ptrtoint ptr %rate.019 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv10, ptr %rate.019, align 1
  %inc = add nuw nsw i32 %i.020, 1
  %incdec.ptr = getelementptr i8, ptr %rate.019, i32 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_ppr_apply_max(ptr nocapture noundef readnone %dev, ptr nocapture noundef %ppr, i8 noundef zeroext %max) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %rate.013 = phi ptr [ %ppr, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %rate.013 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate.013, align 1
  %2 = tail call i8 @llvm.umin.i8(i8 %1, i8 %max)
  %3 = ptrtoint ptr %rate.013 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %rate.013, align 1
  %inc = add nuw nsw i32 %i.014, 1
  %incdec.ptr = getelementptr i8, ptr %rate.013, i32 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_ppr_apply_min(ptr nocapture noundef readnone %dev, ptr nocapture noundef %ppr, i8 noundef zeroext %min) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %rate.013 = phi ptr [ %ppr, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %rate.013 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate.013, align 1
  %2 = tail call i8 @llvm.umax.i8(i8 %1, i8 %min)
  %3 = ptrtoint ptr %rate.013 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %rate.013, align 1
  %inc = add nuw nsw i32 %i.014, 1
  %incdec.ptr = getelementptr i8, ptr %rate.013, i32 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @b43_ppr_get_max(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %ppr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %res.015 = phi i8 [ 0, %entry ], [ %2, %for.body.for.body_crit_edge ]
  %rate.014 = phi ptr [ %ppr, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %rate.014 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate.014, align 1
  %2 = tail call i8 @llvm.umax.i8(i8 %1, i8 %res.015)
  %inc = add nuw nsw i32 %i.013, 1
  %incdec.ptr = getelementptr i8, ptr %rate.014, i32 1
  %exitcond.not = icmp eq i32 %inc, 52
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @b43_ppr_load_max_from_sprom(ptr nocapture noundef readonly %dev, ptr noundef %ppr, i32 noundef %band) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_sprom = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %bus_sprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_sprom, align 4
  %4 = zext i32 %band to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %band, label %land.end [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb17
    i32 2, label %sw.bb46
    i32 3, label %sw.bb75
  ]

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %maxpwr_5gl = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 74, i32 0, i32 3
  %5 = ptrtoint ptr %maxpwr_5gl to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %maxpwr_5gl, align 1
  %maxpwr_5gl22 = getelementptr %struct.ssb_sprom, ptr %3, i32 0, i32 74, i32 1, i32 3
  %7 = ptrtoint ptr %maxpwr_5gl22 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %maxpwr_5gl22, align 1
  %9 = tail call i8 @llvm.umin.i8(i8 %6, i8 %8)
  %ofdm5glpo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 64
  %mcs5glpo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 79
  %cddpo36 = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 96
  %10 = ptrtoint ptr %cddpo36 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cddpo36, align 2
  %12 = lshr i16 %11, 8
  %13 = trunc i16 %12 to i8
  %conv40 = and i8 %13, 15
  %stbcpo41 = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 97
  %14 = ptrtoint ptr %stbcpo41 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %stbcpo41, align 4
  %16 = lshr i16 %15, 8
  %17 = trunc i16 %16 to i8
  %conv45 = and i8 %17, 15
  br label %sw.epilog.thread

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %maxpwr_5g = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 74, i32 0, i32 4
  %18 = ptrtoint ptr %maxpwr_5g to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %maxpwr_5g, align 4
  %maxpwr_5g51 = getelementptr %struct.ssb_sprom, ptr %3, i32 0, i32 74, i32 1, i32 4
  %20 = ptrtoint ptr %maxpwr_5g51 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %maxpwr_5g51, align 2
  %22 = tail call i8 @llvm.umin.i8(i8 %19, i8 %21)
  %ofdm5gpo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 65
  %mcs5gpo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 78
  %cddpo65 = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 96
  %23 = ptrtoint ptr %cddpo65 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %cddpo65, align 2
  %25 = trunc i16 %24 to i8
  %26 = lshr i8 %25, 4
  %stbcpo70 = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 97
  %27 = ptrtoint ptr %stbcpo70 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %stbcpo70, align 4
  %29 = trunc i16 %28 to i8
  %30 = lshr i8 %29, 4
  br label %sw.epilog.thread

sw.bb75:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %maxpwr_5gh = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 74, i32 0, i32 5
  %31 = ptrtoint ptr %maxpwr_5gh to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %maxpwr_5gh, align 1
  %maxpwr_5gh80 = getelementptr %struct.ssb_sprom, ptr %3, i32 0, i32 74, i32 1, i32 5
  %33 = ptrtoint ptr %maxpwr_5gh80 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %maxpwr_5gh80, align 1
  %35 = tail call i8 @llvm.umin.i8(i8 %32, i8 %34)
  %ofdm5ghpo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 66
  %mcs5ghpo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 80
  %cddpo94 = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 96
  %36 = ptrtoint ptr %cddpo94 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cddpo94, align 2
  %38 = lshr i16 %37, 12
  %conv98 = trunc i16 %38 to i8
  %stbcpo99 = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 97
  %39 = ptrtoint ptr %stbcpo99 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %stbcpo99, align 4
  %41 = lshr i16 %40, 12
  %conv103 = trunc i16 %41 to i8
  br label %sw.epilog.thread

land.end:                                         ; preds = %entry
  %.b569 = load i1, ptr @b43_ppr_load_max_from_sprom.__already_done, align 1
  br i1 %.b569, label %land.end.cleanup_crit_edge, label %if.then, !prof !12

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @b43_ppr_load_max_from_sprom.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

sw.epilog.thread:                                 ; preds = %sw.bb75, %sw.bb46, %sw.bb17
  %sprom_ofdm_po.0.in.ph = phi ptr [ %ofdm5glpo, %sw.bb17 ], [ %ofdm5gpo, %sw.bb46 ], [ %ofdm5ghpo, %sw.bb75 ]
  %sprom_mcs_po.0.ph = phi ptr [ %mcs5glpo, %sw.bb17 ], [ %mcs5gpo, %sw.bb46 ], [ %mcs5ghpo, %sw.bb75 ]
  %extra_cdd_po.0.ph = phi i8 [ %conv40, %sw.bb17 ], [ %26, %sw.bb46 ], [ %conv98, %sw.bb75 ]
  %extra_stbc_po.0.ph = phi i8 [ %conv45, %sw.bb17 ], [ %30, %sw.bb46 ], [ %conv103, %sw.bb75 ]
  %maxpwr.0.ph = phi i8 [ %9, %sw.bb17 ], [ %22, %sw.bb46 ], [ %35, %sw.bb75 ]
  %42 = ptrtoint ptr %sprom_ofdm_po.0.in.ph to i32
  call void @__asan_load4_noabort(i32 %42)
  %sprom_ofdm_po.0578 = load i32, ptr %sprom_ofdm_po.0.in.ph, align 4
  br label %if.end152

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %maxpwr_2g = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 74, i32 0, i32 2
  %43 = ptrtoint ptr %maxpwr_2g to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %maxpwr_2g, align 2
  %maxpwr_2g5 = getelementptr %struct.ssb_sprom, ptr %3, i32 0, i32 74, i32 1, i32 2
  %45 = ptrtoint ptr %maxpwr_2g5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %maxpwr_2g5, align 2
  %47 = tail call i8 @llvm.umin.i8(i8 %44, i8 %46)
  %ofdm2gpo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 63
  %cddpo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 96
  %48 = ptrtoint ptr %cddpo to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %cddpo, align 2
  %50 = trunc i16 %49 to i8
  %stbcpo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 97
  %51 = ptrtoint ptr %stbcpo to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %stbcpo, align 4
  %53 = trunc i16 %52 to i8
  %54 = ptrtoint ptr %ofdm2gpo to i32
  call void @__asan_load4_noabort(i32 %54)
  %sprom_ofdm_po.0 = load i32, ptr %ofdm2gpo, align 4
  %cck2gpo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 62
  %55 = ptrtoint ptr %cck2gpo to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %cck2gpo, align 4
  %shr144.tr = trunc i16 %56 to i8
  %57 = shl i8 %shr144.tr, 1
  %58 = and i8 %57, 30
  %conv150 = sub i8 %47, %58
  %59 = ptrtoint ptr %ppr to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv150, ptr %ppr, align 1
  %60 = load i16, ptr %cck2gpo, align 4
  %61 = trunc i16 %60 to i8
  %62 = lshr i8 %61, 3
  %63 = and i8 %62, 30
  %conv150.1 = sub i8 %47, %63
  %arrayidx151.1 = getelementptr [4 x i8], ptr %ppr, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx151.1 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv150.1, ptr %arrayidx151.1, align 1
  %65 = load i16, ptr %cck2gpo, align 4
  %sh.diff641 = lshr i16 %65, 7
  %tr.sh.diff642 = trunc i16 %sh.diff641 to i8
  %66 = and i8 %tr.sh.diff642, 30
  %conv150.2 = sub i8 %47, %66
  %arrayidx151.2 = getelementptr [4 x i8], ptr %ppr, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx151.2 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv150.2, ptr %arrayidx151.2, align 1
  %68 = load i16, ptr %cck2gpo, align 4
  %sh.diff643 = lshr i16 %68, 11
  %tr.sh.diff644 = trunc i16 %sh.diff643 to i8
  %69 = and i8 %tr.sh.diff644, 30
  %conv150.3 = sub i8 %47, %69
  %arrayidx151.3 = getelementptr [4 x i8], ptr %ppr, i32 0, i32 3
  %70 = ptrtoint ptr %arrayidx151.3 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv150.3, ptr %arrayidx151.3, align 1
  %mcs2gpo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 77
  %conv12 = and i8 %50, 15
  %conv16 = and i8 %53, 15
  br label %if.end152

if.end152:                                        ; preds = %sw.epilog, %sw.epilog.thread
  %sprom_ofdm_po.0584 = phi i32 [ %sprom_ofdm_po.0578, %sw.epilog.thread ], [ %sprom_ofdm_po.0, %sw.epilog ]
  %maxpwr.0583 = phi i8 [ %maxpwr.0.ph, %sw.epilog.thread ], [ %47, %sw.epilog ]
  %extra_stbc_po.0582 = phi i8 [ %extra_stbc_po.0.ph, %sw.epilog.thread ], [ %conv16, %sw.epilog ]
  %extra_cdd_po.0581 = phi i8 [ %extra_cdd_po.0.ph, %sw.epilog.thread ], [ %conv12, %sw.epilog ]
  %sprom_mcs_po.0580 = phi ptr [ %sprom_mcs_po.0.ph, %sw.epilog.thread ], [ %mcs2gpo, %sw.epilog ]
  %shr158.tr = trunc i32 %sprom_ofdm_po.0584 to i8
  %71 = shl i8 %shr158.tr, 1
  %72 = and i8 %71, 30
  %conv165 = sub i8 %maxpwr.0583, %72
  %arrayidx166 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 1, i32 0
  %73 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv165, ptr %arrayidx166, align 1
  %74 = trunc i32 %sprom_ofdm_po.0584 to i8
  %75 = lshr i8 %74, 3
  %76 = and i8 %75, 30
  %conv165.1 = sub i8 %maxpwr.0583, %76
  %arrayidx166.1 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %arrayidx166.1 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv165.1, ptr %arrayidx166.1, align 1
  %sh.diff = lshr i32 %sprom_ofdm_po.0584, 7
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %78 = and i8 %tr.sh.diff, 30
  %conv165.2 = sub i8 %maxpwr.0583, %78
  %arrayidx166.2 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 1, i32 2
  %79 = ptrtoint ptr %arrayidx166.2 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv165.2, ptr %arrayidx166.2, align 1
  %sh.diff593 = lshr i32 %sprom_ofdm_po.0584, 11
  %tr.sh.diff594 = trunc i32 %sh.diff593 to i8
  %80 = and i8 %tr.sh.diff594, 30
  %conv165.3 = sub i8 %maxpwr.0583, %80
  %arrayidx166.3 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 1, i32 3
  %81 = ptrtoint ptr %arrayidx166.3 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv165.3, ptr %arrayidx166.3, align 1
  %sh.diff595 = lshr i32 %sprom_ofdm_po.0584, 15
  %tr.sh.diff596 = trunc i32 %sh.diff595 to i8
  %82 = and i8 %tr.sh.diff596, 30
  %conv165.4 = sub i8 %maxpwr.0583, %82
  %arrayidx166.4 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 1, i32 4
  %83 = ptrtoint ptr %arrayidx166.4 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv165.4, ptr %arrayidx166.4, align 1
  %sh.diff597 = lshr i32 %sprom_ofdm_po.0584, 19
  %tr.sh.diff598 = trunc i32 %sh.diff597 to i8
  %84 = and i8 %tr.sh.diff598, 30
  %conv165.5 = sub i8 %maxpwr.0583, %84
  %arrayidx166.5 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 1, i32 5
  %85 = ptrtoint ptr %arrayidx166.5 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv165.5, ptr %arrayidx166.5, align 1
  %sh.diff599 = lshr i32 %sprom_ofdm_po.0584, 23
  %tr.sh.diff600 = trunc i32 %sh.diff599 to i8
  %86 = and i8 %tr.sh.diff600, 30
  %conv165.6 = sub i8 %maxpwr.0583, %86
  %arrayidx166.6 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 1, i32 6
  %87 = ptrtoint ptr %arrayidx166.6 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv165.6, ptr %arrayidx166.6, align 1
  %sh.diff601 = lshr i32 %sprom_ofdm_po.0584, 27
  %tr.sh.diff602 = trunc i32 %sh.diff601 to i8
  %88 = and i8 %tr.sh.diff602, 30
  %conv165.7 = sub i8 %maxpwr.0583, %88
  %arrayidx166.7 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 1, i32 7
  %89 = ptrtoint ptr %arrayidx166.7 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv165.7, ptr %arrayidx166.7, align 1
  %mcs_20 = getelementptr inbounds %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 3
  %90 = ptrtoint ptr %mcs_20 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv165, ptr %mcs_20, align 1
  %arrayidx176 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 3, i32 1
  %91 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv165.2, ptr %arrayidx176, align 1
  %arrayidx180 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 3, i32 2
  %92 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv165.3, ptr %arrayidx180, align 1
  %arrayidx184 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 3, i32 3
  %93 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv165.4, ptr %arrayidx184, align 1
  %arrayidx188 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 3, i32 4
  %94 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv165.5, ptr %arrayidx188, align 1
  %arrayidx192 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 3, i32 5
  %95 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv165.6, ptr %arrayidx192, align 1
  %arrayidx196 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 3, i32 6
  %96 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv165.7, ptr %arrayidx196, align 1
  %arrayidx200 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 3, i32 7
  %97 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv165.7, ptr %arrayidx200, align 1
  %type = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 7
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %98 = ptrtoint ptr %sprom_mcs_po.0580 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %sprom_mcs_po.0580, align 2
  %shr208.tr = trunc i16 %99 to i8
  %100 = shl i8 %shr208.tr, 1
  %101 = and i8 %100, 30
  %conv215 = sub i8 %maxpwr.0583, %101
  %arrayidx216 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 4, i32 0
  %102 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv215, ptr %arrayidx216, align 1
  %103 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %104)
  %cmp218 = icmp eq i8 %104, 4
  br i1 %cmp218, label %land.lhs.true, label %if.end152.for.inc231_crit_edge

if.end152.for.inc231_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc231

land.lhs.true:                                    ; preds = %if.end152
  %105 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %106)
  %cmp221 = icmp ugt i8 %106, 2
  br i1 %cmp221, label %if.then223, label %land.lhs.true.for.inc231_crit_edge

land.lhs.true.for.inc231_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc231

if.then223:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sub228 = sub i8 %conv215, %extra_cdd_po.0581
  %107 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %sub228, ptr %arrayidx216, align 1
  br label %for.inc231

for.inc231:                                       ; preds = %if.then223, %land.lhs.true.for.inc231_crit_edge, %if.end152.for.inc231_crit_edge
  %108 = ptrtoint ptr %sprom_mcs_po.0580 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %sprom_mcs_po.0580, align 2
  %110 = trunc i16 %109 to i8
  %111 = lshr i8 %110, 3
  %112 = and i8 %111, 30
  %conv215.1 = sub i8 %maxpwr.0583, %112
  %arrayidx216.1 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 4, i32 1
  %113 = ptrtoint ptr %arrayidx216.1 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv215.1, ptr %arrayidx216.1, align 1
  %114 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %115)
  %cmp218.1 = icmp eq i8 %115, 4
  br i1 %cmp218.1, label %land.lhs.true.1, label %for.inc231.for.inc231.1_crit_edge

for.inc231.for.inc231.1_crit_edge:                ; preds = %for.inc231
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc231.1

land.lhs.true.1:                                  ; preds = %for.inc231
  %116 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %117)
  %cmp221.1 = icmp ugt i8 %117, 2
  br i1 %cmp221.1, label %if.then223.1, label %land.lhs.true.1.for.inc231.1_crit_edge

land.lhs.true.1.for.inc231.1_crit_edge:           ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc231.1

if.then223.1:                                     ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  %sub228.1 = sub i8 %conv215.1, %extra_cdd_po.0581
  %118 = ptrtoint ptr %arrayidx216.1 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %sub228.1, ptr %arrayidx216.1, align 1
  br label %for.inc231.1

for.inc231.1:                                     ; preds = %if.then223.1, %land.lhs.true.1.for.inc231.1_crit_edge, %for.inc231.for.inc231.1_crit_edge
  %119 = ptrtoint ptr %sprom_mcs_po.0580 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %sprom_mcs_po.0580, align 2
  %sh.diff605 = lshr i16 %120, 7
  %tr.sh.diff606 = trunc i16 %sh.diff605 to i8
  %121 = and i8 %tr.sh.diff606, 30
  %conv215.2 = sub i8 %maxpwr.0583, %121
  %arrayidx216.2 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 4, i32 2
  %122 = ptrtoint ptr %arrayidx216.2 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv215.2, ptr %arrayidx216.2, align 1
  %123 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %124)
  %cmp218.2 = icmp eq i8 %124, 4
  br i1 %cmp218.2, label %land.lhs.true.2, label %for.inc231.1.for.inc231.2_crit_edge

for.inc231.1.for.inc231.2_crit_edge:              ; preds = %for.inc231.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc231.2

land.lhs.true.2:                                  ; preds = %for.inc231.1
  %125 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %126)
  %cmp221.2 = icmp ugt i8 %126, 2
  br i1 %cmp221.2, label %if.then223.2, label %land.lhs.true.2.for.inc231.2_crit_edge

land.lhs.true.2.for.inc231.2_crit_edge:           ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc231.2

if.then223.2:                                     ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  %sub228.2 = sub i8 %conv215.2, %extra_cdd_po.0581
  %127 = ptrtoint ptr %arrayidx216.2 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %sub228.2, ptr %arrayidx216.2, align 1
  br label %for.inc231.2

for.inc231.2:                                     ; preds = %if.then223.2, %land.lhs.true.2.for.inc231.2_crit_edge, %for.inc231.1.for.inc231.2_crit_edge
  %128 = ptrtoint ptr %sprom_mcs_po.0580 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %sprom_mcs_po.0580, align 2
  %sh.diff607 = lshr i16 %129, 11
  %tr.sh.diff608 = trunc i16 %sh.diff607 to i8
  %130 = and i8 %tr.sh.diff608, 30
  %conv215.3 = sub i8 %maxpwr.0583, %130
  %arrayidx216.3 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 4, i32 3
  %131 = ptrtoint ptr %arrayidx216.3 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv215.3, ptr %arrayidx216.3, align 1
  %132 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %133)
  %cmp218.3 = icmp eq i8 %133, 4
  br i1 %cmp218.3, label %land.lhs.true.3, label %for.inc231.2.for.inc231.3_crit_edge

for.inc231.2.for.inc231.3_crit_edge:              ; preds = %for.inc231.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc231.3

land.lhs.true.3:                                  ; preds = %for.inc231.2
  %134 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %135)
  %cmp221.3 = icmp ugt i8 %135, 2
  br i1 %cmp221.3, label %if.then223.3, label %land.lhs.true.3.for.inc231.3_crit_edge

land.lhs.true.3.for.inc231.3_crit_edge:           ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc231.3

if.then223.3:                                     ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  %sub228.3 = sub i8 %conv215.3, %extra_cdd_po.0581
  %136 = ptrtoint ptr %arrayidx216.3 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %sub228.3, ptr %arrayidx216.3, align 1
  br label %for.inc231.3

for.inc231.3:                                     ; preds = %if.then223.3, %land.lhs.true.3.for.inc231.3_crit_edge, %for.inc231.2.for.inc231.3_crit_edge
  %arrayidx238 = getelementptr i16, ptr %sprom_mcs_po.0580, i32 1
  %137 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx238, align 2
  %shr241.tr = trunc i16 %138 to i8
  %139 = shl i8 %shr241.tr, 1
  %140 = and i8 %139, 30
  %conv248 = sub i8 %maxpwr.0583, %140
  %arrayidx250 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 4, i32 4
  %141 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv248, ptr %arrayidx250, align 1
  %142 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %143)
  %cmp253 = icmp eq i8 %143, 4
  br i1 %cmp253, label %land.lhs.true255, label %for.inc231.3.for.inc269_crit_edge

for.inc231.3.for.inc269_crit_edge:                ; preds = %for.inc231.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc269

land.lhs.true255:                                 ; preds = %for.inc231.3
  %144 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %145)
  %cmp258 = icmp ugt i8 %145, 2
  br i1 %cmp258, label %if.then260, label %land.lhs.true255.for.inc269_crit_edge

land.lhs.true255.for.inc269_crit_edge:            ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc269

if.then260:                                       ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #8
  %sub266 = sub i8 %conv248, %extra_cdd_po.0581
  %146 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %sub266, ptr %arrayidx250, align 1
  br label %for.inc269

for.inc269:                                       ; preds = %if.then260, %land.lhs.true255.for.inc269_crit_edge, %for.inc231.3.for.inc269_crit_edge
  %147 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx238, align 2
  %149 = trunc i16 %148 to i8
  %150 = lshr i8 %149, 3
  %151 = and i8 %150, 30
  %conv248.1 = sub i8 %maxpwr.0583, %151
  %arrayidx250.1 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 4, i32 5
  %152 = ptrtoint ptr %arrayidx250.1 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv248.1, ptr %arrayidx250.1, align 1
  %153 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %154)
  %cmp253.1 = icmp eq i8 %154, 4
  br i1 %cmp253.1, label %land.lhs.true255.1, label %for.inc269.for.inc269.1_crit_edge

for.inc269.for.inc269.1_crit_edge:                ; preds = %for.inc269
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc269.1

land.lhs.true255.1:                               ; preds = %for.inc269
  %155 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %156)
  %cmp258.1 = icmp ugt i8 %156, 2
  br i1 %cmp258.1, label %if.then260.1, label %land.lhs.true255.1.for.inc269.1_crit_edge

land.lhs.true255.1.for.inc269.1_crit_edge:        ; preds = %land.lhs.true255.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc269.1

if.then260.1:                                     ; preds = %land.lhs.true255.1
  call void @__sanitizer_cov_trace_pc() #8
  %sub266.1 = sub i8 %conv248.1, %extra_cdd_po.0581
  %157 = ptrtoint ptr %arrayidx250.1 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %sub266.1, ptr %arrayidx250.1, align 1
  br label %for.inc269.1

for.inc269.1:                                     ; preds = %if.then260.1, %land.lhs.true255.1.for.inc269.1_crit_edge, %for.inc269.for.inc269.1_crit_edge
  %158 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx238, align 2
  %sh.diff611 = lshr i16 %159, 7
  %tr.sh.diff612 = trunc i16 %sh.diff611 to i8
  %160 = and i8 %tr.sh.diff612, 30
  %conv248.2 = sub i8 %maxpwr.0583, %160
  %arrayidx250.2 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 4, i32 6
  %161 = ptrtoint ptr %arrayidx250.2 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv248.2, ptr %arrayidx250.2, align 1
  %162 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %163)
  %cmp253.2 = icmp eq i8 %163, 4
  br i1 %cmp253.2, label %land.lhs.true255.2, label %for.inc269.1.for.inc269.2_crit_edge

for.inc269.1.for.inc269.2_crit_edge:              ; preds = %for.inc269.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc269.2

land.lhs.true255.2:                               ; preds = %for.inc269.1
  %164 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %165)
  %cmp258.2 = icmp ugt i8 %165, 2
  br i1 %cmp258.2, label %if.then260.2, label %land.lhs.true255.2.for.inc269.2_crit_edge

land.lhs.true255.2.for.inc269.2_crit_edge:        ; preds = %land.lhs.true255.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc269.2

if.then260.2:                                     ; preds = %land.lhs.true255.2
  call void @__sanitizer_cov_trace_pc() #8
  %sub266.2 = sub i8 %conv248.2, %extra_cdd_po.0581
  %166 = ptrtoint ptr %arrayidx250.2 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %sub266.2, ptr %arrayidx250.2, align 1
  br label %for.inc269.2

for.inc269.2:                                     ; preds = %if.then260.2, %land.lhs.true255.2.for.inc269.2_crit_edge, %for.inc269.1.for.inc269.2_crit_edge
  %167 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %arrayidx238, align 2
  %sh.diff613 = lshr i16 %168, 11
  %tr.sh.diff614 = trunc i16 %sh.diff613 to i8
  %169 = and i8 %tr.sh.diff614, 30
  %conv248.3 = sub i8 %maxpwr.0583, %169
  %arrayidx250.3 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 4, i32 7
  %170 = ptrtoint ptr %arrayidx250.3 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv248.3, ptr %arrayidx250.3, align 1
  %171 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %172)
  %cmp253.3 = icmp eq i8 %172, 4
  br i1 %cmp253.3, label %land.lhs.true255.3, label %for.inc269.2.for.inc269.3_crit_edge

for.inc269.2.for.inc269.3_crit_edge:              ; preds = %for.inc269.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc269.3

land.lhs.true255.3:                               ; preds = %for.inc269.2
  %173 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %174)
  %cmp258.3 = icmp ugt i8 %174, 2
  br i1 %cmp258.3, label %if.then260.3, label %land.lhs.true255.3.for.inc269.3_crit_edge

land.lhs.true255.3.for.inc269.3_crit_edge:        ; preds = %land.lhs.true255.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc269.3

if.then260.3:                                     ; preds = %land.lhs.true255.3
  call void @__sanitizer_cov_trace_pc() #8
  %sub266.3 = sub i8 %conv248.3, %extra_cdd_po.0581
  %175 = ptrtoint ptr %arrayidx250.3 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %sub266.3, ptr %arrayidx250.3, align 1
  br label %for.inc269.3

for.inc269.3:                                     ; preds = %if.then260.3, %land.lhs.true255.3.for.inc269.3_crit_edge, %for.inc269.2.for.inc269.3_crit_edge
  %176 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx216, align 1
  %ofdm_20_cdd = getelementptr inbounds %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 2
  %178 = ptrtoint ptr %ofdm_20_cdd to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %ofdm_20_cdd, align 1
  %arrayidx278 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 2, i32 1
  %179 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %177, ptr %arrayidx278, align 1
  %180 = ptrtoint ptr %arrayidx216.1 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx216.1, align 1
  %arrayidx282 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 2, i32 2
  %182 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %arrayidx282, align 1
  %183 = ptrtoint ptr %arrayidx216.2 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx216.2, align 1
  %arrayidx286 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 2, i32 3
  %185 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %arrayidx286, align 1
  %186 = ptrtoint ptr %arrayidx216.3 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx216.3, align 1
  %arrayidx290 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 2, i32 4
  %188 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %arrayidx290, align 1
  %189 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx250, align 1
  %arrayidx294 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 2, i32 5
  %191 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx294, align 1
  %192 = ptrtoint ptr %arrayidx250.1 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx250.1, align 1
  %arrayidx298 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 2, i32 6
  %194 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %arrayidx298, align 1
  %195 = ptrtoint ptr %arrayidx250.2 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx250.2, align 1
  %arrayidx302 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 2, i32 7
  %197 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %arrayidx302, align 1
  %198 = ptrtoint ptr %sprom_mcs_po.0580 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %sprom_mcs_po.0580, align 2
  %shr310.tr = trunc i16 %199 to i8
  %200 = shl i8 %shr310.tr, 1
  %201 = and i8 %200, 30
  %conv317 = sub i8 %maxpwr.0583, %201
  %arrayidx318 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 5, i32 0
  %202 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv317, ptr %arrayidx318, align 1
  %203 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %204)
  %cmp321 = icmp eq i8 %204, 4
  br i1 %cmp321, label %land.lhs.true323, label %for.inc269.3.for.inc336_crit_edge

for.inc269.3.for.inc336_crit_edge:                ; preds = %for.inc269.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc336

land.lhs.true323:                                 ; preds = %for.inc269.3
  %205 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %206)
  %cmp326 = icmp ugt i8 %206, 2
  br i1 %cmp326, label %if.then328, label %land.lhs.true323.for.inc336_crit_edge

land.lhs.true323.for.inc336_crit_edge:            ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc336

if.then328:                                       ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #8
  %sub333 = sub i8 %conv317, %extra_stbc_po.0582
  %207 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %sub333, ptr %arrayidx318, align 1
  br label %for.inc336

for.inc336:                                       ; preds = %if.then328, %land.lhs.true323.for.inc336_crit_edge, %for.inc269.3.for.inc336_crit_edge
  %208 = ptrtoint ptr %sprom_mcs_po.0580 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %sprom_mcs_po.0580, align 2
  %210 = trunc i16 %209 to i8
  %211 = lshr i8 %210, 3
  %212 = and i8 %211, 30
  %conv317.1 = sub i8 %maxpwr.0583, %212
  %arrayidx318.1 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 5, i32 1
  %213 = ptrtoint ptr %arrayidx318.1 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv317.1, ptr %arrayidx318.1, align 1
  %214 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %215)
  %cmp321.1 = icmp eq i8 %215, 4
  br i1 %cmp321.1, label %land.lhs.true323.1, label %for.inc336.for.inc336.1_crit_edge

for.inc336.for.inc336.1_crit_edge:                ; preds = %for.inc336
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc336.1

land.lhs.true323.1:                               ; preds = %for.inc336
  %216 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %217)
  %cmp326.1 = icmp ugt i8 %217, 2
  br i1 %cmp326.1, label %if.then328.1, label %land.lhs.true323.1.for.inc336.1_crit_edge

land.lhs.true323.1.for.inc336.1_crit_edge:        ; preds = %land.lhs.true323.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc336.1

if.then328.1:                                     ; preds = %land.lhs.true323.1
  call void @__sanitizer_cov_trace_pc() #8
  %sub333.1 = sub i8 %conv317.1, %extra_stbc_po.0582
  %218 = ptrtoint ptr %arrayidx318.1 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %sub333.1, ptr %arrayidx318.1, align 1
  br label %for.inc336.1

for.inc336.1:                                     ; preds = %if.then328.1, %land.lhs.true323.1.for.inc336.1_crit_edge, %for.inc336.for.inc336.1_crit_edge
  %219 = ptrtoint ptr %sprom_mcs_po.0580 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %sprom_mcs_po.0580, align 2
  %sh.diff617 = lshr i16 %220, 7
  %tr.sh.diff618 = trunc i16 %sh.diff617 to i8
  %221 = and i8 %tr.sh.diff618, 30
  %conv317.2 = sub i8 %maxpwr.0583, %221
  %arrayidx318.2 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 5, i32 2
  %222 = ptrtoint ptr %arrayidx318.2 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv317.2, ptr %arrayidx318.2, align 1
  %223 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %224)
  %cmp321.2 = icmp eq i8 %224, 4
  br i1 %cmp321.2, label %land.lhs.true323.2, label %for.inc336.1.for.inc336.2_crit_edge

for.inc336.1.for.inc336.2_crit_edge:              ; preds = %for.inc336.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc336.2

land.lhs.true323.2:                               ; preds = %for.inc336.1
  %225 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %226)
  %cmp326.2 = icmp ugt i8 %226, 2
  br i1 %cmp326.2, label %if.then328.2, label %land.lhs.true323.2.for.inc336.2_crit_edge

land.lhs.true323.2.for.inc336.2_crit_edge:        ; preds = %land.lhs.true323.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc336.2

if.then328.2:                                     ; preds = %land.lhs.true323.2
  call void @__sanitizer_cov_trace_pc() #8
  %sub333.2 = sub i8 %conv317.2, %extra_stbc_po.0582
  %227 = ptrtoint ptr %arrayidx318.2 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %sub333.2, ptr %arrayidx318.2, align 1
  br label %for.inc336.2

for.inc336.2:                                     ; preds = %if.then328.2, %land.lhs.true323.2.for.inc336.2_crit_edge, %for.inc336.1.for.inc336.2_crit_edge
  %228 = ptrtoint ptr %sprom_mcs_po.0580 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %sprom_mcs_po.0580, align 2
  %sh.diff619 = lshr i16 %229, 11
  %tr.sh.diff620 = trunc i16 %sh.diff619 to i8
  %230 = and i8 %tr.sh.diff620, 30
  %conv317.3 = sub i8 %maxpwr.0583, %230
  %arrayidx318.3 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 5, i32 3
  %231 = ptrtoint ptr %arrayidx318.3 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %conv317.3, ptr %arrayidx318.3, align 1
  %232 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %233)
  %cmp321.3 = icmp eq i8 %233, 4
  br i1 %cmp321.3, label %land.lhs.true323.3, label %for.inc336.2.for.inc336.3_crit_edge

for.inc336.2.for.inc336.3_crit_edge:              ; preds = %for.inc336.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc336.3

land.lhs.true323.3:                               ; preds = %for.inc336.2
  %234 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %235)
  %cmp326.3 = icmp ugt i8 %235, 2
  br i1 %cmp326.3, label %if.then328.3, label %land.lhs.true323.3.for.inc336.3_crit_edge

land.lhs.true323.3.for.inc336.3_crit_edge:        ; preds = %land.lhs.true323.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc336.3

if.then328.3:                                     ; preds = %land.lhs.true323.3
  call void @__sanitizer_cov_trace_pc() #8
  %sub333.3 = sub i8 %conv317.3, %extra_stbc_po.0582
  %236 = ptrtoint ptr %arrayidx318.3 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %sub333.3, ptr %arrayidx318.3, align 1
  br label %for.inc336.3

for.inc336.3:                                     ; preds = %if.then328.3, %land.lhs.true323.3.for.inc336.3_crit_edge, %for.inc336.2.for.inc336.3_crit_edge
  %237 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %arrayidx238, align 2
  %shr346.tr = trunc i16 %238 to i8
  %239 = shl i8 %shr346.tr, 1
  %240 = and i8 %239, 30
  %conv353 = sub i8 %maxpwr.0583, %240
  %arrayidx356 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 5, i32 4
  %241 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv353, ptr %arrayidx356, align 1
  %242 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %243)
  %cmp359 = icmp eq i8 %243, 4
  br i1 %cmp359, label %land.lhs.true361, label %for.inc336.3.for.inc375_crit_edge

for.inc336.3.for.inc375_crit_edge:                ; preds = %for.inc336.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc375

land.lhs.true361:                                 ; preds = %for.inc336.3
  %244 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %245)
  %cmp364 = icmp ugt i8 %245, 2
  br i1 %cmp364, label %if.then366, label %land.lhs.true361.for.inc375_crit_edge

land.lhs.true361.for.inc375_crit_edge:            ; preds = %land.lhs.true361
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc375

if.then366:                                       ; preds = %land.lhs.true361
  call void @__sanitizer_cov_trace_pc() #8
  %sub372 = sub i8 %conv353, %extra_stbc_po.0582
  %246 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %sub372, ptr %arrayidx356, align 1
  br label %for.inc375

for.inc375:                                       ; preds = %if.then366, %land.lhs.true361.for.inc375_crit_edge, %for.inc336.3.for.inc375_crit_edge
  %247 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %arrayidx238, align 2
  %249 = trunc i16 %248 to i8
  %250 = lshr i8 %249, 3
  %251 = and i8 %250, 30
  %conv353.1 = sub i8 %maxpwr.0583, %251
  %arrayidx356.1 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 5, i32 5
  %252 = ptrtoint ptr %arrayidx356.1 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %conv353.1, ptr %arrayidx356.1, align 1
  %253 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %254)
  %cmp359.1 = icmp eq i8 %254, 4
  br i1 %cmp359.1, label %land.lhs.true361.1, label %for.inc375.for.inc375.1_crit_edge

for.inc375.for.inc375.1_crit_edge:                ; preds = %for.inc375
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc375.1

land.lhs.true361.1:                               ; preds = %for.inc375
  %255 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %256)
  %cmp364.1 = icmp ugt i8 %256, 2
  br i1 %cmp364.1, label %if.then366.1, label %land.lhs.true361.1.for.inc375.1_crit_edge

land.lhs.true361.1.for.inc375.1_crit_edge:        ; preds = %land.lhs.true361.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc375.1

if.then366.1:                                     ; preds = %land.lhs.true361.1
  call void @__sanitizer_cov_trace_pc() #8
  %sub372.1 = sub i8 %conv353.1, %extra_stbc_po.0582
  %257 = ptrtoint ptr %arrayidx356.1 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %sub372.1, ptr %arrayidx356.1, align 1
  br label %for.inc375.1

for.inc375.1:                                     ; preds = %if.then366.1, %land.lhs.true361.1.for.inc375.1_crit_edge, %for.inc375.for.inc375.1_crit_edge
  %258 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %arrayidx238, align 2
  %sh.diff623 = lshr i16 %259, 7
  %tr.sh.diff624 = trunc i16 %sh.diff623 to i8
  %260 = and i8 %tr.sh.diff624, 30
  %conv353.2 = sub i8 %maxpwr.0583, %260
  %arrayidx356.2 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 5, i32 6
  %261 = ptrtoint ptr %arrayidx356.2 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv353.2, ptr %arrayidx356.2, align 1
  %262 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %263)
  %cmp359.2 = icmp eq i8 %263, 4
  br i1 %cmp359.2, label %land.lhs.true361.2, label %for.inc375.1.for.inc375.2_crit_edge

for.inc375.1.for.inc375.2_crit_edge:              ; preds = %for.inc375.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc375.2

land.lhs.true361.2:                               ; preds = %for.inc375.1
  %264 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %265)
  %cmp364.2 = icmp ugt i8 %265, 2
  br i1 %cmp364.2, label %if.then366.2, label %land.lhs.true361.2.for.inc375.2_crit_edge

land.lhs.true361.2.for.inc375.2_crit_edge:        ; preds = %land.lhs.true361.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc375.2

if.then366.2:                                     ; preds = %land.lhs.true361.2
  call void @__sanitizer_cov_trace_pc() #8
  %sub372.2 = sub i8 %conv353.2, %extra_stbc_po.0582
  %266 = ptrtoint ptr %arrayidx356.2 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %sub372.2, ptr %arrayidx356.2, align 1
  br label %for.inc375.2

for.inc375.2:                                     ; preds = %if.then366.2, %land.lhs.true361.2.for.inc375.2_crit_edge, %for.inc375.1.for.inc375.2_crit_edge
  %267 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %arrayidx238, align 2
  %sh.diff625 = lshr i16 %268, 11
  %tr.sh.diff626 = trunc i16 %sh.diff625 to i8
  %269 = and i8 %tr.sh.diff626, 30
  %conv353.3 = sub i8 %maxpwr.0583, %269
  %arrayidx356.3 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 5, i32 7
  %270 = ptrtoint ptr %arrayidx356.3 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %conv353.3, ptr %arrayidx356.3, align 1
  %271 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %272)
  %cmp359.3 = icmp eq i8 %272, 4
  br i1 %cmp359.3, label %land.lhs.true361.3, label %for.inc375.2.for.inc375.3_crit_edge

for.inc375.2.for.inc375.3_crit_edge:              ; preds = %for.inc375.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc375.3

land.lhs.true361.3:                               ; preds = %for.inc375.2
  %273 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %274)
  %cmp364.3 = icmp ugt i8 %274, 2
  br i1 %cmp364.3, label %if.then366.3, label %land.lhs.true361.3.for.inc375.3_crit_edge

land.lhs.true361.3.for.inc375.3_crit_edge:        ; preds = %land.lhs.true361.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc375.3

if.then366.3:                                     ; preds = %land.lhs.true361.3
  call void @__sanitizer_cov_trace_pc() #8
  %sub372.3 = sub i8 %conv353.3, %extra_stbc_po.0582
  %275 = ptrtoint ptr %arrayidx356.3 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %sub372.3, ptr %arrayidx356.3, align 1
  br label %for.inc375.3

for.inc375.3:                                     ; preds = %if.then366.3, %land.lhs.true361.3.for.inc375.3_crit_edge, %for.inc375.2.for.inc375.3_crit_edge
  %arrayidx382 = getelementptr i16, ptr %sprom_mcs_po.0580, i32 2
  %276 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %arrayidx382, align 2
  %shr385.tr = trunc i16 %277 to i8
  %278 = shl i8 %shr385.tr, 1
  %279 = and i8 %278, 30
  %conv392 = sub i8 %maxpwr.0583, %279
  %arrayidx393 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 6, i32 0
  %280 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %conv392, ptr %arrayidx393, align 1
  %281 = load i16, ptr %arrayidx382, align 2
  %282 = trunc i16 %281 to i8
  %283 = lshr i8 %282, 3
  %284 = and i8 %283, 30
  %conv392.1 = sub i8 %maxpwr.0583, %284
  %arrayidx393.1 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 6, i32 1
  %285 = ptrtoint ptr %arrayidx393.1 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %conv392.1, ptr %arrayidx393.1, align 1
  %286 = load i16, ptr %arrayidx382, align 2
  %sh.diff629 = lshr i16 %286, 7
  %tr.sh.diff630 = trunc i16 %sh.diff629 to i8
  %287 = and i8 %tr.sh.diff630, 30
  %conv392.2 = sub i8 %maxpwr.0583, %287
  %arrayidx393.2 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 6, i32 2
  %288 = ptrtoint ptr %arrayidx393.2 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %conv392.2, ptr %arrayidx393.2, align 1
  %289 = load i16, ptr %arrayidx382, align 2
  %sh.diff631 = lshr i16 %289, 11
  %tr.sh.diff632 = trunc i16 %sh.diff631 to i8
  %290 = and i8 %tr.sh.diff632, 30
  %conv392.3 = sub i8 %maxpwr.0583, %290
  %arrayidx393.3 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 6, i32 3
  %291 = ptrtoint ptr %arrayidx393.3 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %conv392.3, ptr %arrayidx393.3, align 1
  %arrayidx401 = getelementptr i16, ptr %sprom_mcs_po.0580, i32 3
  %292 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %arrayidx401, align 2
  %shr404.tr = trunc i16 %293 to i8
  %294 = shl i8 %shr404.tr, 1
  %295 = and i8 %294, 30
  %conv411 = sub i8 %maxpwr.0583, %295
  %arrayidx414 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 6, i32 4
  %296 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %conv411, ptr %arrayidx414, align 1
  %297 = load i16, ptr %arrayidx401, align 2
  %298 = trunc i16 %297 to i8
  %299 = lshr i8 %298, 3
  %300 = and i8 %299, 30
  %conv411.1 = sub i8 %maxpwr.0583, %300
  %arrayidx414.1 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 6, i32 5
  %301 = ptrtoint ptr %arrayidx414.1 to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %conv411.1, ptr %arrayidx414.1, align 1
  %302 = load i16, ptr %arrayidx401, align 2
  %sh.diff635 = lshr i16 %302, 7
  %tr.sh.diff636 = trunc i16 %sh.diff635 to i8
  %303 = and i8 %tr.sh.diff636, 30
  %conv411.2 = sub i8 %maxpwr.0583, %303
  %arrayidx414.2 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 6, i32 6
  %304 = ptrtoint ptr %arrayidx414.2 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv411.2, ptr %arrayidx414.2, align 1
  %305 = load i16, ptr %arrayidx401, align 2
  %sh.diff637 = lshr i16 %305, 11
  %tr.sh.diff638 = trunc i16 %sh.diff637 to i8
  %306 = and i8 %tr.sh.diff638, 30
  %conv411.3 = sub i8 %maxpwr.0583, %306
  %arrayidx414.3 = getelementptr %struct.b43_ppr_rates, ptr %ppr, i32 0, i32 6, i32 7
  %307 = ptrtoint ptr %arrayidx414.3 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %conv411.3, ptr %arrayidx414.3, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.inc375.3, %if.then, %land.end.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then ], [ false, %land.end.cleanup_crit_edge ], [ true, %for.inc375.3 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/ppr.c", i32 114, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 2000, i32 1}
