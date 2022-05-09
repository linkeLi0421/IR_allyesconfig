; ModuleID = '/llk/IR_all_yes/drivers/usb/phy/phy-ulpi-viewport.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-ulpi-viewport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ulpi_viewport_access_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ulpi_viewport_access_ops\09\09\09\09"
module asm "\09.long\09__crc_ulpi_viewport_access_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ulpi_viewport_access_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ulpi_viewport_access_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ulpi_viewport_access_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.usb_phy_io_ops = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }

@ulpi_viewport_access_ops = dso_local global { %struct.usb_phy_io_ops, [24 x i8] } { %struct.usb_phy_io_ops { ptr @ulpi_viewport_read, ptr @ulpi_viewport_write }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_ulpi_viewport_access_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ulpi_viewport_access_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ulpi_viewport_access_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ulpi_viewport_access_ops to i32), ptr @__kstrtab_ulpi_viewport_access_ops, ptr @__kstrtabns_ulpi_viewport_access_ops }, section "___ksymtab_gpl+ulpi_viewport_access_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"ulpi_viewport_access_ops\00", align 1
@___asan_gen_.2 = private constant [39 x i8] c"../drivers/usb/phy/phy-ulpi-viewport.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 63, i32 23 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ulpi_viewport_access_ops, ptr @ulpi_viewport_access_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulpi_viewport_access_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulpi_viewport_read(ptr nocapture noundef readonly %otg, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %otg, i32 0, i32 8
  %0 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 160) #3, !srcloc !14
  %call.i = tail call i64 @ktime_get() #3
  %add.i.i = add i64 %call.i, 2000000
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not34.i = icmp eq i32 %.mask, 0
  br i1 %tobool.not34.i, label %entry.do.body1_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body1

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call5.i = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call5.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %.mask36 = and i32 %4, 128
  %tobool.not.i = icmp eq i32 %.mask36, 0
  br i1 %tobool.not.i, label %cond.false.i.do.body1_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.i

cond.false.i.do.body1_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body1

for.end.i:                                        ; preds = %land.lhs.true.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %.mask37 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask37)
  %tobool23.not.i = icmp eq i32 %.mask37, 0
  br i1 %tobool23.not.i, label %for.end.i.do.body1_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.end.i.do.body1_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body1

do.body1:                                         ; preds = %for.end.i.do.body1_crit_edge, %cond.false.i.do.body1_crit_edge, %entry.do.body1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and = shl i32 %reg, 16
  %shl = and i32 %and, 16711680
  %or = or i32 %shl, 1073741824
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %6) #3, !srcloc !14
  %call.i19 = tail call i64 @ktime_get() #3
  %add.i.i20 = add i64 %call.i19, 2000000
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not34.i22 = icmp eq i32 %8, 0
  br i1 %tobool.not34.i22, label %do.body1.if.end7_crit_edge, label %do.body1.land.lhs.true.i25_crit_edge

do.body1.land.lhs.true.i25_crit_edge:             ; preds = %do.body1
  br label %land.lhs.true.i25

do.body1.if.end7_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true.i25:                                ; preds = %cond.false.i28.land.lhs.true.i25_crit_edge, %do.body1.land.lhs.true.i25_crit_edge
  %call5.i23 = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i23, i64 %add.i.i20)
  %cmp3.i.i24 = icmp sgt i64 %call5.i23, %add.i.i20
  br i1 %cmp3.i.i24, label %for.end.i31, label %cond.false.i28

cond.false.i28:                                   ; preds = %land.lhs.true.i25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %11 = and i32 %10, 64
  %tobool.not.i27 = icmp eq i32 %11, 0
  br i1 %tobool.not.i27, label %cond.false.i28.if.end7_crit_edge, label %cond.false.i28.land.lhs.true.i25_crit_edge

cond.false.i28.land.lhs.true.i25_crit_edge:       ; preds = %cond.false.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.i25

cond.false.i28.if.end7_crit_edge:                 ; preds = %cond.false.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

for.end.i31:                                      ; preds = %land.lhs.true.i25
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not.i30 = icmp eq i32 %13, 0
  br i1 %tobool23.not.i30, label %for.end.i31.if.end7_crit_edge, label %for.end.i31.cleanup_crit_edge

for.end.i31.cleanup_crit_edge:                    ; preds = %for.end.i31
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.end.i31.if.end7_crit_edge:                    ; preds = %for.end.i31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.end7:                                          ; preds = %for.end.i31.if.end7_crit_edge, %cond.false.i28.if.end7_crit_edge, %do.body1.if.end7_crit_edge
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  %15 = lshr i32 %14, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  %and10 = and i32 %15, 255
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.end.i31.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %and10, %if.end7 ], [ -110, %for.end.i.cleanup_crit_edge ], [ -110, %for.end.i31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ulpi_viewport_write(ptr nocapture noundef readonly %otg, i32 noundef %val, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %otg, i32 0, i32 8
  %0 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 160) #3, !srcloc !14
  %call.i = tail call i64 @ktime_get() #3
  %add.i.i = add i64 %call.i, 2000000
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not34.i = icmp eq i32 %.mask, 0
  br i1 %tobool.not34.i, label %entry.do.body1_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body1

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call5.i = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call5.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %.mask28 = and i32 %4, 128
  %tobool.not.i = icmp eq i32 %.mask28, 0
  br i1 %tobool.not.i, label %cond.false.i.do.body1_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.i

cond.false.i.do.body1_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body1

for.end.i:                                        ; preds = %land.lhs.true.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %.mask29 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask29)
  %tobool23.not.i = icmp eq i32 %.mask29, 0
  br i1 %tobool23.not.i, label %for.end.i.do.body1_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.end.i.do.body1_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body1

do.body1:                                         ; preds = %for.end.i.do.body1_crit_edge, %cond.false.i.do.body1_crit_edge, %entry.do.body1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %and = and i32 %val, 255
  %and4 = shl i32 %reg, 16
  %shl = and i32 %and4, 16711680
  %or = or i32 %and, %shl
  %or5 = or i32 %or, 1610612736
  %6 = tail call i32 @llvm.bswap.i32(i32 %or5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %6) #3, !srcloc !14
  %call.i12 = tail call i64 @ktime_get() #3
  %add.i.i13 = add i64 %call.i12, 2000000
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not34.i15 = icmp eq i32 %8, 0
  br i1 %tobool.not34.i15, label %do.body1.for.end.thread.i25_crit_edge, label %do.body1.land.lhs.true.i18_crit_edge

do.body1.land.lhs.true.i18_crit_edge:             ; preds = %do.body1
  br label %land.lhs.true.i18

do.body1.for.end.thread.i25_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.thread.i25

land.lhs.true.i18:                                ; preds = %cond.false.i21.land.lhs.true.i18_crit_edge, %do.body1.land.lhs.true.i18_crit_edge
  %call5.i16 = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i16, i64 %add.i.i13)
  %cmp3.i.i17 = icmp sgt i64 %call5.i16, %add.i.i13
  br i1 %cmp3.i.i17, label %for.end.i24, label %cond.false.i21

cond.false.i21:                                   ; preds = %land.lhs.true.i18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %11 = and i32 %10, 64
  %tobool.not.i20 = icmp eq i32 %11, 0
  br i1 %tobool.not.i20, label %cond.false.i21.for.end.thread.i25_crit_edge, label %cond.false.i21.land.lhs.true.i18_crit_edge

cond.false.i21.land.lhs.true.i18_crit_edge:       ; preds = %cond.false.i21
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.i18

cond.false.i21.for.end.thread.i25_crit_edge:      ; preds = %cond.false.i21
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.thread.i25

for.end.i24:                                      ; preds = %land.lhs.true.i18
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not.i23 = icmp eq i32 %13, 0
  br i1 %tobool23.not.i23, label %for.end.i24.for.end.thread.i25_crit_edge, label %for.end.i24.cleanup_crit_edge

for.end.i24.cleanup_crit_edge:                    ; preds = %for.end.i24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.end.i24.for.end.thread.i25_crit_edge:         ; preds = %for.end.i24
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.thread.i25

for.end.thread.i25:                               ; preds = %for.end.i24.for.end.thread.i25_crit_edge, %cond.false.i21.for.end.thread.i25_crit_edge, %do.body1.for.end.thread.i25_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread.i25, %for.end.i24.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %for.end.i.cleanup_crit_edge ], [ 0, %for.end.thread.i25 ], [ -110, %for.end.i24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ulpi_viewport_access_ops, !1, !"ulpi_viewport_access_ops", i1 false, i1 false}
!1 = !{!"../drivers/usb/phy/phy-ulpi-viewport.c", i32 63, i32 23}
!2 = !{ptr @__ksymtab_ulpi_viewport_access_ops, !3, !"__ksymtab_ulpi_viewport_access_ops", i1 false, i1 false}
!3 = !{!"../drivers/usb/phy/phy-ulpi-viewport.c", i32 67, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2155193817}
!14 = !{i64 4359782}
!15 = !{i64 4360200}
!16 = !{i64 2155192550}
!17 = !{i64 2155192984}
!18 = !{i64 2155194334}
!19 = !{i64 2155195320}
!20 = !{i64 2155195569}
!21 = !{i64 2155196122}
