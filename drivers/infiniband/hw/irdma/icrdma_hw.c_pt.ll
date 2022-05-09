; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/icrdma_hw.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/icrdma_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irdma_irq_ops = type { ptr, ptr, ptr, ptr }
%struct.irdma_sc_dev = type { %struct.list_head, %struct.spinlock, [128 x i8], [32 x %struct.irdma_dma_mem], i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr], i32, [6 x i64], [6 x i64], [13 x i64], [33 x i64], [27 x i64], [51 x i64], %struct.irdma_hw_attrs, ptr, ptr, ptr, [1024 x ptr], ptr, ptr, %struct.irdma_hmc_fpm_misc, ptr, %struct.mutex, i16, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irdma_dma_mem = type { ptr, i32, i32 }
%struct.irdma_hw_attrs = type { %struct.irdma_uk_attrs, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.irdma_uk_attrs = type { i64, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.irdma_hmc_fpm_misc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irdma_sc_aeq = type { i32, i64, ptr, ptr, ptr, i32, %struct.irdma_ring, i8, i32, i32, i8, i8 }
%struct.irdma_ring = type { i32, i32, i32 }

@icrdma_regs = internal constant { [23 x i32], [36 x i8] } { [23 x i32] [i32 5245056, i32 5244928, i32 5283840, i32 5284096, i32 5283968, i32 5254144, i32 5254272, i32 5254400, i32 5284352, i32 5260288, i32 1441792, i32 8323072, i32 646772, i32 5290588, i32 5290592, i32 5290596, i32 1493760, i32 1425408, i32 4276224, i32 5374720, i32 5407488, i32 5455872, i32 1417216], [36 x i8] zeroinitializer }, align 32
@icrdma_shifts = internal constant { [6 x i64], [48 x i8] } { [6 x i64] [i64 0, i64 31, i64 46, i64 22, i64 0, i64 0], [48 x i8] zeroinitializer }, align 32
@icrdma_masks = internal constant { [6 x i64], [48 x i8] } { [6 x i64] [i64 1, i64 2147483648, i64 -70368744177664, i64 4290772992, i64 524287, i64 1048575], [48 x i8] zeroinitializer }, align 32
@icrdma_irq_ops = internal constant { %struct.irdma_irq_ops, [16 x i8] } { %struct.irdma_irq_ops { ptr @irdma_cfg_aeq, ptr @icrdma_cfg_ceq, ptr @icrdma_disable_irq, ptr @icrdma_ena_irq }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"icrdma_regs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 7, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"icrdma_shifts\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 43, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"icrdma_masks\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 34, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"icrdma_irq_ops\00", align 1
@___asan_gen_.11 = private constant [43 x i8] c"../drivers/infiniband/hw/irdma/icrdma_hw.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 107, i32 35 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @icrdma_regs, ptr @icrdma_shifts, ptr @icrdma_masks, ptr @icrdma_irq_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icrdma_regs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icrdma_shifts to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icrdma_masks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icrdma_irq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icrdma_init_hw(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.070 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %i.070)
  %cmp2 = icmp eq i32 %i.070, 11
  %spec.store.select = select i1 %cmp2, ptr null, ptr %3
  %arrayidx = getelementptr [23 x i32], ptr @icrdma_regs, i32 0, i32 %i.070
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %spec.store.select, i32 %5
  %arrayidx3 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 %i.070
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %arrayidx3, align 4
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %max_hw_vf_fpm_id = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 10
  %7 = ptrtoint ptr %max_hw_vf_fpm_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 47, ptr %max_hw_vf_fpm_id, align 8
  %first_hw_vf_fpm_id = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 11
  %8 = ptrtoint ptr %first_hw_vf_fpm_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %first_hw_vf_fpm_id, align 4
  %uglygep = getelementptr i8, ptr %dev, i32 776
  %9 = call ptr @memcpy(ptr %uglygep, ptr @icrdma_shifts, i32 48)
  %uglygep73 = getelementptr i8, ptr %dev, i32 728
  %10 = call ptr @memcpy(ptr %uglygep73, ptr @icrdma_masks, i32 48)
  %hw_attrs = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25
  %arrayidx22 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 9
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx22, align 4
  %wqe_alloc_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 10
  %13 = ptrtoint ptr %wqe_alloc_db to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %wqe_alloc_db, align 8
  %arrayidx24 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 5
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx24, align 4
  %cq_arm_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 11
  %16 = ptrtoint ptr %cq_arm_db to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %cq_arm_db, align 4
  %arrayidx26 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 7
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx26, align 4
  %aeq_alloc_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 12
  %19 = ptrtoint ptr %aeq_alloc_db to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %aeq_alloc_db, align 8
  %arrayidx28 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx28, align 4
  %cqp_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 13
  %22 = ptrtoint ptr %cqp_db to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %cqp_db, align 4
  %arrayidx30 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 6
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx30, align 4
  %cq_ack_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 14
  %25 = ptrtoint ptr %cq_ack_db to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %cq_ack_db, align 8
  %irq_ops = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 31
  %26 = ptrtoint ptr %irq_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @icrdma_irq_ops, ptr %irq_ops, align 8
  %max_hw_ird = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 12
  %27 = ptrtoint ptr %max_hw_ird to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 127, ptr %max_hw_ird, align 8
  %max_hw_ord = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 13
  %28 = ptrtoint ptr %max_hw_ord to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 255, ptr %max_hw_ord, align 4
  %max_stat_inst = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 22
  %29 = ptrtoint ptr %max_stat_inst to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 128, ptr %max_stat_inst, align 8
  %max_hw_sq_chunk = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 0, i32 8
  %30 = ptrtoint ptr %max_hw_sq_chunk to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 8, ptr %max_hw_sq_chunk, align 4
  %31 = ptrtoint ptr %hw_attrs to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %hw_attrs, align 8
  %or = or i64 %32, 3
  store i64 %or, ptr %hw_attrs, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cfg_aeq(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icrdma_cfg_ceq(ptr nocapture noundef readonly %dev, i32 noundef %ceq_id, i32 noundef %idx, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = select i1 %enable, i32 1073741824, i32 0
  %and41 = and i32 %idx, 2047
  %or = or i32 %and41, %shl
  %or58 = or i32 %or, 6144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %or58)
  %arrayidx = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 17
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %2, i32 %ceq_id
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icrdma_disable_irq(ptr nocapture noundef readonly %dev, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 0, i32 9
  %0 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %arrayidx5 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 10
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5, align 4
  br i1 %cmp.not, label %do.body2, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i32, ptr %3, i32 %idx
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !18
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add i32 %idx, -1
  %add.ptr6 = getelementptr i32, ptr %3, i32 %sub
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #4, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icrdma_ena_irq(ptr nocapture noundef readonly %dev, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ceq_itr = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %ceq_itr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ceq_itr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end31_crit_edge, label %land.lhs.true

entry.do.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %aeq = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 28
  %2 = ptrtoint ptr %aeq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aeq, align 8
  %msix_idx = getelementptr inbounds %struct.irdma_sc_aeq, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %msix_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msix_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %idx)
  %cmp.not = icmp eq i32 %5, %idx
  %6 = shl i32 %1, 4
  %.op = and i32 %6, 131040
  %.op.op = or i32 %.op, 3
  %phi.bo = select i1 %cmp.not, i32 3, i32 %.op.op
  br label %do.end31

do.end31:                                         ; preds = %land.lhs.true, %entry.do.end31_crit_edge
  %interval.0 = phi i32 [ 3, %entry.do.end31_crit_edge ], [ %phi.bo, %land.lhs.true ]
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 0, i32 9
  %7 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp68.not = icmp eq i8 %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %interval.0)
  %arrayidx78 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 10
  %10 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx78, align 4
  br i1 %cmp68.not, label %do.body74, label %do.body71

do.body71:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i32, ptr %11, i32 %idx
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #4, !srcloc !18
  br label %if.end80

do.body74:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add i32 %idx, -1
  %add.ptr79 = getelementptr i32, ptr %11, i32 %sub
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %9) #4, !srcloc !18
  br label %if.end80

if.end80:                                         ; preds = %do.body74, %do.body71
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @icrdma_regs, !1, !"icrdma_regs", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/icrdma_hw.c", i32 7, i32 12}
!2 = !{ptr @icrdma_shifts, !3, !"icrdma_shifts", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/irdma/icrdma_hw.c", i32 43, i32 12}
!4 = !{ptr @icrdma_masks, !5, !"icrdma_masks", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/irdma/icrdma_hw.c", i32 34, i32 12}
!6 = !{ptr @icrdma_irq_ops, !7, !"icrdma_irq_ops", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/irdma/icrdma_hw.c", i32 107, i32 35}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2158479981}
!18 = !{i64 4984919}
