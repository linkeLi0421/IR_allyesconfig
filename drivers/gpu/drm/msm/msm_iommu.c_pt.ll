; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_iommu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.iommu_flush_ops = type { ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.msm_mmu = type { ptr, ptr, ptr, ptr, i32 }
%struct.msm_iommu_pagetable = type { %struct.msm_mmu, ptr, ptr, i32, i32 }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.88 }
%union.anon.88 = type { %struct.anon.95 }
%struct.anon.95 = type { [4 x i64], i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_iommu = type { %struct.msm_mmu, ptr, %struct.atomic_t }
%struct.adreno_smmu_fault_info = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }

@pagetable_funcs = internal constant { %struct.msm_mmu_funcs, [44 x i8] } { %struct.msm_mmu_funcs { ptr null, ptr @msm_iommu_pagetable_map, ptr @msm_iommu_pagetable_unmap, ptr @msm_iommu_pagetable_destroy, ptr null }, [44 x i8] zeroinitializer }, align 32
@null_tlb_ops = internal constant { %struct.iommu_flush_ops, [20 x i8] } { %struct.iommu_flush_ops { ptr @msm_iommu_tlb_flush_all, ptr @msm_iommu_tlb_flush_walk, ptr @msm_iommu_tlb_add_page }, [20 x i8] zeroinitializer }, align 32
@funcs = internal constant { %struct.msm_mmu_funcs, [44 x i8] } { %struct.msm_mmu_funcs { ptr @msm_iommu_detach, ptr @msm_iommu_map, ptr @msm_iommu_unmap, ptr @msm_iommu_destroy, ptr @msm_iommu_resume_translation }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@msm_fault_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.msm_fault_handler = private unnamed_addr constant [18 x i8] c"msm_fault_handler\00", align 1
@msm_fault_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.msm_fault_handler, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014*** fault: iova=%16lx, flags=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/msm/msm_iommu.c\00", [32 x i8] zeroinitializer }, align 32
@msm_fault_handler._entry_ptr = internal global ptr @msm_fault_handler._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"pagetable_funcs\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 119, i32 35 }
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"null_tlb_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 139, i32 37 }
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"funcs\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 291, i32 35 }
@___asan_gen_.12 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [35 x i8] c"../drivers/gpu/drm/msm/msm_iommu.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 238, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @msm_fault_handler._entry, ptr @msm_fault_handler._entry_ptr, ptr @pagetable_funcs, ptr @null_tlb_ops, ptr @funcs, ptr @msm_fault_handler._rs, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pagetable_funcs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_tlb_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @funcs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_fault_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_fault_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @msm_iommu_pagetable_params(ptr nocapture noundef readonly %mmu, ptr noundef writeonly %ttbr, ptr noundef writeonly %asid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.msm_mmu, ptr %mmu, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %ttbr, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ttbr2 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %mmu, i32 0, i32 3
  %2 = ptrtoint ptr %ttbr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ttbr2, align 4
  %4 = ptrtoint ptr %ttbr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ttbr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %tobool4.not = icmp eq ptr %asid, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %asid6 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %mmu, i32 0, i32 4
  %5 = ptrtoint ptr %asid6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asid6, align 4
  %7 = ptrtoint ptr %asid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %asid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_iommu_pagetable_create(ptr noundef %parent) local_unnamed_addr #2 align 64 {
entry:
  %ttbr0_cfg = alloca %struct.io_pgtable_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.msm_mmu, ptr %parent, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ttbr0_cfg) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_ttbr1_cfg = getelementptr inbounds %struct.adreno_smmu_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %get_ttbr1_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_ttbr1_cfg, align 4
  %call2 = tail call ptr %7(ptr noundef nonnull %5) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %domain = getelementptr inbounds %struct.msm_iommu, ptr %parent, i32 0, i32 1
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain, align 4
  tail call void @iommu_set_fault_handler(ptr noundef %9, ptr noundef nonnull @msm_fault_handler, ptr noundef %parent) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 36) #11
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev1.i = getelementptr inbounds %struct.msm_mmu, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev1.i, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @pagetable_funcs, ptr %call7.i.i, align 8
  %type3.i = getelementptr inbounds %struct.msm_mmu, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %type3.i, align 8
  %16 = call ptr @memcpy(ptr %ttbr0_cfg, ptr %call2, i32 72)
  %17 = ptrtoint ptr %ttbr0_cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ttbr0_cfg, align 8
  %and = and i32 %18, -33
  store i32 %and, ptr %ttbr0_cfg, align 8
  %tlb = getelementptr inbounds %struct.io_pgtable_cfg, ptr %ttbr0_cfg, i32 0, i32 5
  %19 = ptrtoint ptr %tlb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @null_tlb_ops, ptr %tlb, align 4
  %20 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domain, align 4
  %call14 = call ptr @alloc_io_pgtable_ops(i32 noundef 2, ptr noundef nonnull %ttbr0_cfg, ptr noundef %21) #8
  %pgtbl_ops = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call14, ptr %pgtbl_ops, align 8
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %pagetables = getelementptr inbounds %struct.msm_iommu, ptr %parent, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pagetables, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  call void @llvm.prefetch.p0(ptr %pagetables, i32 1, i32 3, i32 1) #8
  %23 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pagetables, ptr %pagetables, i32 1, ptr elementtype(i32) %pagetables) #8, !srcloc !24
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %23, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then21, label %if.end19.if.end30_crit_edge

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then21:                                        ; preds = %if.end19
  %set_stall = getelementptr inbounds %struct.adreno_smmu_priv, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %set_stall to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_stall, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  call void %25(ptr noundef %27, i1 noundef zeroext true) #8
  %set_ttbr0_cfg = getelementptr inbounds %struct.adreno_smmu_priv, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %set_ttbr0_cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_ttbr0_cfg, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %call24 = call i32 %29(ptr noundef %31, ptr noundef nonnull %ttbr0_cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then21.if.end30_crit_edge, label %if.then26

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pgtbl_ops, align 8
  call void @free_io_pgtable_ops(ptr noundef %33) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %34 = inttoptr i32 %call24 to ptr
  br label %cleanup

if.end30:                                         ; preds = %if.then21.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  %parent31 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %parent31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %parent, ptr %parent31, align 4
  %36 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %ttbr0_cfg, i32 0, i32 7
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  %conv = trunc i64 %38 to i32
  %ttbr32 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %call7.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %ttbr32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv, ptr %ttbr32, align 4
  %asid = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %call7.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %asid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %asid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then26, %if.then17, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %34, %if.then26 ], [ %call7.i.i, %if.end30 ], [ inttoptr (i32 -12 to ptr), %if.then17 ], [ inttoptr (i32 -19 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ttbr0_cfg) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_set_fault_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_fault_handler(ptr nocapture noundef readnone %domain, ptr nocapture noundef readnone %dev, i32 noundef %iova, i32 noundef %flags, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  %info = alloca %struct.adreno_smmu_fault_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.msm_mmu, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #8
  %4 = call ptr @memset(ptr %info, i32 255, i32 40)
  %get_fault_info = getelementptr inbounds %struct.adreno_smmu_priv, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %get_fault_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_fault_info, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  call void %6(ptr noundef %8, ptr noundef nonnull %info) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ptr.0 = phi ptr [ %info, %if.then ], [ null, %entry.if.end_crit_edge ]
  %handler = getelementptr inbounds %struct.msm_mmu, ptr %arg, i32 0, i32 2
  %9 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handler, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arg9 = getelementptr inbounds %struct.msm_mmu, ptr %arg, i32 0, i32 3
  %11 = ptrtoint ptr %arg9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg9, align 4
  %call10 = call i32 %10(ptr noundef %12, i32 noundef %iova, i32 noundef %flags, ptr noundef %ptr.0) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = call i32 @___ratelimit(ptr noundef nonnull @msm_fault_handler._rs, ptr noundef nonnull @__func__.msm_fault_handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %do.end

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %iova, i32 noundef %flags) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end11.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ %call10, %if.then5 ], [ 0, %do.end ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_io_pgtable_ops(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_io_pgtable_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_iommu_new(ptr noundef %dev, ptr noundef %domain) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %domain6 = getelementptr inbounds %struct.msm_iommu, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %domain6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %domain, ptr %domain6, align 4
  %dev1.i = getelementptr inbounds %struct.msm_mmu, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev1.i, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @funcs, ptr %call7.i.i, align 8
  %type3.i = getelementptr inbounds %struct.msm_mmu, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type3.i, align 8
  %pagetables = getelementptr inbounds %struct.msm_iommu, ptr %call7.i.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pagetables, i32 noundef 4) #8
  %5 = ptrtoint ptr %pagetables to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %pagetables, align 8
  %6 = ptrtoint ptr %domain6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain6, align 4
  %call8 = tail call i32 @iommu_attach_device(ptr noundef %7, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.then10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %8 = inttoptr i32 %call8 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.then10 ], [ %call7.i.i, %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_iommu_pagetable_map(ptr nocapture noundef readonly %mmu, i64 noundef %iova, ptr nocapture noundef readonly %sgt, i32 noundef %len, i32 noundef %prot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pgtbl_ops = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %mmu, i32 0, i32 2
  %0 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgtbl_ops, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 1
  %2 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp35.not = icmp eq i32 %3, 0
  br i1 %cmp35.not, label %entry.cleanup9_crit_edge, label %for.body.preheader

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

for.body.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgt, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.preheader
  %i.039 = phi i32 [ %inc, %for.inc.critedge.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %addr.038 = phi i64 [ %addr.1.lcssa, %for.inc.critedge.for.body_crit_edge ], [ %iova, %for.body.preheader ]
  %mapped.037 = phi i32 [ %mapped.1.lcssa, %for.inc.critedge.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.036 = phi ptr [ %call8, %for.inc.critedge.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %6 = ptrtoint ptr %sg.036 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg.036, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_phys.exit, label %do.body2.i.i, !prof !26

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !27
  unreachable

sg_phys.exit:                                     ; preds = %for.body
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.036, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not29 = icmp eq i32 %9, 0
  br i1 %tobool.not29, label %sg_phys.exit.for.inc.critedge_crit_edge, label %while.body.preheader

sg_phys.exit.for.inc.critedge_crit_edge:          ; preds = %sg_phys.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge

while.body.preheader:                             ; preds = %sg_phys.exit
  %and.i.i = and i32 %7, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %and.i.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %11
  %shl.i = shl i32 %add.i, 12
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.036, i32 0, i32 1
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %add1.i = add i32 %shl.i, %13
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %phys.033 = phi i32 [ %add, %if.end.while.body_crit_edge ], [ %add1.i, %while.body.preheader ]
  %size.032 = phi i32 [ %sub, %if.end.while.body_crit_edge ], [ %9, %while.body.preheader ]
  %addr.131 = phi i64 [ %add5, %if.end.while.body_crit_edge ], [ %addr.038, %while.body.preheader ]
  %mapped.130 = phi i32 [ %add6, %if.end.while.body_crit_edge ], [ %mapped.037, %while.body.preheader ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %conv = trunc i64 %addr.131 to i32
  %call2 = tail call i32 %15(ptr noundef %1, i32 noundef %conv, i32 noundef %phys.033, i32 noundef 4096, i32 noundef %prot, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %16 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pgtbl_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapped.130)
  %tobool.not10.i = icmp eq i32 %mapped.130, 0
  br i1 %tobool.not10.i, label %if.then.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then
  %unmap.i = getelementptr inbounds %struct.io_pgtable_ops, ptr %17, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %iova.addr.013.i = phi i64 [ %iova, %while.body.lr.ph.i ], [ %add2.i, %while.body.i.while.body.i_crit_edge ]
  %size.addr.012.i = phi i32 [ %mapped.130, %while.body.lr.ph.i ], [ %sub.i, %while.body.i.while.body.i_crit_edge ]
  %18 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unmap.i, align 4
  %conv.i = trunc i64 %iova.addr.013.i to i32
  %call1.i = tail call i32 %19(ptr noundef %17, i32 noundef %conv.i, i32 noundef 4096, ptr noundef null) #8
  %add2.i = add i64 %iova.addr.013.i, 4096
  %sub.i = add i32 %size.addr.012.i, -4096
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  %parent.i = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %mmu, i32 0, i32 1
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i, align 4
  %domain.i = getelementptr inbounds %struct.msm_iommu, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %domain.i, align 4
  %ops.i.i = getelementptr inbounds %struct.iommu_domain, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i, align 4
  %flush_iotlb_all.i.i = getelementptr inbounds %struct.iommu_ops, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %flush_iotlb_all.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %flush_iotlb_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %while.end.i.cleanup9_crit_edge, label %if.then.i.i

while.end.i.cleanup9_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.then.i.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %27(ptr noundef %23) #8
  br label %cleanup9

if.end:                                           ; preds = %while.body
  %add = add i32 %phys.033, 4096
  %add5 = add i64 %addr.131, 4096
  %sub = add i32 %size.032, -4096
  %add6 = add i32 %mapped.130, 4096
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end.for.inc.critedge_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.for.inc.critedge_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge

for.inc.critedge:                                 ; preds = %if.end.for.inc.critedge_crit_edge, %sg_phys.exit.for.inc.critedge_crit_edge
  %mapped.1.lcssa = phi i32 [ %mapped.037, %sg_phys.exit.for.inc.critedge_crit_edge ], [ %add6, %if.end.for.inc.critedge_crit_edge ]
  %addr.1.lcssa = phi i64 [ %addr.038, %sg_phys.exit.for.inc.critedge_crit_edge ], [ %add5, %if.end.for.inc.critedge_crit_edge ]
  %inc = add nuw i32 %i.039, 1
  %call8 = tail call ptr @sg_next(ptr noundef %sg.036) #8
  %28 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.inc.critedge.for.body_crit_edge, label %for.inc.critedge.cleanup9_crit_edge

for.inc.critedge.cleanup9_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup9:                                         ; preds = %for.inc.critedge.cleanup9_crit_edge, %if.then.i.i, %while.end.i.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.2 = phi i32 [ -22, %while.end.i.cleanup9_crit_edge ], [ -22, %if.then.i.i ], [ 0, %entry.cleanup9_crit_edge ], [ 0, %for.inc.critedge.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_iommu_pagetable_unmap(ptr nocapture noundef readonly %mmu, i64 noundef %iova, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pgtbl_ops = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %mmu, i32 0, i32 2
  %0 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgtbl_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not10 = icmp eq i32 %size, 0
  br i1 %tobool.not10, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %unmap = getelementptr inbounds %struct.io_pgtable_ops, ptr %1, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %iova.addr.013 = phi i64 [ %iova, %while.body.lr.ph ], [ %add2, %while.body.while.body_crit_edge ]
  %size.addr.012 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %unmapped.011 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %2 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unmap, align 4
  %conv = trunc i64 %iova.addr.013 to i32
  %call1 = tail call i32 %3(ptr noundef %1, i32 noundef %conv, i32 noundef 4096, ptr noundef null) #8
  %add = add i32 %call1, %unmapped.011
  %add2 = add i64 %iova.addr.013, 4096
  %sub = add i32 %size.addr.012, -4096
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %unmapped.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  %parent = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %mmu, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %domain = getelementptr inbounds %struct.msm_iommu, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %ops.i = getelementptr inbounds %struct.iommu_domain, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %flush_iotlb_all.i = getelementptr inbounds %struct.iommu_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %flush_iotlb_all.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flush_iotlb_all.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %while.end.iommu_flush_iotlb_all.exit_crit_edge, label %if.then.i

while.end.iommu_flush_iotlb_all.exit_crit_edge:   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iommu_flush_iotlb_all.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %7) #8
  br label %iommu_flush_iotlb_all.exit

iommu_flush_iotlb_all.exit:                       ; preds = %if.then.i, %while.end.iommu_flush_iotlb_all.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unmapped.0.lcssa)
  %cmp = icmp eq i32 %unmapped.0.lcssa, 0
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_iommu_pagetable_destroy(ptr noundef %mmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %mmu, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %dev = getelementptr inbounds %struct.msm_mmu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %pagetables = getelementptr inbounds %struct.msm_iommu, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pagetables, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  tail call void @llvm.prefetch.p0(ptr %pagetables, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pagetables, ptr %pagetables, i32 1, ptr elementtype(i32) %pagetables) #8, !srcloc !29
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %set_ttbr0_cfg = getelementptr inbounds %struct.adreno_smmu_priv, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %set_ttbr0_cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_ttbr0_cfg, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call4 = tail call i32 %8(ptr noundef %10, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pgtbl_ops = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %mmu, i32 0, i32 2
  %11 = ptrtoint ptr %pgtbl_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pgtbl_ops, align 4
  tail call void @free_io_pgtable_ops(ptr noundef %12) #8
  tail call void @kfree(ptr noundef %mmu) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @msm_iommu_tlb_flush_all(ptr nocapture noundef %cookie) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @msm_iommu_tlb_flush_walk(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr nocapture noundef %cookie) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @msm_iommu_tlb_add_page(ptr nocapture noundef %gather, i32 noundef %iova, i32 noundef %granule, ptr nocapture noundef %cookie) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_iommu_detach(ptr nocapture noundef readonly %mmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.msm_iommu, ptr %mmu, i32 0, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %dev = getelementptr inbounds %struct.msm_mmu, ptr %mmu, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @iommu_detach_device(ptr noundef %1, ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_iommu_map(ptr nocapture noundef readonly %mmu, i64 noundef %iova, ptr nocapture noundef readonly %sgt, i32 noundef %len, i32 noundef %prot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extract.t30 = trunc i64 %iova to i32
  %domain = getelementptr inbounds %struct.msm_iommu, ptr %mmu, i32 0, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %4 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orig_nents.i, align 4
  %call.i = tail call i32 @iommu_map_sg(ptr noundef %1, i32 noundef %extract.t30, ptr noundef %3, i32 noundef %5, i32 noundef %prot) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %do.end, label %entry.if.end17_crit_edge, !prof !31

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 267, i32 noundef 9, ptr noundef null) #8
  br label %if.end17

if.end17:                                         ; preds = %do.end, %entry.if.end17_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %len)
  %cmp = icmp eq i32 %call.i, %len
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_iommu_unmap(ptr nocapture noundef readonly %mmu, i64 noundef %iova, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %extract.t3 = trunc i64 %iova to i32
  %domain = getelementptr inbounds %struct.msm_iommu, ptr %mmu, i32 0, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %call = tail call i32 @iommu_unmap(ptr noundef %1, i32 noundef %extract.t3, i32 noundef %len) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_iommu_destroy(ptr noundef %mmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.msm_iommu, ptr %mmu, i32 0, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  tail call void @iommu_domain_free(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %mmu) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_iommu_resume_translation(ptr nocapture noundef readonly %mmu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.msm_mmu, ptr %mmu, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %resume_translation = getelementptr inbounds %struct.adreno_smmu_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %resume_translation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume_translation, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %7, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @pagetable_funcs, !1, !"pagetable_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_iommu.c", i32 119, i32 35}
!2 = !{ptr @null_tlb_ops, !3, !"null_tlb_ops", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/msm_iommu.c", i32 139, i32 37}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/msm_iommu.c", i32 238, i32 2}
!6 = !{ptr @msm_fault_handler._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.msm_fault_handler, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @msm_fault_handler._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @msm_fault_handler._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @funcs, !13, !"funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/msm_iommu.c", i32 291, i32 35}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2148265570}
!24 = !{i64 2148180879, i64 2148180911, i64 2148180940, i64 2148180974, i64 2148181005, i64 2148181028}
!25 = !{i64 2148265799}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2153398461, i64 2153398953, i64 2153398498, i64 2153398554, i64 2153398588, i64 2153398612, i64 2153398653, i64 2153398674, i64 2153398702, i64 2153398736}
!28 = !{i64 2148268611}
!29 = !{i64 2148183344, i64 2148183376, i64 2148183405, i64 2148183439, i64 2148183470, i64 2148183493}
!30 = !{i64 2148268840}
!31 = !{!"branch_weights", i32 1, i32 2000}
