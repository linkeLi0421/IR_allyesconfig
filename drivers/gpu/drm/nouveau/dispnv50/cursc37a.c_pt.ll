; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/cursc37a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/cursc37a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wimm_func = type { ptr, ptr }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.141, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.141 = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.116, %struct.anon.117, [4 x i8], %struct.anon.118, %struct.anon.120, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.116 = type { i32, i16 }
%struct.anon.117 = type { i32, i16, i32, i32 }
%struct.anon.118 = type { i32, [4 x i8], %struct.anon.119 }
%struct.anon.119 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.120 = type { [12 x i32], i8 }
%struct.anon.121 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.122 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.123 = type { i16, i16 }
%struct.anon.124 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.125 }
%struct.anon.125 = type { i8 }

@cursc37a = internal constant { %struct.nv50_wimm_func, [24 x i8] } { %struct.nv50_wimm_func { ptr @cursc37a_point, ptr @cursc37a_update }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"cursc37a\00", align 1
@___asan_gen_.2 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/cursc37a.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 51, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @cursc37a], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursc37a to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cursc37a_new(ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, ptr noundef %pwndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %head
  %call = tail call i32 @curs507a_new_(ptr noundef nonnull @cursc37a, ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, i32 noundef %shl, ptr noundef %pwndw) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @curs507a_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cursc37a_point(ptr noundef %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wimm = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 8
  %call.i = tail call zeroext i1 @curs507a_space(ptr noundef %wndw) #2
  br i1 %call.i, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end25

if.then:                                          ; preds = %entry
  %map = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 8, i32 0, i32 0, i32 6
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %do.body, !prof !11

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !12
  tail call void @arm_heavy_mb() #2
  %point = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 10
  %2 = ptrtoint ptr %point to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %point, align 4
  %conv = zext i16 %3 to i32
  %y = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %y, align 2
  %conv7 = zext i16 %5 to i32
  %shl9 = shl nuw i32 %conv7, 16
  %or = or i32 %shl9, %conv
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #2, !srcloc !13
  br label %if.end25

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %point13 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 10
  %8 = ptrtoint ptr %point13 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %point13, align 4
  %conv15 = zext i16 %9 to i32
  %y19 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %y19 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %y19, align 2
  %conv20 = zext i16 %11 to i32
  %shl22 = shl nuw i32 %conv20, 16
  %or23 = or i32 %shl22, %conv15
  tail call void @nvif_object_wr(ptr noundef %wimm, i32 noundef 4, i64 noundef 520, i32 noundef %or23) #2
  br label %if.end25

if.end25:                                         ; preds = %if.else, %do.body, %entry.if.end25_crit_edge
  %cond.i = phi i32 [ 0, %do.body ], [ 0, %if.else ], [ -110, %entry.if.end25_crit_edge ]
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cursc37a_update(ptr noundef %wndw, ptr nocapture noundef readnone %interlock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wimm = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 8
  %call.i = tail call zeroext i1 @curs507a_space(ptr noundef %wndw) #2
  br i1 %call.i, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.then:                                          ; preds = %entry
  %map = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 8, i32 0, i32 0, i32 6
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %do.body, !prof !11

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !14
  tail call void @arm_heavy_mb() #2
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #2, !srcloc !13
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @nvif_object_wr(ptr noundef %wimm, i32 noundef 4, i64 noundef 512, i32 noundef 1) #2
  br label %if.end8

if.end8:                                          ; preds = %if.else, %do.body, %entry.if.end8_crit_edge
  %cond.i = phi i32 [ 0, %do.body ], [ 0, %if.else ], [ -110, %entry.if.end8_crit_edge ]
  ret i32 %cond.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @curs507a_space(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @cursc37a, !1, !"cursc37a", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/cursc37a.c", i32 51, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2157735906}
!13 = !{i64 5390744}
!14 = !{i64 2157731247}
