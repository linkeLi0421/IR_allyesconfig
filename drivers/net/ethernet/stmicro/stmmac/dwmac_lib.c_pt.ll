; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stmmac_set_mac_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_stmmac_set_mac_addr\09\09\09\09"
module asm "\09.long\09__crc_stmmac_set_mac_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_set_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_set_mac_addr\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_set_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stmmac_get_mac_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_stmmac_get_mac_addr\09\09\09\09"
module asm "\09.long\09__crc_stmmac_get_mac_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_get_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_get_mac_addr\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_get_mac_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c\00", [48 x i8] zeroinitializer }, align 32
@dwmac_dma_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: unexpected status %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwmac_dma_interrupt\00", [44 x i8] zeroinitializer }, align 32
@dwmac_dma_interrupt._entry_ptr = internal global ptr @dwmac_dma_interrupt._entry, section ".printk_index", align 4
@__kstrtab_stmmac_set_mac_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_set_mac_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_set_mac_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_set_mac_addr to i32), ptr @__kstrtab_stmmac_set_mac_addr, ptr @__kstrtabns_stmmac_set_mac_addr }, section "___ksymtab_gpl+stmmac_set_mac_addr", align 4
@__kstrtab_stmmac_get_mac_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_get_mac_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_get_mac_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_get_mac_addr to i32), ptr @__kstrtab_stmmac_get_mac_addr, ptr @__kstrtabns_stmmac_get_mac_addr }, section "___ksymtab_gpl+stmmac_get_mac_addr", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 24, i32 9 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [51 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 226, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_stmmac_get_mac_addr, ptr @__ksymtab_stmmac_set_mac_addr, ptr @dwmac_dma_interrupt._entry, ptr @dwmac_dma_interrupt._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac_dma_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac_dma_reset(ptr noundef %ioaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4096
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !23
  %call3 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call3, 200000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 26) #4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not52 = icmp eq i32 %3, 0
  br i1 %tobool.not52, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then35.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call23 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call23, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  %5 = and i32 %4, 16777216
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then35.for.end.thread_crit_edge, label %if.then35.land.lhs.true_crit_edge

if.then35.land.lhs.true_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.then35.for.end.thread_crit_edge:               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool39.not = icmp eq i32 %7, 0
  br i1 %tobool39.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %8

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then35.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %8

8:                                                ; preds = %for.end.thread, %for.end._crit_edge
  %9 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac_enable_dma_transmission(ptr noundef %ioaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac_enable_dma_irq(ptr noundef %ioaddr, i32 noundef %chan, i1 noundef zeroext %rx, i1 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4124
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %or = or i32 %1, 64
  %spec.select = select i1 %rx, i32 %or, i32 %1
  %or5 = zext i1 %tx to i32
  %value.1 = or i32 %spec.select, %or5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac_disable_dma_irq(ptr noundef %ioaddr, i32 noundef %chan, i1 noundef zeroext %rx, i1 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4124
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %and = and i32 %1, -65
  %spec.select = select i1 %rx, i32 %and, i32 %1
  %and5 = and i32 %spec.select, -2
  %value.1 = select i1 %tx, i32 %and5, i32 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac_dma_start_tx(ptr noundef %ioaddr, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4120
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %1 = or i32 %0, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac_dma_stop_tx(ptr noundef %ioaddr, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4120
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %1 = and i32 %0, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac_dma_start_rx(ptr noundef %ioaddr, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4120
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %1 = or i32 %0, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac_dma_stop_rx(ptr noundef %ioaddr, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4120
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %1 = and i32 %0, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac_dma_interrupt(ptr noundef %ioaddr, ptr nocapture noundef %x, i32 noundef %chan, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4116
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %entry.if.end5_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then3
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %1, 123856
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and4 = and i32 %1, 107567
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then, %entry.if.end5_crit_edge
  %intr_status.0 = phi i32 [ %and, %if.then ], [ %and4, %if.then3 ], [ %1, %entry.if.end5_crit_edge ]
  %and6 = and i32 %intr_status.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end5.if.end108_crit_edge, label %if.then9, !prof !40

if.end5.if.end108_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

if.then9:                                         ; preds = %if.end5
  %and10 = and i32 %intr_status.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then9.if.end19_crit_edge, label %if.then18, !prof !40

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then18:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %tx_undeflow_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 28
  %3 = ptrtoint ptr %tx_undeflow_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_undeflow_irq, align 16
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tx_undeflow_irq, align 16
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then9.if.end19_crit_edge
  %ret.0 = phi i32 [ 2, %if.then18 ], [ 0, %if.then9.if.end19_crit_edge ]
  %and20 = and i32 %intr_status.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end30_crit_edge, label %if.then28, !prof !40

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %tx_jabber_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 30
  %5 = ptrtoint ptr %tx_jabber_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_jabber_irq, align 8
  %inc29 = add i32 %6, 1
  store i32 %inc29, ptr %tx_jabber_irq, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end19.if.end30_crit_edge
  %and31 = and i32 %intr_status.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end41_crit_edge, label %if.then39, !prof !40

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %rx_overflow_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 31
  %7 = ptrtoint ptr %rx_overflow_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_overflow_irq, align 4
  %inc40 = add i32 %8, 1
  store i32 %inc40, ptr %rx_overflow_irq, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end30.if.end41_crit_edge
  %and42 = and i32 %intr_status.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end52_crit_edge, label %if.then50, !prof !40

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then50:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %rx_buf_unav_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 32
  %9 = ptrtoint ptr %rx_buf_unav_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_buf_unav_irq, align 128
  %inc51 = add i32 %10, 1
  store i32 %inc51, ptr %rx_buf_unav_irq, align 128
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end41.if.end52_crit_edge
  %and53 = and i32 %intr_status.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end63_crit_edge, label %if.then61, !prof !40

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then61:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %rx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 33
  %11 = ptrtoint ptr %rx_process_stopped_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_process_stopped_irq, align 4
  %inc62 = add i32 %12, 1
  store i32 %inc62, ptr %rx_process_stopped_irq, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end52.if.end63_crit_edge
  %and64 = and i32 %intr_status.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end74_crit_edge, label %if.then72, !prof !40

if.end63.if.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

if.then72:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  %rx_watchdog_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 34
  %13 = ptrtoint ptr %rx_watchdog_irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_watchdog_irq, align 8
  %inc73 = add i32 %14, 1
  store i32 %inc73, ptr %rx_watchdog_irq, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end63.if.end74_crit_edge
  %and75 = and i32 %intr_status.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end85_crit_edge, label %if.then83, !prof !40

if.end74.if.end85_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

if.then83:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  %tx_early_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 35
  %15 = ptrtoint ptr %tx_early_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_early_irq, align 4
  %inc84 = add i32 %16, 1
  store i32 %inc84, ptr %tx_early_irq, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end74.if.end85_crit_edge
  %and86 = and i32 %intr_status.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end96_crit_edge, label %if.then94, !prof !40

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then94:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  %tx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 29
  %17 = ptrtoint ptr %tx_process_stopped_irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_process_stopped_irq, align 4
  %inc95 = add i32 %18, 1
  store i32 %inc95, ptr %tx_process_stopped_irq, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end85.if.end96_crit_edge
  %ret.1 = phi i32 [ 1, %if.then94 ], [ %ret.0, %if.end85.if.end96_crit_edge ]
  %and97 = and i32 %intr_status.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end108_crit_edge, label %if.then105, !prof !40

if.end96.if.end108_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

if.then105:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  %fatal_bus_error_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 36
  %19 = ptrtoint ptr %fatal_bus_error_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fatal_bus_error_irq, align 16
  %inc106 = add i32 %20, 1
  store i32 %inc106, ptr %fatal_bus_error_irq, align 16
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %if.end96.if.end108_crit_edge, %if.end5.if.end108_crit_edge
  %ret.2 = phi i32 [ 1, %if.then105 ], [ %ret.1, %if.end96.if.end108_crit_edge ], [ 0, %if.end5.if.end108_crit_edge ]
  %and109 = and i32 %intr_status.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end108.if.end169_crit_edge, label %if.then117, !prof !41

if.end108.if.end169_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end169

if.then117:                                       ; preds = %if.end108
  %normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 41
  %21 = ptrtoint ptr %normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %normal_irq_n, align 4
  %inc118 = add i32 %22, 1
  store i32 %inc118, ptr %normal_irq_n, align 4
  %and119 = and i32 %intr_status.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.then117.if.end145_crit_edge, label %if.then127, !prof !41

if.then117.if.end145_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145

if.then127:                                       ; preds = %if.then117
  %add.ptr130 = getelementptr i8, ptr %ioaddr, i32 4124
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  %24 = and i32 %23, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool135.not = icmp eq i32 %24, 0
  br i1 %tobool135.not, label %if.then127.if.end145_crit_edge, label %if.then142, !prof !41

if.then127.if.end145_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145

if.then142:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #6
  %rx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 42
  %25 = ptrtoint ptr %rx_normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_normal_irq_n, align 8
  %inc143 = add i32 %26, 1
  store i32 %inc143, ptr %rx_normal_irq_n, align 8
  %or = or i32 %ret.2, 4
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %if.then127.if.end145_crit_edge, %if.then117.if.end145_crit_edge
  %ret.4 = phi i32 [ %ret.2, %if.then117.if.end145_crit_edge ], [ %or, %if.then142 ], [ %ret.2, %if.then127.if.end145_crit_edge ]
  %and146 = and i32 %intr_status.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end145.if.end157_crit_edge, label %if.then154, !prof !41

if.end145.if.end157_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end157

if.then154:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #6
  %tx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 44
  %27 = ptrtoint ptr %tx_normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_normal_irq_n, align 16
  %inc155 = add i32 %28, 1
  store i32 %inc155, ptr %tx_normal_irq_n, align 16
  %or156 = or i32 %ret.4, 8
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %if.end145.if.end157_crit_edge
  %ret.5 = phi i32 [ %or156, %if.then154 ], [ %ret.4, %if.end145.if.end157_crit_edge ]
  %and158 = and i32 %intr_status.0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end157.if.end169_crit_edge, label %if.then166, !prof !40

if.end157.if.end169_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end169

if.then166:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  %rx_early_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 37
  %29 = ptrtoint ptr %rx_early_irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_early_irq, align 4
  %inc167 = add i32 %30, 1
  store i32 %inc167, ptr %rx_early_irq, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then166, %if.end157.if.end169_crit_edge, %if.end108.if.end169_crit_edge
  %ret.6 = phi i32 [ %ret.5, %if.then166 ], [ %ret.5, %if.end157.if.end169_crit_edge ], [ %ret.2, %if.end108.if.end169_crit_edge ]
  %and170 = and i32 %intr_status.0, 469762048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.end169.do.body182_crit_edge, label %do.end, !prof !40

if.end169.do.body182_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body182

do.end:                                           ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #6
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %intr_status.0) #7
  br label %do.body182

do.body182:                                       ; preds = %do.end, %if.end169.do.body182_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %and185 = and i32 %intr_status.0, 131071
  %31 = tail call i32 @llvm.bswap.i32(i32 %and185)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %31) #4, !srcloc !23
  ret i32 %ret.6
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac_dma_flush_tx_fifo(ptr noundef %ioaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4120
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %1 = or i32 %0, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !23
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %3 = and i32 %2, 4096
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end11, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3

do.end11:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_set_mac_addr(ptr noundef %ioaddr, ptr nocapture noundef readonly %addr, i32 noundef %high, i32 noundef %low) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %addr, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %addr, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %or = or i32 %shl, %conv2
  %or3 = or i32 %or, -2147483648
  %4 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %high
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #4, !srcloc !23
  %arrayidx4 = getelementptr i8, ptr %addr, i32 3
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %shl6 = shl nuw i32 %conv5, 24
  %arrayidx7 = getelementptr i8, ptr %addr, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %8 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or10 = or i32 %shl9, %shl6
  %arrayidx11 = getelementptr i8, ptr %addr, i32 1
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %10 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %or10, %shl13
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr, align 1
  %conv16 = zext i8 %12 to i32
  %or17 = or i32 %or14, %conv16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %add.ptr21 = getelementptr i8, ptr %ioaddr, i32 %low
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %13) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_set_mac(ptr noundef %ioaddr, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  %1 = and i32 %0, -201326593
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = select i1 %enable, i32 12, i32 0
  %value.0 = or i32 %2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_get_mac_addr(ptr noundef %ioaddr, ptr nocapture noundef writeonly %addr, i32 noundef %high, i32 noundef %low) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %high
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !20
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 %low
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #4, !srcloc !20
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %addr, align 1
  %shr = lshr i32 %3, 8
  %conv9 = trunc i32 %shr to i8
  %arrayidx10 = getelementptr i8, ptr %addr, i32 1
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv9, ptr %arrayidx10, align 1
  %shr11 = lshr i32 %3, 16
  %conv13 = trunc i32 %shr11 to i8
  %arrayidx14 = getelementptr i8, ptr %addr, i32 2
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv13, ptr %arrayidx14, align 1
  %shr15 = lshr i32 %3, 24
  %conv17 = trunc i32 %shr15 to i8
  %arrayidx18 = getelementptr i8, ptr %addr, i32 3
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv17, ptr %arrayidx18, align 1
  %conv20 = trunc i32 %1 to i8
  %arrayidx21 = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv20, ptr %arrayidx21, align 1
  %shr22 = lshr i32 %1, 8
  %conv24 = trunc i32 %shr22 to i8
  %arrayidx25 = getelementptr i8, ptr %addr, i32 5
  %9 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv24, ptr %arrayidx25, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c", i32 24, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c", i32 226, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dwmac_dma_interrupt._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @dwmac_dma_interrupt._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @__ksymtab_stmmac_set_mac_addr, !8, !"__ksymtab_stmmac_set_mac_addr", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c", i32 256, i32 1}
!9 = !{ptr @__ksymtab_stmmac_get_mac_addr, !10, !"__ksymtab_stmmac_get_mac_addr", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac_lib.c", i32 288, i32 1}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 691039}
!21 = !{i64 2156616536}
!22 = !{i64 2156616776}
!23 = !{i64 690621}
!24 = !{i64 2156618636}
!25 = !{i64 2156619130}
!26 = !{i64 2156619359}
!27 = !{i64 2156620035}
!28 = !{i64 2156620324}
!29 = !{i64 2156621012}
!30 = !{i64 2156621301}
!31 = !{i64 2156621989}
!32 = !{i64 2156622229}
!33 = !{i64 2156622917}
!34 = !{i64 2156623157}
!35 = !{i64 2156623845}
!36 = !{i64 2156624085}
!37 = !{i64 2156624773}
!38 = !{i64 2156625013}
!39 = !{i64 2156625701}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2156627638}
!43 = !{i64 2156629826}
!44 = !{i64 2156630568}
!45 = !{i64 2156630823}
!46 = !{i64 2156631556}
!47 = !{i64 2156631802}
!48 = !{i64 2156632225}
!49 = !{i64 2156634448}
!50 = !{i64 2156634721}
!51 = !{i64 2156635374}
!52 = !{i64 2156635840}
