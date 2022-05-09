; ModuleID = '/llk/IR_all_yes/drivers/soc/fsl/qe/ucc.c_pt.bc'
source_filename = "../drivers/soc/fsl/qe/ucc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ucc_set_qe_mux_mii_mng\22, \22a\22\09"
module asm "\09.weak\09__crc_ucc_set_qe_mux_mii_mng\09\09\09\09"
module asm "\09.long\09__crc_ucc_set_qe_mux_mii_mng\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ucc_set_qe_mux_mii_mng:\09\09\09\09\09"
module asm "\09.asciz \09\22ucc_set_qe_mux_mii_mng\22\09\09\09\09\09"
module asm "__kstrtabns_ucc_set_qe_mux_mii_mng:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qe_immap = type { %struct.qe_iram, %struct.qe_ic_regs, %struct.cp_qe, %struct.qe_mux, %struct.qe_timers, [2 x %struct.spi], %struct.qe_mcc, %struct.qe_brg, %struct.qe_usb_ctlr, %struct.si1, [2048 x i8], %struct.sir, %struct.ucc, %struct.ucc, %struct.ucc, %struct.ucc, [1536 x i8], %struct.upc, %struct.ucc, %struct.ucc, %struct.ucc, %struct.ucc, [1536 x i8], %struct.upc, %struct.sdma, %struct.dbg, [2 x %struct.rsp], [768 x i8], [14848 x i8], [32768 x i8], [49152 x i8], [147456 x i8], [786432 x i8] }
%struct.qe_iram = type { i32, i32, [4 x i8], i32, [112 x i8] }
%struct.qe_ic_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i32, [4 x i8], i32, [32 x i8], i32, [28 x i8] }
%struct.cp_qe = type { i32, i32, i32, [10 x i8], i16, [2 x i8], i16, i32, i32, i32, [8 x i8], i32, i32, i16, [2 x i8], [36 x i8], i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i16, [2 x i8], i16, [58 x i8], i32, [580 x i8] }
%struct.qe_mux = type { i32, i32, i32, i32, [4 x i32], i32, [28 x i8] }
%struct.qe_timers = type { i8, [3 x i8], i8, [11 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [70 x i8] }
%struct.spi = type { [32 x i8], i32, [2 x i8], i8, [1 x i8], [2 x i8], i8, [1 x i8], [1 x i8], i8, [2 x i8], i32, i32, [8 x i8] }
%struct.qe_mcc = type { i32, i32, i32, i32, [240 x i8] }
%struct.qe_brg = type { [16 x i32], [64 x i8] }
%struct.qe_usb_ctlr = type { i8, i8, i8, [1 x i8], [4 x i16], [4 x i8], i16, [2 x i8], i16, [1 x i8], i8, i16, [2 x i8], i16, [34 x i8] }
%struct.si1 = type { [4 x i16], i8, [1 x i8], i8, [1 x i8], i8, [1 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i16, i16, i16, i8, [1 x i8], i8, [1 x i8], i8, [1 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i32, i8, [187 x i8] }
%struct.sir = type { [1024 x i8], [1024 x i8], [2048 x i8] }
%struct.ucc = type { %union.anon.2 }
%union.anon.2 = type { [512 x i8] }
%struct.upc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [8 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, [336 x i8] }
%struct.sdma = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, [4 x i8], i32, [56 x i8] }
%struct.dbg = type { i32, i32, i32, i32, i32, [8 x i8], i32, i32, [8 x i8], i32, i32, i32, [72 x i8] }
%struct.rsp = type { [16 x i32], [64 x i8], i32, i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, [4 x i8], [4 x i32], i32, i32, [8 x i8] }

@cmxgcr_lock = external dso_local global %struct.spinlock, align 4
@qe_immr = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ucc_set_qe_mux_mii_mng = external dso_local constant [0 x i8], align 1
@__kstrtabns_ucc_set_qe_mux_mii_mng = external dso_local constant [0 x i8], align 1
@__ksymtab_ucc_set_qe_mux_mii_mng = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ucc_set_qe_mux_mii_mng to i32), ptr @__kstrtab_ucc_set_qe_mux_mii_mng, ptr @__kstrtabns_ucc_set_qe_mux_mii_mng }, section "___ksymtab+ucc_set_qe_mux_mii_mng", align 4
@switch.table.ucc_set_qe_mux_rxtx = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 3, i32 4, i32 1, i32 1, i32 5, i32 6, i32 1, i32 1, i32 9, i32 10, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 11, i32 7, i32 8], [56 x i8] zeroinitializer }, align 32
@switch.table.ucc_set_qe_mux_rxtx.1 = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 1, i32 2, i32 3, i32 4, i32 1, i32 1, i32 1, i32 1, i32 5, i32 6, i32 9, i32 10, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 11, i32 1, i32 1, i32 1, i32 1, i32 7, i32 8], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 7, i64 8, i64 25, i64 26, i64 27, i64 28, i64 31, i64 32]
@__sancov_gen_cov_switch_values.4 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 6, i64 7, i64 8, i64 29, i64 30, i64 31, i64 32, i64 35, i64 36]
@__sancov_gen_cov_switch_values.5 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 17, i64 18]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 12, i64 13, i64 39, i64 40]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.10 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.11 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_ = private constant [28 x i8] c"../drivers/soc/fsl/qe/ucc.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [33 x i8] c"switch.table.ucc_set_qe_mux_rxtx\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [35 x i8] c"switch.table.ucc_set_qe_mux_rxtx.1\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_ucc_set_qe_mux_mii_mng, ptr @switch.table.ucc_set_qe_mux_rxtx, ptr @switch.table.ucc_set_qe_mux_rxtx.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ucc_set_qe_mux_rxtx to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ucc_set_qe_mux_rxtx.1 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ucc_set_qe_mux_mii_mng(i32 noundef %ucc_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ucc_num)
  %cmp = icmp ugt i32 %ucc_num, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cmxgcr_lock) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %0 = load ptr, ptr @qe_immr, align 4
  %qmx = getelementptr inbounds %struct.qe_immap, ptr %0, i32 0, i32 3
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %qmx) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !13
  %and = and i32 %1, -28673
  %shl = shl nuw nsw i32 %ucc_num, 12
  %or = or i32 %and, %shl
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %2 = load ptr, ptr @qe_immr, align 4
  %qmx11 = getelementptr inbounds %struct.qe_immap, ptr %2, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %qmx11, i32 %or) #2, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cmxgcr_lock, i32 noundef %call3) #2
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ucc_set_type(i32 noundef %ucc_num, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ucc_num to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ucc_num, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
    i32 5, label %sw.bb10
    i32 6, label %sw.bb12
    i32 7, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %1 = load ptr, ptr @qe_immr, align 4
  %guemr1 = getelementptr inbounds %struct.qe_immap, ptr %1, i32 0, i32 12, i32 0, i32 0, i32 144
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %2 = load ptr, ptr @qe_immr, align 4
  %guemr3 = getelementptr inbounds %struct.qe_immap, ptr %2, i32 0, i32 18, i32 0, i32 0, i32 144
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %3 = load ptr, ptr @qe_immr, align 4
  %guemr5 = getelementptr inbounds %struct.qe_immap, ptr %3, i32 0, i32 13, i32 0, i32 0, i32 144
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %4 = load ptr, ptr @qe_immr, align 4
  %guemr7 = getelementptr inbounds %struct.qe_immap, ptr %4, i32 0, i32 19, i32 0, i32 0, i32 144
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %5 = load ptr, ptr @qe_immr, align 4
  %guemr9 = getelementptr inbounds %struct.qe_immap, ptr %5, i32 0, i32 14, i32 0, i32 0, i32 144
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %6 = load ptr, ptr @qe_immr, align 4
  %guemr11 = getelementptr inbounds %struct.qe_immap, ptr %6, i32 0, i32 20, i32 0, i32 0, i32 144
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %7 = load ptr, ptr @qe_immr, align 4
  %guemr13 = getelementptr inbounds %struct.qe_immap, ptr %7, i32 0, i32 15, i32 0, i32 0, i32 144
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %8 = load ptr, ptr @qe_immr, align 4
  %guemr15 = getelementptr inbounds %struct.qe_immap, ptr %8, i32 0, i32 21, i32 0, i32 0, i32 144
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %guemr.0 = phi ptr [ %guemr15, %sw.bb14 ], [ %guemr13, %sw.bb12 ], [ %guemr11, %sw.bb10 ], [ %guemr9, %sw.bb8 ], [ %guemr7, %sw.bb6 ], [ %guemr5, %sw.bb4 ], [ %guemr3, %sw.bb2 ], [ %guemr1, %sw.bb ]
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %guemr.0) #2, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  %10 = and i8 %9, -20
  %11 = trunc i32 %speed to i8
  %12 = or i8 %10, %11
  %conv17 = or i8 %12, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %guemr.0, i8 %conv17) #2, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ucc_mux_set_grant_tsa_bkpt(i32 noundef %ucc_num, i32 noundef %set, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ucc_num)
  %cmp = icmp ugt i32 %ucc_num, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = shl nuw nsw i32 %ucc_num, 1
  %shl.i = and i32 %and.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ucc_num)
  %cmp.i = icmp ugt i32 %ucc_num, 3
  %conv.i = zext i1 %cmp.i to i32
  %add.i = or i32 %shl.i, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %0 = load ptr, ptr @qe_immr, align 4
  %arrayidx.i = getelementptr %struct.qe_immap, ptr %0, i32 0, i32 3, i32 4, i32 %add.i
  %and3.i = shl nuw nsw i32 %ucc_num, 3
  %and3.not.i = and i32 %and3.i, 16
  %sub.i = xor i32 %and3.not.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not = icmp eq i32 %set, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  %shl8 = shl i32 %mask, %sub.i
  br i1 %tobool.not, label %do.body2, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %or = or i32 %1, %shl8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %or) #2, !srcloc !14
  br label %cleanup

do.body2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %neg = xor i32 %shl8, -1
  %and = and i32 %1, %neg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %and) #2, !srcloc !14
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body2 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ucc_set_qe_mux_rxtx(i32 noundef %ucc_num, i32 noundef %clock, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ucc_num)
  %cmp = icmp ugt i32 %ucc_num, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp1 = icmp eq i32 %mode, 1
  %mode.off = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.off)
  %switch = icmp ult i32 %mode.off, 2
  br i1 %switch, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and.i = shl nuw nsw i32 %ucc_num, 1
  %shl.i = and i32 %and.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ucc_num)
  %cmp.i = icmp ugt i32 %ucc_num, 3
  %conv.i = zext i1 %cmp.i to i32
  %add.i = or i32 %shl.i, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %0 = load ptr, ptr @qe_immr, align 4
  %arrayidx.i = getelementptr %struct.qe_immap, ptr %0, i32 0, i32 3, i32 4, i32 %add.i
  %and3.i = shl nuw nsw i32 %ucc_num, 3
  %and3.not.i = and i32 %and3.i, 16
  %sub.i = xor i32 %and3.not.i, 16
  %1 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %add.i, label %if.end4.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb28
    i32 3, label %sw.bb42
  ]

sw.bb:                                            ; preds = %if.end4
  %2 = zext i32 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %clock, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb.if.end59_crit_edge
    i32 2, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 25, label %sw.bb9
    i32 26, label %sw.bb10
    i32 27, label %sw.bb11
    i32 28, label %sw.bb12
    i32 31, label %sw.bb13
    i32 32, label %sw.bb14
  ]

sw.bb.if.end59_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb7:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb9:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb10:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb11:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb12:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb13:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb14:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb15:                                          ; preds = %if.end4
  %3 = zext i32 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %clock, label %sw.bb15.cleanup_crit_edge [
    i32 5, label %sw.bb15.if.end59_crit_edge
    i32 6, label %sw.bb17
    i32 7, label %sw.bb18
    i32 8, label %sw.bb19
    i32 29, label %sw.bb20
    i32 30, label %sw.bb21
    i32 35, label %sw.bb22
    i32 36, label %sw.bb23
    i32 31, label %sw.bb24
    i32 32, label %sw.bb25
  ]

sw.bb15.if.end59_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb17:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb18:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb19:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb20:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb21:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb22:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb23:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb24:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb25:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end59

sw.bb28:                                          ; preds = %if.end4
  %switch.tableidx = add i32 %clock, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 26
  br i1 %4, label %switch.hole_check, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb42:                                          ; preds = %if.end4
  %switch.tableidx80 = add i32 %clock, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %switch.tableidx80)
  %5 = icmp ult i32 %switch.tableidx80, 26
  br i1 %5, label %switch.hole_check81, label %sw.bb42.cleanup_crit_edge

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb28
  %switch.shifted = lshr i32 58772675, %switch.tableidx
  %6 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %switch.lobit.not = icmp eq i32 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #4
  %switch.gep = getelementptr inbounds [26 x i32], ptr @switch.table.ucc_set_qe_mux_rxtx, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end59

switch.hole_check81:                              ; preds = %sw.bb42
  %switch.shifted83 = lshr i32 50859791, %switch.tableidx80
  %8 = and i32 %switch.shifted83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %switch.lobit84.not = icmp eq i32 %8, 0
  br i1 %switch.lobit84.not, label %switch.hole_check81.cleanup_crit_edge, label %switch.lookup82

switch.hole_check81.cleanup_crit_edge:            ; preds = %switch.hole_check81
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

switch.lookup82:                                  ; preds = %switch.hole_check81
  call void @__sanitizer_cov_trace_pc() #4
  %switch.gep85 = getelementptr inbounds [26 x i32], ptr @switch.table.ucc_set_qe_mux_rxtx.1, i32 0, i32 %switch.tableidx80
  %9 = ptrtoint ptr %switch.gep85 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load86 = load i32, ptr %switch.gep85, align 4
  br label %if.end59

if.end59:                                         ; preds = %switch.lookup82, %switch.lookup, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb15.if.end59_crit_edge, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb.if.end59_crit_edge
  %clock_bits.0.ph = phi i32 [ 10, %sw.bb14 ], [ 9, %sw.bb13 ], [ 8, %sw.bb12 ], [ 7, %sw.bb11 ], [ 6, %sw.bb10 ], [ 5, %sw.bb9 ], [ 4, %sw.bb8 ], [ 3, %sw.bb7 ], [ 2, %sw.bb6 ], [ 10, %sw.bb25 ], [ 9, %sw.bb24 ], [ 8, %sw.bb23 ], [ 7, %sw.bb22 ], [ 6, %sw.bb21 ], [ 5, %sw.bb20 ], [ 4, %sw.bb19 ], [ 3, %sw.bb18 ], [ 2, %sw.bb17 ], [ %clock, %sw.bb.if.end59_crit_edge ], [ 1, %sw.bb15.if.end59_crit_edge ], [ %switch.load, %switch.lookup ], [ %switch.load86, %switch.lookup82 ]
  %add = or i32 %sub.i, 4
  %spec.select = select i1 %cmp1, i32 %add, i32 %sub.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !19
  tail call void @arm_heavy_mb() #2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !20
  %shl = shl i32 15, %spec.select
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  %shl63 = shl i32 %clock_bits.0.ph, %spec.select
  %or = or i32 %and, %shl63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %or) #2, !srcloc !14
  br label %cleanup

if.end4.unreachabledefault:                       ; preds = %if.end4
  unreachable

cleanup:                                          ; preds = %if.end59, %switch.hole_check81.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.bb42.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -2, %sw.bb42.cleanup_crit_edge ], [ -2, %sw.bb28.cleanup_crit_edge ], [ -2, %sw.bb15.cleanup_crit_edge ], [ -2, %sw.bb.cleanup_crit_edge ], [ -2, %switch.hole_check.cleanup_crit_edge ], [ -2, %switch.hole_check81.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ucc_set_tdm_rxtx_clk(i32 noundef %tdm_num, i32 noundef %clock, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %0 = load ptr, ptr @qe_immr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %tdm_num)
  %cmp = icmp ult i32 %tdm_num, 8
  %mode.off = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.off)
  %switch = icmp ult i32 %mode.off, 2
  %or.cond = and i1 %cmp, %switch
  br i1 %or.cond, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %1 = zext i32 %tdm_num to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %tdm_num, label %if.end4.if.end.i_crit_edge [
    i32 0, label %if.end4.sw.bb.i.i_crit_edge
    i32 1, label %if.end4.sw.bb.i.i_crit_edge47
    i32 2, label %if.end4.sw.bb.i.i_crit_edge48
    i32 3, label %if.end4.sw.bb.i.i_crit_edge49
    i32 4, label %if.end4.sw.bb5.i.i_crit_edge
    i32 5, label %if.end4.sw.bb5.i.i_crit_edge50
    i32 6, label %if.end4.sw.bb5.i.i_crit_edge51
    i32 7, label %if.end4.sw.bb5.i.i_crit_edge52
  ]

if.end4.sw.bb5.i.i_crit_edge52:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb5.i.i

if.end4.sw.bb5.i.i_crit_edge51:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb5.i.i

if.end4.sw.bb5.i.i_crit_edge50:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb5.i.i

if.end4.sw.bb5.i.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb5.i.i

if.end4.sw.bb.i.i_crit_edge49:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i.i

if.end4.sw.bb.i.i_crit_edge48:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i.i

if.end4.sw.bb.i.i_crit_edge47:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i.i

if.end4.sw.bb.i.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

sw.bb.i.i:                                        ; preds = %if.end4.sw.bb.i.i_crit_edge, %if.end4.sw.bb.i.i_crit_edge47, %if.end4.sw.bb.i.i_crit_edge48, %if.end4.sw.bb.i.i_crit_edge49
  %2 = zext i32 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %clock, label %sw.bb.i.i.if.end.i_crit_edge [
    i32 3, label %sw.bb.i.i.if.end7_crit_edge
    i32 4, label %sw.bb2.i.i
    i32 17, label %sw.bb3.i.i
    i32 18, label %sw.bb4.i.i
  ]

sw.bb.i.i.if.end7_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb.i.i.if.end.i_crit_edge:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

sw.bb2.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb3.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb4.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb5.i.i:                                       ; preds = %if.end4.sw.bb5.i.i_crit_edge, %if.end4.sw.bb5.i.i_crit_edge50, %if.end4.sw.bb5.i.i_crit_edge51, %if.end4.sw.bb5.i.i_crit_edge52
  %3 = zext i32 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %clock, label %sw.bb5.i.i.if.end.i_crit_edge [
    i32 12, label %sw.bb5.i.i.if.end7_crit_edge
    i32 13, label %sw.bb7.i.i
    i32 39, label %sw.bb8.i.i
    i32 40, label %sw.bb9.i.i
  ]

sw.bb5.i.i.if.end7_crit_edge:                     ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb5.i.i.if.end.i_crit_edge:                    ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

sw.bb7.i.i:                                       ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb8.i.i:                                       ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb9.i.i:                                       ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.end.i:                                         ; preds = %sw.bb5.i.i.if.end.i_crit_edge, %sw.bb.i.i.if.end.i_crit_edge, %if.end4.if.end.i_crit_edge
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %mode, label %if.end.i.cleanup_crit_edge [
    i32 1, label %if.then2.i
    i32 2, label %if.then6.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  %5 = zext i32 %tdm_num to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %tdm_num, label %if.then2.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i16.i
    i32 1, label %sw.bb3.i17.i
    i32 2, label %sw.bb8.i18.i
    i32 3, label %sw.bb13.i.i
    i32 4, label %sw.bb18.i.i
    i32 5, label %sw.bb23.i.i
    i32 6, label %sw.bb28.i.i
    i32 7, label %sw.bb33.i.i
  ]

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.i16.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %clock)
  %switch.selectcmp.i.i = icmp eq i32 %clock, 24
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %clock)
  %switch.selectcmp46.i.i = icmp eq i32 %clock, 19
  br i1 %switch.selectcmp46.i.i, label %sw.bb.i16.i.if.end7_crit_edge, label %sw.bb.i16.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb.i16.i.ucc_get_tdm_rxtx_clk.exit_crit_edge:  ; preds = %sw.bb.i16.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb.i16.i.if.end7_crit_edge:                    ; preds = %sw.bb.i16.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb3.i17.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %clock)
  %switch.selectcmp48.i.i = icmp eq i32 %clock, 26
  %switch.select49.i.i = select i1 %switch.selectcmp48.i.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %clock)
  %switch.selectcmp50.i.i = icmp eq i32 %clock, 21
  br i1 %switch.selectcmp50.i.i, label %sw.bb3.i17.i.if.end7_crit_edge, label %sw.bb3.i17.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb3.i17.i.ucc_get_tdm_rxtx_clk.exit_crit_edge: ; preds = %sw.bb3.i17.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb3.i17.i.if.end7_crit_edge:                   ; preds = %sw.bb3.i17.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb8.i18.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %clock)
  %switch.selectcmp52.i.i = icmp eq i32 %clock, 28
  %switch.select53.i.i = select i1 %switch.selectcmp52.i.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %clock)
  %switch.selectcmp54.i.i = icmp eq i32 %clock, 23
  br i1 %switch.selectcmp54.i.i, label %sw.bb8.i18.i.if.end7_crit_edge, label %sw.bb8.i18.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb8.i18.i.ucc_get_tdm_rxtx_clk.exit_crit_edge: ; preds = %sw.bb8.i18.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb8.i18.i.if.end7_crit_edge:                   ; preds = %sw.bb8.i18.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb13.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %clock)
  %switch.selectcmp56.i.i = icmp eq i32 %clock, 30
  %switch.select57.i.i = select i1 %switch.selectcmp56.i.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %clock)
  %switch.selectcmp58.i.i = icmp eq i32 %clock, 25
  br i1 %switch.selectcmp58.i.i, label %sw.bb13.i.i.if.end7_crit_edge, label %sw.bb13.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb13.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge:  ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb13.i.i.if.end7_crit_edge:                    ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb18.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %clock)
  %switch.selectcmp60.i.i = icmp eq i32 %clock, 32
  %switch.select61.i.i = select i1 %switch.selectcmp60.i.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %clock)
  %switch.selectcmp62.i.i = icmp eq i32 %clock, 27
  br i1 %switch.selectcmp62.i.i, label %sw.bb18.i.i.if.end7_crit_edge, label %sw.bb18.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb18.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge:  ; preds = %sw.bb18.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb18.i.i.if.end7_crit_edge:                    ; preds = %sw.bb18.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb23.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %clock)
  %switch.selectcmp64.i.i = icmp eq i32 %clock, 34
  %switch.select65.i.i = select i1 %switch.selectcmp64.i.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %clock)
  %switch.selectcmp66.i.i = icmp eq i32 %clock, 29
  br i1 %switch.selectcmp66.i.i, label %sw.bb23.i.i.if.end7_crit_edge, label %sw.bb23.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb23.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge:  ; preds = %sw.bb23.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb23.i.i.if.end7_crit_edge:                    ; preds = %sw.bb23.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb28.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %clock)
  %switch.selectcmp68.i.i = icmp eq i32 %clock, 36
  %switch.select69.i.i = select i1 %switch.selectcmp68.i.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %clock)
  %switch.selectcmp70.i.i = icmp eq i32 %clock, 31
  br i1 %switch.selectcmp70.i.i, label %sw.bb28.i.i.if.end7_crit_edge, label %sw.bb28.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb28.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge:  ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb28.i.i.if.end7_crit_edge:                    ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb33.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %clock)
  %switch.selectcmp72.i.i = icmp eq i32 %clock, 38
  %switch.select73.i.i = select i1 %switch.selectcmp72.i.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %clock)
  %switch.selectcmp74.i.i = icmp eq i32 %clock, 33
  br i1 %switch.selectcmp74.i.i, label %sw.bb33.i.i.if.end7_crit_edge, label %sw.bb33.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb33.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge:  ; preds = %sw.bb33.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb33.i.i.if.end7_crit_edge:                    ; preds = %sw.bb33.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.then6.i:                                       ; preds = %if.end.i
  %6 = zext i32 %tdm_num to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %tdm_num, label %if.then6.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i24.i
    i32 1, label %sw.bb3.i29.i
    i32 2, label %sw.bb8.i34.i
    i32 3, label %sw.bb13.i39.i
    i32 4, label %sw.bb18.i44.i
    i32 5, label %sw.bb23.i49.i
    i32 6, label %sw.bb28.i54.i
    i32 7, label %sw.bb33.i59.i
  ]

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.i24.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %clock)
  %switch.selectcmp.i20.i = icmp eq i32 %clock, 25
  %switch.select.i21.i = select i1 %switch.selectcmp.i20.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %clock)
  %switch.selectcmp46.i22.i = icmp eq i32 %clock, 20
  br i1 %switch.selectcmp46.i22.i, label %sw.bb.i24.i.if.end7_crit_edge, label %sw.bb.i24.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb.i24.i.ucc_get_tdm_rxtx_clk.exit_crit_edge:  ; preds = %sw.bb.i24.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb.i24.i.if.end7_crit_edge:                    ; preds = %sw.bb.i24.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb3.i29.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %clock)
  %switch.selectcmp48.i25.i = icmp eq i32 %clock, 27
  %switch.select49.i26.i = select i1 %switch.selectcmp48.i25.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %clock)
  %switch.selectcmp50.i27.i = icmp eq i32 %clock, 22
  br i1 %switch.selectcmp50.i27.i, label %sw.bb3.i29.i.if.end7_crit_edge, label %sw.bb3.i29.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb3.i29.i.ucc_get_tdm_rxtx_clk.exit_crit_edge: ; preds = %sw.bb3.i29.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb3.i29.i.if.end7_crit_edge:                   ; preds = %sw.bb3.i29.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb8.i34.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %clock)
  %switch.selectcmp52.i30.i = icmp eq i32 %clock, 29
  %switch.select53.i31.i = select i1 %switch.selectcmp52.i30.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %clock)
  %switch.selectcmp54.i32.i = icmp eq i32 %clock, 24
  br i1 %switch.selectcmp54.i32.i, label %sw.bb8.i34.i.if.end7_crit_edge, label %sw.bb8.i34.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb8.i34.i.ucc_get_tdm_rxtx_clk.exit_crit_edge: ; preds = %sw.bb8.i34.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb8.i34.i.if.end7_crit_edge:                   ; preds = %sw.bb8.i34.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb13.i39.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %clock)
  %switch.selectcmp56.i35.i = icmp eq i32 %clock, 31
  %switch.select57.i36.i = select i1 %switch.selectcmp56.i35.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %clock)
  %switch.selectcmp58.i37.i = icmp eq i32 %clock, 26
  br i1 %switch.selectcmp58.i37.i, label %sw.bb13.i39.i.if.end7_crit_edge, label %sw.bb13.i39.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb13.i39.i.ucc_get_tdm_rxtx_clk.exit_crit_edge: ; preds = %sw.bb13.i39.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb13.i39.i.if.end7_crit_edge:                  ; preds = %sw.bb13.i39.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb18.i44.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %clock)
  %switch.selectcmp60.i40.i = icmp eq i32 %clock, 33
  %switch.select61.i41.i = select i1 %switch.selectcmp60.i40.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %clock)
  %switch.selectcmp62.i42.i = icmp eq i32 %clock, 28
  br i1 %switch.selectcmp62.i42.i, label %sw.bb18.i44.i.if.end7_crit_edge, label %sw.bb18.i44.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb18.i44.i.ucc_get_tdm_rxtx_clk.exit_crit_edge: ; preds = %sw.bb18.i44.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb18.i44.i.if.end7_crit_edge:                  ; preds = %sw.bb18.i44.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb23.i49.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %clock)
  %switch.selectcmp64.i45.i = icmp eq i32 %clock, 35
  %switch.select65.i46.i = select i1 %switch.selectcmp64.i45.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %clock)
  %switch.selectcmp66.i47.i = icmp eq i32 %clock, 30
  br i1 %switch.selectcmp66.i47.i, label %sw.bb23.i49.i.if.end7_crit_edge, label %sw.bb23.i49.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb23.i49.i.ucc_get_tdm_rxtx_clk.exit_crit_edge: ; preds = %sw.bb23.i49.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb23.i49.i.if.end7_crit_edge:                  ; preds = %sw.bb23.i49.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb28.i54.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %clock)
  %switch.selectcmp68.i50.i = icmp eq i32 %clock, 37
  %switch.select69.i51.i = select i1 %switch.selectcmp68.i50.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %clock)
  %switch.selectcmp70.i52.i = icmp eq i32 %clock, 32
  br i1 %switch.selectcmp70.i52.i, label %sw.bb28.i54.i.if.end7_crit_edge, label %sw.bb28.i54.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb28.i54.i.ucc_get_tdm_rxtx_clk.exit_crit_edge: ; preds = %sw.bb28.i54.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb28.i54.i.if.end7_crit_edge:                  ; preds = %sw.bb28.i54.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb33.i59.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %clock)
  %switch.selectcmp72.i55.i = icmp eq i32 %clock, 19
  %switch.select73.i56.i = select i1 %switch.selectcmp72.i55.i, i32 7, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %clock)
  %switch.selectcmp74.i57.i = icmp eq i32 %clock, 34
  br i1 %switch.selectcmp74.i57.i, label %sw.bb33.i59.i.if.end7_crit_edge, label %sw.bb33.i59.i.ucc_get_tdm_rxtx_clk.exit_crit_edge

sw.bb33.i59.i.ucc_get_tdm_rxtx_clk.exit_crit_edge: ; preds = %sw.bb33.i59.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_rxtx_clk.exit

sw.bb33.i59.i.if.end7_crit_edge:                  ; preds = %sw.bb33.i59.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

ucc_get_tdm_rxtx_clk.exit:                        ; preds = %sw.bb33.i59.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb28.i54.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb23.i49.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb18.i44.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb13.i39.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb8.i34.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb3.i29.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb.i24.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb33.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb28.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb23.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb18.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb13.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb8.i18.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb3.i17.i.ucc_get_tdm_rxtx_clk.exit_crit_edge, %sw.bb.i16.i.ucc_get_tdm_rxtx_clk.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.select.i21.i, %sw.bb.i24.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select49.i26.i, %sw.bb3.i29.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select53.i31.i, %sw.bb8.i34.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select57.i36.i, %sw.bb13.i39.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select61.i41.i, %sw.bb18.i44.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select65.i46.i, %sw.bb23.i49.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select69.i51.i, %sw.bb28.i54.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select73.i56.i, %sw.bb33.i59.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select73.i.i, %sw.bb33.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select69.i.i, %sw.bb28.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select65.i.i, %sw.bb23.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select61.i.i, %sw.bb18.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select57.i.i, %sw.bb13.i.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select53.i.i, %sw.bb8.i18.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select49.i.i, %sw.bb3.i17.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ], [ %switch.select.i.i, %sw.bb.i16.i.ucc_get_tdm_rxtx_clk.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp5 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp5, label %ucc_get_tdm_rxtx_clk.exit.cleanup_crit_edge, label %ucc_get_tdm_rxtx_clk.exit.if.end7_crit_edge

ucc_get_tdm_rxtx_clk.exit.if.end7_crit_edge:      ; preds = %ucc_get_tdm_rxtx_clk.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

ucc_get_tdm_rxtx_clk.exit.cleanup_crit_edge:      ; preds = %ucc_get_tdm_rxtx_clk.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7:                                          ; preds = %ucc_get_tdm_rxtx_clk.exit.if.end7_crit_edge, %sw.bb33.i59.i.if.end7_crit_edge, %sw.bb28.i54.i.if.end7_crit_edge, %sw.bb23.i49.i.if.end7_crit_edge, %sw.bb18.i44.i.if.end7_crit_edge, %sw.bb13.i39.i.if.end7_crit_edge, %sw.bb8.i34.i.if.end7_crit_edge, %sw.bb3.i29.i.if.end7_crit_edge, %sw.bb.i24.i.if.end7_crit_edge, %sw.bb33.i.i.if.end7_crit_edge, %sw.bb28.i.i.if.end7_crit_edge, %sw.bb23.i.i.if.end7_crit_edge, %sw.bb18.i.i.if.end7_crit_edge, %sw.bb13.i.i.if.end7_crit_edge, %sw.bb8.i18.i.if.end7_crit_edge, %sw.bb3.i17.i.if.end7_crit_edge, %sw.bb.i16.i.if.end7_crit_edge, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb5.i.i.if.end7_crit_edge, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb.i.i.if.end7_crit_edge
  %retval.0.i42 = phi i32 [ %retval.0.i, %ucc_get_tdm_rxtx_clk.exit.if.end7_crit_edge ], [ 1, %sw.bb5.i.i.if.end7_crit_edge ], [ 1, %sw.bb.i.i.if.end7_crit_edge ], [ 5, %sw.bb9.i.i ], [ 4, %sw.bb8.i.i ], [ 2, %sw.bb7.i.i ], [ 5, %sw.bb4.i.i ], [ 4, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 6, %sw.bb.i24.i.if.end7_crit_edge ], [ 6, %sw.bb3.i29.i.if.end7_crit_edge ], [ 6, %sw.bb8.i34.i.if.end7_crit_edge ], [ 6, %sw.bb13.i39.i.if.end7_crit_edge ], [ 6, %sw.bb18.i44.i.if.end7_crit_edge ], [ 6, %sw.bb23.i49.i.if.end7_crit_edge ], [ 6, %sw.bb28.i54.i.if.end7_crit_edge ], [ 6, %sw.bb33.i59.i.if.end7_crit_edge ], [ 6, %sw.bb33.i.i.if.end7_crit_edge ], [ 6, %sw.bb28.i.i.if.end7_crit_edge ], [ 6, %sw.bb23.i.i.if.end7_crit_edge ], [ 6, %sw.bb18.i.i.if.end7_crit_edge ], [ 6, %sw.bb13.i.i.if.end7_crit_edge ], [ 6, %sw.bb8.i18.i.if.end7_crit_edge ], [ 6, %sw.bb3.i17.i.if.end7_crit_edge ], [ 6, %sw.bb.i16.i.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %tdm_num)
  %cmp1.i = icmp ult i32 %tdm_num, 4
  %mul.neg.i = mul nsw i32 %tdm_num, -4
  %mul3.neg.i = add nsw i32 %mul.neg.i, 16
  %mul.neg.pn.i = select i1 %cmp1.i, i32 %mul.neg.i, i32 %mul3.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 1
  %cond.i = select i1 %cmp.i, i32 28, i32 12
  %shift.0.i = add nsw i32 %cond.i, %mul.neg.pn.i
  %cmxsi1cr_l = getelementptr inbounds %struct.qe_immap, ptr %0, i32 0, i32 3, i32 1
  %cmxsi1cr_h = getelementptr inbounds %struct.qe_immap, ptr %0, i32 0, i32 3, i32 2
  %cond = select i1 %cmp1.i, ptr %cmxsi1cr_l, ptr %cmxsi1cr_h
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !22
  %shl = shl i32 15, %shift.0.i
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %shl11 = shl i32 %retval.0.i42, %shift.0.i
  %or = or i32 %and, %shl11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond, i32 %or) #2, !srcloc !14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %ucc_get_tdm_rxtx_clk.exit.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %ucc_get_tdm_rxtx_clk.exit.cleanup_crit_edge ], [ -22, %if.then6.i.cleanup_crit_edge ], [ -22, %if.then2.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ucc_set_tdm_rxtx_sync(i32 noundef %tdm_num, i32 noundef %clock, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qe_immr to i32))
  %0 = load ptr, ptr @qe_immr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %tdm_num)
  %cmp = icmp ult i32 %tdm_num, 8
  %mode.off = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.off)
  %switch = icmp ult i32 %mode.off, 2
  %or.cond = and i1 %cmp, %switch
  br i1 %or.cond, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %clock)
  %cmp1.i = icmp eq i32 %clock, 41
  %or.cond.i = and i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.end4.if.end7_crit_edge, label %if.end.i

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp2.i = icmp eq i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %clock)
  %cmp4.i = icmp eq i32 %clock, 42
  %or.cond33.i = and i1 %cmp4.i, %cmp2.i
  br i1 %or.cond33.i, label %if.end.i.if.end7_crit_edge, label %if.end6.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.end6.i:                                        ; preds = %if.end.i
  %1 = zext i32 %tdm_num to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %tdm_num, label %if.end6.i.cleanup_crit_edge [
    i32 0, label %if.end6.i.sw.bb.i_crit_edge
    i32 1, label %if.end6.i.sw.bb.i_crit_edge32
    i32 2, label %if.end6.i.sw.bb9.i_crit_edge
    i32 3, label %if.end6.i.sw.bb9.i_crit_edge33
    i32 4, label %if.end6.i.sw.bb14.i_crit_edge
    i32 5, label %if.end6.i.sw.bb14.i_crit_edge34
    i32 6, label %if.end6.i.sw.bb19.i_crit_edge
    i32 7, label %if.end6.i.sw.bb19.i_crit_edge35
  ]

if.end6.i.sw.bb19.i_crit_edge35:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb19.i

if.end6.i.sw.bb19.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb19.i

if.end6.i.sw.bb14.i_crit_edge34:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb14.i

if.end6.i.sw.bb14.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb14.i

if.end6.i.sw.bb9.i_crit_edge33:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb9.i

if.end6.i.sw.bb9.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb9.i

if.end6.i.sw.bb.i_crit_edge32:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i

if.end6.i.sw.bb.i_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end6.i.sw.bb.i_crit_edge, %if.end6.i.sw.bb.i_crit_edge32
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %clock)
  %switch.selectcmp.i = icmp eq i32 %clock, 10
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %clock)
  %switch.selectcmp34.i = icmp eq i32 %clock, 9
  br i1 %switch.selectcmp34.i, label %sw.bb.i.if.end7_crit_edge, label %sw.bb.i.ucc_get_tdm_sync_source.exit_crit_edge

sw.bb.i.ucc_get_tdm_sync_source.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_sync_source.exit

sw.bb.i.if.end7_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb9.i:                                         ; preds = %if.end6.i.sw.bb9.i_crit_edge, %if.end6.i.sw.bb9.i_crit_edge33
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %clock)
  %switch.selectcmp36.i = icmp eq i32 %clock, 11
  %switch.select37.i = select i1 %switch.selectcmp36.i, i32 2, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %clock)
  %switch.selectcmp38.i = icmp eq i32 %clock, 9
  br i1 %switch.selectcmp38.i, label %sw.bb9.i.if.end7_crit_edge, label %sw.bb9.i.ucc_get_tdm_sync_source.exit_crit_edge

sw.bb9.i.ucc_get_tdm_sync_source.exit_crit_edge:  ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_sync_source.exit

sw.bb9.i.if.end7_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb14.i:                                        ; preds = %if.end6.i.sw.bb14.i_crit_edge, %if.end6.i.sw.bb14.i_crit_edge34
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %clock)
  %switch.selectcmp40.i = icmp eq i32 %clock, 14
  %switch.select41.i = select i1 %switch.selectcmp40.i, i32 2, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %clock)
  %switch.selectcmp42.i = icmp eq i32 %clock, 13
  br i1 %switch.selectcmp42.i, label %sw.bb14.i.if.end7_crit_edge, label %sw.bb14.i.ucc_get_tdm_sync_source.exit_crit_edge

sw.bb14.i.ucc_get_tdm_sync_source.exit_crit_edge: ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_sync_source.exit

sw.bb14.i.if.end7_crit_edge:                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

sw.bb19.i:                                        ; preds = %if.end6.i.sw.bb19.i_crit_edge, %if.end6.i.sw.bb19.i_crit_edge35
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %clock)
  %switch.selectcmp44.i = icmp eq i32 %clock, 15
  %switch.select45.i = select i1 %switch.selectcmp44.i, i32 2, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %clock)
  %switch.selectcmp46.i = icmp eq i32 %clock, 13
  br i1 %switch.selectcmp46.i, label %sw.bb19.i.if.end7_crit_edge, label %sw.bb19.i.ucc_get_tdm_sync_source.exit_crit_edge

sw.bb19.i.ucc_get_tdm_sync_source.exit_crit_edge: ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ucc_get_tdm_sync_source.exit

sw.bb19.i.if.end7_crit_edge:                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

ucc_get_tdm_sync_source.exit:                     ; preds = %sw.bb19.i.ucc_get_tdm_sync_source.exit_crit_edge, %sw.bb14.i.ucc_get_tdm_sync_source.exit_crit_edge, %sw.bb9.i.ucc_get_tdm_sync_source.exit_crit_edge, %sw.bb.i.ucc_get_tdm_sync_source.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.select.i, %sw.bb.i.ucc_get_tdm_sync_source.exit_crit_edge ], [ %switch.select37.i, %sw.bb9.i.ucc_get_tdm_sync_source.exit_crit_edge ], [ %switch.select41.i, %sw.bb14.i.ucc_get_tdm_sync_source.exit_crit_edge ], [ %switch.select45.i, %sw.bb19.i.ucc_get_tdm_sync_source.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp5 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp5, label %ucc_get_tdm_sync_source.exit.cleanup_crit_edge, label %ucc_get_tdm_sync_source.exit.if.end7_crit_edge

ucc_get_tdm_sync_source.exit.if.end7_crit_edge:   ; preds = %ucc_get_tdm_sync_source.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

ucc_get_tdm_sync_source.exit.cleanup_crit_edge:   ; preds = %ucc_get_tdm_sync_source.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end7:                                          ; preds = %ucc_get_tdm_sync_source.exit.if.end7_crit_edge, %sw.bb19.i.if.end7_crit_edge, %sw.bb14.i.if.end7_crit_edge, %sw.bb9.i.if.end7_crit_edge, %sw.bb.i.if.end7_crit_edge, %if.end.i.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %retval.0.i28 = phi i32 [ %retval.0.i, %ucc_get_tdm_sync_source.exit.if.end7_crit_edge ], [ 0, %if.end.i.if.end7_crit_edge ], [ 0, %if.end4.if.end7_crit_edge ], [ 1, %sw.bb.i.if.end7_crit_edge ], [ 1, %sw.bb9.i.if.end7_crit_edge ], [ 1, %sw.bb14.i.if.end7_crit_edge ], [ 1, %sw.bb19.i.if.end7_crit_edge ]
  %cond.i = select i1 %cmp.i, i32 30, i32 14
  %mul.neg.i = mul nsw i32 %tdm_num, -2
  %sub.i = add nsw i32 %cond.i, %mul.neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !23
  tail call void @arm_heavy_mb() #2
  %cmxsi1syr = getelementptr inbounds %struct.qe_immap, ptr %0, i32 0, i32 3, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmxsi1syr) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !24
  %shl = shl i32 15, %sub.i
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  %shl10 = shl nuw i32 %retval.0.i28, %sub.i
  %or = or i32 %and, %shl10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmxsi1syr, i32 %or) #2, !srcloc !14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %ucc_get_tdm_sync_source.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %ucc_get_tdm_sync_source.exit.cleanup_crit_edge ], [ -22, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
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

!0 = !{ptr @__ksymtab_ucc_set_qe_mux_mii_mng, !1, !"__ksymtab_ucc_set_qe_mux_mii_mng", i1 false, i1 false}
!1 = !{!"../drivers/soc/fsl/qe/ucc.c", i32 43, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2151649916}
!12 = !{i64 1717250}
!13 = !{i64 2151650159}
!14 = !{i64 1716832}
!15 = !{i64 1717030}
!16 = !{i64 2149256375}
!17 = !{i64 2149257980}
!18 = !{i64 1716635}
!19 = !{i64 2151654951}
!20 = !{i64 2151655180}
!21 = !{i64 2151656143}
!22 = !{i64 2151656373}
!23 = !{i64 2151657414}
!24 = !{i64 2151657659}
