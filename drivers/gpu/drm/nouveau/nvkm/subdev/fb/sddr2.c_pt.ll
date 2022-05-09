; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr2.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ramxlat = type { i32, i8 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.140, i32, i32, i32, i32, i32, i32, %union.anon.144, i32, i32, [11 x i32], %union.anon.148 }>
%union.anon.140 = type { %struct.anon.143 }
%struct.anon.143 = type { i64 }
%union.anon.144 = type { %struct.anon.147 }
%struct.anon.147 = type { i32, i32, i8 }
%union.anon.148 = type <{ %struct.anon.150, [12 x i8] }>
%struct.anon.150 = type { i48 }

@ramddr2_cl = internal constant { [7 x %struct.ramxlat], [40 x i8] } { [7 x %struct.ramxlat] [%struct.ramxlat { i32 2, i8 2 }, %struct.ramxlat { i32 3, i8 3 }, %struct.ramxlat { i32 4, i8 4 }, %struct.ramxlat { i32 5, i8 5 }, %struct.ramxlat { i32 6, i8 6 }, %struct.ramxlat { i32 7, i8 7 }, %struct.ramxlat { i32 -1, i8 0 }], [40 x i8] zeroinitializer }, align 32
@ramddr2_wr = internal constant { [7 x %struct.ramxlat], [40 x i8] } { [7 x %struct.ramxlat] [%struct.ramxlat { i32 2, i8 1 }, %struct.ramxlat { i32 3, i8 2 }, %struct.ramxlat { i32 4, i8 3 }, %struct.ramxlat { i32 5, i8 4 }, %struct.ramxlat { i32 6, i8 5 }, %struct.ramxlat { i32 7, i8 6 }, %struct.ramxlat { i32 -1, i8 0 }], [40 x i8] zeroinitializer }, align 32
@switch.table.nvkm_sddr2_calc = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @ramddr2_cl, ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_cl, i32 0, i32 1), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_cl, i32 0, i32 2), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_cl, i32 0, i32 3), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_cl, i32 0, i32 4), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_cl, i32 0, i32 5)], [40 x i8] zeroinitializer }, align 32
@switch.table.nvkm_sddr2_calc.1 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @ramddr2_wr, ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_wr, i32 0, i32 1), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_wr, i32 0, i32 2), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_wr, i32 0, i32 3), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_wr, i32 0, i32 4), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr2_wr, i32 0, i32 5)], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.2 = private unnamed_addr constant [11 x i8] c"ramddr2_cl\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 45, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [11 x i8] c"ramddr2_wr\00", align 1
@___asan_gen_.6 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr2.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 53, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [29 x i8] c"switch.table.nvkm_sddr2_calc\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [31 x i8] c"switch.table.nvkm_sddr2_calc.1\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @ramddr2_cl, ptr @ramddr2_wr, ptr @switch.table.nvkm_sddr2_calc, ptr @switch.table.nvkm_sddr2_calc.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramddr2_cl to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramddr2_wr to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_sddr2_calc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_sddr2_calc.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_sddr2_calc(ptr nocapture noundef %ram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 13
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 8
  %timing_ver = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 12
  %2 = ptrtoint ptr %timing_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timing_ver, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 16, label %lor.lhs.false
    i32 32, label %sw.epilog.thread
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx = getelementptr %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 14, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and19 = and i32 %6, 31
  %arrayidx23 = getelementptr %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 14, i32 2
  %7 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx23, align 4
  %and24 = lshr i32 %8, 16
  %shr = and i32 %and24, 127
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %9 = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 15
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 12)
  %bf.load = load i96, ptr %9, align 4
  %bf.lshr = lshr i96 %bf.load, 72
  %11 = trunc i96 %bf.lshr to i32
  %bf.cast = and i32 %11, 255
  %bf.lshr6 = lshr i96 %bf.load, 88
  %bf.cast7 = trunc i96 %bf.lshr6 to i32
  %ramcfg_DLLoff = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %ramcfg_DLLoff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ramcfg_DLLoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool = icmp ne i32 %13, 0
  %lnot.ext = zext i1 %tobool to i32
  %14 = trunc i96 %bf.load to i32
  %15 = lshr i32 %14, 5
  %and = and i32 %15, 3
  %ramcfg_timing = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 7
  %16 = ptrtoint ptr %ramcfg_timing to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ramcfg_timing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %17)
  %cmp30 = icmp eq i32 %17, 255
  br i1 %cmp30, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.epilog.thread
  %DLL.0121 = phi i32 [ 1, %sw.epilog.thread ], [ %lnot.ext, %lor.lhs.false.if.then_crit_edge ]
  %WR.0119 = phi i32 [ %shr, %sw.epilog.thread ], [ %bf.cast7, %lor.lhs.false.if.then_crit_edge ]
  %CL.0117 = phi i32 [ %and19, %sw.epilog.thread ], [ %bf.cast, %lor.lhs.false.if.then_crit_edge ]
  %arrayidx31 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx31, align 4
  %and32 = lshr i32 %19, 2
  %shr33 = and i32 %and32, 1
  %and36 = lshr i32 %19, 5
  %shr37 = and i32 %and36, 2
  %or = or i32 %shr33, %shr37
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %DLL.0120 = phi i32 [ %DLL.0121, %if.then ], [ %lnot.ext, %lor.lhs.false.if.end_crit_edge ]
  %WR.0118 = phi i32 [ %WR.0119, %if.then ], [ %bf.cast7, %lor.lhs.false.if.end_crit_edge ]
  %CL.0116 = phi i32 [ %CL.0117, %if.then ], [ %bf.cast, %lor.lhs.false.if.end_crit_edge ]
  %ODT.1 = phi i32 [ %or, %if.then ], [ %and, %lor.lhs.false.if.end_crit_edge ]
  %switch.tableidx = add nsw i32 %CL.0116, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 6
  br i1 %20, label %switch.lookup, label %if.end.ramxlat.exit_crit_edge

if.end.ramxlat.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %ramxlat.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.nvkm_sddr2_calc, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %enc.i = getelementptr inbounds %struct.ramxlat, ptr %switch.load, i32 0, i32 1
  %22 = ptrtoint ptr %enc.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enc.i, align 4
  %conv.i = zext i8 %23 to i32
  br label %ramxlat.exit

ramxlat.exit:                                     ; preds = %switch.lookup, %if.end.ramxlat.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %switch.lookup ], [ -22, %if.end.ramxlat.exit_crit_edge ]
  %switch.tableidx139 = add nsw i32 %WR.0118, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx139)
  %24 = icmp uge i32 %switch.tableidx139, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp39 = icmp slt i32 %retval.0.i, 0
  %or.cond = select i1 %24, i1 true, i1 %cmp39
  br i1 %or.cond, label %ramxlat.exit.cleanup_crit_edge, label %if.end43

ramxlat.exit.cleanup_crit_edge:                   ; preds = %ramxlat.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end43:                                         ; preds = %ramxlat.exit
  call void @__sanitizer_cov_trace_pc() #3
  %switch.gep140 = getelementptr inbounds [6 x ptr], ptr @switch.table.nvkm_sddr2_calc.1, i32 0, i32 %switch.tableidx139
  %25 = ptrtoint ptr %switch.gep140 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load141 = load ptr, ptr %switch.gep140, align 4
  %enc.i103 = getelementptr inbounds %struct.ramxlat, ptr %switch.load141, i32 0, i32 1
  %26 = ptrtoint ptr %enc.i103 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enc.i103, align 4
  %conv.i104 = zext i8 %27 to i32
  %mr44 = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 11
  %28 = ptrtoint ptr %mr44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mr44, align 4
  %and46 = and i32 %29, -3953
  %and47 = shl nuw nsw i32 %conv.i104, 9
  %shl = and i32 %and47, 3584
  %and51 = shl nuw nsw i32 %retval.0.i, 4
  %shl52 = and i32 %and51, 112
  %or50 = or i32 %and46, %shl52
  %or55 = or i32 %or50, %shl
  store i32 %or55, ptr %mr44, align 4
  %arrayidx57 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 1
  %30 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx57, align 4
  %and58 = and i32 %31, -70
  %and59 = shl nsw i32 %ODT.1, 2
  %shl60 = and i32 %and59, 4
  %and64 = shl nsw i32 %ODT.1, 5
  %shl65 = and i32 %and64, 64
  %or63 = or i32 %shl60, %DLL.0120
  %or68 = or i32 %or63, %shl65
  %or74 = or i32 %or68, %and58
  store i32 %or74, ptr %arrayidx57, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %ramxlat.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -38, %entry.cleanup_crit_edge ], [ -22, %ramxlat.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ramddr2_cl, !1, !"ramddr2_cl", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr2.c", i32 45, i32 1}
!2 = !{ptr @ramddr2_wr, !3, !"ramddr2_wr", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr2.c", i32 53, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
