; ModuleID = '/llk/IR_all_yes/drivers/dma/dw-edma/dw-edma-v0-core.c_pt.bc'
source_filename = "../drivers/dma/dw-edma/dw-edma-v0-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dw_edma = type { [20 x i8], %struct.dma_device, i16, %struct.dma_device, i16, %struct.dw_edma_region, [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], ptr, i32, i32, ptr, ptr, %struct.raw_spinlock, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dw_edma_region = type { i32, ptr, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.dw_edma_v0_regs = type <{ i32, i32, i32, i32, i32, i32, %union.anon.78, [3 x i32], i32, i32, i32, %union.anon.80, [3 x i32], i32, i32, i32, i32, i32, %union.anon.82, %union.anon.84, i32, i32, i32, i32, [4 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, %union.anon.86, [2 x i32], i32, i32, %union.anon.88, %union.anon.90, i32, i32, i32, i32, [4 x i32], %union.dw_edma_v0_type }>
%union.anon.78 = type { i64 }
%union.anon.80 = type { i64 }
%union.anon.82 = type { i64 }
%union.anon.84 = type { i64 }
%union.anon.86 = type { i64 }
%union.anon.88 = type { i64 }
%union.anon.90 = type { i64 }
%union.dw_edma_v0_type = type { %struct.dw_edma_v0_legacy, [4316 x i8] }
%struct.dw_edma_v0_legacy = type { i32, %struct.dw_edma_v0_ch_regs }
%struct.dw_edma_v0_ch_regs = type <{ i32, i32, i32, %union.anon.92, %union.anon.94, %union.anon.96 }>
%union.anon.92 = type { i64 }
%union.anon.94 = type { i64 }
%union.anon.96 = type { i64 }
%struct.dw_edma_chan = type { %struct.virt_dma_chan, ptr, i32, i32, i32, %struct.msi_msg, i32, i32, i8, %struct.dma_slave_config }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.73, i32 }
%union.anon.73 = type { ptr }
%struct.msi_msg = type { %union.anon.70, %union.anon.71, %union.anon.72 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dw_edma_chip = type { ptr, i32, i32, ptr }
%struct.dw_edma_v0_ch = type { %struct.dw_edma_v0_ch_regs, [55 x i32], %struct.dw_edma_v0_ch_regs, [55 x i32] }
%struct.dw_edma_chunk = type { %struct.list_head, ptr, ptr, i32, i8, %struct.dw_edma_region }
%struct.dw_edma_v0_lli = type { i32, i32, %union.anon.102, %union.anon.104 }
%union.anon.102 = type { i64 }
%union.anon.104 = type { i64 }
%struct.dw_edma_burst = type { %struct.list_head, i64, i64, i32 }
%struct.anon.103 = type { i32, i32 }
%struct.anon.105 = type { i32, i32 }
%struct.dw_edma_v0_llp = type { i32, i32, %union.anon.106 }
%union.anon.106 = type { i64 }
%struct.anon.107 = type { i32, i32 }
%struct.anon.97 = type { i32, i32 }
%struct.anon.83 = type { i32, i32 }
%struct.anon.89 = type { i32, i32 }
%struct.anon.85 = type { i32, i32 }
%struct.anon.91 = type { i32, i32 }

@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.1 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.2 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_edma_v0_core_off(ptr nocapture noundef readonly %dw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %vaddr.i = getelementptr inbounds %struct.dw_edma, ptr %dw, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr.i, align 4
  %wr_int_mask = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %1, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_int_mask, i32 -16711936) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %2 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr.i, align 4
  %rd_int_mask = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %3, i32 0, i32 29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_int_mask, i32 -16711936) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr.i, align 4
  %wr_int_clear = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %5, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_int_clear, i32 -16711936) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vaddr.i, align 4
  %rd_int_clear = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %7, i32 0, i32 30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_int_clear, i32 -16711936) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %8 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr.i, align 4
  %wr_engine_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_engine_en, i32 0) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %10 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr.i, align 4
  %rd_engine_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %11, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_engine_en, i32 0) #3, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dw_edma_v0_core_ch_count(ptr nocapture noundef readonly %dw, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  %vaddr.i = getelementptr inbounds %struct.dw_edma, ptr %dw, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr.i, align 4
  %ctrl = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl) #3
  br i1 %cmp, label %do.end12, label %do.end30

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  br label %if.end

do.end30:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %4 = lshr i32 %2, 8
  br label %if.end

if.end:                                           ; preds = %do.end30, %do.end12
  %num_ch.0.in = phi i32 [ %3, %do.end12 ], [ %4, %do.end30 ]
  %num_ch.0 = and i32 %num_ch.0.in, 15
  %5 = tail call i32 @llvm.umin.i32(i32 %num_ch.0, i32 8)
  %conv = trunc i32 %5 to i16
  ret i16 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_edma_v0_core_ch_status(ptr nocapture noundef readonly %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dw1 = getelementptr inbounds %struct.dw_edma_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw1, align 4
  %dir = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 4
  %id = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %mf.i = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %mf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.i35, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp eq i32 %5, 0
  %vaddr.i17.i = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %vaddr.i17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr.i17.i, align 4
  %ch6.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %11, i32 0, i32 43, i32 1, i32 220
  %idxprom.i = and i32 %7, 65535
  %rd.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch6.i, i32 0, i32 %idxprom.i, i32 2
  %arrayidx.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch6.i, i32 0, i32 %idxprom.i
  %retval.0.i.ph = select i1 %cmp2.i, ptr %arrayidx.i, ptr %rd.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i.ph) #3, !srcloc !18
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  br label %readl_ch.exit

if.then.i35:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %vaddr.i.i = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vaddr.i.i, align 4
  %lock.i = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 15
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #3
  %ch1.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %15, i32 0, i32 43, i32 0, i32 1
  %16 = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp22.i = icmp eq i32 %5, 1
  %or.i = or i32 %16, -2147483648
  %spec.select.i = select i1 %cmp22.i, i32 %or.i, i32 %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %17 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #3
  %18 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vaddr.i.i, align 4
  %type.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %19, i32 0, i32 43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %type.i, i32 %17) #3, !srcloc !10
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ch1.i) #3, !srcloc !18
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #3
  br label %readl_ch.exit

readl_ch.exit:                                    ; preds = %if.then.i35, %if.end.i
  %value.0.i = phi i32 [ %21, %if.then.i35 ], [ %13, %if.end.i ]
  %and = lshr i32 %value.0.i, 5
  %shr = and i32 %and, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %switch.selectcmp = icmp eq i32 %shr, 3
  %switch.select = select i1 %switch.selectcmp, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %switch.selectcmp31 = icmp eq i32 %shr, 1
  %switch.select32 = select i1 %switch.selectcmp31, i32 1, i32 %switch.select
  ret i32 %switch.select32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_edma_v0_core_clear_done_int(ptr nocapture noundef readonly %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dw1 = getelementptr inbounds %struct.dw_edma_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw1, align 4
  %dir = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %id = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %and24 = shl i32 16777216, %7
  %vaddr.i = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr.i, align 4
  br i1 %cmp, label %do.end20, label %do.end52

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %wr_int_clear = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %9, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_int_clear, i32 %and24) #3, !srcloc !10
  br label %do.end61

do.end52:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rd_int_clear = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %9, i32 0, i32 30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_int_clear, i32 %and24) #3, !srcloc !10
  br label %do.end61

do.end61:                                         ; preds = %do.end52, %do.end20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_edma_v0_core_clear_abort_int(ptr nocapture noundef readonly %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dw1 = getelementptr inbounds %struct.dw_edma_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw1, align 4
  %dir = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %id = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %shl23 = shl i32 65536, %7
  %and24 = lshr exact i32 %shl23, 8
  %8 = and i32 %and24, 65280
  %vaddr.i = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vaddr.i, align 4
  br i1 %cmp, label %do.end20, label %do.end52

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %wr_int_clear = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %10, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_int_clear, i32 %8) #3, !srcloc !10
  br label %do.end61

do.end52:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rd_int_clear = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %10, i32 0, i32 30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_int_clear, i32 %8) #3, !srcloc !10
  br label %do.end61

do.end61:                                         ; preds = %do.end52, %do.end20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_edma_v0_core_status_done_int(ptr nocapture noundef readonly %dw, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  %vaddr.i = getelementptr inbounds %struct.dw_edma, ptr %dw, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr.i, align 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %wr_int_status = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %1, i32 0, i32 13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_int_status) #3, !srcloc !18
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rd_int_status = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %1, i32 0, i32 27
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_int_status) #3, !srcloc !18
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %5, %cond.false ]
  %and = and i32 %cond, 255
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_edma_v0_core_status_abort_int(ptr nocapture noundef readonly %dw, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  %vaddr.i = getelementptr inbounds %struct.dw_edma, ptr %dw, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr.i, align 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %wr_int_status = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %1, i32 0, i32 13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_int_status) #3, !srcloc !18
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rd_int_status = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %1, i32 0, i32 27
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_int_status) #3, !srcloc !18
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %5, %cond.false ]
  %and = lshr i32 %cond, 16
  %shr = and i32 %and, 255
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_edma_v0_core_start(ptr nocapture noundef readonly %chunk, i1 noundef zeroext %first) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.dw_edma_chunk, ptr %chunk, i32 0, i32 1
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %chip = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %dw2 = getelementptr inbounds %struct.dw_edma_chip, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dw2, align 4
  %vaddr.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %chunk, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vaddr.i, align 4
  %cb.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %chunk, i32 0, i32 4
  %burst.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %chunk, i32 0, i32 2
  %8 = ptrtoint ptr %burst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %burst.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %child.0108.i = load ptr, ptr %9, align 8
  %cmp.not109.i = icmp eq ptr %child.0108.i, %9
  br i1 %cmp.not109.i, label %entry.dw_edma_v0_core_write_chunk.exit_crit_edge, label %for.body.preheader.i

entry.dw_edma_v0_core_write_chunk.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %dw_edma_v0_core_write_chunk.exit

for.body.preheader.i:                             ; preds = %entry
  %bursts_alloc.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %chunk, i32 0, i32 3
  %11 = ptrtoint ptr %bursts_alloc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bursts_alloc.i, align 4
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp ne i8 %14, 0
  %spec.select.i = zext i1 %tobool.not.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %child.0113.i = phi ptr [ %child.0.i, %for.body.i.for.body.i_crit_edge ], [ %child.0108.i, %for.body.preheader.i ]
  %control.1112.i = phi i32 [ %spec.select106.i, %for.body.i.for.body.i_crit_edge ], [ %spec.select.i, %for.body.preheader.i ]
  %j.0111.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %12, %for.body.preheader.i ]
  %i.0110.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dec.i = add i32 %j.0111.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  %or.i = or i32 %control.1112.i, 24
  %spec.select106.i = select i1 %tobool4.not.i, i32 %or.i, i32 %control.1112.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %15 = tail call i32 @llvm.bswap.i32(i32 %spec.select106.i) #3
  %arrayidx.i = getelementptr %struct.dw_edma_v0_lli, ptr %7, i32 %i.0110.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %15) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %sz.i = getelementptr inbounds %struct.dw_edma_burst, ptr %child.0113.i, i32 0, i32 3
  %16 = ptrtoint ptr %sz.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sz.i, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #3
  %transfer_size.i = getelementptr %struct.dw_edma_v0_lli, ptr %7, i32 %i.0110.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %transfer_size.i, i32 %18) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %sar.i = getelementptr inbounds %struct.dw_edma_burst, ptr %child.0113.i, i32 0, i32 1
  %19 = ptrtoint ptr %sar.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sar.i, align 8
  %conv.i = trunc i64 %20 to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #3
  %sar16.i = getelementptr %struct.dw_edma_v0_lli, ptr %7, i32 %i.0110.i, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sar16.i, i32 %21) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  %22 = ptrtoint ptr %sar.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sar.i, align 8
  %shr.i = lshr i64 %23, 32
  %conv22.i = trunc i64 %shr.i to i32
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv22.i) #3
  %msb.i = getelementptr inbounds %struct.anon.103, ptr %sar16.i, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msb.i, i32 %24) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %dar.i = getelementptr inbounds %struct.dw_edma_burst, ptr %child.0113.i, i32 0, i32 2
  %25 = ptrtoint ptr %dar.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dar.i, align 8
  %conv29.i = trunc i64 %26 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv29.i) #3
  %dar31.i = getelementptr %struct.dw_edma_v0_lli, ptr %7, i32 %i.0110.i, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dar31.i, i32 %27) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %28 = ptrtoint ptr %dar.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dar.i, align 8
  %shr37.i = lshr i64 %29, 32
  %conv39.i = trunc i64 %shr37.i to i32
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv39.i) #3
  %msb42.i = getelementptr inbounds %struct.anon.105, ptr %dar31.i, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msb42.i, i32 %30) #3, !srcloc !10
  %inc.i = add i32 %i.0110.i, 1
  %31 = ptrtoint ptr %child.0113.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %child.0.i = load ptr, ptr %child.0113.i, align 8
  %32 = ptrtoint ptr %burst.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %burst.i, align 4
  %cmp.not.i = icmp eq ptr %child.0.i, %33
  br i1 %cmp.not.i, label %for.body.i.dw_edma_v0_core_write_chunk.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.dw_edma_v0_core_write_chunk.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dw_edma_v0_core_write_chunk.exit

dw_edma_v0_core_write_chunk.exit:                 ; preds = %for.body.i.dw_edma_v0_core_write_chunk.exit_crit_edge, %entry.dw_edma_v0_core_write_chunk.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.dw_edma_v0_core_write_chunk.exit_crit_edge ], [ %inc.i, %for.body.i.dw_edma_v0_core_write_chunk.exit_crit_edge ]
  %34 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool50.not.i = icmp eq i8 %35, 0
  %spec.select107.i = select i1 %tobool50.not.i, i32 117440512, i32 100663296
  %arrayidx48.i = getelementptr %struct.dw_edma_v0_lli, ptr %7, i32 %i.0.lcssa.i
  %ll_region.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %chunk, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx48.i, i32 %spec.select107.i) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %36 = ptrtoint ptr %ll_region.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ll_region.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #3
  %llp63.i = getelementptr inbounds %struct.dw_edma_v0_llp, ptr %arrayidx48.i, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %llp63.i, i32 %38) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %msb73.i = getelementptr inbounds %struct.anon.107, ptr %llp63.i, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msb73.i, i32 0) #3, !srcloc !10
  br i1 %first, label %do.body, label %dw_edma_v0_core_write_chunk.exit.do.body347_crit_edge

dw_edma_v0_core_write_chunk.exit.do.body347_crit_edge: ; preds = %dw_edma_v0_core_write_chunk.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body347

do.body:                                          ; preds = %dw_edma_v0_core_write_chunk.exit
  %dir = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp = icmp eq i32 %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %vaddr.i511 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %vaddr.i511 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vaddr.i511, align 4
  br i1 %cmp, label %do.body4, label %do.body5

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %wr_engine_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %42, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_engine_en, i32 16777216) #3, !srcloc !10
  br label %do.end10

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %rd_engine_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %42, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_engine_en, i32 16777216) #3, !srcloc !10
  br label %do.end10

do.end10:                                         ; preds = %do.body5, %do.body4
  %mf = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 12
  %43 = ptrtoint ptr %mf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %cmp11 = icmp eq i32 %44, 5
  br i1 %cmp11, label %if.then12, label %do.end10.if.end163_crit_edge

do.end10.if.end163_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end163

if.then12:                                        ; preds = %do.end10
  %id = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %if.then12.if.end163_crit_edge [
    i32 0, label %do.body13
    i32 1, label %do.body31
    i32 2, label %do.body50
    i32 3, label %do.body69
    i32 4, label %do.body88
    i32 5, label %do.body107
    i32 6, label %do.body126
    i32 7, label %do.body145
  ]

if.then12.if.end163_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end163

do.body13:                                        ; preds = %if.then12
  %48 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp15 = icmp eq i32 %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %vaddr.i513 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %vaddr.i513 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vaddr.i513, align 4
  br i1 %cmp15, label %do.body17, label %do.body22

do.body17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch0_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %51, i32 0, i32 43, i32 1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch0_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body22:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch0_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %51, i32 0, i32 43, i32 1, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch0_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body31:                                        ; preds = %if.then12
  %52 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp33 = icmp eq i32 %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %vaddr.i515 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %54 = ptrtoint ptr %vaddr.i515 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vaddr.i515, align 4
  br i1 %cmp33, label %do.body35, label %do.body41

do.body35:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch1_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %55, i32 0, i32 43, i32 1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch1_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body41:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch1_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %55, i32 0, i32 43, i32 1, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch1_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body50:                                        ; preds = %if.then12
  %56 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp52 = icmp eq i32 %57, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %vaddr.i517 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %vaddr.i517 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vaddr.i517, align 4
  br i1 %cmp52, label %do.body54, label %do.body60

do.body54:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch2_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %59, i32 0, i32 43, i32 1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch2_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body60:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch2_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %59, i32 0, i32 43, i32 1, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch2_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body69:                                        ; preds = %if.then12
  %60 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp71 = icmp eq i32 %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %vaddr.i519 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %62 = ptrtoint ptr %vaddr.i519 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vaddr.i519, align 4
  br i1 %cmp71, label %do.body73, label %do.body79

do.body73:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch3_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %63, i32 0, i32 43, i32 1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch3_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body79:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch3_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %63, i32 0, i32 43, i32 1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch3_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body88:                                        ; preds = %if.then12
  %64 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp90 = icmp eq i32 %65, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %vaddr.i521 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %vaddr.i521 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vaddr.i521, align 4
  br i1 %cmp90, label %do.body92, label %do.body98

do.body92:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch4_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %67, i32 0, i32 43, i32 1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch4_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body98:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch4_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %67, i32 0, i32 43, i32 1, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch4_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body107:                                       ; preds = %if.then12
  %68 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp109 = icmp eq i32 %69, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %vaddr.i523 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %vaddr.i523 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vaddr.i523, align 4
  br i1 %cmp109, label %do.body111, label %do.body117

do.body111:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch5_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %71, i32 0, i32 43, i32 1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch5_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body117:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch5_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %71, i32 0, i32 43, i32 1, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch5_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body126:                                       ; preds = %if.then12
  %72 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp128 = icmp eq i32 %73, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %vaddr.i525 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %74 = ptrtoint ptr %vaddr.i525 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vaddr.i525, align 4
  br i1 %cmp128, label %do.body130, label %do.body136

do.body130:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch6_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %75, i32 0, i32 43, i32 1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch6_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body136:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch6_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %75, i32 0, i32 43, i32 1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch6_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body145:                                       ; preds = %if.then12
  %76 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp147 = icmp eq i32 %77, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %vaddr.i527 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %78 = ptrtoint ptr %vaddr.i527 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vaddr.i527, align 4
  br i1 %cmp147, label %do.body149, label %do.body155

do.body149:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch7_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %79, i32 0, i32 43, i32 1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch7_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

do.body155:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch7_pwr_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %79, i32 0, i32 43, i32 1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch7_pwr_en, i32 16777216) #3, !srcloc !10
  br label %if.end163

if.end163:                                        ; preds = %do.body155, %do.body149, %do.body136, %do.body130, %do.body117, %do.body111, %do.body98, %do.body92, %do.body79, %do.body73, %do.body60, %do.body54, %do.body41, %do.body35, %do.body22, %do.body17, %if.then12.if.end163_crit_edge, %do.end10.if.end163_crit_edge
  %80 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp165 = icmp eq i32 %81, 0
  %vaddr.i529 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %vaddr.i529 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vaddr.i529, align 4
  br i1 %cmp165, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #5
  %wr_int_mask = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %83, i32 0, i32 15
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_int_mask) #3, !srcloc !18
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  br label %cond.end

cond.false:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #5
  %rd_int_mask = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %83, i32 0, i32 29
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_int_mask) #3, !srcloc !18
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %85, %cond.true ], [ %87, %cond.false ]
  %id183 = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 2
  %88 = ptrtoint ptr %id183 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id183, align 4
  %shl = shl nuw i32 1, %89
  %and203 = and i32 %shl, 255
  %shl233 = shl i32 65536, %89
  %and234 = and i32 %shl233, 16711680
  %90 = or i32 %and203, %and234
  %91 = xor i32 %90, -1
  %and236 = and i32 %cond, %91
  %92 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp239 = icmp eq i32 %93, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %94 = tail call i32 @llvm.bswap.i32(i32 %and236)
  %vaddr.i531 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %95 = ptrtoint ptr %vaddr.i531 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vaddr.i531, align 4
  br i1 %cmp239, label %do.body241, label %do.body247

do.body241:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %wr_int_mask245 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %96, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_int_mask245, i32 %94) #3, !srcloc !10
  br label %do.end254

do.body247:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %rd_int_mask251 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %96, i32 0, i32 29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_int_mask251, i32 %94) #3, !srcloc !10
  br label %do.end254

do.end254:                                        ; preds = %do.body247, %do.body241
  %97 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp256 = icmp eq i32 %98, 0
  %vaddr.i533 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %99 = ptrtoint ptr %vaddr.i533 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vaddr.i533, align 4
  br i1 %cmp256, label %cond.true257, label %cond.false264

cond.true257:                                     ; preds = %do.end254
  call void @__sanitizer_cov_trace_pc() #5
  %wr_linked_list_err_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %100, i32 0, i32 25
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_linked_list_err_en) #3, !srcloc !18
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  br label %do.end297

cond.false264:                                    ; preds = %do.end254
  call void @__sanitizer_cov_trace_pc() #5
  %rd_linked_list_err_en = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %100, i32 0, i32 34
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_linked_list_err_en) #3, !srcloc !18
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  br label %do.end297

do.end297:                                        ; preds = %cond.false264, %cond.true257
  %cond272 = phi i32 [ %102, %cond.true257 ], [ %104, %cond.false264 ]
  %105 = ptrtoint ptr %id183 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %id183, align 4
  %shl281 = shl nuw i32 1, %106
  %and302 = and i32 %shl281, 255
  %or = or i32 %and302, %cond272
  %107 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp305 = icmp eq i32 %108, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %109 = tail call i32 @llvm.bswap.i32(i32 %or)
  %vaddr.i535 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %110 = ptrtoint ptr %vaddr.i535 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %vaddr.i535, align 4
  br i1 %cmp305, label %do.body307, label %do.body313

do.body307:                                       ; preds = %do.end297
  call void @__sanitizer_cov_trace_pc() #5
  %wr_linked_list_err_en311 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %111, i32 0, i32 25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_linked_list_err_en311, i32 %109) #3, !srcloc !10
  br label %do.end320

do.body313:                                       ; preds = %do.end297
  call void @__sanitizer_cov_trace_pc() #5
  %rd_linked_list_err_en317 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %111, i32 0, i32 34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_linked_list_err_en317, i32 %109) #3, !srcloc !10
  br label %do.end320

do.end320:                                        ; preds = %do.body313, %do.body307
  %112 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dir, align 4
  %114 = ptrtoint ptr %id183 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %id183, align 4
  %116 = ptrtoint ptr %mf to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i = icmp eq i32 %117, 0
  br i1 %cmp.i, label %if.then.i541, label %if.end.i

if.end.i:                                         ; preds = %do.end320
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp2.i = icmp eq i32 %113, 0
  %vaddr.i17.i = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %118 = ptrtoint ptr %vaddr.i17.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %vaddr.i17.i, align 4
  %ch6.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %119, i32 0, i32 43, i32 1, i32 220
  %idxprom.i = and i32 %115, 65535
  %rd.i = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch6.i, i32 0, i32 %idxprom.i, i32 2
  %arrayidx.i537 = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch6.i, i32 0, i32 %idxprom.i
  %retval.0.i.ph = select i1 %cmp2.i, ptr %arrayidx.i537, ptr %rd.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %retval.0.i.ph, i32 196608) #3, !srcloc !10
  br label %writel_ch.exit

if.then.i541:                                     ; preds = %do.end320
  call void @__sanitizer_cov_trace_pc() #5
  %vaddr.i.i = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %120 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vaddr.i.i, align 4
  %lock.i = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 15
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #3
  %ch1.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %121, i32 0, i32 43, i32 0, i32 1
  %122 = and i32 %115, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp22.i = icmp eq i32 %113, 1
  %or.i542 = or i32 %122, -2147483648
  %spec.select.i543 = select i1 %cmp22.i, i32 %or.i542, i32 %122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %123 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i543) #3
  %124 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vaddr.i.i, align 4
  %type.i = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %125, i32 0, i32 43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %type.i, i32 %123) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ch1.i, i32 196608) #3, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #3
  br label %writel_ch.exit

writel_ch.exit:                                   ; preds = %if.then.i541, %if.end.i
  %126 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dir, align 4
  %128 = ptrtoint ptr %id183 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %id183, align 4
  %130 = ptrtoint ptr %ll_region.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ll_region.i, align 4
  %132 = ptrtoint ptr %mf to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp.i546 = icmp eq i32 %133, 0
  br i1 %cmp.i546, label %if.then.i566, label %if.end.i554

if.end.i554:                                      ; preds = %writel_ch.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp2.i550 = icmp eq i32 %127, 0
  %vaddr.i17.i551 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %134 = ptrtoint ptr %vaddr.i17.i551 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %vaddr.i17.i551, align 4
  %ch6.i552 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %135, i32 0, i32 43, i32 1, i32 220
  %idxprom.i553 = and i32 %129, 65535
  %rd.i557 = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch6.i552, i32 0, i32 %idxprom.i553, i32 2
  %arrayidx.i555 = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch6.i552, i32 0, i32 %idxprom.i553
  %retval.0.i559.ph = select i1 %cmp2.i550, ptr %arrayidx.i555, ptr %rd.i557
  %llp614 = getelementptr inbounds %struct.dw_edma_v0_ch_regs, ptr %retval.0.i559.ph, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %136 = tail call i32 @llvm.bswap.i32(i32 %131) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %llp614, i32 %136) #3, !srcloc !10
  br label %writel_ch.exit576

if.then.i566:                                     ; preds = %writel_ch.exit
  call void @__sanitizer_cov_trace_pc() #5
  %vaddr.i.i547 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %137 = ptrtoint ptr %vaddr.i.i547 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %vaddr.i.i547, align 4
  %lock.i563 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 15
  %call.i564 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i563) #3
  %llp = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %138, i32 0, i32 43, i32 0, i32 1, i32 5
  %139 = and i32 %129, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp22.i569 = icmp eq i32 %127, 1
  %or.i570 = or i32 %139, -2147483648
  %spec.select.i571 = select i1 %cmp22.i569, i32 %or.i570, i32 %139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %140 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i571) #3
  %141 = ptrtoint ptr %vaddr.i.i547 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %vaddr.i.i547, align 4
  %type.i573 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %142, i32 0, i32 43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %type.i573, i32 %140) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %143 = tail call i32 @llvm.bswap.i32(i32 %131) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %llp, i32 %143) #3, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i563, i32 noundef %call.i564) #3
  br label %writel_ch.exit576

writel_ch.exit576:                                ; preds = %if.then.i566, %if.end.i554
  %144 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dir, align 4
  %146 = ptrtoint ptr %id183 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %id183, align 4
  %148 = ptrtoint ptr %mf to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp.i578 = icmp eq i32 %149, 0
  br i1 %cmp.i578, label %if.then.i598, label %if.end.i586

if.end.i586:                                      ; preds = %writel_ch.exit576
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp2.i582 = icmp eq i32 %145, 0
  %vaddr.i17.i583 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %150 = ptrtoint ptr %vaddr.i17.i583 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %vaddr.i17.i583, align 4
  %ch6.i584 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %151, i32 0, i32 43, i32 1, i32 220
  %idxprom.i585 = and i32 %147, 65535
  %rd.i589 = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch6.i584, i32 0, i32 %idxprom.i585, i32 2
  %arrayidx.i587 = getelementptr [8 x %struct.dw_edma_v0_ch], ptr %ch6.i584, i32 0, i32 %idxprom.i585
  %retval.0.i591.ph = select i1 %cmp2.i582, ptr %arrayidx.i587, ptr %rd.i589
  %llp345617 = getelementptr inbounds %struct.dw_edma_v0_ch_regs, ptr %retval.0.i591.ph, i32 0, i32 5
  %msb618 = getelementptr inbounds %struct.anon.97, ptr %llp345617, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msb618, i32 0) #3, !srcloc !10
  br label %do.body347

if.then.i598:                                     ; preds = %writel_ch.exit576
  call void @__sanitizer_cov_trace_pc() #5
  %vaddr.i.i579 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %152 = ptrtoint ptr %vaddr.i.i579 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %vaddr.i.i579, align 4
  %lock.i595 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 15
  %call.i596 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i595) #3
  %llp345 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %153, i32 0, i32 43, i32 0, i32 1, i32 5
  %msb = getelementptr inbounds %struct.anon.97, ptr %llp345, i32 0, i32 1
  %154 = and i32 %147, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp22.i601 = icmp eq i32 %145, 1
  %or.i602 = or i32 %154, -2147483648
  %spec.select.i603 = select i1 %cmp22.i601, i32 %or.i602, i32 %154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %155 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i603) #3
  %156 = ptrtoint ptr %vaddr.i.i579 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %vaddr.i.i579, align 4
  %type.i605 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %157, i32 0, i32 43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %type.i605, i32 %155) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msb, i32 0) #3, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i595, i32 noundef %call.i596) #3
  br label %do.body347

do.body347:                                       ; preds = %if.then.i598, %if.end.i586, %dw_edma_v0_core_write_chunk.exit.do.body347_crit_edge
  %dir348 = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 3
  %158 = ptrtoint ptr %dir348 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %dir348, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp349 = icmp eq i32 %159, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %id362 = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 2
  %160 = ptrtoint ptr %id362 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %id362, align 4
  %and381 = shl i32 %161, 24
  %162 = and i32 %and381, 117440512
  %vaddr.i609 = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 5, i32 1
  %163 = ptrtoint ptr %vaddr.i609 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %vaddr.i609, align 4
  br i1 %cmp349, label %do.end377, label %do.end409

do.end377:                                        ; preds = %do.body347
  call void @__sanitizer_cov_trace_pc() #5
  %wr_doorbell = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %164, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_doorbell, i32 %162) #3, !srcloc !10
  br label %do.end417

do.end409:                                        ; preds = %do.body347
  call void @__sanitizer_cov_trace_pc() #5
  %rd_doorbell = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %164, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_doorbell, i32 %162) #3, !srcloc !10
  br label %do.end417

do.end417:                                        ; preds = %do.end409, %do.end377
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_edma_v0_core_device_config(ptr nocapture noundef readonly %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dw1 = getelementptr inbounds %struct.dw_edma_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw1, align 4
  %dir = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %msi = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msi, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %vaddr.i = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vaddr.i, align 4
  br i1 %cmp, label %do.body2, label %do.body3

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %wr_done_imwr = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %10, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_done_imwr, i32 %8) #3, !srcloc !10
  br label %do.body11

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rd_done_imwr = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %10, i32 0, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_done_imwr, i32 %8) #3, !srcloc !10
  br label %do.body11

do.body11:                                        ; preds = %do.body3, %do.body2
  %11 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13 = icmp eq i32 %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %13 = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %vaddr.i347 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %vaddr.i347 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vaddr.i347, align 4
  br i1 %cmp13, label %do.body15, label %do.body22

do.body15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #5
  %wr_done_imwr20 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %18, i32 0, i32 18
  %msb = getelementptr inbounds %struct.anon.83, ptr %wr_done_imwr20, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msb, i32 %16) #3, !srcloc !10
  br label %do.body32

do.body22:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #5
  %rd_done_imwr27 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %18, i32 0, i32 36
  %msb28 = getelementptr inbounds %struct.anon.89, ptr %rd_done_imwr27, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msb28, i32 %16) #3, !srcloc !10
  br label %do.body32

do.body32:                                        ; preds = %do.body22, %do.body15
  %19 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp34 = icmp eq i32 %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %msi39 = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 5
  %21 = ptrtoint ptr %msi39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msi39, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %vaddr.i349 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %vaddr.i349 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vaddr.i349, align 4
  br i1 %cmp34, label %do.body36, label %do.body43

do.body36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #5
  %wr_abort_imwr = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %25, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_abort_imwr, i32 %23) #3, !srcloc !10
  br label %do.body52

do.body43:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #5
  %rd_abort_imwr = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %25, i32 0, i32 37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_abort_imwr, i32 %23) #3, !srcloc !10
  br label %do.body52

do.body52:                                        ; preds = %do.body43, %do.body36
  %26 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp54 = icmp eq i32 %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %28 = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %vaddr.i351 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %vaddr.i351 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vaddr.i351, align 4
  br i1 %cmp54, label %do.body56, label %do.body64

do.body56:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #5
  %wr_abort_imwr61 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %33, i32 0, i32 19
  %msb62 = getelementptr inbounds %struct.anon.85, ptr %wr_abort_imwr61, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msb62, i32 %31) #3, !srcloc !10
  br label %do.end73

do.body64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #5
  %rd_abort_imwr69 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %33, i32 0, i32 37
  %msb70 = getelementptr inbounds %struct.anon.91, ptr %rd_abort_imwr69, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msb70, i32 %31) #3, !srcloc !10
  br label %do.end73

do.end73:                                         ; preds = %do.body64, %do.body56
  %id = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 2
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %35, label %do.end73.sw.epilog_crit_edge [
    i32 0, label %do.end73.sw.bb_crit_edge
    i32 1, label %do.end73.sw.bb_crit_edge369
    i32 2, label %do.end73.sw.bb86_crit_edge
    i32 3, label %do.end73.sw.bb86_crit_edge370
    i32 4, label %do.end73.sw.bb105_crit_edge
    i32 5, label %do.end73.sw.bb105_crit_edge371
    i32 6, label %do.end73.sw.bb124_crit_edge
    i32 7, label %do.end73.sw.bb124_crit_edge372
  ]

do.end73.sw.bb124_crit_edge372:                   ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb124

do.end73.sw.bb124_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb124

do.end73.sw.bb105_crit_edge371:                   ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb105

do.end73.sw.bb105_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb105

do.end73.sw.bb86_crit_edge370:                    ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb86

do.end73.sw.bb86_crit_edge:                       ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb86

do.end73.sw.bb_crit_edge369:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

do.end73.sw.bb_crit_edge:                         ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

do.end73.sw.epilog_crit_edge:                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end73.sw.bb_crit_edge, %do.end73.sw.bb_crit_edge369
  %37 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp75 = icmp eq i32 %38, 0
  %vaddr.i353 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %vaddr.i353 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vaddr.i353, align 4
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch01_imwr_data = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %40, i32 0, i32 20
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_ch01_imwr_data) #3, !srcloc !18
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  br label %sw.epilogthread-pre-split

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch01_imwr_data = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %40, i32 0, i32 38
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_ch01_imwr_data) #3, !srcloc !18
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  br label %sw.epilogthread-pre-split

sw.bb86:                                          ; preds = %do.end73.sw.bb86_crit_edge, %do.end73.sw.bb86_crit_edge370
  %45 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp88 = icmp eq i32 %46, 0
  %vaddr.i355 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %vaddr.i355 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vaddr.i355, align 4
  br i1 %cmp88, label %cond.true89, label %cond.false96

cond.true89:                                      ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch23_imwr_data = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %48, i32 0, i32 21
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_ch23_imwr_data) #3, !srcloc !18
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  br label %sw.epilogthread-pre-split

cond.false96:                                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch23_imwr_data = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %48, i32 0, i32 39
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_ch23_imwr_data) #3, !srcloc !18
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  br label %sw.epilogthread-pre-split

sw.bb105:                                         ; preds = %do.end73.sw.bb105_crit_edge, %do.end73.sw.bb105_crit_edge371
  %53 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp107 = icmp eq i32 %54, 0
  %vaddr.i357 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %vaddr.i357 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vaddr.i357, align 4
  br i1 %cmp107, label %cond.true108, label %cond.false115

cond.true108:                                     ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch45_imwr_data = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %56, i32 0, i32 22
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_ch45_imwr_data) #3, !srcloc !18
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  br label %sw.epilogthread-pre-split

cond.false115:                                    ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch45_imwr_data = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %56, i32 0, i32 40
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_ch45_imwr_data) #3, !srcloc !18
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  br label %sw.epilogthread-pre-split

sw.bb124:                                         ; preds = %do.end73.sw.bb124_crit_edge, %do.end73.sw.bb124_crit_edge372
  %61 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp126 = icmp eq i32 %62, 0
  %vaddr.i359 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %63 = ptrtoint ptr %vaddr.i359 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vaddr.i359, align 4
  br i1 %cmp126, label %cond.true127, label %cond.false134

cond.true127:                                     ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch67_imwr_data = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %64, i32 0, i32 23
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_ch67_imwr_data) #3, !srcloc !18
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  br label %sw.epilogthread-pre-split

cond.false134:                                    ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch67_imwr_data = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %64, i32 0, i32 41
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_ch67_imwr_data) #3, !srcloc !18
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %cond.false134, %cond.true127, %cond.false115, %cond.true108, %cond.false96, %cond.true89, %cond.false, %cond.true
  %tmp.0.ph = phi i32 [ %68, %cond.false134 ], [ %66, %cond.true127 ], [ %60, %cond.false115 ], [ %58, %cond.true108 ], [ %52, %cond.false96 ], [ %50, %cond.true89 ], [ %44, %cond.false ], [ %42, %cond.true ]
  %69 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr = load i32, ptr %id, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %do.end73.sw.epilog_crit_edge
  %70 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %35, %do.end73.sw.epilog_crit_edge ]
  %tmp.0 = phi i32 [ %tmp.0.ph, %sw.epilogthread-pre-split ], [ 0, %do.end73.sw.epilog_crit_edge ]
  %and = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %71 = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 5, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  br i1 %tobool.not, label %do.end196, label %do.end168

do.end168:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %and145 = and i32 %tmp.0, 65535
  %shl = shl i32 %73, 16
  %or = or i32 %shl, %and145
  br label %if.end202

do.end196:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %and173 = and i32 %tmp.0, -65536
  %and200 = and i32 %73, 65535
  %or201 = or i32 %and200, %and173
  br label %if.end202

if.end202:                                        ; preds = %do.end196, %do.end168
  %tmp.1 = phi i32 [ %or, %do.end168 ], [ %or201, %do.end196 ]
  %74 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %70, label %if.end202.sw.epilog280_crit_edge [
    i32 0, label %if.end202.do.body205_crit_edge
    i32 1, label %if.end202.do.body205_crit_edge373
    i32 2, label %if.end202.do.body224_crit_edge
    i32 3, label %if.end202.do.body224_crit_edge374
    i32 4, label %if.end202.do.body243_crit_edge
    i32 5, label %if.end202.do.body243_crit_edge375
    i32 6, label %if.end202.do.body262_crit_edge
    i32 7, label %if.end202.do.body262_crit_edge376
  ]

if.end202.do.body262_crit_edge376:                ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body262

if.end202.do.body262_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body262

if.end202.do.body243_crit_edge375:                ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body243

if.end202.do.body243_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body243

if.end202.do.body224_crit_edge374:                ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body224

if.end202.do.body224_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body224

if.end202.do.body205_crit_edge373:                ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body205

if.end202.do.body205_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body205

if.end202.sw.epilog280_crit_edge:                 ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog280

do.body205:                                       ; preds = %if.end202.do.body205_crit_edge, %if.end202.do.body205_crit_edge373
  %75 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp207 = icmp eq i32 %76, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %77 = tail call i32 @llvm.bswap.i32(i32 %tmp.1)
  %vaddr.i361 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %78 = ptrtoint ptr %vaddr.i361 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vaddr.i361, align 4
  br i1 %cmp207, label %do.body209, label %do.body215

do.body209:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch01_imwr_data213 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %79, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch01_imwr_data213, i32 %77) #3, !srcloc !10
  br label %sw.epilog280

do.body215:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch01_imwr_data219 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %79, i32 0, i32 38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch01_imwr_data219, i32 %77) #3, !srcloc !10
  br label %sw.epilog280

do.body224:                                       ; preds = %if.end202.do.body224_crit_edge, %if.end202.do.body224_crit_edge374
  %80 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp226 = icmp eq i32 %81, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %82 = tail call i32 @llvm.bswap.i32(i32 %tmp.1)
  %vaddr.i363 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %83 = ptrtoint ptr %vaddr.i363 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vaddr.i363, align 4
  br i1 %cmp226, label %do.body228, label %do.body234

do.body228:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch23_imwr_data232 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %84, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch23_imwr_data232, i32 %82) #3, !srcloc !10
  br label %sw.epilog280

do.body234:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch23_imwr_data238 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %84, i32 0, i32 39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch23_imwr_data238, i32 %82) #3, !srcloc !10
  br label %sw.epilog280

do.body243:                                       ; preds = %if.end202.do.body243_crit_edge, %if.end202.do.body243_crit_edge375
  %85 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp245 = icmp eq i32 %86, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %87 = tail call i32 @llvm.bswap.i32(i32 %tmp.1)
  %vaddr.i365 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %88 = ptrtoint ptr %vaddr.i365 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vaddr.i365, align 4
  br i1 %cmp245, label %do.body247, label %do.body253

do.body247:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch45_imwr_data251 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %89, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch45_imwr_data251, i32 %87) #3, !srcloc !10
  br label %sw.epilog280

do.body253:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch45_imwr_data257 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %89, i32 0, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch45_imwr_data257, i32 %87) #3, !srcloc !10
  br label %sw.epilog280

do.body262:                                       ; preds = %if.end202.do.body262_crit_edge, %if.end202.do.body262_crit_edge376
  %90 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp264 = icmp eq i32 %91, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %92 = tail call i32 @llvm.bswap.i32(i32 %tmp.1)
  %vaddr.i367 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 5, i32 1
  %93 = ptrtoint ptr %vaddr.i367 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vaddr.i367, align 4
  br i1 %cmp264, label %do.body266, label %do.body272

do.body266:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #5
  %wr_ch67_imwr_data270 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %94, i32 0, i32 23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_ch67_imwr_data270, i32 %92) #3, !srcloc !10
  br label %sw.epilog280

do.body272:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #5
  %rd_ch67_imwr_data276 = getelementptr inbounds %struct.dw_edma_v0_regs, ptr %94, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_ch67_imwr_data276, i32 %92) #3, !srcloc !10
  br label %sw.epilog280

sw.epilog280:                                     ; preds = %do.body272, %do.body266, %do.body253, %do.body247, %do.body234, %do.body228, %do.body215, %do.body209, %if.end202.sw.epilog280_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_edma_v0_core_debugfs_on(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dw_edma_v0_debugfs_on(ptr noundef %chip) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_edma_v0_debugfs_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_edma_v0_core_debugfs_off(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dw_edma_v0_debugfs_off(ptr noundef %chip) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_edma_v0_debugfs_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
!9 = !{i64 2154358236}
!10 = !{i64 6327413}
!11 = !{i64 2154361596}
!12 = !{i64 2154367602}
!13 = !{i64 2154370966}
!14 = !{i64 2154373303}
!15 = !{i64 2154373787}
!16 = !{i64 2154376411}
!17 = !{i64 2154424128}
!18 = !{i64 6327831}
!19 = !{i64 2154354148}
!20 = !{i64 2154352814}
!21 = !{i64 2154353475}
!22 = !{i64 2154779889}
!23 = !{i64 2154780157}
!24 = !{i64 2154828753}
!25 = !{i64 2154829021}
!26 = !{i64 2154882251}
!27 = !{i64 2154882710}
!28 = !{i64 2154883260}
!29 = !{i64 2154883888}
!30 = !{i64 2154884516}
!31 = !{i64 2154885144}
!32 = !{i64 2154885673}
!33 = !{i64 2154886241}
!34 = !{i64 2154886935}
!35 = !{i64 2154902526}
!36 = !{i64 2154903133}
!37 = !{i64 2154989805}
!38 = !{i64 2154990472}
!39 = !{i64 2154312361}
!40 = !{i64 2154311321}
!41 = !{i64 2154311751}
!42 = !{i64 2155173284}
!43 = !{i64 2155173927}
!44 = !{i64 2155174704}
!45 = !{i64 2155175347}
!46 = !{i64 2155176124}
!47 = !{i64 2155176767}
!48 = !{i64 2155177544}
!49 = !{i64 2155178187}
