; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/i40iw_hw.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/i40iw_hw.c"
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

@i40iw_regs = internal constant { [23 x i32], [36 x i8] } { [23 x i32] [i32 32896, i32 32768, i32 33024, i32 33280, i32 33152, i32 1249408, i32 1249536, i32 1249664, i32 34944, i32 1281024, i32 215040, i32 4128768, i32 779396, i32 53312, i32 53316, i32 53320, i32 231168, i32 223232, i32 2152448, i32 787200, i32 819968, i32 737280, i32 -1], [36 x i8] zeroinitializer }, align 32
@i40iw_stat_offsets_64 = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 66048, i32 66560, i32 67584, i32 68608, i32 72192, i32 72704, i32 73216, i32 74240, i32 69120, i32 69632, i32 70656, i32 71680, i32 74752, i32 75264, i32 75776, i32 76800, i32 77824, i32 78848, i32 81408, i32 81920, i32 80896, i32 82944, i32 83456, i32 82432, i32 83968, i32 84480, i32 68096, i32 73728, i32 71168, i32 76288, i32 79872, i32 80384, i32 0], [60 x i8] zeroinitializer }, align 32
@i40iw_shifts = internal constant { [6 x i64], [48 x i8] } { [6 x i64] [i64 0, i64 31, i64 48, i64 24, i64 0, i64 0], [48 x i8] zeroinitializer }, align 32
@i40iw_masks = internal constant { [6 x i64], [48 x i8] } { [6 x i64] [i64 1, i64 2147483648, i64 9223090561878065152, i64 2130706432, i64 65535, i64 262143], [48 x i8] zeroinitializer }, align 32
@i40iw_irq_ops = internal constant { %struct.irdma_irq_ops, [16 x i8] } { %struct.irdma_irq_ops { ptr @irdma_cfg_aeq, ptr @i40iw_config_ceq, ptr @i40iw_disable_irq, ptr @i40iw_ena_irq }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"i40iw_regs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 9, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"i40iw_stat_offsets_64\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 49, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"i40iw_shifts\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 93, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"i40iw_masks\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 84, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"i40iw_irq_ops\00", align 1
@___asan_gen_.14 = private constant [42 x i8] c"../drivers/infiniband/hw/irdma/i40iw_hw.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 155, i32 35 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @i40iw_regs, ptr @i40iw_stat_offsets_64, ptr @i40iw_shifts, ptr @i40iw_masks, ptr @i40iw_irq_ops], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40iw_regs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40iw_stat_offsets_64 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40iw_shifts to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40iw_masks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40iw_irq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40iw_init_hw(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0126 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %i.0126)
  %cmp2 = icmp eq i32 %i.0126, 11
  %spec.store.select = select i1 %cmp2, ptr null, ptr %3
  %arrayidx = getelementptr [23 x i32], ptr @i40iw_regs, i32 0, i32 %i.0126
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %spec.store.select, i32 %5
  %arrayidx3 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 %i.0126
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %arrayidx3, align 4
  %inc = add nuw nsw i32 %i.0126, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.body6.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body6.preheader:                              ; preds = %for.body
  %arrayidx8 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 0
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 67072, ptr %arrayidx8, align 8
  %arrayidx8.1 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 1
  %8 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 67328, ptr %arrayidx8.1, align 8
  %arrayidx8.2 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 2
  %9 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 77312, ptr %arrayidx8.2, align 8
  %arrayidx8.3 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 3
  %10 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 70144, ptr %arrayidx8.3, align 8
  %arrayidx8.4 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 4
  %11 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 70400, ptr %arrayidx8.4, align 8
  %arrayidx8.5 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 5
  %12 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 77568, ptr %arrayidx8.5, align 8
  %arrayidx8.6 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 6
  %13 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 79360, ptr %arrayidx8.6, align 8
  %arrayidx8.7 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 7
  %14 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 78336, ptr %arrayidx8.7, align 8
  %arrayidx8.8 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 8
  %15 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 78592, ptr %arrayidx8.8, align 8
  %arrayidx8.9 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 9
  %16 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 65536, ptr %arrayidx8.9, align 8
  %arrayidx8.10 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 10
  %17 = call ptr @memset(ptr %arrayidx8.10, i32 0, i32 24)
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.body6.preheader
  %i.2128 = phi i32 [ %inc20, %for.body15.for.body15_crit_edge ], [ 0, %for.body6.preheader ]
  %arrayidx16 = getelementptr [33 x i32], ptr @i40iw_stat_offsets_64, i32 0, i32 %i.2128
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx16, align 4
  %conv17 = zext i32 %19 to i64
  %arrayidx18 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 %i.2128
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv17, ptr %arrayidx18, align 8
  %inc20 = add nuw nsw i32 %i.2128, 1
  %exitcond132.not = icmp eq i32 %inc20, 33
  br i1 %exitcond132.not, label %for.end21, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body15

for.end21:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #5
  %first_hw_vf_fpm_id = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 11
  %21 = ptrtoint ptr %first_hw_vf_fpm_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %first_hw_vf_fpm_id, align 4
  %max_hw_vf_fpm_id = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 10
  %22 = ptrtoint ptr %max_hw_vf_fpm_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 47, ptr %max_hw_vf_fpm_id, align 8
  %uglygep = getelementptr i8, ptr %dev, i32 776
  %23 = call ptr @memcpy(ptr %uglygep, ptr @i40iw_shifts, i32 48)
  %uglygep133 = getelementptr i8, ptr %dev, i32 728
  %24 = call ptr @memcpy(ptr %uglygep133, ptr @i40iw_masks, i32 48)
  %arrayidx42 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 9
  %25 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx42, align 4
  %wqe_alloc_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 10
  %27 = ptrtoint ptr %wqe_alloc_db to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %wqe_alloc_db, align 8
  %arrayidx44 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 5
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx44, align 4
  %cq_arm_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 11
  %30 = ptrtoint ptr %cq_arm_db to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %cq_arm_db, align 4
  %arrayidx46 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 7
  %31 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx46, align 4
  %aeq_alloc_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 12
  %33 = ptrtoint ptr %aeq_alloc_db to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %aeq_alloc_db, align 8
  %arrayidx48 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx48, align 4
  %cqp_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 13
  %36 = ptrtoint ptr %cqp_db to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %cqp_db, align 4
  %arrayidx50 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 6
  %37 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx50, align 4
  %cq_ack_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 14
  %39 = ptrtoint ptr %cq_ack_db to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %cq_ack_db, align 8
  %ceq_itr_mask_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 15
  %40 = ptrtoint ptr %ceq_itr_mask_db to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %ceq_itr_mask_db, align 4
  %aeq_itr_mask_db = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 16
  %41 = ptrtoint ptr %aeq_itr_mask_db to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %aeq_itr_mask_db, align 8
  %irq_ops = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 31
  %42 = ptrtoint ptr %irq_ops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @i40iw_irq_ops, ptr %irq_ops, align 8
  %max_hw_wq_frags = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 0, i32 1
  %43 = ptrtoint ptr %max_hw_wq_frags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %max_hw_wq_frags, align 8
  %max_hw_read_sges = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 0, i32 2
  %44 = ptrtoint ptr %max_hw_read_sges to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %max_hw_read_sges, align 4
  %max_hw_device_pages = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 9
  %45 = ptrtoint ptr %max_hw_device_pages to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %max_hw_device_pages, align 4
  %max_hw_inline = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 0, i32 3
  %46 = ptrtoint ptr %max_hw_inline to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 48, ptr %max_hw_inline, align 8
  %max_hw_ird = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 12
  %47 = ptrtoint ptr %max_hw_ird to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 63, ptr %max_hw_ird, align 8
  %max_hw_ord = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 13
  %48 = ptrtoint ptr %max_hw_ord to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 127, ptr %max_hw_ord, align 4
  %max_hw_wqes = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 14
  %49 = ptrtoint ptr %max_hw_wqes to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2048, ptr %max_hw_wqes, align 8
  %max_hw_rq_quanta = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 0, i32 4
  %50 = ptrtoint ptr %max_hw_rq_quanta to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16384, ptr %max_hw_rq_quanta, align 4
  %max_hw_wq_quanta = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 0, i32 5
  %51 = ptrtoint ptr %max_hw_wq_quanta to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2048, ptr %max_hw_wq_quanta, align 8
  %max_hw_sq_chunk = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 0, i32 8
  %52 = ptrtoint ptr %max_hw_sq_chunk to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 2, ptr %max_hw_sq_chunk, align 4
  %max_hw_pds = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 15
  %53 = ptrtoint ptr %max_hw_pds to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 32768, ptr %max_hw_pds, align 4
  %max_stat_inst = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 22
  %54 = ptrtoint ptr %max_stat_inst to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 16, ptr %max_stat_inst, align 8
  %max_hw_outbound_msg_size = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 1
  %55 = ptrtoint ptr %max_hw_outbound_msg_size to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 2147483647, ptr %max_hw_outbound_msg_size, align 8
  %max_hw_inbound_msg_size = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 2
  %56 = ptrtoint ptr %max_hw_inbound_msg_size to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 2147483647, ptr %max_hw_inbound_msg_size, align 8
  %max_qp_wr = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 25, i32 17
  %57 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 895, ptr %max_qp_wr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cfg_aeq(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40iw_config_ceq(ptr nocapture noundef readonly %dev, i32 noundef %ceq_id, i32 noundef %idx, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and13 = and i32 %ceq_id, 2047
  %or = or i32 %and13, 4096
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %sub = shl i32 %idx, 2
  %add = add i32 %sub, 217084
  tail call void @wr32(ptr noundef %1, i32 noundef %add, i32 noundef %or) #3
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add66 = add i32 %sub, 215036
  tail call void @wr32(ptr noundef %3, i32 noundef %add66, i32 noundef 25) #3
  %shl93 = select i1 %enable, i32 1073741824, i32 0
  %and118 = and i32 %idx, 2047
  %or119 = or i32 %and118, %shl93
  %or153 = or i32 %or119, 134158336
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %mul155 = shl i32 %ceq_id, 2
  %add156 = add i32 %mul155, 223232
  tail call void @wr32(ptr noundef %5, i32 noundef %add156, i32 noundef %or153) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40iw_disable_irq(ptr nocapture noundef readonly %dev, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %sub = shl i32 %idx, 2
  %add = add i32 %sub, 215036
  tail call void @wr32(ptr noundef %1, i32 noundef %add, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40iw_ena_irq(ptr nocapture noundef readonly %dev, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %sub = shl i32 %idx, 2
  %add = add i32 %sub, 215036
  tail call void @wr32(ptr noundef %1, i32 noundef %add, i32 noundef 27) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @i40iw_regs, !1, !"i40iw_regs", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/i40iw_hw.c", i32 9, i32 12}
!2 = distinct !{null, !3, !"i40iw_stat_offsets_32", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/irdma/i40iw_hw.c", i32 36, i32 12}
!4 = !{ptr @i40iw_stat_offsets_64, !5, !"i40iw_stat_offsets_64", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/irdma/i40iw_hw.c", i32 49, i32 12}
!6 = !{ptr @i40iw_shifts, !7, !"i40iw_shifts", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/irdma/i40iw_hw.c", i32 93, i32 12}
!8 = !{ptr @i40iw_masks, !9, !"i40iw_masks", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/irdma/i40iw_hw.c", i32 84, i32 12}
!10 = !{ptr @i40iw_irq_ops, !11, !"i40iw_irq_ops", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/irdma/i40iw_hw.c", i32 155, i32 35}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
