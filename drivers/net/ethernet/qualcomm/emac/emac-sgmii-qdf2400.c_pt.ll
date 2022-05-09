; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/emac/emac-sgmii-qdf2400.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/emac/emac-sgmii-qdf2400.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.emac_reg_write = type { i32, i32 }
%struct.emac_adapter = type { ptr, ptr, ptr, ptr, ptr, %struct.emac_sgmii, %struct.emac_stats, %struct.emac_irq, [7 x ptr], %struct.emac_ring_header, %struct.emac_tx_queue, %struct.emac_rx_queue, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, i16, %struct.mutex }
%struct.emac_sgmii = type { ptr, ptr, i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.emac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.spinlock }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.emac_irq = type { i32, i32 }
%struct.emac_ring_header = type { ptr, i32, i32, i32 }
%struct.emac_tx_queue = type { %struct.emac_tpd_ring, i32, i32, i16, i16, i16, i8, i8 }
%struct.emac_tpd_ring = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.emac_rx_queue = type { ptr, %struct.emac_rrd_ring, %struct.emac_rfd_ring, %struct.napi_struct, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8 }
%struct.emac_rrd_ring = type { ptr, i32, i32, i32, i32, i32 }
%struct.emac_rfd_ring = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@sgmii_laned = internal constant { [25 x %struct.emac_reg_write], [56 x i8] } { [25 x %struct.emac_reg_write] [%struct.emac_reg_write { i32 388, i32 138 }, %struct.emac_reg_write { i32 400, i32 0 }, %struct.emac_reg_write { i32 412, i32 76 }, %struct.emac_reg_write { i32 684, i32 192 }, %struct.emac_reg_write { i32 12, i32 17 }, %struct.emac_reg_write { i32 24, i32 1 }, %struct.emac_reg_write { i32 28, i32 89 }, %struct.emac_reg_write { i32 32, i32 64 }, %struct.emac_reg_write { i32 36, i32 64 }, %struct.emac_reg_write { i32 192, i32 9 }, %struct.emac_reg_write { i32 216, i32 49 }, %struct.emac_reg_write { i32 316, i32 31 }, %struct.emac_reg_write { i32 560, i32 33 }, %struct.emac_reg_write { i32 564, i32 128 }, %struct.emac_reg_write { i32 568, i32 8 }, %struct.emac_reg_write { i32 696, i32 128 }, %struct.emac_reg_write { i32 712, i32 20 }, %struct.emac_reg_write { i32 124, i32 1 }, %struct.emac_reg_write { i32 96, i32 1 }, %struct.emac_reg_write { i32 420, i32 2 }, %struct.emac_reg_write { i32 16, i32 7 }, %struct.emac_reg_write { i32 716, i32 9 }, %struct.emac_reg_write { i32 100, i32 26 }, %struct.emac_reg_write { i32 448, i32 92 }, %struct.emac_reg_write { i32 504, i32 3 }], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SGMII failed to start\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"sgmii_laned\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 125, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [59 x i8] c"../drivers/net/ethernet/qualcomm/emac/emac-sgmii-qdf2400.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 202, i32 28 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @sgmii_laned, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgmii_laned to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @emac_sgmii_init_qdf2400(ptr nocapture noundef readonly %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %digital = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %digital to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %digital, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.1 = getelementptr i8, ptr %1, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 251658240) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.2 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 0) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.3 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 1073741824) #4, !srcloc !16
  %4 = ptrtoint ptr %digital to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %digital, align 4
  br label %do.body.i51

do.body.i51:                                      ; preds = %do.body.i51.do.body.i51_crit_edge, %entry
  %i.06.i44 = phi i32 [ %inc.i49, %do.body.i51.do.body.i51_crit_edge ], [ 0, %entry ]
  %itr.addr.05.i45 = phi ptr [ %incdec.ptr.i48, %do.body.i51.do.body.i51_crit_edge ], [ @sgmii_laned, %entry ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %val.i46 = getelementptr inbounds %struct.emac_reg_write, ptr %itr.addr.05.i45, i32 0, i32 1
  %6 = ptrtoint ptr %val.i46 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i46, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  %9 = ptrtoint ptr %itr.addr.05.i45 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %itr.addr.05.i45, align 4
  %add.ptr.i47 = getelementptr i8, ptr %5, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %8) #4, !srcloc !16
  %incdec.ptr.i48 = getelementptr %struct.emac_reg_write, ptr %itr.addr.05.i45, i32 1
  %inc.i49 = add nuw nsw i32 %i.06.i44, 1
  %exitcond.not.i50 = icmp eq i32 %inc.i49, 25
  br i1 %exitcond.not.i50, label %emac_reg_write_all.exit52, label %do.body.i51.do.body.i51_crit_edge

do.body.i51.do.body.i51_crit_edge:                ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i51

emac_reg_write_all.exit52:                        ; preds = %do.body.i51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %add.ptr = getelementptr i8, ptr %1, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %add.ptr7 = getelementptr i8, ptr %3, i32 668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #4, !srcloc !16
  %add.ptr8 = getelementptr i8, ptr %1, i32 220
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %emac_reg_write_all.exit52
  %i.055 = phi i32 [ 0, %emac_reg_write_all.exit52 ], [ %inc, %if.end.for.body_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %12 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %do.body13

if.end:                                           ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.then11, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str) #7
  br label %cleanup

do.body13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr16 = getelementptr i8, ptr %1, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %add.ptr20 = getelementptr i8, ptr %1, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %add.ptr24 = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #4, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %add.ptr28 = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #4, !srcloc !16
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %if.then11
  %retval.0 = phi i32 [ -5, %if.then11 ], [ 0, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii-qdf2400.c", i32 202, i32 28}
!2 = distinct !{null, !3, !"physical_coding_sublayer_programming", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii-qdf2400.c", i32 166, i32 36}
!4 = !{ptr @sgmii_laned, !5, !"sgmii_laned", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii-qdf2400.c", i32 125, i32 36}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2155966405}
!16 = !{i64 2988369}
!17 = !{i64 2155970044}
!18 = !{i64 2155970429}
!19 = !{i64 2988787}
!20 = !{i64 2155971092}
!21 = !{i64 2155971392}
!22 = !{i64 2155971780}
!23 = !{i64 2155972168}
!24 = !{i64 2155972556}
