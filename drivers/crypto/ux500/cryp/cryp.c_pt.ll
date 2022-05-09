; ModuleID = '/llk/IR_all_yes/drivers/crypto/ux500/cryp/cryp.c_pt.bc'
source_filename = "../drivers/crypto/ux500/cryp/cryp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cryp_register = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, [981 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cryp_config = type { i32, i32, i32 }
%struct.cryp_protection_config = type { i32, i32 }
%struct.cryp_device_data = type { ptr, i32, ptr, ptr, i32, ptr, i32, %struct.spinlock, ptr, %struct.klist_node, %struct.cryp_dma, i8, %struct.spinlock, i8 }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cryp_dma = type { %struct.dma_cap_mask_t, %struct.completion, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cryp_device_context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cryp_wait_until_done(ptr nocapture noundef readonly %device_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %sr.i5 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i5) #2, !srcloc !9
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not6 = icmp eq i32 %3, 0
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !11
  %4 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_data, align 4
  %sr.i = getelementptr inbounds %struct.cryp_register, ptr %5, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i) #2, !srcloc !9
  %7 = and i32 %6, 268435456
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cryp_is_logic_busy(ptr nocapture noundef readonly %device_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %sr = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr) #2, !srcloc !9
  %3 = lshr i32 %2, 24
  %and = and i32 %3, 16
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cryp_check(ptr noundef readonly %device_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %device_data, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %periphId2 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 29
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %periphId2) #2, !srcloc !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 671088640, i32 %2)
  %cmp1.not = icmp eq i32 %2, 671088640
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device_data, align 4
  %periphId0 = getelementptr inbounds %struct.cryp_register, ptr %4, i32 0, i32 27
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %periphId0) #2, !srcloc !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -486539264, i32 %5)
  %cmp8 = icmp eq i32 %5, -486539264
  br i1 %cmp8, label %land.lhs.true, label %if.end3.if.end45_crit_edge

if.end3.if.end45_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end3
  %6 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_data, align 4
  %periphId1 = getelementptr inbounds %struct.cryp_register, ptr %7, i32 0, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %periphId1) #2, !srcloc !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %8)
  %cmp13 = icmp eq i32 %8, 83886080
  br i1 %cmp13, label %land.lhs.true14, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45

land.lhs.true14:                                  ; preds = %land.lhs.true
  %9 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_data, align 4
  %periphId3 = getelementptr inbounds %struct.cryp_register, ptr %10, i32 0, i32 30
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %periphId3) #2, !srcloc !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp19 = icmp eq i32 %11, 0
  br i1 %cmp19, label %land.lhs.true20, label %land.lhs.true14.if.end45_crit_edge

land.lhs.true14.if.end45_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45

land.lhs.true20:                                  ; preds = %land.lhs.true14
  %12 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_data, align 4
  %pcellId0 = getelementptr inbounds %struct.cryp_register, ptr %13, i32 0, i32 31
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pcellId0) #2, !srcloc !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103808, i32 %14)
  %cmp25 = icmp eq i32 %14, 218103808
  br i1 %cmp25, label %land.lhs.true26, label %land.lhs.true20.if.end45_crit_edge

land.lhs.true20.if.end45_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45

land.lhs.true26:                                  ; preds = %land.lhs.true20
  %15 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_data, align 4
  %pcellId1 = getelementptr inbounds %struct.cryp_register, ptr %16, i32 0, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pcellId1) #2, !srcloc !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %17)
  %cmp31 = icmp eq i32 %17, -268435456
  br i1 %cmp31, label %land.lhs.true32, label %land.lhs.true26.if.end45_crit_edge

land.lhs.true26.if.end45_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45

land.lhs.true32:                                  ; preds = %land.lhs.true26
  %18 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_data, align 4
  %pcellId2 = getelementptr inbounds %struct.cryp_register, ptr %19, i32 0, i32 33
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pcellId2) #2, !srcloc !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %20)
  %cmp37 = icmp eq i32 %20, 83886080
  br i1 %cmp37, label %land.lhs.true38, label %land.lhs.true32.if.end45_crit_edge

land.lhs.true32.if.end45_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45

land.lhs.true38:                                  ; preds = %land.lhs.true32
  %21 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_data, align 4
  %pcellId3 = getelementptr inbounds %struct.cryp_register, ptr %22, i32 0, i32 34
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pcellId3) #2, !srcloc !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1325400064, i32 %23)
  %cmp43 = icmp eq i32 %23, -1325400064
  br i1 %cmp43, label %land.lhs.true38.cleanup_crit_edge, label %land.lhs.true38.if.end45_crit_edge

land.lhs.true38.if.end45_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true38.if.end45_crit_edge, %land.lhs.true32.if.end45_crit_edge, %land.lhs.true26.if.end45_crit_edge, %land.lhs.true20.if.end45_crit_edge, %land.lhs.true14.if.end45_crit_edge, %land.lhs.true.if.end45_crit_edge, %if.end3.if.end45_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %land.lhs.true38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end45 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cryp_activity(ptr nocapture noundef readonly %device_data, i32 noundef %cryp_crypen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !9
  %3 = and i32 %2, -8388609
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %cryp_crypen, 15
  %and1 = and i32 %shl, 32768
  %or = or i32 %4, %and1
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #2, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cryp_flush_inoutfifo(ptr nocapture noundef readonly %device_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !9
  %3 = and i32 %2, -8388609
  %4 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #2, !srcloc !12
  %6 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_data, align 4
  %sr.i5.i = getelementptr inbounds %struct.cryp_register, ptr %7, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i5.i) #2, !srcloc !9
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not6.i = icmp eq i32 %9, 0
  br i1 %tobool.not6.i, label %entry.cryp_wait_until_done.exit_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.cryp_wait_until_done.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cryp_wait_until_done.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !11
  %10 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_data, align 4
  %sr.i.i = getelementptr inbounds %struct.cryp_register, ptr %11, i32 0, i32 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i.i) #2, !srcloc !9
  %13 = and i32 %12, 268435456
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %do.end.i.cryp_wait_until_done.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.i

do.end.i.cryp_wait_until_done.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cryp_wait_until_done.exit

cryp_wait_until_done.exit:                        ; preds = %do.end.i.cryp_wait_until_done.exit_crit_edge, %entry.cryp_wait_until_done.exit_crit_edge
  %14 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_data, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #2, !srcloc !9
  %17 = or i32 %16, 4194304
  %18 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #2, !srcloc !12
  %20 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_data, align 4
  %sr15 = getelementptr inbounds %struct.cryp_register, ptr %21, i32 0, i32 1
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr15) #2, !srcloc !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %22)
  %cmp.not16 = icmp eq i32 %22, 50331648
  br i1 %cmp.not16, label %cryp_wait_until_done.exit.while.end_crit_edge, label %cryp_wait_until_done.exit.do.end_crit_edge

cryp_wait_until_done.exit.do.end_crit_edge:       ; preds = %cryp_wait_until_done.exit
  br label %do.end

cryp_wait_until_done.exit.while.end_crit_edge:    ; preds = %cryp_wait_until_done.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %cryp_wait_until_done.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !13
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !14
  %23 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_data, align 4
  %sr = getelementptr inbounds %struct.cryp_register, ptr %24, i32 0, i32 1
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr) #2, !srcloc !9
  %cmp.not = icmp eq i32 %25, 50331648
  br i1 %cmp.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %cryp_wait_until_done.exit.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cryp_set_configuration(ptr noundef readonly %device_data, ptr noundef readonly %cryp_config, ptr nocapture noundef %control_register) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %device_data, null
  %cmp1 = icmp eq ptr %cryp_config, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %cryp_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cryp_config, align 4
  %shl = shl i32 %1, 8
  %2 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %control_register, align 4
  %or = or i32 %3, %shl
  store i32 %or, ptr %control_register, align 4
  %algodir = getelementptr inbounds %struct.cryp_config, ptr %cryp_config, i32 0, i32 2
  %4 = ptrtoint ptr %algodir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %algodir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %algomode = getelementptr inbounds %struct.cryp_config, ptr %cryp_config, i32 0, i32 1
  %6 = ptrtoint ptr %algomode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %algomode, align 4
  %8 = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %switch = icmp eq i32 %8, 4
  br i1 %switch, label %if.then7, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %or8 = or i32 %or, 34848
  %9 = tail call i32 @llvm.bswap.i32(i32 %or8)
  %10 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #2, !srcloc !12
  %12 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_data, align 4
  %sr.i5.i = getelementptr inbounds %struct.cryp_register, ptr %13, i32 0, i32 1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i5.i) #2, !srcloc !9
  %15 = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not6.i = icmp eq i32 %15, 0
  br i1 %tobool.not6.i, label %if.then7.if.end9_crit_edge, label %if.then7.do.end.i_crit_edge

if.then7.do.end.i_crit_edge:                      ; preds = %if.then7
  br label %do.end.i

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.then7.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !11
  %16 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_data, align 4
  %sr.i.i = getelementptr inbounds %struct.cryp_register, ptr %17, i32 0, i32 1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i.i) #2, !srcloc !9
  %19 = and i32 %18, 268435456
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.end.i.if.end9_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.i

do.end.i.if.end9_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.end9:                                          ; preds = %do.end.i.if.end9_crit_edge, %if.then7.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %algomode10 = getelementptr inbounds %struct.cryp_config, ptr %cryp_config, i32 0, i32 1
  %20 = ptrtoint ptr %algomode10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %algomode10, align 4
  %shl11 = shl i32 %21, 3
  %22 = ptrtoint ptr %algodir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %algodir, align 4
  %shl13 = shl i32 %23, 2
  %or14 = or i32 %shl13, %shl11
  %24 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %control_register, align 4
  %or15 = or i32 %or14, %25
  store i32 %or15, ptr %control_register, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cryp_configure_protection(ptr nocapture noundef readonly %device_data, ptr noundef readonly %p_protect_config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %p_protect_config, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !9
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %secure_access = getelementptr inbounds %struct.cryp_protection_config, ptr %p_protect_config, i32 0, i32 1
  %5 = ptrtoint ptr %secure_access to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %secure_access, align 4
  %and1 = and i32 %6, 1
  %or = or i32 %4, %and1
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #2, !srcloc !12
  %10 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_data, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #2, !srcloc !9
  %13 = and i32 %12, -33554433
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %p_protect_config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p_protect_config, align 4
  %shl = shl i32 %16, 1
  %and10 = and i32 %shl, 2
  %or11 = or i32 %and10, %14
  %17 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %18 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #2, !srcloc !12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cryp_configure_for_dma(ptr nocapture noundef readonly %device_data, i32 noundef %dma_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %dmacr = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmacr) #2, !srcloc !9
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %or = or i32 %3, %dma_req
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_data, align 4
  %dmacr2 = getelementptr inbounds %struct.cryp_register, ptr %6, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacr2, i32 %4) #2, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cryp_configure_key_values(ptr nocapture noundef readonly %device_data, i32 noundef %key_reg_index, [2 x i32] %key_value.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %key_value.coerce.fca.0.extract = extractvalue [2 x i32] %key_value.coerce, 0
  %key_value.coerce.fca.1.extract = extractvalue [2 x i32] %key_value.coerce, 1
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %sr.i35 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i35) #2, !srcloc !9
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not36 = icmp eq i32 %3, 0
  br i1 %tobool.not36, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !16
  %4 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_data, align 4
  %sr.i = getelementptr inbounds %struct.cryp_register, ptr %5, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i) #2, !srcloc !9
  %7 = and i32 %6, 268435456
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %8 = zext i32 %key_reg_index to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %key_reg_index, label %while.end.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb11
    i32 3, label %sw.bb16
  ]

while.end.return_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %key_value.coerce.fca.0.extract)
  %10 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_data, align 4
  %key_1_l = getelementptr inbounds %struct.cryp_register, ptr %11, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_1_l, i32 %9) #2, !srcloc !12
  %12 = tail call i32 @llvm.bswap.i32(i32 %key_value.coerce.fca.1.extract)
  %13 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_data, align 4
  %key_1_r = getelementptr inbounds %struct.cryp_register, ptr %14, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_1_r, i32 %12) #2, !srcloc !12
  br label %return

sw.bb6:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %key_value.coerce.fca.0.extract)
  %16 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_data, align 4
  %key_2_l = getelementptr inbounds %struct.cryp_register, ptr %17, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_2_l, i32 %15) #2, !srcloc !12
  %18 = tail call i32 @llvm.bswap.i32(i32 %key_value.coerce.fca.1.extract)
  %19 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_data, align 4
  %key_2_r = getelementptr inbounds %struct.cryp_register, ptr %20, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_2_r, i32 %18) #2, !srcloc !12
  br label %return

sw.bb11:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %key_value.coerce.fca.0.extract)
  %22 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_data, align 4
  %key_3_l = getelementptr inbounds %struct.cryp_register, ptr %23, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_3_l, i32 %21) #2, !srcloc !12
  %24 = tail call i32 @llvm.bswap.i32(i32 %key_value.coerce.fca.1.extract)
  %25 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_data, align 4
  %key_3_r = getelementptr inbounds %struct.cryp_register, ptr %26, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_3_r, i32 %24) #2, !srcloc !12
  br label %return

sw.bb16:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  %27 = tail call i32 @llvm.bswap.i32(i32 %key_value.coerce.fca.0.extract)
  %28 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_data, align 4
  %key_4_l = getelementptr inbounds %struct.cryp_register, ptr %29, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_4_l, i32 %27) #2, !srcloc !12
  %30 = tail call i32 @llvm.bswap.i32(i32 %key_value.coerce.fca.1.extract)
  %31 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device_data, align 4
  %key_4_r = getelementptr inbounds %struct.cryp_register, ptr %32, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_4_r, i32 %30) #2, !srcloc !12
  br label %return

return:                                           ; preds = %sw.bb16, %sw.bb11, %sw.bb6, %sw.bb, %while.end.return_crit_edge
  %retval.0 = phi i32 [ -22, %while.end.return_crit_edge ], [ 0, %sw.bb16 ], [ 0, %sw.bb11 ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cryp_configure_init_vector(ptr nocapture noundef readonly %device_data, i32 noundef %init_vector_index, [2 x i32] %init_vector_value.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %init_vector_value.coerce.fca.0.extract = extractvalue [2 x i32] %init_vector_value.coerce, 0
  %init_vector_value.coerce.fca.1.extract = extractvalue [2 x i32] %init_vector_value.coerce, 1
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %sr.i17 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i17) #2, !srcloc !9
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not18 = icmp eq i32 %3, 0
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !18
  %4 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_data, align 4
  %sr.i = getelementptr inbounds %struct.cryp_register, ptr %5, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i) #2, !srcloc !9
  %7 = and i32 %6, 268435456
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %8 = zext i32 %init_vector_index to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %init_vector_index, label %while.end.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

while.end.return_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %init_vector_value.coerce.fca.0.extract)
  %10 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_data, align 4
  %init_vect_0_l = getelementptr inbounds %struct.cryp_register, ptr %11, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %init_vect_0_l, i32 %9) #2, !srcloc !12
  %12 = tail call i32 @llvm.bswap.i32(i32 %init_vector_value.coerce.fca.1.extract)
  %13 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_data, align 4
  %init_vect_0_r = getelementptr inbounds %struct.cryp_register, ptr %14, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %init_vect_0_r, i32 %12) #2, !srcloc !12
  br label %return

sw.bb6:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %init_vector_value.coerce.fca.0.extract)
  %16 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_data, align 4
  %init_vect_1_l = getelementptr inbounds %struct.cryp_register, ptr %17, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %init_vect_1_l, i32 %15) #2, !srcloc !12
  %18 = tail call i32 @llvm.bswap.i32(i32 %init_vector_value.coerce.fca.1.extract)
  %19 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_data, align 4
  %init_vect_1_r = getelementptr inbounds %struct.cryp_register, ptr %20, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %init_vect_1_r, i32 %18) #2, !srcloc !12
  br label %return

return:                                           ; preds = %sw.bb6, %sw.bb, %while.end.return_crit_edge
  %retval.0 = phi i32 [ -22, %while.end.return_crit_edge ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cryp_save_device_context(ptr nocapture noundef readonly %device_data, ptr nocapture noundef %ctx, i32 noundef %cryp_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 8
  %2 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ctx, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !9
  %5 = and i32 %4, -8388609
  %6 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #2, !srcloc !12
  %8 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_data, align 4
  %sr.i5.i = getelementptr inbounds %struct.cryp_register, ptr %9, i32 0, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i5.i) #2, !srcloc !9
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not6.i = icmp eq i32 %11, 0
  br i1 %tobool.not6.i, label %entry.cryp_wait_until_done.exit_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.cryp_wait_until_done.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cryp_wait_until_done.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !11
  %12 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_data, align 4
  %sr.i.i = getelementptr inbounds %struct.cryp_register, ptr %13, i32 0, i32 1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr.i.i) #2, !srcloc !9
  %15 = and i32 %14, 268435456
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %do.end.i.cryp_wait_until_done.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.i

do.end.i.cryp_wait_until_done.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cryp_wait_until_done.exit

cryp_wait_until_done.exit:                        ; preds = %do.end.i.cryp_wait_until_done.exit_crit_edge, %entry.cryp_wait_until_done.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cryp_mode)
  %cmp = icmp eq i32 %cryp_mode, 2
  br i1 %cmp, label %if.then, label %cryp_wait_until_done.exit.if.end_crit_edge

cryp_wait_until_done.exit.if.end_crit_edge:       ; preds = %cryp_wait_until_done.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %cryp_wait_until_done.exit
  call void @__sanitizer_cov_trace_pc() #4
  %16 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_data, align 4
  %dmacr.i = getelementptr inbounds %struct.cryp_register, ptr %17, i32 0, i32 6
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmacr.i) #2, !srcloc !9
  %19 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_data, align 4
  %dmacr2.i = getelementptr inbounds %struct.cryp_register, ptr %20, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacr2.i, i32 %18) #2, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %cryp_wait_until_done.exit.if.end_crit_edge
  %sr = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 1
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sr) #2, !srcloc !9
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1 = icmp eq i32 %22, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %din = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 2
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %din) #2, !srcloc !9
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %din6 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 15
  %25 = ptrtoint ptr %din6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %din6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !9
  %27 = and i32 %26, -16318464
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ctx, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %31, label %if.end7.sw.default_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %if.end7.sw.bb21_crit_edge
    i32 0, label %if.end7.sw.bb30_crit_edge
  ]

if.end7.sw.bb30_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb30

if.end7.sw.bb21_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb21

if.end7.sw.default_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.default

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  %key_4_l = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %key_4_l) #2, !srcloc !9
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %key_4_l16 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 9
  %35 = ptrtoint ptr %key_4_l16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %key_4_l16, align 4
  %key_4_r = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 17
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %key_4_r) #2, !srcloc !9
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %key_4_r20 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 10
  %38 = ptrtoint ptr %key_4_r20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %key_4_r20, align 4
  br label %sw.bb21

sw.bb21:                                          ; preds = %sw.bb, %if.end7.sw.bb21_crit_edge
  %key_3_l = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 14
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %key_3_l) #2, !srcloc !9
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %key_3_l25 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 7
  %41 = ptrtoint ptr %key_3_l25 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %key_3_l25, align 4
  %key_3_r = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 15
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %key_3_r) #2, !srcloc !9
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %key_3_r29 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 8
  %44 = ptrtoint ptr %key_3_r29 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %key_3_r29, align 4
  br label %sw.bb30

sw.bb30:                                          ; preds = %sw.bb21, %if.end7.sw.bb30_crit_edge
  %key_2_l = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 12
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %key_2_l) #2, !srcloc !9
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %key_2_l34 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 5
  %47 = ptrtoint ptr %key_2_l34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %key_2_l34, align 4
  %key_2_r = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 13
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %key_2_r) #2, !srcloc !9
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %key_2_r38 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 6
  %50 = ptrtoint ptr %key_2_r38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %key_2_r38, align 4
  br label %sw.default

sw.default:                                       ; preds = %sw.bb30, %if.end7.sw.default_crit_edge
  %key_1_l = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 10
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %key_1_l) #2, !srcloc !9
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %key_1_l42 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 3
  %53 = ptrtoint ptr %key_1_l42 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %key_1_l42, align 4
  %key_1_r = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 11
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %key_1_r) #2, !srcloc !9
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %key_1_r46 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 4
  %56 = ptrtoint ptr %key_1_r46 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %key_1_r46, align 4
  %57 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ctx, align 4
  %and48 = lshr i32 %58, 3
  %shr = and i32 %and48, 7
  %59 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %shr, label %sw.default.if.end70_crit_edge [
    i32 1, label %sw.default.if.then53_crit_edge
    i32 3, label %sw.default.if.then53_crit_edge105
    i32 5, label %sw.default.if.then53_crit_edge106
  ]

sw.default.if.then53_crit_edge106:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then53

sw.default.if.then53_crit_edge105:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then53

sw.default.if.then53_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then53

sw.default.if.end70_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end70

if.then53:                                        ; preds = %sw.default.if.then53_crit_edge, %sw.default.if.then53_crit_edge105, %sw.default.if.then53_crit_edge106
  %init_vect_0_l = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 18
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %init_vect_0_l) #2, !srcloc !9
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %init_vect_0_l57 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 11
  %62 = ptrtoint ptr %init_vect_0_l57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %init_vect_0_l57, align 4
  %init_vect_0_r = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 19
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %init_vect_0_r) #2, !srcloc !9
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %init_vect_0_r61 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 12
  %65 = ptrtoint ptr %init_vect_0_r61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %init_vect_0_r61, align 4
  %init_vect_1_l = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 20
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %init_vect_1_l) #2, !srcloc !9
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %init_vect_1_l65 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 13
  %68 = ptrtoint ptr %init_vect_1_l65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %init_vect_1_l65, align 4
  %init_vect_1_r = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 21
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %init_vect_1_r) #2, !srcloc !9
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %init_vect_1_r69 = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 14
  %71 = ptrtoint ptr %init_vect_1_r69 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %init_vect_1_r69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then53, %sw.default.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cryp_restore_device_context(ptr nocapture noundef readonly %device_data, ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %current_ctx = getelementptr inbounds %struct.cryp_device_data, ptr %device_data, i32 0, i32 8
  %2 = ptrtoint ptr %current_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %5, label %entry.sw.default_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %entry.sw.bb3_crit_edge
    i32 0, label %entry.sw.bb6_crit_edge
  ]

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb6

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb3

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %key_4_l = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 9
  %7 = ptrtoint ptr %key_4_l to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_4_l, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %key_4_l1 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_4_l1, i32 %9) #2, !srcloc !12
  %key_4_r = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 10
  %10 = ptrtoint ptr %key_4_r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_4_r, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %key_4_r2 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_4_r2, i32 %12) #2, !srcloc !12
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %entry.sw.bb3_crit_edge
  %key_3_l = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %key_3_l to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key_3_l, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %key_3_l4 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_3_l4, i32 %15) #2, !srcloc !12
  %key_3_r = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 8
  %16 = ptrtoint ptr %key_3_r to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key_3_r, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %key_3_r5 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_3_r5, i32 %18) #2, !srcloc !12
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb3, %entry.sw.bb6_crit_edge
  %key_2_l = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 5
  %19 = ptrtoint ptr %key_2_l to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key_2_l, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %key_2_l7 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_2_l7, i32 %21) #2, !srcloc !12
  %key_2_r = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 6
  %22 = ptrtoint ptr %key_2_r to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %key_2_r, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %key_2_r8 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_2_r8, i32 %24) #2, !srcloc !12
  br label %sw.default

sw.default:                                       ; preds = %sw.bb6, %entry.sw.default_crit_edge
  %key_1_l = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 3
  %25 = ptrtoint ptr %key_1_l to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key_1_l, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %key_1_l9 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_1_l9, i32 %27) #2, !srcloc !12
  %key_1_r = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 4
  %28 = ptrtoint ptr %key_1_r to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key_1_r, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %key_1_r10 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %key_1_r10, i32 %30) #2, !srcloc !12
  %algomode = getelementptr inbounds %struct.cryp_config, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %algomode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %algomode, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %32, label %sw.default.if.end_crit_edge [
    i32 1, label %sw.default.if.then_crit_edge
    i32 3, label %sw.default.if.then_crit_edge46
    i32 5, label %sw.default.if.then_crit_edge47
  ]

sw.default.if.then_crit_edge47:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

sw.default.if.then_crit_edge46:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

sw.default.if.then_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

sw.default.if.end_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %sw.default.if.then_crit_edge, %sw.default.if.then_crit_edge46, %sw.default.if.then_crit_edge47
  %init_vect_0_l = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 11
  %34 = ptrtoint ptr %init_vect_0_l to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %init_vect_0_l, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %init_vect_0_l16 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %init_vect_0_l16, i32 %36) #2, !srcloc !12
  %init_vect_0_r = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 12
  %37 = ptrtoint ptr %init_vect_0_r to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %init_vect_0_r, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %init_vect_0_r17 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %init_vect_0_r17, i32 %39) #2, !srcloc !12
  %init_vect_1_l = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 13
  %40 = ptrtoint ptr %init_vect_1_l to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %init_vect_1_l, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %init_vect_1_l18 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %init_vect_1_l18, i32 %42) #2, !srcloc !12
  %init_vect_1_r = getelementptr inbounds %struct.cryp_device_context, ptr %ctx, i32 0, i32 14
  %43 = ptrtoint ptr %init_vect_1_r to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %init_vect_1_r, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %init_vect_1_r19 = getelementptr inbounds %struct.cryp_register, ptr %1, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %init_vect_1_r19, i32 %45) #2, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
!9 = !{i64 1261591}
!10 = !{i64 2153882940}
!11 = !{i64 2153882782}
!12 = !{i64 1261173}
!13 = !{i64 2153889441}
!14 = !{i64 2153889283}
!15 = !{i64 2153894871}
!16 = !{i64 2153894713}
!17 = !{i64 2153897145}
!18 = !{i64 2153896987}
