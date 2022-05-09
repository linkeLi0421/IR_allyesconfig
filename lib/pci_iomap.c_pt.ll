; ModuleID = '/llk/IR_all_yes/lib/pci_iomap.c_pt.bc'
source_filename = "../lib/pci_iomap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pci_iomap_range\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_iomap_range\09\09\09\09"
module asm "\09.long\09__crc_pci_iomap_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_iomap_range:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_iomap_range\22\09\09\09\09\09"
module asm "__kstrtabns_pci_iomap_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_iomap_wc_range\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_iomap_wc_range\09\09\09\09"
module asm "\09.long\09__crc_pci_iomap_wc_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_iomap_wc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_iomap_wc_range\22\09\09\09\09\09"
module asm "__kstrtabns_pci_iomap_wc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pci_iomap\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_iomap\09\09\09\09"
module asm "\09.long\09__crc_pci_iomap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_iomap\22\09\09\09\09\09"
module asm "__kstrtabns_pci_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_iomap_wc\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_iomap_wc\09\09\09\09"
module asm "\09.long\09__crc_pci_iomap_wc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_iomap_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_iomap_wc\22\09\09\09\09\09"
module asm "__kstrtabns_pci_iomap_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@__kstrtab_pci_iomap_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_iomap_range = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_iomap_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_iomap_range to i32), ptr @__kstrtab_pci_iomap_range, ptr @__kstrtabns_pci_iomap_range }, section "___ksymtab+pci_iomap_range", align 4
@__kstrtab_pci_iomap_wc_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_iomap_wc_range = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_iomap_wc_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_iomap_wc_range to i32), ptr @__kstrtab_pci_iomap_wc_range, ptr @__kstrtabns_pci_iomap_wc_range }, section "___ksymtab_gpl+pci_iomap_wc_range", align 4
@__kstrtab_pci_iomap = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_iomap = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_iomap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_iomap to i32), ptr @__kstrtab_pci_iomap, ptr @__kstrtabns_pci_iomap }, section "___ksymtab+pci_iomap", align 4
@__kstrtab_pci_iomap_wc = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_iomap_wc = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_iomap_wc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_iomap_wc to i32), ptr @__kstrtab_pci_iomap_wc, ptr @__kstrtabns_pci_iomap_wc }, section "___ksymtab_gpl+pci_iomap_wc", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_pci_iomap, ptr @__ksymtab_pci_iomap_range, ptr @__ksymtab_pci_iomap_wc, ptr @__ksymtab_pci_iomap_wc_range], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_iomap_range(ptr nocapture noundef readonly %dev, i32 noundef %bar, i32 noundef %offset, i32 noundef %maxlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %sub = sub i32 1, %1
  %add = add i32 %sub, %3
  %cond = select i1 %cmp, i32 0, i32 %add
  %flags12 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar, i32 3
  %4 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %offset)
  %cmp13.not = icmp ule i32 %cond, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp13.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub14 = sub i32 %cond, %offset
  %add15 = add i32 %1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %tobool16.not = icmp ne i32 %maxlen, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14, i32 %maxlen)
  %cmp17 = icmp ugt i32 %sub14, %maxlen
  %or.cond51 = select i1 %tobool16.not, i1 %cmp17, i1 false
  %len.0 = select i1 %or.cond51, i32 %maxlen, i32 %sub14
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %call = tail call ptr @ioport_map(i32 noundef %add15, i32 noundef %len.0) #4
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %and23 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.then25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #3
  %call26 = tail call ptr @ioremap(i32 noundef %add15, i32 noundef %len.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end22.cleanup_crit_edge, %if.then21, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.then21 ], [ %call26, %if.then25 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end22.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioport_map(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_iomap_wc_range(ptr nocapture noundef readonly %dev, i32 noundef %bar, i32 noundef %offset, i32 noundef %maxlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %sub = sub i32 1, %1
  %add = add i32 %sub, %3
  %cond = select i1 %cmp, i32 0, i32 %add
  %flags12 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar, i32 3
  %4 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags12, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %offset)
  %cmp13.not = icmp ule i32 %cond, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool14.not = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp13.not, i1 true, i1 %tobool14.not
  %and23 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond49 = select i1 %or.cond, i1 true, i1 %tobool24.not
  br i1 %or.cond49, label %if.end.cleanup_crit_edge, label %if.then25

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %tobool19.not = icmp ne i32 %maxlen, 0
  %sub17 = sub i32 %cond, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17, i32 %maxlen)
  %cmp20 = icmp ugt i32 %sub17, %maxlen
  %or.cond48 = select i1 %tobool19.not, i1 %cmp20, i1 false
  %len.0 = select i1 %or.cond48, i32 %maxlen, i32 %sub17
  %add18 = add i32 %1, %offset
  %call = tail call ptr @ioremap_wc(i32 noundef %add18, i32 noundef %len.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.then25 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_iomap(ptr nocapture noundef readonly %dev, i32 noundef %bar, i32 noundef %maxlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %flags12.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar, i32 3
  %4 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp13.not.i = icmp eq i32 %cond.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %or.cond.i = select i1 %cmp13.not.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %entry.pci_iomap_range.exit_crit_edge, label %if.end.i

entry.pci_iomap_range.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %pci_iomap_range.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %tobool16.not.i = icmp ne i32 %maxlen, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %maxlen)
  %cmp17.i = icmp ugt i32 %cond.i, %maxlen
  %or.cond51.i = select i1 %tobool16.not.i, i1 %cmp17.i, i1 false
  %len.0.i = select i1 %or.cond51.i, i32 %maxlen, i32 %cond.i
  %and.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  %call.i = tail call ptr @ioport_map(i32 noundef %1, i32 noundef %len.0.i) #4
  br label %pci_iomap_range.exit

if.end22.i:                                       ; preds = %if.end.i
  %and23.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.pci_iomap_range.exit_crit_edge, label %if.then25.i

if.end22.i.pci_iomap_range.exit_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %pci_iomap_range.exit

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #3
  %call26.i = tail call ptr @ioremap(i32 noundef %1, i32 noundef %len.0.i) #4
  br label %pci_iomap_range.exit

pci_iomap_range.exit:                             ; preds = %if.then25.i, %if.end22.i.pci_iomap_range.exit_crit_edge, %if.then21.i, %entry.pci_iomap_range.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.then21.i ], [ %call26.i, %if.then25.i ], [ null, %entry.pci_iomap_range.exit_crit_edge ], [ null, %if.end22.i.pci_iomap_range.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_iomap_wc(ptr nocapture noundef readonly %dev, i32 noundef %bar, i32 noundef %maxlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %flags12.i = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %bar, i32 3
  %4 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags12.i, align 4
  %and.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.pci_iomap_wc_range.exit_crit_edge

entry.pci_iomap_wc_range.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %pci_iomap_wc_range.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp13.not.i = icmp eq i32 %cond.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool14.not.i = icmp eq i32 %1, 0
  %or.cond.i = select i1 %cmp13.not.i, i1 true, i1 %tobool14.not.i
  %and23.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %or.cond49.i = select i1 %or.cond.i, i1 true, i1 %tobool24.not.i
  br i1 %or.cond49.i, label %if.end.i.pci_iomap_wc_range.exit_crit_edge, label %if.then25.i

if.end.i.pci_iomap_wc_range.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %pci_iomap_wc_range.exit

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %tobool19.not.i = icmp ne i32 %maxlen, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %maxlen)
  %cmp20.i = icmp ugt i32 %cond.i, %maxlen
  %or.cond48.i = select i1 %tobool19.not.i, i1 %cmp20.i, i1 false
  %len.0.i = select i1 %or.cond48.i, i32 %maxlen, i32 %cond.i
  %call.i = tail call ptr @ioremap_wc(i32 noundef %1, i32 noundef %len.0.i) #4
  br label %pci_iomap_wc_range.exit

pci_iomap_wc_range.exit:                          ; preds = %if.then25.i, %if.end.i.pci_iomap_wc_range.exit_crit_edge, %entry.pci_iomap_wc_range.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.then25.i ], [ null, %entry.pci_iomap_wc_range.exit_crit_edge ], [ null, %if.end.i.pci_iomap_wc_range.exit_crit_edge ]
  ret ptr %retval.0.i
}

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind uwtable(sync) }
attributes #3 = { nomerge }
attributes #4 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab_pci_iomap_range, !1, !"__ksymtab_pci_iomap_range", i1 false, i1 false}
!1 = !{!"../lib/pci_iomap.c", i32 50, i32 1}
!2 = !{ptr @__ksymtab_pci_iomap_wc_range, !3, !"__ksymtab_pci_iomap_wc_range", i1 false, i1 false}
!3 = !{!"../lib/pci_iomap.c", i32 95, i32 1}
!4 = !{ptr @__ksymtab_pci_iomap, !5, !"__ksymtab_pci_iomap", i1 false, i1 false}
!5 = !{!"../lib/pci_iomap.c", i32 115, i32 1}
!6 = !{ptr @__ksymtab_pci_iomap_wc, !7, !"__ksymtab_pci_iomap_wc", i1 false, i1 false}
!7 = !{!"../lib/pci_iomap.c", i32 136, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
