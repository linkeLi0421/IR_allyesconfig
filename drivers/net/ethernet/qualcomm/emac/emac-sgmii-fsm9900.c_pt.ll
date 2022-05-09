; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/emac/emac-sgmii-fsm9900.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/emac/emac-sgmii-fsm9900.c"
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

@pll_setting = internal constant { [16 x %struct.emac_reg_write], [32 x i8] } { [16 x %struct.emac_reg_write] [%struct.emac_reg_write { i32 24, i32 1 }, %struct.emac_reg_write { i32 36, i32 59 }, %struct.emac_reg_write { i32 40, i32 10 }, %struct.emac_reg_write { i32 44, i32 9 }, %struct.emac_reg_write { i32 172, i32 251 }, %struct.emac_reg_write { i32 20, i32 38 }, %struct.emac_reg_write { i32 100, i32 130 }, %struct.emac_reg_write { i32 164, i32 3 }, %struct.emac_reg_write { i32 152, i32 213 }, %struct.emac_reg_write { i32 156, i32 170 }, %struct.emac_reg_write { i32 160, i32 19 }, %struct.emac_reg_write { i32 68, i32 43 }, %struct.emac_reg_write { i32 72, i32 104 }, %struct.emac_reg_write { i32 76, i32 0 }, %struct.emac_reg_write { i32 80, i32 1 }, %struct.emac_reg_write { i32 64, i32 16 }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: ser/des failed to start\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"pll_setting\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 168, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [59 x i8] c"../drivers/net/ethernet/qualcomm/emac/emac-sgmii-fsm9900.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 230, i32 28 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @pll_setting, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_setting to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @emac_sgmii_init_fsm9900(ptr nocapture noundef readonly %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i = getelementptr i8, ptr %1, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.1 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 16777216) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.2 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 1526726656) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.3 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 838860800) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.4 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 -1845493760) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 2063597568) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i.6 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 1593835520) #4, !srcloc !22
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i32 = getelementptr i8, ptr %3, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 134217728) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 402653184) #4, !srcloc !22
  %4 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy1, align 4
  br label %do.body.i45

do.body.i45:                                      ; preds = %do.body.i45.do.body.i45_crit_edge, %entry
  %i.06.i38 = phi i32 [ %inc.i43, %do.body.i45.do.body.i45_crit_edge ], [ 0, %entry ]
  %itr.addr.05.i39 = phi ptr [ %incdec.ptr.i42, %do.body.i45.do.body.i45_crit_edge ], [ @pll_setting, %entry ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %val.i40 = getelementptr inbounds %struct.emac_reg_write, ptr %itr.addr.05.i39, i32 0, i32 1
  %6 = ptrtoint ptr %val.i40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i40, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  %9 = ptrtoint ptr %itr.addr.05.i39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %itr.addr.05.i39, align 4
  %add.ptr.i41 = getelementptr i8, ptr %5, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %8) #4, !srcloc !22
  %incdec.ptr.i42 = getelementptr %struct.emac_reg_write, ptr %itr.addr.05.i39, i32 1
  %inc.i43 = add nuw nsw i32 %i.06.i38, 1
  %exitcond.not.i44 = icmp eq i32 %inc.i43, 16
  br i1 %exitcond.not.i44, label %emac_reg_write_all.exit46, label %do.body.i45.do.body.i45_crit_edge

do.body.i45.do.body.i45_crit_edge:                ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i45

emac_reg_write_all.exit46:                        ; preds = %do.body.i45
  %11 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i50 = getelementptr i8, ptr %12, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 1509949440) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i50.1 = getelementptr i8, ptr %12, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.1, i32 1543503872) #4, !srcloc !22
  %13 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i59 = getelementptr i8, ptr %14, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 0) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i59.1 = getelementptr i8, ptr %14, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.1, i32 520093696) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i59.2 = getelementptr i8, ptr %14, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.2, i32 50331648) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i59.3 = getelementptr i8, ptr %14, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.3, i32 553648128) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i59.4 = getelementptr i8, ptr %14, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.4, i32 -16777216) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add.ptr.i59.5 = getelementptr i8, ptr %14, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.5, i32 134217728) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 16777216) #4, !srcloc !22
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %emac_reg_write_all.exit46
  %i.067 = phi i32 [ 0, %emac_reg_write_all.exit46 ], [ %inc, %if.end.for.body_crit_edge ]
  %17 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy1, align 4
  %add.ptr8 = getelementptr i8, ptr %18, i32 188
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %20 = and i32 %19, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end, label %do.body13

if.end:                                           ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.then11, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str) #7
  br label %cleanup

do.body13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %23 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy1, align 4
  %add.ptr17 = getelementptr i8, ptr %24, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #4, !srcloc !22
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii-fsm9900.c", i32 230, i32 28}
!2 = distinct !{null, !3, !"physical_coding_sublayer_programming", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii-fsm9900.c", i32 148, i32 36}
!4 = distinct !{null, !5, !"sysclk_refclk_setting", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii-fsm9900.c", i32 163, i32 36}
!6 = !{ptr @pll_setting, !7, !"pll_setting", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii-fsm9900.c", i32 168, i32 36}
!8 = distinct !{null, !9, !"cdr_setting", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii-fsm9900.c", i32 190, i32 36}
!10 = distinct !{null, !11, !"tx_rx_setting", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii-fsm9900.c", i32 197, i32 36}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2155967400}
!22 = !{i64 2989364}
!23 = !{i64 2155973976}
!24 = !{i64 2989782}
!25 = !{i64 2155974725}
!26 = !{i64 2155975033}
