; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr5.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nvkm_gddr5_calc(ptr nocapture noundef %ram, i1 noundef zeroext %nuts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %freq = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 10
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %1)
  %cmp = icmp ult i32 %1, 1000000
  %next = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 13
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 8
  %ramcfg_DLLoff = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %ramcfg_DLLoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ramcfg_DLLoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %ramcfg_ver = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %ramcfg_ver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ramcfg_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %7)
  %cond = icmp eq i32 %7, 17
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %8 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 11
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %8, align 4
  %bf.lshr = lshr i32 %bf.load, 25
  %bf.clear = and i32 %bf.lshr, 1
  %ramcfg_11_06 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 11, i32 0, i32 1
  %10 = ptrtoint ptr %ramcfg_11_06 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load22 = load i32, ptr %ramcfg_11_06, align 4
  %bf.lshr23 = lshr i32 %bf.load22, 16
  %bf.clear24 = and i32 %bf.lshr23, 255
  %timing_ver = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %timing_ver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timing_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cond233 = icmp eq i32 %12, 32
  br i1 %cond233, label %sw.bb35, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

sw.bb35:                                          ; preds = %sw.bb
  %arrayidx = getelementptr %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 14, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %and = lshr i32 %14, 7
  %shr = and i32 %and, 31
  %and42 = and i32 %14, 31
  %arrayidx46 = getelementptr %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 14, i32 2
  %15 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx46, align 4
  %and47 = lshr i32 %16, 16
  %shr48 = and i32 %and47, 127
  %17 = getelementptr inbounds %struct.nvkm_ram_data, ptr %3, i32 0, i32 1, i32 15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %bf.load51 = load i64, ptr %17, align 4
  %bf.lshr70 = lshr i64 %bf.load51, 56
  %19 = trunc i64 %bf.lshr70 to i32
  %20 = add nsw i32 %shr, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %20)
  %21 = icmp ult i32 %20, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and42)
  %cmp80 = icmp ult i32 %and42, 5
  %or.cond295 = select i1 %21, i1 true, i1 %cmp80
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr48)
  %cmp86 = icmp ult i32 %shr48, 4
  %or.cond296 = select i1 %or.cond295, i1 true, i1 %cmp86
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %shr48)
  %cmp89 = icmp ugt i32 %shr48, 35
  %or.cond297 = select i1 %or.cond296, i1 true, i1 %cmp89
  br i1 %or.cond297, label %sw.bb35.cleanup_crit_edge, label %if.end

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %sw.bb35
  %bf.cast72 = and i32 %19, 3
  %sub = add nsw i32 %and42, -5
  %sub91 = add nsw i32 %shr48, -4
  %mr = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 11
  %22 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mr, align 4
  %and93 = and i32 %23, -3968
  %and94 = shl nuw nsw i32 %sub91, 8
  %shl = and i32 %and94, 3840
  %and97 = shl nuw nsw i32 %sub, 3
  %shl98 = and i32 %and97, 120
  %and102 = and i32 %and, 7
  %or = or i32 %shl98, %and102
  %or101 = or i32 %or, %shl
  %or106 = or i32 %or101, %and93
  store i32 %or106, ptr %mr, align 4
  %arrayidx108 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 1
  %24 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx108, align 4
  %and109 = and i32 %25, -192
  %shl111 = select i1 %tobool.not, i32 128, i32 0
  %sh.diff = lshr i64 %bf.load51, 54
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl117 = and i32 %tr.sh.diff, 48
  %sh.diff291 = lshr i64 %bf.load51, 60
  %tr.sh.diff292 = trunc i64 %sh.diff291 to i32
  %shl122 = and i32 %tr.sh.diff292, 12
  %or114 = or i32 %shl117, %shl111
  %or120 = or i32 %or114, %shl122
  %or125 = or i32 %or120, %bf.cast72
  %or130 = or i32 %or125, %and109
  store i32 %or130, ptr %arrayidx108, align 4
  %mr1_nuts = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 12
  %26 = ptrtoint ptr %mr1_nuts to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or130, ptr %mr1_nuts, align 4
  br i1 %nuts, label %if.then134, label %if.end.if.end144_crit_edge

if.end.if.end144_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end144

if.then134:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %and137 = and i32 %or130, -49
  %shl140 = and i32 %19, 48
  %or143 = or i32 %and137, %shl140
  %27 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or143, ptr %arrayidx108, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then134, %if.end.if.end144_crit_edge
  %arrayidx146 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 3
  %28 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx146, align 4
  %and147 = and i32 %29, -33
  %shl149 = select i1 %cmp, i32 32, i32 0
  %or152 = or i32 %and147, %shl149
  store i32 %or152, ptr %arrayidx146, align 4
  %arrayidx154 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 5
  %30 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx154, align 4
  %and155 = and i32 %31, -5
  %32 = lshr i32 %bf.load22, 13
  %33 = and i32 %32, 4
  %34 = or i32 %and155, %33
  %or159 = xor i32 %34, 4
  store i32 %or159, ptr %arrayidx154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear24)
  %tobool160.not = icmp eq i32 %bf.clear24, 0
  br i1 %tobool160.not, label %if.then161, label %if.end144.if.end166_crit_edge

if.end144.if.end166_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end166

if.then161:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx163 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 6
  %35 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx163, align 4
  %and164 = lshr i32 %36, 4
  %shr165 = and i32 %and164, 255
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %if.end144.if.end166_crit_edge
  %vo.0 = phi i32 [ %bf.clear24, %if.end144.if.end166_crit_edge ], [ %shr165, %if.then161 ]
  %arrayidx168 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 6
  %37 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx168, align 4
  %and169 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  %spec.select = select i1 %tobool170.not, i32 %bf.clear, i32 1
  %and175 = and i32 %38, -4082
  %shl177 = shl nuw nsw i32 %vo.0, 4
  %or180 = or i32 %and175, %shl177
  %or185 = or i32 %spec.select, %or180
  %39 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or185, ptr %arrayidx168, align 4
  %arrayidx187 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 7
  %40 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx187, align 4
  %and188 = and i32 %41, -905
  %42 = lshr i32 %bf.load, 14
  %shl190 = and i32 %42, 256
  %43 = lshr i32 %bf.load, 13
  %shl198 = and i32 %43, 128
  %44 = lshr i32 %bf.load, 23
  %shl203 = and i32 %44, 8
  %or193 = or i32 %shl198, %shl190
  %or201 = or i32 %or193, %shl203
  %or206 = or i32 %or201, %and188
  store i32 %or206, ptr %arrayidx187, align 4
  %arrayidx208 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 8
  %45 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx208, align 4
  %and209 = and i32 %46, -4
  %and210 = lshr i32 %sub91, 3
  %47 = and i32 %and210, 2
  %and215 = lshr i32 %sub, 4
  %or214 = or i32 %47, %and215
  %or219 = or i32 %or214, %and209
  store i32 %or219, ptr %arrayidx208, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end166, %sw.bb35.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end166 ], [ -38, %entry.cleanup_crit_edge ], [ -38, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
