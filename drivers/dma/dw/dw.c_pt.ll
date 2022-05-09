; ModuleID = '/llk/IR_all_yes/drivers/dma/dw/dw.c_pt.bc'
source_filename = "../drivers/dma/dw/dw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dw_dma_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_dma_probe\09\09\09\09"
module asm "\09.long\09__crc_dw_dma_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_dma_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_dma_probe\22\09\09\09\09\09"
module asm "__kstrtabns_dw_dma_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_dma_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_dma_remove\09\09\09\09"
module asm "\09.long\09__crc_dw_dma_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_dma_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_dma_remove\22\09\09\09\09\09"
module asm "__kstrtabns_dw_dma_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dw_dma = type { %struct.dma_device, [20 x i8], ptr, ptr, %struct.tasklet_struct, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.70, i32 }
%union.anon.70 = type { ptr }
%struct.dw_dma_chip = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.dw_dma_chan = type { %struct.dma_chan, ptr, i8, i8, i32, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, i32, i32, i8, i32, %struct.dw_dma_slave, %struct.dma_slave_config }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dw_dma_platform_data = type { i32, i32, i32, i32, i32, [4 x i32], [8 x i32], [8 x i32], i32, i32 }
%struct.dw_dma_chan_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_dw_dma_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_dma_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_dma_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_dma_probe to i32), ptr @__kstrtab_dw_dma_probe, ptr @__kstrtabns_dw_dma_probe }, section "___ksymtab_gpl+dw_dma_probe", align 4
@__kstrtab_dw_dma_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_dma_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_dma_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_dma_remove to i32), ptr @__kstrtab_dw_dma_remove, ptr @__kstrtabns_dw_dma_remove }, section "___ksymtab_gpl+dw_dma_remove", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dw:dmac%d\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [23 x i8] c"../drivers/dma/dw/dw.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 93, i32 39 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_dw_dma_probe, ptr @__ksymtab_dw_dma_remove, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_dma_probe(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 468, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %initialize_chan = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %initialize_chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dw_dma_initialize_chan, ptr %initialize_chan, align 4
  %suspend_chan = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %suspend_chan to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dw_dma_suspend_chan, ptr %suspend_chan, align 4
  %resume_chan = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %resume_chan to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dw_dma_resume_chan, ptr %resume_chan, align 4
  %prepare_ctllo = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %prepare_ctllo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dw_dma_prepare_ctllo, ptr %prepare_ctllo, align 4
  %encode_maxburst = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 12
  %6 = ptrtoint ptr %encode_maxburst to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dw_dma_encode_maxburst, ptr %encode_maxburst, align 4
  %bytes2block = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 13
  %7 = ptrtoint ptr %bytes2block to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dw_dma_bytes2block, ptr %bytes2block, align 4
  %block2bytes = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 14
  %8 = ptrtoint ptr %block2bytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dw_dma_block2bytes, ptr %block2bytes, align 4
  %set_device_name = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 15
  %9 = ptrtoint ptr %set_device_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dw_dma_set_device_name, ptr %set_device_name, align 4
  %disable = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dw_dma_disable, ptr %disable, align 4
  %enable = getelementptr inbounds %struct.dw_dma, ptr %call.i, i32 0, i32 17
  %11 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dw_dma_enable, ptr %enable, align 4
  %dw1 = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 5
  %12 = ptrtoint ptr %dw1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %dw1, align 4
  %call2 = tail call i32 @do_dma_probe(ptr noundef %chip) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_dma_initialize_chan(ptr nocapture noundef readonly %dwc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc, align 4
  %direction = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 4
  %2 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %direction, align 4
  %4 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  %cond = select i1 %5, i32 0, i32 2
  %priority = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 3
  %6 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %priority, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 5
  %hs_polarity2 = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 6
  %8 = ptrtoint ptr %hs_polarity2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hs_polarity2, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %dst_id = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 2
  %10 = ptrtoint ptr %dst_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dst_id, align 1
  %conv4 = zext i8 %11 to i32
  %shl5 = shl nuw nsw i32 %conv4, 11
  %or = or i32 %shl5, %cond
  %src_id = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %src_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %src_id, align 4
  %conv7 = zext i8 %13 to i32
  %shl8 = shl nuw nsw i32 %conv7, 7
  %or9 = or i32 %or, %shl8
  %pdata = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 4
  %protctl = getelementptr inbounds %struct.dw_dma_platform_data, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %protctl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %protctl, align 4
  %shl10 = shl i32 %17, 2
  %or11 = or i32 %or9, %shl10
  %cond14 = select i1 %tobool.not, i32 0, i32 786432
  %or15 = or i32 %cond14, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %ch_regs.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %19 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch_regs.i, align 4
  %CFG_LO = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %20, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG_LO, i32 %18) #9, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %22 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ch_regs.i, align 4
  %CFG_HI = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %23, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG_HI, i32 %21) #9, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_dma_suspend_chan(ptr nocapture noundef readonly %dwc, i1 noundef zeroext %drain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_regs.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %0 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_regs.i, align 4
  %CFG_LO = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %1, i32 0, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CFG_LO) #9, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %3 = or i32 %2, 65536
  %4 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_regs.i, align 4
  %CFG_LO4 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %5, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG_LO4, i32 %3) #9, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_dma_resume_chan(ptr nocapture noundef readonly %dwc, i1 noundef zeroext %drain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_regs.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %0 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_regs.i, align 4
  %CFG_LO = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %1, i32 0, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CFG_LO) #9, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %3 = and i32 %2, -65537
  %4 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_regs.i, align 4
  %CFG_LO4 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %5, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG_LO4, i32 %3) #9, !srcloc !17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_dma_prepare_ctllo(ptr nocapture noundef readonly %dwc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %direction = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 4
  %0 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %src_maxburst = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 15, i32 5
  %2 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_maxburst, align 4
  %phi.cast54 = shl i32 %3, 14
  %phi.bo55 = and i32 %phi.cast54, 4177920
  br label %cond.end6.thread

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2 = icmp eq i32 %1, 1
  br i1 %cmp2, label %8, label %cond.end.cond.end6.thread_crit_edge

cond.end.cond.end6.thread_crit_edge:              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end6.thread

cond.end6.thread:                                 ; preds = %cond.end.cond.end6.thread_crit_edge, %cond.end.thread
  %cond58.ph = phi i32 [ %phi.bo55, %cond.end.thread ], [ 0, %cond.end.cond.end6.thread_crit_edge ]
  %p_master963 = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 4
  %4 = ptrtoint ptr %p_master963 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p_master963, align 1
  %m_master1164 = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 3
  %6 = ptrtoint ptr %m_master1164 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m_master1164, align 2
  br label %15

8:                                                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %dst_maxburst = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 15, i32 6
  %9 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_maxburst, align 4
  %phi.cast52 = shl i32 %10, 11
  %phi.bo = and i32 %phi.cast52, 522240
  %phi.bo53 = or i32 %phi.bo, 402653184
  %p_master9 = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 4
  %11 = ptrtoint ptr %p_master9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %p_master9, align 1
  %m_master11 = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 3
  %13 = ptrtoint ptr %m_master11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %m_master11, align 2
  br label %15

15:                                               ; preds = %8, %cond.end6.thread
  %16 = phi i8 [ %14, %8 ], [ %7, %cond.end6.thread ]
  %17 = phi i8 [ %12, %8 ], [ %5, %cond.end6.thread ]
  %cond766 = phi i32 [ %phi.bo53, %8 ], [ 402653184, %cond.end6.thread ]
  %cond5865 = phi i32 [ 0, %8 ], [ %cond58.ph, %cond.end6.thread ]
  %18 = phi i8 [ %12, %8 ], [ %7, %cond.end6.thread ]
  %cond30.in = select i1 %cmp, i8 %17, i8 %16
  %or35 = or i32 %cond766, %cond5865
  %conv36 = zext i8 %18 to i32
  %shl37 = shl nuw nsw i32 %conv36, 23
  %or38 = or i32 %or35, %shl37
  %conv39 = zext i8 %cond30.in to i32
  %shl40 = shl i32 %conv39, 25
  %or41 = or i32 %or38, %shl40
  ret i32 %or41
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dw_dma_encode_maxburst(ptr nocapture noundef readnone %dwc, ptr nocapture noundef %maxburst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %maxburst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 false) #9, !range !24
  %sub = sub nsw i32 30, %2
  %cond = select i1 %cmp, i32 %sub, i32 0
  %3 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %maxburst, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_dma_bytes2block(ptr nocapture noundef readonly %dwc, i32 noundef %bytes, i32 noundef %width, ptr nocapture noundef writeonly %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %bytes, %width
  %block_size = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 11
  %0 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %1)
  %cmp = icmp ugt i32 %shr, %1
  %shl = shl i32 %1, %width
  %storemerge = select i1 %cmp, i32 %shl, i32 %bytes
  %2 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %1)
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge, ptr %len, align 4
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_dma_block2bytes(ptr nocapture noundef readnone %dwc, i32 noundef %block, i32 noundef %width) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %block, 4095
  %shl = shl i32 %and, %width
  ret i32 %shl
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_dma_set_device_name(ptr nocapture noundef writeonly %dw, i32 noundef %id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.dw_dma, ptr %dw, i32 0, i32 1
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 20, ptr noundef nonnull @.str, i32 noundef %id)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_dma_disable(ptr noundef %dw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @do_dw_dma_off(ptr noundef %dw) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_dma_enable(ptr noundef %dw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @do_dw_dma_on(ptr noundef %dw) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_dma_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_dma_remove(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @do_dma_remove(ptr noundef %chip) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_dma_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_dw_dma_off(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_dw_dma_on(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_dw_dma_probe, !1, !"__ksymtab_dw_dma_probe", i1 false, i1 false}
!1 = !{!"../drivers/dma/dw/dw.c", i32 131, i32 1}
!2 = !{ptr @__ksymtab_dw_dma_remove, !3, !"__ksymtab_dw_dma_remove", i1 false, i1 false}
!3 = !{!"../drivers/dma/dw/dw.c", i32 137, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/dma/dw/dw.c", i32 93, i32 39}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
!16 = !{i64 2154202155}
!17 = !{i64 6268916}
!18 = !{i64 2154202651}
!19 = !{i64 6269334}
!20 = !{i64 2154203438}
!21 = !{i64 2154203759}
!22 = !{i64 2154204579}
!23 = !{i64 2154204904}
!24 = !{i32 0, i32 33}
