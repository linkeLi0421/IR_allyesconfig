; ModuleID = '/llk/IR_all_yes/kernel/irq/irq_sim.c_pt.bc'
source_filename = "../kernel/irq/irq_sim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+irq_domain_create_sim\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_domain_create_sim\09\09\09\09"
module asm "\09.long\09__crc_irq_domain_create_sim\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_create_sim:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_create_sim\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_create_sim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_domain_remove_sim\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_domain_remove_sim\09\09\09\09"
module asm "\09.long\09__crc_irq_domain_remove_sim\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_remove_sim:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_remove_sim\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_remove_sim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_irq_domain_create_sim\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_irq_domain_create_sim\09\09\09\09"
module asm "\09.long\09__crc_devm_irq_domain_create_sim\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_irq_domain_create_sim:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_irq_domain_create_sim\22\09\09\09\09\09"
module asm "__kstrtabns_devm_irq_domain_create_sim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_sim_work_ctx = type { %struct.irq_work, i32, i32, ptr, ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.rcuwait = type { ptr }
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
%struct.irq_sim_irq_ctx = type { i32, i8, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@irq_sim_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @irq_sim_domain_map, ptr @irq_sim_domain_unmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_irq_domain_create_sim = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_create_sim = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_create_sim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_create_sim to i32), ptr @__kstrtab_irq_domain_create_sim, ptr @__kstrtabns_irq_domain_create_sim }, section "___ksymtab_gpl+irq_domain_create_sim", align 4
@__kstrtab_irq_domain_remove_sim = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_remove_sim = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_remove_sim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_remove_sim to i32), ptr @__kstrtab_irq_domain_remove_sim, ptr @__kstrtabns_irq_domain_remove_sim }, section "___ksymtab_gpl+irq_domain_remove_sim", align 4
@__kstrtab_devm_irq_domain_create_sim = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_irq_domain_create_sim = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_irq_domain_create_sim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_irq_domain_create_sim to i32), ptr @__kstrtab_devm_irq_domain_create_sim, ptr @__kstrtabns_devm_irq_domain_create_sim }, section "___ksymtab_gpl+devm_irq_domain_create_sim", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@irq_sim_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_sim_irqmask, ptr null, ptr @irq_sim_irqunmask, ptr null, ptr null, ptr null, ptr @irq_sim_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_sim_get_irqchip_state, ptr @irq_sim_set_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irq_sim\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"irq_sim_domain_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 149, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"irq_sim_irqchip\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 91, i32 24 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [24 x i8] c"../kernel/irq/irq_sim.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 92, i32 12 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_devm_irq_domain_create_sim, ptr @__ksymtab_irq_domain_create_sim, ptr @__ksymtab_irq_domain_remove_sim, ptr @irq_sim_domain_ops, ptr @irq_sim_irqchip, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_sim_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_sim_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @irq_domain_create_sim(ptr noundef %fwnode, i32 noundef %num_irqs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @bitmap_zalloc(i32 noundef %num_irqs, i32 noundef 3264) #6
  %pending = getelementptr inbounds %struct.irq_sim_work_ctx, ptr %call7.i, i32 0, i32 3
  %1 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %pending, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.err_free_work_ctx_crit_edge, label %if.end5

if.end.err_free_work_ctx_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_work_ctx

if.end5:                                          ; preds = %if.end
  %call.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode, i32 noundef %num_irqs, i32 noundef %num_irqs, i32 noundef 0, ptr noundef nonnull @irq_sim_domain_ops, ptr noundef nonnull %call7.i) #6
  %domain = getelementptr inbounds %struct.irq_sim_work_ctx, ptr %call7.i, i32 0, i32 4
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %domain, align 4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %err_free_bitmap, label %if.end10

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %irq_count = getelementptr inbounds %struct.irq_sim_work_ctx, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %irq_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %num_irqs, ptr %irq_count, align 4
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call7.i, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i, i32 8
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @irq_sim_handle_irq, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %call7.i, i32 12
  %7 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  br label %cleanup

err_free_bitmap:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pending, align 8
  tail call void @bitmap_free(ptr noundef %9) #6
  br label %err_free_work_ctx

err_free_work_ctx:                                ; preds = %err_free_bitmap, %if.end.err_free_work_ctx_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_work_ctx, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end10 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %err_free_work_ctx ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_sim_handle_irq(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pending = getelementptr inbounds %struct.irq_sim_work_ctx, ptr %work, i32 0, i32 3
  %irq_count = getelementptr inbounds %struct.irq_sim_work_ctx, ptr %work, i32 0, i32 2
  %domain = getelementptr inbounds %struct.irq_sim_work_ctx, ptr %work, i32 0, i32 4
  br label %bitmap_empty.exit

bitmap_empty.exit:                                ; preds = %irq_find_mapping.exit, %entry
  %offset.0 = phi i32 [ 0, %entry ], [ %call3, %irq_find_mapping.exit ]
  %0 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_count, align 4
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending, align 4
  %call.i = call i32 @_find_first_bit_be(ptr noundef %3, i32 noundef %1) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %1)
  %cmp4.i = icmp eq i32 %call.i, %1
  br i1 %cmp4.i, label %while.end, label %while.body

while.body:                                       ; preds = %bitmap_empty.exit
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending, align 4
  %6 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_count, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef %5, i32 noundef %7, i32 noundef %offset.0) #6
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pending, align 4
  call void @_clear_bit(i32 noundef %call3, ptr noundef %9) #6
  %10 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %irq.i, align 4, !annotation !21
  %call.i14 = call ptr @__irq_resolve_mapping(ptr noundef %11, i32 noundef %call3, ptr noundef nonnull %irq.i) #6
  %tobool.not.i15 = icmp eq ptr %call.i14, null
  br i1 %tobool.not.i15, label %while.body.irq_find_mapping.exit_crit_edge, label %if.then.i16

while.body.irq_find_mapping.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i16:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i16, %while.body.irq_find_mapping.exit_crit_edge
  %retval.0.i17 = phi i32 [ %14, %if.then.i16 ], [ 0, %while.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  %call6 = call ptr @irq_to_desc(i32 noundef %retval.0.i17) #6
  call void @handle_simple_irq(ptr noundef %call6) #6
  br label %bitmap_empty.exit

while.end:                                        ; preds = %bitmap_empty.exit
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_domain_remove_sim(ptr noundef %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @irq_work_sync(ptr noundef %1) #6
  %pending = getelementptr inbounds %struct.irq_sim_work_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending, align 4
  tail call void @bitmap_free(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %1) #6
  tail call void @irq_domain_remove(ptr noundef %domain) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_irq_domain_create_sim(ptr noundef %dev, ptr noundef %fwnode, i32 noundef %num_irqs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_create_sim(ptr noundef %fwnode, i32 noundef %num_irqs)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_irq_domain_remove_sim, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %host_data.i.i.i = getelementptr inbounds %struct.irq_domain, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %host_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data.i.i.i, align 4
  tail call void @irq_work_sync(ptr noundef %1) #6
  %pending.i.i.i = getelementptr inbounds %struct.irq_sim_work_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pending.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending.i.i.i, align 4
  tail call void @bitmap_free(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %1) #6
  tail call void @irq_domain_remove(ptr noundef %call) #6
  %4 = inttoptr i32 %call.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_irq_domain_remove_sim(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data.i = getelementptr inbounds %struct.irq_domain, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %host_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data.i, align 4
  tail call void @irq_work_sync(ptr noundef %1) #6
  %pending.i = getelementptr inbounds %struct.irq_sim_work_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending.i, align 4
  tail call void @bitmap_free(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %1) #6
  tail call void @irq_domain_remove(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_sim_domain_map(ptr nocapture noundef readonly %domain, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @irq_set_chip(i32 noundef %virq, ptr noundef nonnull @irq_sim_irqchip) #6
  %call2 = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef nonnull %call7.i.i) #6
  tail call void @__irq_set_handler(i32 noundef %virq, ptr noundef nonnull @handle_simple_irq, i32 noundef 0, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 6144, i32 noundef 1024) #6
  %work_ctx3 = getelementptr inbounds %struct.irq_sim_irq_ctx, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %work_ctx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %work_ctx3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_sim_domain_unmap(ptr noundef %domain, i32 noundef %virq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #6
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void @__irq_set_handler(i32 noundef %virq, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  tail call void @irq_domain_reset_irq_data(ptr noundef %call) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @irq_sim_irqmask(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %enabled = getelementptr inbounds %struct.irq_sim_irq_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @irq_sim_irqunmask(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %enabled = getelementptr inbounds %struct.irq_sim_irq_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enabled, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irq_sim_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %tobool.not = icmp ult i32 %type, 4
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, -16
  store i32 %and.i, ptr %1, align 4
  %4 = load ptr, ptr %common.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %or.i = or i32 %6, %type
  store i32 %or.i, ptr %4, align 4
  %7 = load ptr, ptr %common.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %or6.i = or i32 %9, 33554432
  store i32 %or6.i, ptr %7, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irq_sim_get_irqchip_state(ptr nocapture noundef readonly %data, i32 noundef %which, ptr nocapture noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cond = icmp eq i32 %which, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %enabled = getelementptr inbounds %struct.irq_sim_irq_ctx, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %work_ctx = getelementptr inbounds %struct.irq_sim_irq_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %work_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %work_ctx, align 4
  %pending = getelementptr inbounds %struct.irq_sim_work_ctx, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pending, align 4
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %9, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3 = icmp ne i32 %13, 0
  %frombool = zext i1 %tobool3 to i8
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_sim_set_irqchip_state(ptr nocapture noundef readonly %data, i32 noundef %which, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cond = icmp eq i32 %which, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %enabled = getelementptr inbounds %struct.irq_sim_irq_ctx, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %work_ctx = getelementptr inbounds %struct.irq_sim_irq_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %work_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %work_ctx, align 4
  %pending = getelementptr inbounds %struct.irq_sim_work_ctx, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pending, align 4
  br i1 %state, label %if.then4, label %assign_bit.exit

assign_bit.exit:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %9) #6
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef %3, ptr noundef %9) #6
  %10 = ptrtoint ptr %work_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %work_ctx, align 4
  %call6 = tail call zeroext i1 @irq_work_queue(ptr noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %assign_bit.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %assign_bit.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_irq_domain_create_sim, !1, !"__ksymtab_irq_domain_create_sim", i1 false, i1 false}
!1 = !{!"../kernel/irq/irq_sim.c", i32 195, i32 1}
!2 = !{ptr @__ksymtab_irq_domain_remove_sim, !3, !"__ksymtab_irq_domain_remove_sim", i1 false, i1 false}
!3 = !{!"../kernel/irq/irq_sim.c", i32 213, i32 1}
!4 = !{ptr @__ksymtab_devm_irq_domain_create_sim, !5, !"__ksymtab_devm_irq_domain_create_sim", i1 false, i1 false}
!5 = !{!"../kernel/irq/irq_sim.c", i32 250, i32 1}
!6 = !{ptr @irq_sim_domain_ops, !7, !"irq_sim_domain_ops", i1 false, i1 false}
!7 = !{!"../kernel/irq/irq_sim.c", i32 149, i32 36}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/irq/irq_sim.c", i32 92, i32 12}
!10 = !{ptr @irq_sim_irqchip, !11, !"irq_sim_irqchip", i1 false, i1 false}
!11 = !{!"../kernel/irq/irq_sim.c", i32 91, i32 24}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{i8 0, i8 2}
