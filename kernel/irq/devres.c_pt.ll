; ModuleID = '/llk/IR_all_yes/kernel/irq/devres.c_pt.bc'
source_filename = "../kernel/irq/devres.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+devm_request_threaded_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_request_threaded_irq\09\09\09\09"
module asm "\09.long\09__crc_devm_request_threaded_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_request_threaded_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_request_threaded_irq\22\09\09\09\09\09"
module asm "__kstrtabns_devm_request_threaded_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_request_any_context_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_request_any_context_irq\09\09\09\09"
module asm "\09.long\09__crc_devm_request_any_context_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_request_any_context_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_request_any_context_irq\22\09\09\09\09\09"
module asm "__kstrtabns_devm_request_any_context_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_free_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_free_irq\09\09\09\09"
module asm "\09.long\09__crc_devm_free_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_free_irq\22\09\09\09\09\09"
module asm "__kstrtabns_devm_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_irq_alloc_descs\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_irq_alloc_descs\09\09\09\09"
module asm "\09.long\09__crc___devm_irq_alloc_descs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_irq_alloc_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_irq_alloc_descs\22\09\09\09\09\09"
module asm "__kstrtabns___devm_irq_alloc_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_irq_alloc_generic_chip\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_irq_alloc_generic_chip\09\09\09\09"
module asm "\09.long\09__crc_devm_irq_alloc_generic_chip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_irq_alloc_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_irq_alloc_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_devm_irq_alloc_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_irq_setup_generic_chip\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_irq_setup_generic_chip\09\09\09\09"
module asm "\09.long\09__crc_devm_irq_setup_generic_chip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_irq_setup_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_irq_setup_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_devm_irq_setup_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.irq_devres = type { i32, ptr }
%struct.irq_desc_devres = type { i32, i32 }
%struct.irq_generic_chip_devres = type { ptr, i32, i32, i32 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"devm_irq_release\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_devm_request_threaded_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_request_threaded_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_request_threaded_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_request_threaded_irq to i32), ptr @__kstrtab_devm_request_threaded_irq, ptr @__kstrtabns_devm_request_threaded_irq }, section "___ksymtab+devm_request_threaded_irq", align 4
@__kstrtab_devm_request_any_context_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_request_any_context_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_request_any_context_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_request_any_context_irq to i32), ptr @__kstrtab_devm_request_any_context_irq, ptr @__kstrtabns_devm_request_any_context_irq }, section "___ksymtab+devm_request_any_context_irq", align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/irq/devres.c\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_devm_free_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_free_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_free_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_free_irq to i32), ptr @__kstrtab_devm_free_irq, ptr @__kstrtabns_devm_free_irq }, section "___ksymtab+devm_free_irq", align 4
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"devm_irq_desc_release\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab___devm_irq_alloc_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_irq_alloc_descs = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_irq_alloc_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_irq_alloc_descs to i32), ptr @__kstrtab___devm_irq_alloc_descs, ptr @__kstrtabns___devm_irq_alloc_descs }, section "___ksymtab_gpl+__devm_irq_alloc_descs", align 4
@__kstrtab_devm_irq_alloc_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_irq_alloc_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_irq_alloc_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_irq_alloc_generic_chip to i32), ptr @__kstrtab_devm_irq_alloc_generic_chip, ptr @__kstrtabns_devm_irq_alloc_generic_chip }, section "___ksymtab_gpl+devm_irq_alloc_generic_chip", align 4
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"devm_irq_remove_generic_chip\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_devm_irq_setup_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_irq_setup_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_irq_setup_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_irq_setup_generic_chip to i32), ptr @__kstrtab_devm_irq_setup_generic_chip, ptr @__kstrtabns_devm_irq_setup_generic_chip }, section "___ksymtab_gpl+devm_irq_setup_generic_chip", align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 59, i32 7 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 143, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 185, i32 7 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [23 x i8] c"../kernel/irq/devres.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 268, i32 7 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab___devm_irq_alloc_descs, ptr @__ksymtab_devm_free_irq, ptr @__ksymtab_devm_irq_alloc_generic_chip, ptr @__ksymtab_devm_irq_setup_generic_chip, ptr @__ksymtab_devm_request_any_context_irq, ptr @__ksymtab_devm_request_threaded_irq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef %handler, ptr noundef %thread_fn, i32 noundef %irqflags, ptr noundef %devname, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_irq_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %devname, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.if.end4_crit_edge

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end.i, %if.then2.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %devname.addr.0 = phi ptr [ %devname, %if.end.if.end4_crit_edge ], [ %3, %if.end.i ], [ %1, %if.then2.if.end4_crit_edge ]
  %call5 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef %handler, ptr noundef %thread_fn, i32 noundef %irqflags, ptr noundef %devname.addr.0, ptr noundef %dev_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @devres_free(ptr noundef nonnull %call) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq, ptr %call, align 4
  %dev_id10 = getelementptr inbounds %struct.irq_devres, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %dev_id10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev_id, ptr %dev_id10, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_irq_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res, align 4
  %dev_id = getelementptr inbounds %struct.irq_devres, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef %handler, i32 noundef %irqflags, ptr noundef %devname, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_irq_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %devname, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.if.end4_crit_edge

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end.i, %if.then2.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %devname.addr.0 = phi ptr [ %devname, %if.end.if.end4_crit_edge ], [ %3, %if.end.i ], [ %1, %if.then2.if.end4_crit_edge ]
  %call5 = tail call i32 @request_any_context_irq(i32 noundef %irq, ptr noundef %handler, i32 noundef %irqflags, ptr noundef %devname.addr.0, ptr noundef %dev_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @devres_free(ptr noundef nonnull %call) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq, ptr %call, align 4
  %dev_id9 = getelementptr inbounds %struct.irq_devres, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %dev_id9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev_id, ptr %dev_id9, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then6 ], [ %call5, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_any_context_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devm_free_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %match_data = alloca %struct.irq_devres, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match_data) #5
  %0 = getelementptr inbounds %struct.irq_devres, ptr %match_data, i32 0, i32 1
  %1 = ptrtoint ptr %match_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %irq, ptr %match_data, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev_id, ptr %0, align 4
  %call = call i32 @devres_destroy(ptr noundef %dev, ptr noundef nonnull @devm_irq_release, ptr noundef nonnull @devm_irq_match, ptr noundef nonnull %match_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !29

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call22 = call ptr @free_irq(i32 noundef %irq, ptr noundef %dev_id) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @devm_irq_match(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev_id = getelementptr inbounds %struct.irq_devres, ptr %res, i32 0, i32 1
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %dev_id2 = getelementptr inbounds %struct.irq_devres, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %dev_id2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id2, align 4
  %cmp3 = icmp eq ptr %5, %7
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__devm_irq_alloc_descs(ptr noundef %dev, i32 noundef %irq, i32 noundef %from, i32 noundef %cnt, i32 noundef %node, ptr noundef %owner, ptr noundef %affinity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_irq_desc_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__irq_alloc_descs(i32 noundef %irq, i32 noundef %from, i32 noundef %cnt, i32 noundef %node, ptr noundef %owner, ptr noundef %affinity) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @devres_free(ptr noundef nonnull %call) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %call, align 4
  %cnt5 = getelementptr inbounds %struct.irq_desc_devres, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %cnt5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cnt, ptr %cnt5, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ %call1, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_irq_desc_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res, align 4
  %cnt = getelementptr inbounds %struct.irq_desc_devres, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnt, align 4
  tail call void @irq_free_descs(i32 noundef %1, i32 noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_irq_alloc_generic_chip(ptr noundef %dev, ptr noundef %name, i32 noundef %num_ct, i32 noundef %irq_base, ptr noundef %reg_base, ptr noundef %handler) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_ct, i32 180) #5
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 120) #5
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @irq_init_generic_chip(ptr noundef nonnull %call.i, ptr noundef %name, i32 noundef %num_ct, i32 noundef %irq_base, ptr noundef %reg_base, ptr noundef %handler) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_init_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_irq_setup_generic_chip(ptr noundef %dev, ptr noundef %gc, i32 noundef %msk, i32 noundef %flags, i32 noundef %clr, i32 noundef %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_irq_remove_generic_chip, i32 noundef 16, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @irq_setup_generic_chip(ptr noundef %gc, i32 noundef %msk, i32 noundef %flags, i32 noundef %clr, i32 noundef %set) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %gc, ptr %call, align 4
  %msk2 = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %msk2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %msk, ptr %msk2, align 4
  %clr3 = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %clr3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %clr, ptr %clr3, align 4
  %set4 = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %set4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %set, ptr %set4, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_irq_remove_generic_chip(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %msk = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %msk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msk, align 4
  %clr = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %res, i32 0, i32 2
  %4 = ptrtoint ptr %clr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clr, align 4
  %set = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %res, i32 0, i32 3
  %6 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %set, align 4
  tail call void @irq_remove_generic_chip(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_setup_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_free_descs(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_remove_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/irq/devres.c", i32 59, i32 7}
!2 = !{ptr @__ksymtab_devm_request_threaded_irq, !3, !"__ksymtab_devm_request_threaded_irq", i1 false, i1 false}
!3 = !{!"../kernel/irq/devres.c", i32 80, i32 1}
!4 = !{ptr @__ksymtab_devm_request_any_context_irq, !5, !"__ksymtab_devm_request_any_context_irq", i1 false, i1 false}
!5 = !{!"../kernel/irq/devres.c", i32 126, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/irq/devres.c", i32 143, i32 2}
!8 = !{ptr @__ksymtab_devm_free_irq, !9, !"__ksymtab_devm_free_irq", i1 false, i1 false}
!9 = !{!"../kernel/irq/devres.c", i32 147, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/irq/devres.c", i32 185, i32 7}
!12 = !{ptr @__ksymtab___devm_irq_alloc_descs, !13, !"__ksymtab___devm_irq_alloc_descs", i1 false, i1 false}
!13 = !{!"../kernel/irq/devres.c", i32 201, i32 1}
!14 = !{ptr @__ksymtab_devm_irq_alloc_generic_chip, !15, !"__ksymtab_devm_irq_alloc_generic_chip", i1 false, i1 false}
!15 = !{!"../kernel/irq/devres.c", i32 231, i32 1}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/irq/devres.c", i32 268, i32 7}
!18 = !{ptr @__ksymtab_devm_irq_setup_generic_chip, !19, !"__ksymtab_devm_irq_setup_generic_chip", i1 false, i1 false}
!19 = !{!"../kernel/irq/devres.c", i32 283, i32 1}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
