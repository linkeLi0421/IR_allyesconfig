; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6655/power.c_pt.bc'
source_filename = "../drivers/staging/vt6655/power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.vnt_private = type { ptr, ptr, ptr, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, [2 x ptr], %struct.vnt_options, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i32, i8, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i16, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i32], i8, i8, i32, i8, i8, i8, i8, i8, [15 x i8], [57 x i8], [15 x i8], [57 x i8], [57 x i8], [57 x i8], i8, i8, i8, i8, [256 x i8], i16, i16, %struct.work_struct, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vnt_options = type { i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }

@PSvEnablePowerSaving.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6655_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PSvEnablePowerSaving\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/staging/vt6655/power.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PS:Power Saving Mode Enable...\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [34 x i8] c"../drivers/staging/vt6655/power.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 82, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PSvEnablePowerSaving(ptr nocapture noundef %priv, i16 noundef zeroext %wListenInterval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %current_aid = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %current_aid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %current_aid, align 4
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %2 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 -6141) #3, !srcloc !16
  %op_mode = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 77
  %4 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = or i16 %1, -16384
  %7 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_offset, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %9 = tail call i16 @llvm.bswap.i16(i16 %6) #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %9) #3, !srcloc !16
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %10 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_offset, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 96
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %13 = or i8 %12, 1
  %14 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_offset, align 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %13) #3, !srcloc !20
  %16 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_offset, align 4
  %add.ptr16 = getelementptr i8, ptr %17, i32 72
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %19 = or i8 %18, -128
  %20 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port_offset, align 4
  %add.ptr22 = getelementptr i8, ptr %21, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 %19) #3, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %wListenInterval)
  %cmp26 = icmp ugt i16 %wListenInterval, 1
  %22 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_offset, align 4
  %add.ptr32 = getelementptr i8, ptr %23, i32 97
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr32) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  br i1 %cmp26, label %do.body29, label %do.body52

do.body29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %25 = and i8 %24, -3
  %26 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port_offset, align 4
  %add.ptr37 = getelementptr i8, ptr %27, i32 97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 %25) #3, !srcloc !20
  %28 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_offset, align 4
  %add.ptr43 = getelementptr i8, ptr %29, i32 97
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr43) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %31 = or i8 %30, 4
  %32 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port_offset, align 4
  %add.ptr49 = getelementptr i8, ptr %33, i32 97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49, i8 %31) #3, !srcloc !20
  br label %do.body65

do.body52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %34 = or i8 %24, 2
  %35 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port_offset, align 4
  %add.ptr61 = getelementptr i8, ptr %36, i32 97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr61, i8 %34) #3, !srcloc !20
  br label %do.body65

do.body65:                                        ; preds = %do.body52, %do.body29
  %37 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port_offset, align 4
  %add.ptr68 = getelementptr i8, ptr %38, i32 97
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr68) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %40 = or i8 %39, 1
  %41 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port_offset, align 4
  %add.ptr74 = getelementptr i8, ptr %42, i32 97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr74, i8 %40) #3, !srcloc !20
  %bEnablePSMode = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 88
  %43 = ptrtoint ptr %bEnablePSMode to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %bEnablePSMode, align 4
  %bPWBitOn = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 90
  %44 = ptrtoint ptr %bPWBitOn to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %bPWBitOn, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @PSvEnablePowerSaving.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@PSvEnablePowerSaving, %if.then81)) #3
          to label %do.end84 [label %if.then81], !srcloc !21

if.then81:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @PSvEnablePowerSaving.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.3) #3
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %do.body65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @PSvDisablePowerSaving(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @MACbPSWakeup(ptr noundef %priv) #3
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %3 = and i8 %2, -2
  %4 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %3) #3, !srcloc !20
  %6 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_offset, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 72
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %9 = and i8 %8, 127
  %10 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_offset, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 %9) #3, !srcloc !20
  %12 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_offset, align 4
  %add.ptr19 = getelementptr i8, ptr %13, i32 97
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %15 = or i8 %14, 2
  %16 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port_offset, align 4
  %add.ptr24 = getelementptr i8, ptr %17, i32 97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 %15) #3, !srcloc !20
  %bEnablePSMode = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 88
  %18 = ptrtoint ptr %bEnablePSMode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %bEnablePSMode, align 4
  %bPWBitOn = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 90
  %19 = ptrtoint ptr %bPWBitOn to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bPWBitOn, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @MACbPSWakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @PSbIsNextTBTTWakeUp(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %listen_interval = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %listen_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp ugt i16 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then:                                          ; preds = %entry
  %wake_up_count = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 132
  %4 = ptrtoint ptr %wake_up_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wake_up_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %wake_up_count to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %3, ptr %wake_up_count, align 2
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %wake_up_count to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wake_up_count, align 2
  %dec = add i16 %8, -1
  store i16 %dec, ptr %wake_up_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %dec)
  %cmp10 = icmp eq i16 %dec, 1
  br i1 %cmp10, label %do.body, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %9 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 97
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %12 = or i8 %11, 4
  %13 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port_offset, align 4
  %add.ptr16 = getelementptr i8, ptr %14, i32 97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %12) #3, !srcloc !20
  br label %if.end18

if.end18:                                         ; preds = %do.body, %if.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  %wake_up.0.off0 = phi i1 [ true, %do.body ], [ false, %if.end.if.end18_crit_edge ], [ false, %entry.if.end18_crit_edge ]
  ret i1 %wake_up.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6655/power.c", i32 82, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @PSvEnablePowerSaving.__UNIQUE_ID_ddebug350, !1, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2152561253}
!16 = !{i64 5019061}
!17 = !{i64 5019879}
!18 = !{i64 2152559224}
!19 = !{i64 2152560829}
!20 = !{i64 5019484}
!21 = !{i64 2148993299, i64 2148993304, i64 2148993317, i64 2148993361, i64 2148993395, i64 2148993416}
