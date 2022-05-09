; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-atmel-aic5.c_pt.bc'
source_filename = "../drivers/irqchip/irq-atmel-aic5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_sama5d2_aic5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-aic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_aic5_of_init }, section "__irqchip_of_table", align 4
@__of_table_sama5d3_aic5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-aic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_aic5_of_init }, section "__irqchip_of_table", align 4
@__of_table_sama5d4_aic5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-aic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_aic5_of_init }, section "__irqchip_of_table", align 4
@__of_table_sam9x60_aic5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-aic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_aic5_of_init }, section "__irqchip_of_table", align 4
@smr_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@aic5_domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@aic5_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @irq_map_generic_chip, ptr null, ptr @aic5_irq_domain_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atmel-aic5\00", [21 x i8] zeroinitializer }, align 32
@aic5_irq_fixups = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_aic_irq_fixup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_aic_irq_fixup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_aic_irq_fixup }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"smr_cache\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 153, i32 13 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"aic5_domain\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 68, i32 27 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"aic5_irq_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 303, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [36 x i8] c"../drivers/irqchip/irq-atmel-aic5.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 341, i32 51 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__of_table_sam9x60_aic5, ptr @__of_table_sama5d2_aic5, ptr @__of_table_sama5d3_aic5, ptr @__of_table_sama5d4_aic5, ptr @smr_cache, ptr @aic5_domain, ptr @aic5_irq_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smr_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic5_domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic5_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d2_aic5_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #10
  store ptr %call7.i.i.i, ptr @smr_cache, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @aic5_of_init(ptr noundef %node, i32 noundef 77) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d3_aic5_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aic5_of_init(ptr noundef %node, i32 noundef 48) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sama5d4_aic5_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aic5_of_init(ptr noundef %node, i32 noundef 68) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x60_aic5_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aic5_of_init(ptr noundef %node, i32 noundef 50) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aic5_of_init(ptr noundef %node, i32 noundef %nirqs) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @aic5_domain, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  %call = tail call ptr @aic_common_of_init(ptr noundef %node, ptr noundef nonnull @aic5_irq_ops, ptr noundef nonnull @.str, i32 noundef %nirqs, ptr noundef nonnull @aic5_irq_fixups) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  store ptr %call, ptr @aic5_domain, align 4
  %revmap_size = getelementptr inbounds %struct.irq_domain, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revmap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp72.not = icmp ult i32 %3, 32
  br i1 %cmp72.not, label %if.end6.for.end_crit_edge, label %for.body.preheader

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end6
  %div1 = lshr i32 %3, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.03, 5
  %call8 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %call, i32 noundef %mul) #7
  %eoi = getelementptr inbounds %struct.irq_chip_generic, ptr %call8, i32 2, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %eoi to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 56, ptr %eoi, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call8, i32 1, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @aic5_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call8, i32 1, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @aic5_unmask, ptr %irq_unmask, align 4
  %irq_retrigger = getelementptr inbounds %struct.irq_chip_generic, ptr %call8, i32 1, i32 2
  %7 = ptrtoint ptr %irq_retrigger to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @aic5_retrigger, ptr %irq_retrigger, align 4
  %irq_set_type = getelementptr inbounds %struct.irq_chip_generic, ptr %call8, i32 1, i32 3
  %8 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @aic5_set_type, ptr %irq_set_type, align 4
  %irq_suspend = getelementptr inbounds %struct.irq_chip_generic, ptr %call8, i32 1, i32 7
  %9 = ptrtoint ptr %irq_suspend to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @aic5_suspend, ptr %irq_suspend, align 4
  %irq_resume = getelementptr inbounds %struct.irq_chip_generic, ptr %call8, i32 1, i32 8
  %10 = ptrtoint ptr %irq_resume to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @aic5_resume, ptr %irq_resume, align 4
  %irq_pm_shutdown = getelementptr inbounds %struct.irq_chip_generic, ptr %call8, i32 1, i32 9
  %11 = ptrtoint ptr %irq_pm_shutdown to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @aic5_pm_shutdown, ptr %irq_pm_shutdown, align 4
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %div1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call fastcc void @aic5_hw_init(ptr noundef %call) #11
  %call29 = tail call i32 @set_handle_irq(ptr noundef nonnull @aic5_handle) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ 0, %for.end ], [ -17, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @aic_common_of_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aic5_mask(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %1, i32 noundef 0) #7
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %call) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  tail call void %7(i32 noundef %5, ptr noundef %9) #7
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base2.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !28
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %13 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i10 = icmp eq ptr %14, null
  br i1 %tobool.not.i10, label %do.body.i14, label %if.then.i12

if.then.i12:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %reg_base.i11 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %reg_base.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i11, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 68
  tail call void %14(i32 noundef 1, ptr noundef %add.ptr.i) #7
  br label %irq_reg_writel.exit15

do.body.i14:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %reg_base2.i13 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %reg_base2.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base2.i13, align 4
  %add.ptr3.i = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #7, !srcloc !28
  br label %irq_reg_writel.exit15

irq_reg_writel.exit15:                            ; preds = %do.body.i14, %if.then.i12
  %19 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d, align 4
  %neg = xor i32 %20, -1
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask_cache, align 4
  %and = and i32 %22, %neg
  store i32 %and, ptr %mask_cache, align 4
  tail call void @_raw_spin_unlock(ptr noundef %call) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aic5_unmask(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %1, i32 noundef 0) #7
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %call) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  tail call void %7(i32 noundef %5, ptr noundef %9) #7
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base2.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !28
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %13 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i10 = icmp eq ptr %14, null
  br i1 %tobool.not.i10, label %do.body.i14, label %if.then.i12

if.then.i12:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %reg_base.i11 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %reg_base.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i11, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 64
  tail call void %14(i32 noundef 1, ptr noundef %add.ptr.i) #7
  br label %irq_reg_writel.exit15

do.body.i14:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %reg_base2.i13 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %reg_base2.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base2.i13, align 4
  %add.ptr3.i = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #7, !srcloc !28
  br label %irq_reg_writel.exit15

irq_reg_writel.exit15:                            ; preds = %do.body.i14, %if.then.i12
  %19 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d, align 4
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask_cache, align 4
  %or = or i32 %22, %20
  store i32 %or, ptr %mask_cache, align 4
  tail call void @_raw_spin_unlock(ptr noundef %call) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic5_retrigger(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %1, i32 noundef 0) #7
  tail call void @_raw_spin_lock(ptr noundef %call) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  tail call void %5(i32 noundef %3, ptr noundef %7) #7
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base2.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !28
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %11 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i7 = icmp eq ptr %12, null
  br i1 %tobool.not.i7, label %do.body.i11, label %if.then.i9

if.then.i9:                                       ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %reg_base.i8 = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %reg_base.i8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i8, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 76
  tail call void %12(i32 noundef 1, ptr noundef %add.ptr.i) #7
  br label %irq_reg_writel.exit12

do.body.i11:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %reg_base2.i10 = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %reg_base2.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base2.i10, align 4
  %add.ptr3.i = getelementptr i8, ptr %16, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #7, !srcloc !28
  br label %irq_reg_writel.exit12

irq_reg_writel.exit12:                            ; preds = %do.body.i11, %if.then.i9
  tail call void @_raw_spin_unlock(ptr noundef %call) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic5_set_type(ptr noundef %d, i32 noundef %type) #5 align 64 {
entry:
  %smr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %1, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smr) #7
  tail call void @_raw_spin_lock(ptr noundef %call) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  tail call void %5(i32 noundef %3, ptr noundef %7) #7
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base2.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !28
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %reg_readl.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i11 = icmp eq ptr %12, null
  %reg_base2.i12 = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %reg_base2.i12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base2.i12, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 4
  br i1 %tobool.not.i11, label %if.else.i, label %if.then.i13

if.then.i13:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %12(ptr noundef %add.ptr3.i) #7
  br label %irq_reg_readl.exit

if.else.i:                                        ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !29
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  br label %irq_reg_readl.exit

irq_reg_readl.exit:                               ; preds = %if.else.i, %if.then.i13
  %retval.0.i = phi i32 [ %call.i, %if.then.i13 ], [ %16, %if.else.i ]
  %17 = ptrtoint ptr %smr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %smr, align 4
  %call3 = call i32 @aic_common_set_type(ptr noundef %d, i32 noundef %type, ptr noundef nonnull %smr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %irq_reg_readl.exit.if.end_crit_edge

irq_reg_readl.exit.if.end_crit_edge:              ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %irq_reg_readl.exit
  %18 = ptrtoint ptr %smr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smr, align 4
  %20 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i15 = icmp eq ptr %21, null
  br i1 %tobool.not.i15, label %do.body.i20, label %if.then.i17

if.then.i17:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %reg_base2.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base2.i12, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  call void %21(i32 noundef %19, ptr noundef %add.ptr.i) #7
  br label %if.end

do.body.i20:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @arm_heavy_mb() #7
  %24 = call i32 @llvm.bswap.i32(i32 %19) #7
  %25 = ptrtoint ptr %reg_base2.i12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base2.i12, align 4
  %add.ptr3.i19 = getelementptr i8, ptr %26, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i19, i32 %24) #7, !srcloc !28
  br label %if.end

if.end:                                           ; preds = %do.body.i20, %if.then.i17, %irq_reg_readl.exit.if.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %call) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smr) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aic5_suspend(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %gc = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gc, align 4
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %1, i32 noundef 0) #7
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %4 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data.i, align 4
  %6 = load ptr, ptr @smr_cache, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %revmap_size = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %revmap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp68.not = icmp eq i32 %8, 0
  br i1 %cmp68.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 3
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %reg_readl.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %irq_reg_readl.exit.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %irq_reg_readl.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 4
  tail call void %10(i32 noundef %i.069, ptr noundef %12) #7
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %i.069) #7
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !28
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %16 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i41 = icmp eq ptr %17, null
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %19, i32 4
  br i1 %tobool.not.i41, label %if.else.i, label %if.then.i43

if.then.i43:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %17(ptr noundef %add.ptr3.i) #7
  br label %irq_reg_readl.exit

if.else.i:                                        ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !29
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  br label %irq_reg_readl.exit

irq_reg_readl.exit:                               ; preds = %if.else.i, %if.then.i43
  %retval.0.i = phi i32 [ %call.i, %if.then.i43 ], [ %21, %if.else.i ]
  %22 = load ptr, ptr @smr_cache, align 4
  %arrayidx = getelementptr i32, ptr %22, i32 %i.069
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.069, 1
  %24 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %revmap_size, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %irq_reg_readl.exit.for.body_crit_edge, label %irq_reg_readl.exit.if.end_crit_edge

irq_reg_readl.exit.if.end_crit_edge:              ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

irq_reg_readl.exit.for.body_crit_edge:            ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end:                                           ; preds = %irq_reg_readl.exit.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %call) #7
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp671.not = icmp eq i32 %27, 0
  br i1 %cmp671.not, label %if.end.for.end19_crit_edge, label %for.body7.lr.ph

if.end.for.end19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.body7.lr.ph:                                  ; preds = %if.end
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %5, i32 0, i32 8
  %wake_active = getelementptr inbounds %struct.irq_chip_generic, ptr %5, i32 0, i32 12
  %irq_base = getelementptr inbounds %struct.irq_chip_generic, ptr %5, i32 0, i32 6
  %reg_writel.i44 = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 3
  %reg_base.i46 = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  br label %for.body7

for.body7:                                        ; preds = %for.inc17.for.body7_crit_edge, %for.body7.lr.ph
  %i.172 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc18, %for.inc17.for.body7_crit_edge ]
  %shl = shl nuw i32 1, %i.172
  %28 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask_cache, align 4
  %30 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wake_active, align 4
  %32 = xor i32 %31, %29
  %33 = and i32 %32, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp9 = icmp eq i32 %33, 0
  br i1 %cmp9, label %for.body7.for.inc17_crit_edge, label %if.end11

for.body7.for.inc17_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

if.end11:                                         ; preds = %for.body7
  %34 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq_base, align 4
  %add = add i32 %35, %i.172
  %36 = ptrtoint ptr %reg_writel.i44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_writel.i44, align 4
  %tobool.not.i45 = icmp eq ptr %37, null
  br i1 %tobool.not.i45, label %do.body.i49, label %if.then.i47

if.then.i47:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base.i46, align 4
  tail call void %37(i32 noundef %add, ptr noundef %39) #7
  br label %irq_reg_writel.exit50

do.body.i49:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %add) #7
  %41 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base.i46, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #7, !srcloc !28
  br label %irq_reg_writel.exit50

irq_reg_writel.exit50:                            ; preds = %do.body.i49, %if.then.i47
  %43 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wake_active, align 4
  %and13 = and i32 %44, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %45 = ptrtoint ptr %reg_writel.i44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_writel.i44, align 4
  %tobool.not.i60 = icmp eq ptr %46, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %irq_reg_writel.exit50
  br i1 %tobool.not.i60, label %do.body.i57, label %if.then.i54

if.then.i54:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base.i46, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 64
  tail call void %46(i32 noundef 1, ptr noundef %add.ptr.i) #7
  br label %for.inc17

do.body.i57:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_base.i46, align 4
  %add.ptr3.i56 = getelementptr i8, ptr %50, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i56, i32 16777216) #7, !srcloc !28
  br label %for.inc17

if.else:                                          ; preds = %irq_reg_writel.exit50
  br i1 %tobool.not.i60, label %do.body.i66, label %if.then.i63

if.then.i63:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_base.i46, align 4
  %add.ptr.i62 = getelementptr i8, ptr %52, i32 68
  tail call void %46(i32 noundef 1, ptr noundef %add.ptr.i62) #7
  br label %for.inc17

do.body.i66:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base.i46, align 4
  %add.ptr3.i65 = getelementptr i8, ptr %54, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i65, i32 16777216) #7, !srcloc !28
  br label %for.inc17

for.inc17:                                        ; preds = %do.body.i66, %if.then.i63, %do.body.i57, %if.then.i54, %for.body7.for.inc17_crit_edge
  %inc18 = add nuw i32 %i.172, 1
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %3, align 4
  %cmp6 = icmp ult i32 %inc18, %56
  br i1 %cmp6, label %for.inc17.for.body7_crit_edge, label %for.inc17.for.end19_crit_edge

for.inc17.for.end19_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.inc17.for.body7_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

for.end19:                                        ; preds = %for.inc17.for.end19_crit_edge, %if.end.for.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %call) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aic5_resume(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %gc = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gc, align 4
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %1, i32 noundef 0) #7
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %4 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %call) #7
  %6 = load ptr, ptr @smr_cache, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 60
  tail call void %8(i32 noundef -1, ptr noundef %add.ptr.i) #7
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 -1) #7, !srcloc !28
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %revmap_size = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %revmap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp94.not = icmp eq i32 %14, 0
  br i1 %cmp94.not, label %irq_reg_writel.exit.if.end_crit_edge, label %for.body.lr.ph

irq_reg_writel.exit.if.end_crit_edge:             ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph:                                   ; preds = %irq_reg_writel.exit
  %reg_base.i46 = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %irq_reg_writel.exit68.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %irq_reg_writel.exit68.for.body_crit_edge ]
  %15 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i45 = icmp eq ptr %16, null
  br i1 %tobool.not.i45, label %do.body.i49, label %if.then.i47

if.then.i47:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i46, align 4
  tail call void %16(i32 noundef %i.095, ptr noundef %18) #7
  br label %irq_reg_writel.exit50

do.body.i49:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %i.095) #7
  %20 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i46, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !28
  br label %irq_reg_writel.exit50

irq_reg_writel.exit50:                            ; preds = %do.body.i49, %if.then.i47
  %22 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i52 = icmp eq ptr %23, null
  br i1 %tobool.not.i52, label %do.body.i58, label %if.then.i55

if.then.i55:                                      ; preds = %irq_reg_writel.exit50
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base.i46, align 4
  %add.ptr.i54 = getelementptr i8, ptr %25, i32 8
  tail call void %23(i32 noundef %i.095, ptr noundef %add.ptr.i54) #7
  br label %irq_reg_writel.exit59

do.body.i58:                                      ; preds = %irq_reg_writel.exit50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %i.095) #7
  %27 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i46, align 4
  %add.ptr3.i57 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i57, i32 %26) #7, !srcloc !28
  br label %irq_reg_writel.exit59

irq_reg_writel.exit59:                            ; preds = %do.body.i58, %if.then.i55
  %29 = load ptr, ptr @smr_cache, align 4
  %arrayidx = getelementptr i32, ptr %29, i32 %i.095
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i61 = icmp eq ptr %33, null
  br i1 %tobool.not.i61, label %do.body.i67, label %if.then.i64

if.then.i64:                                      ; preds = %irq_reg_writel.exit59
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base.i46, align 4
  %add.ptr.i63 = getelementptr i8, ptr %35, i32 4
  tail call void %33(i32 noundef %31, ptr noundef %add.ptr.i63) #7
  br label %irq_reg_writel.exit68

do.body.i67:                                      ; preds = %irq_reg_writel.exit59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %37 = ptrtoint ptr %reg_base.i46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base.i46, align 4
  %add.ptr3.i66 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i66, i32 %36) #7, !srcloc !28
  br label %irq_reg_writel.exit68

irq_reg_writel.exit68:                            ; preds = %do.body.i67, %if.then.i64
  %inc = add nuw i32 %i.095, 1
  %39 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %revmap_size, align 4
  %cmp = icmp ult i32 %inc, %40
  br i1 %cmp, label %irq_reg_writel.exit68.for.body_crit_edge, label %irq_reg_writel.exit68.if.end_crit_edge

irq_reg_writel.exit68.if.end_crit_edge:           ; preds = %irq_reg_writel.exit68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

irq_reg_writel.exit68.for.body_crit_edge:         ; preds = %irq_reg_writel.exit68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end:                                           ; preds = %irq_reg_writel.exit68.if.end_crit_edge, %irq_reg_writel.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp597.not = icmp eq i32 %42, 0
  br i1 %cmp597.not, label %if.end.for.end19_crit_edge, label %for.body6.lr.ph

if.end.for.end19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.body6.lr.ph:                                  ; preds = %if.end
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %5, i32 0, i32 8
  %wake_active = getelementptr inbounds %struct.irq_chip_generic, ptr %5, i32 0, i32 12
  %irq_base = getelementptr inbounds %struct.irq_chip_generic, ptr %5, i32 0, i32 6
  %reg_writel.i69 = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 3
  %reg_base.i71 = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  br label %for.body6

for.body6:                                        ; preds = %for.inc17.for.body6_crit_edge, %for.body6.lr.ph
  %i.198 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc18, %for.inc17.for.body6_crit_edge ]
  %shl = shl nuw i32 1, %i.198
  %43 = load ptr, ptr @smr_cache, align 4
  %tobool7.not = icmp eq ptr %43, null
  br i1 %tobool7.not, label %land.lhs.true, label %for.body6.if.end11_crit_edge

for.body6.if.end11_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %for.body6
  %44 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask_cache, align 4
  %46 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wake_active, align 4
  %48 = xor i32 %47, %45
  %49 = and i32 %48, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp9 = icmp eq i32 %49, 0
  br i1 %cmp9, label %land.lhs.true.for.inc17_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true.for.inc17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %for.body6.if.end11_crit_edge
  %50 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq_base, align 4
  %add = add i32 %51, %i.198
  %52 = ptrtoint ptr %reg_writel.i69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_writel.i69, align 4
  %tobool.not.i70 = icmp eq ptr %53, null
  br i1 %tobool.not.i70, label %do.body.i74, label %if.then.i72

if.then.i72:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %reg_base.i71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base.i71, align 4
  tail call void %53(i32 noundef %add, ptr noundef %55) #7
  br label %irq_reg_writel.exit75

do.body.i74:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %add) #7
  %57 = ptrtoint ptr %reg_base.i71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_base.i71, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #7, !srcloc !28
  br label %irq_reg_writel.exit75

irq_reg_writel.exit75:                            ; preds = %do.body.i74, %if.then.i72
  %59 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask_cache, align 4
  %and13 = and i32 %60, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %61 = ptrtoint ptr %reg_writel.i69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_writel.i69, align 4
  %tobool.not.i86 = icmp eq ptr %62, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %irq_reg_writel.exit75
  br i1 %tobool.not.i86, label %do.body.i83, label %if.then.i80

if.then.i80:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %reg_base.i71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_base.i71, align 4
  %add.ptr.i79 = getelementptr i8, ptr %64, i32 64
  tail call void %62(i32 noundef 1, ptr noundef %add.ptr.i79) #7
  br label %for.inc17

do.body.i83:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %reg_base.i71 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base.i71, align 4
  %add.ptr3.i82 = getelementptr i8, ptr %66, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i82, i32 16777216) #7, !srcloc !28
  br label %for.inc17

if.else:                                          ; preds = %irq_reg_writel.exit75
  br i1 %tobool.not.i86, label %do.body.i92, label %if.then.i89

if.then.i89:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %reg_base.i71 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_base.i71, align 4
  %add.ptr.i88 = getelementptr i8, ptr %68, i32 68
  tail call void %62(i32 noundef 1, ptr noundef %add.ptr.i88) #7
  br label %for.inc17

do.body.i92:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %reg_base.i71 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg_base.i71, align 4
  %add.ptr3.i91 = getelementptr i8, ptr %70, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i91, i32 16777216) #7, !srcloc !28
  br label %for.inc17

for.inc17:                                        ; preds = %do.body.i92, %if.then.i89, %do.body.i83, %if.then.i80, %land.lhs.true.for.inc17_crit_edge
  %inc18 = add nuw i32 %i.198, 1
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %3, align 4
  %cmp5 = icmp ult i32 %inc18, %72
  br i1 %cmp5, label %for.inc17.for.body6_crit_edge, label %for.inc17.for.end19_crit_edge

for.inc17.for.end19_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.inc17.for.body6_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

for.end19:                                        ; preds = %for.inc17.for.end19_crit_edge, %if.end.for.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %call) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aic5_pm_shutdown(ptr nocapture noundef readonly %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %gc = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gc, align 4
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %1, i32 noundef 0) #7
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %4 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %call) #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp28.not = icmp eq i32 %7, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %irq_base = getelementptr inbounds %struct.irq_chip_generic, ptr %5, i32 0, i32 6
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 3
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %irq_reg_writel.exit27.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %irq_reg_writel.exit27.for.body_crit_edge ]
  %8 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_base, align 4
  %add = add i32 %9, %i.029
  %10 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  tail call void %11(i32 noundef %add, ptr noundef %13) #7
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %add) #7
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #7, !srcloc !28
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %17 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i13 = icmp eq ptr %18, null
  br i1 %tobool.not.i13, label %do.body.i17, label %if.then.i15

if.then.i15:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 68
  tail call void %18(i32 noundef 1, ptr noundef %add.ptr.i) #7
  br label %irq_reg_writel.exit18

do.body.i17:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #7, !srcloc !28
  br label %irq_reg_writel.exit18

irq_reg_writel.exit18:                            ; preds = %do.body.i17, %if.then.i15
  %23 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i20 = icmp eq ptr %24, null
  br i1 %tobool.not.i20, label %do.body.i26, label %if.then.i23

if.then.i23:                                      ; preds = %irq_reg_writel.exit18
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %26, i32 72
  tail call void %24(i32 noundef 1, ptr noundef %add.ptr.i22) #7
  br label %irq_reg_writel.exit27

do.body.i26:                                      ; preds = %irq_reg_writel.exit18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i25 = getelementptr i8, ptr %28, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i25, i32 16777216) #7, !srcloc !28
  br label %irq_reg_writel.exit27

irq_reg_writel.exit27:                            ; preds = %do.body.i26, %if.then.i23
  %inc = add nuw i32 %i.029, 1
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %irq_reg_writel.exit27.for.body_crit_edge, label %irq_reg_writel.exit27.for.end_crit_edge

irq_reg_writel.exit27.for.end_crit_edge:          ; preds = %irq_reg_writel.exit27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

irq_reg_writel.exit27.for.body_crit_edge:         ; preds = %irq_reg_writel.exit27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %irq_reg_writel.exit27.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %call) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aic5_hw_init(ptr noundef %domain) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %domain, i32 noundef 0) #7
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 3
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %irq_reg_writel.exit.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 0, %entry ], [ %inc, %irq_reg_writel.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 56
  tail call void %1(i32 noundef 0, ptr noundef %add.ptr.i) #7
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #7, !srcloc !28
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %irq_reg_writel.exit.for.body_crit_edge

irq_reg_writel.exit.for.body_crit_edge:           ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %irq_reg_writel.exit
  %6 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i20 = icmp eq ptr %7, null
  br i1 %tobool.not.i20, label %do.body.i26, label %if.then.i23

if.then.i23:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %9, i32 60
  tail call void %7(i32 noundef -1, ptr noundef %add.ptr.i22) #7
  br label %irq_reg_writel.exit27

do.body.i26:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i25 = getelementptr i8, ptr %11, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i25, i32 -1) #7, !srcloc !28
  br label %irq_reg_writel.exit27

irq_reg_writel.exit27:                            ; preds = %do.body.i26, %if.then.i23
  %12 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i29 = icmp eq ptr %13, null
  br i1 %tobool.not.i29, label %do.body.i35, label %if.then.i32

if.then.i32:                                      ; preds = %irq_reg_writel.exit27
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %15, i32 108
  tail call void %13(i32 noundef 0, ptr noundef %add.ptr.i31) #7
  br label %irq_reg_writel.exit36

do.body.i35:                                      ; preds = %irq_reg_writel.exit27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i34 = getelementptr i8, ptr %17, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i34, i32 0) #7, !srcloc !28
  br label %irq_reg_writel.exit36

irq_reg_writel.exit36:                            ; preds = %do.body.i35, %if.then.i32
  %revmap_size = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 11
  %18 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %revmap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp272.not = icmp eq i32 %19, 0
  br i1 %cmp272.not, label %irq_reg_writel.exit36.for.end6_crit_edge, label %irq_reg_writel.exit36.for.body3_crit_edge

irq_reg_writel.exit36.for.body3_crit_edge:        ; preds = %irq_reg_writel.exit36
  br label %for.body3

irq_reg_writel.exit36.for.end6_crit_edge:         ; preds = %irq_reg_writel.exit36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end6

for.body3:                                        ; preds = %irq_reg_writel.exit70.for.body3_crit_edge, %irq_reg_writel.exit36.for.body3_crit_edge
  %i.173 = phi i32 [ %inc5, %irq_reg_writel.exit70.for.body3_crit_edge ], [ 0, %irq_reg_writel.exit36.for.body3_crit_edge ]
  %20 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i38 = icmp eq ptr %21, null
  br i1 %tobool.not.i38, label %do.body.i42, label %if.then.i40

if.then.i40:                                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 4
  tail call void %21(i32 noundef %i.173, ptr noundef %23) #7
  br label %irq_reg_writel.exit43

do.body.i42:                                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %i.173) #7
  %25 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !28
  br label %irq_reg_writel.exit43

irq_reg_writel.exit43:                            ; preds = %do.body.i42, %if.then.i40
  %27 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i45 = icmp eq ptr %28, null
  br i1 %tobool.not.i45, label %do.body.i51, label %if.then.i48

if.then.i48:                                      ; preds = %irq_reg_writel.exit43
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %30, i32 8
  tail call void %28(i32 noundef %i.173, ptr noundef %add.ptr.i47) #7
  br label %irq_reg_writel.exit52

do.body.i51:                                      ; preds = %irq_reg_writel.exit43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %i.173) #7
  %32 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i50 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i50, i32 %31) #7, !srcloc !28
  br label %irq_reg_writel.exit52

irq_reg_writel.exit52:                            ; preds = %do.body.i51, %if.then.i48
  %34 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i54 = icmp eq ptr %35, null
  br i1 %tobool.not.i54, label %do.body.i60, label %if.then.i57

if.then.i57:                                      ; preds = %irq_reg_writel.exit52
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %37, i32 68
  tail call void %35(i32 noundef 1, ptr noundef %add.ptr.i56) #7
  br label %irq_reg_writel.exit61

do.body.i60:                                      ; preds = %irq_reg_writel.exit52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i59 = getelementptr i8, ptr %39, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i59, i32 16777216) #7, !srcloc !28
  br label %irq_reg_writel.exit61

irq_reg_writel.exit61:                            ; preds = %do.body.i60, %if.then.i57
  %40 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i63 = icmp eq ptr %41, null
  br i1 %tobool.not.i63, label %do.body.i69, label %if.then.i66

if.then.i66:                                      ; preds = %irq_reg_writel.exit61
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %43, i32 72
  tail call void %41(i32 noundef 1, ptr noundef %add.ptr.i65) #7
  br label %irq_reg_writel.exit70

do.body.i69:                                      ; preds = %irq_reg_writel.exit61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i, align 4
  %add.ptr3.i68 = getelementptr i8, ptr %45, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i68, i32 16777216) #7, !srcloc !28
  br label %irq_reg_writel.exit70

irq_reg_writel.exit70:                            ; preds = %do.body.i69, %if.then.i66
  %inc5 = add nuw i32 %i.173, 1
  %46 = ptrtoint ptr %revmap_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %revmap_size, align 4
  %cmp2 = icmp ult i32 %inc5, %47
  br i1 %cmp2, label %irq_reg_writel.exit70.for.body3_crit_edge, label %irq_reg_writel.exit70.for.end6_crit_edge

irq_reg_writel.exit70.for.end6_crit_edge:         ; preds = %irq_reg_writel.exit70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end6

irq_reg_writel.exit70.for.body3_crit_edge:        ; preds = %irq_reg_writel.exit70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end6:                                         ; preds = %irq_reg_writel.exit70.for.end6_crit_edge, %irq_reg_writel.exit36.for.end6_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aic5_handle(ptr nocapture noundef readnone %regs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @aic5_domain, align 4
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %0, i32 noundef 0) #7
  %reg_readl.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %4, i32 16
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %2(ptr noundef %add.ptr3.i) #7
  br label %irq_reg_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !29
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  br label %irq_reg_readl.exit

irq_reg_readl.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %6, %if.else.i ]
  %7 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i7 = icmp eq ptr %8, null
  %9 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i9 = getelementptr i8, ptr %10, i32 24
  br i1 %tobool.not.i7, label %if.else.i12, label %if.then.i11

if.then.i11:                                      ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i10 = tail call i32 %8(ptr noundef %add.ptr3.i9) #7
  br label %irq_reg_readl.exit14

if.else.i12:                                      ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i9) #7, !srcloc !29
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  br label %irq_reg_readl.exit14

irq_reg_readl.exit14:                             ; preds = %if.else.i12, %if.then.i11
  %retval.0.i13 = phi i32 [ %call.i10, %if.then.i11 ], [ %12, %if.else.i12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i13)
  %tobool.not = icmp eq i32 %retval.0.i13, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %irq_reg_readl.exit14
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i15 = icmp eq ptr %14, null
  br i1 %tobool.not.i15, label %do.body.i, label %if.then.i16

if.then.i16:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 56
  tail call void %14(i32 noundef 0, ptr noundef %add.ptr.i) #7
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i18 = getelementptr i8, ptr %18, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i18, i32 0) #7, !srcloc !28
  br label %if.end

if.else:                                          ; preds = %irq_reg_readl.exit14
  call void @__sanitizer_cov_trace_pc() #9
  %19 = load ptr, ptr @aic5_domain, align 4
  %call3 = tail call i32 @generic_handle_domain_irq(ptr noundef %19, i32 noundef %retval.0.i) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body.i, %if.then.i16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_map_generic_chip(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic5_irq_domain_xlate(ptr noundef %d, ptr noundef %ctrlr, ptr noundef %intspec, i32 noundef %intsize, ptr noundef %out_hwirq, ptr noundef %out_type) #5 align 64 {
entry:
  %smr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_get_domain_generic_chip(ptr noundef %d, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smr) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @aic_common_irq_domain_xlate(ptr noundef %d, ptr noundef %ctrlr, ptr noundef %intspec, i32 noundef %intsize, ptr noundef %out_hwirq, ptr noundef %out_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %call) #7
  %0 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_hwirq, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  tail call void %3(i32 noundef %1, ptr noundef %5) #7
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base2.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !28
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %reg_readl.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i29 = icmp eq ptr %10, null
  %reg_base2.i30 = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %reg_base2.i30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base2.i30, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 4
  br i1 %tobool.not.i29, label %if.else.i, label %if.then.i31

if.then.i31:                                      ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %10(ptr noundef %add.ptr3.i) #7
  br label %irq_reg_readl.exit

if.else.i:                                        ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !29
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  br label %irq_reg_readl.exit

irq_reg_readl.exit:                               ; preds = %if.else.i, %if.then.i31
  %retval.0.i = phi i32 [ %call.i, %if.then.i31 ], [ %14, %if.else.i ]
  %15 = ptrtoint ptr %smr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %smr, align 4
  %arrayidx = getelementptr i32, ptr %intspec, i32 2
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @aic_common_set_priority(i32 noundef %17, ptr noundef nonnull %smr) #7
  %18 = ptrtoint ptr %smr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smr, align 4
  %20 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i33 = icmp eq ptr %21, null
  br i1 %tobool.not.i33, label %do.body.i38, label %if.then.i35

if.then.i35:                                      ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %reg_base2.i30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base2.i30, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  call void %21(i32 noundef %19, ptr noundef %add.ptr.i) #7
  br label %irq_reg_writel.exit39

do.body.i38:                                      ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @arm_heavy_mb() #7
  %24 = call i32 @llvm.bswap.i32(i32 %19) #7
  %25 = ptrtoint ptr %reg_base2.i30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base2.i30, align 4
  %add.ptr3.i37 = getelementptr i8, ptr %26, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i37, i32 %24) #7, !srcloc !28
  br label %irq_reg_writel.exit39

irq_reg_writel.exit39:                            ; preds = %do.body.i38, %if.then.i35
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %call, i32 noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %irq_reg_writel.exit39, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %irq_reg_writel.exit39 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aic_common_irq_domain_xlate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @aic_common_set_priority(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sama5d3_aic_irq_fixup() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aic_common_rtc_irq_fixup() #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sam9x60_aic_irq_fixup() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @aic_common_rtc_irq_fixup() #12
  tail call void @aic_common_rtt_irq_fixup() #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @aic_common_rtc_irq_fixup() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @aic_common_rtt_irq_fixup() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aic_common_set_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__of_table_sama5d2_aic5, !1, !"__of_table_sama5d2_aic5", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-atmel-aic5.c", i32 381, i32 1}
!2 = !{ptr @__of_table_sama5d3_aic5, !3, !"__of_table_sama5d3_aic5", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-atmel-aic5.c", i32 390, i32 1}
!4 = !{ptr @__of_table_sama5d4_aic5, !5, !"__of_table_sama5d4_aic5", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-atmel-aic5.c", i32 399, i32 1}
!6 = !{ptr @__of_table_sam9x60_aic5, !7, !"__of_table_sam9x60_aic5", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-atmel-aic5.c", i32 408, i32 1}
!8 = !{ptr @smr_cache, !9, !"smr_cache", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-atmel-aic5.c", i32 153, i32 13}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-atmel-aic5.c", i32 341, i32 51}
!12 = !{ptr @aic5_domain, !13, !"aic5_domain", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-atmel-aic5.c", i32 68, i32 27}
!14 = !{ptr @aic5_irq_ops, !15, !"aic5_irq_ops", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-atmel-aic5.c", i32 303, i32 36}
!16 = !{ptr @aic5_irq_fixups, !17, !"aic5_irq_fixups", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-atmel-aic5.c", i32 319, i32 34}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2153680620}
!28 = !{i64 6030409}
!29 = !{i64 6030827}
!30 = !{i64 2153681490}
