; ModuleID = '/llk/IR_all_yes/mm/maccess.c_pt.bc'
source_filename = "../mm/maccess.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+copy_from_kernel_nofault\22, \22a\22\09"
module asm "\09.weak\09__crc_copy_from_kernel_nofault\09\09\09\09"
module asm "\09.long\09__crc_copy_from_kernel_nofault\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_from_kernel_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_from_kernel_nofault\22\09\09\09\09\09"
module asm "__kstrtabns_copy_from_kernel_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+copy_from_user_nofault\22, \22a\22\09"
module asm "\09.weak\09__crc_copy_from_user_nofault\09\09\09\09"
module asm "\09.long\09__crc_copy_from_user_nofault\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_from_user_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_from_user_nofault\22\09\09\09\09\09"
module asm "__kstrtabns_copy_from_user_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+copy_to_user_nofault\22, \22a\22\09"
module asm "\09.weak\09__crc_copy_to_user_nofault\09\09\09\09"
module asm "\09.long\09__crc_copy_to_user_nofault\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_to_user_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_to_user_nofault\22\09\09\09\09\09"
module asm "__kstrtabns_copy_to_user_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.69, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.18 }
%union.anon.18 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_copy_from_kernel_nofault = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_from_kernel_nofault = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_from_kernel_nofault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_from_kernel_nofault to i32), ptr @__kstrtab_copy_from_kernel_nofault, ptr @__kstrtabns_copy_from_kernel_nofault }, section "___ksymtab_gpl+copy_from_kernel_nofault", align 4
@__kstrtab_copy_from_user_nofault = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_from_user_nofault = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_from_user_nofault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_from_user_nofault to i32), ptr @__kstrtab_copy_from_user_nofault, ptr @__kstrtabns_copy_from_user_nofault }, section "___ksymtab_gpl+copy_from_user_nofault", align 4
@__kstrtab_copy_to_user_nofault = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_to_user_nofault = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_to_user_nofault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_to_user_nofault to i32), ptr @__kstrtab_copy_to_user_nofault, ptr @__kstrtabns_copy_to_user_nofault }, section "___ksymtab_gpl+copy_to_user_nofault", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_copy_from_kernel_nofault, ptr @__ksymtab_copy_from_user_nofault, ptr @__ksymtab_copy_to_user_nofault], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local zeroext i1 @copy_from_kernel_nofault_allowed(ptr noundef %unsafe_src, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_from_kernel_nofault(ptr nocapture noundef writeonly %dst, ptr noundef %src, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @copy_from_kernel_nofault_allowed(ptr noundef %src, i32 noundef %size)
  br i1 %call, label %if.end, label %entry.cleanup129_crit_edge

entry.cleanup129_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup129

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp199 = icmp ugt i32 %size, 7
  br i1 %cmp199, label %if.end.do.body_crit_edge, label %if.end.while.cond34.preheader_crit_edge

if.end.while.cond34.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond34.preheader

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

while.cond34.preheader:                           ; preds = %do.end28.while.cond34.preheader_crit_edge, %if.end.while.cond34.preheader_crit_edge
  %size.addr.0.lcssa = phi i32 [ %size, %if.end.while.cond34.preheader_crit_edge ], [ %sub, %do.end28.while.cond34.preheader_crit_edge ]
  %src.addr.0.lcssa = phi ptr [ %src, %if.end.while.cond34.preheader_crit_edge ], [ %add.ptr29, %do.end28.while.cond34.preheader_crit_edge ]
  %dst.addr.0.lcssa = phi ptr [ %dst, %if.end.while.cond34.preheader_crit_edge ], [ %add.ptr, %do.end28.while.cond34.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size.addr.0.lcssa)
  %cmp35205 = icmp ugt i32 %size.addr.0.lcssa, 3
  br i1 %cmp35205, label %while.cond34.preheader.do.body37_crit_edge, label %while.cond34.preheader.while.cond68.preheader_crit_edge

while.cond34.preheader.while.cond68.preheader_crit_edge: ; preds = %while.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond68.preheader

while.cond34.preheader.do.body37_crit_edge:       ; preds = %while.cond34.preheader
  br label %do.body37

do.body:                                          ; preds = %do.end28.do.body_crit_edge, %if.end.do.body_crit_edge
  %dst.addr.0202 = phi ptr [ %add.ptr, %do.end28.do.body_crit_edge ], [ %dst, %if.end.do.body_crit_edge ]
  %src.addr.0201 = phi ptr [ %add.ptr29, %do.end28.do.body_crit_edge ], [ %src, %if.end.do.body_crit_edge ]
  %size.addr.0200 = phi i32 [ %sub, %do.end28.do.body_crit_edge ], [ %size, %if.end.do.body_crit_edge ]
  %6 = ptrtoint ptr %src.addr.0201 to i32
  %7 = tail call { i32, i32 } asm sideeffect "1:\09ldr $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %6, i32 -14, i32 0) #3, !srcloc !17
  %asmresult10 = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult10)
  %tobool12.not = icmp eq i32 %asmresult10, 0
  %asmresult11 = extractvalue { i32, i32 } %7, 1
  br i1 %tobool12.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %asmresult11.le = extractvalue { i32, i32 } %7, 1
  %__val.sroa.0.0.insert.ext179 = zext i32 %asmresult11.le to i64
  %__val.sroa.0.0.insert.shift180 = shl nuw i64 %__val.sroa.0.0.insert.ext179, 32
  %__val.sroa.0.0.insert.insert181 = or i64 %__val.sroa.0.0.insert.shift180, 4294967295
  %8 = ptrtoint ptr %dst.addr.0202 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %__val.sroa.0.0.insert.insert181, ptr %dst.addr.0202, align 1
  br label %Efault

cleanup:                                          ; preds = %do.body
  %add = add i32 %6, 4
  %9 = tail call { i32, i32 } asm sideeffect "1:\09ldr $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %add, i32 -14, i32 0) #3, !srcloc !18
  %asmresult16 = extractvalue { i32, i32 } %9, 0
  %asmresult17 = extractvalue { i32, i32 } %9, 1
  %__val.sroa.5.0.insert.ext = zext i32 %asmresult17 to i64
  %__val.sroa.0.0.insert.ext = zext i32 %asmresult11 to i64
  %__val.sroa.0.0.insert.shift = shl nuw i64 %__val.sroa.0.0.insert.ext, 32
  %__val.sroa.0.0.insert.insert = or i64 %__val.sroa.0.0.insert.shift, %__val.sroa.5.0.insert.ext
  %10 = ptrtoint ptr %dst.addr.0202 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %__val.sroa.0.0.insert.insert, ptr %dst.addr.0202, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult16)
  %tobool20.not = icmp eq i32 %asmresult16, 0
  br i1 %tobool20.not, label %do.end28, label %cleanup.Efault_crit_edge

cleanup.Efault_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %Efault

do.end28:                                         ; preds = %cleanup
  %add.ptr = getelementptr i8, ptr %dst.addr.0202, i32 8
  %add.ptr29 = getelementptr i8, ptr %src.addr.0201, i32 8
  %sub = add i32 %size.addr.0200, -8
  %cmp = icmp ugt i32 %sub, 7
  br i1 %cmp, label %do.end28.do.body_crit_edge, label %do.end28.while.cond34.preheader_crit_edge

do.end28.while.cond34.preheader_crit_edge:        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond34.preheader

do.end28.do.body_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

while.cond68.preheader:                           ; preds = %do.end59.while.cond68.preheader_crit_edge, %while.cond34.preheader.while.cond68.preheader_crit_edge
  %size.addr.2.lcssa = phi i32 [ %size.addr.0.lcssa, %while.cond34.preheader.while.cond68.preheader_crit_edge ], [ %sub62, %do.end59.while.cond68.preheader_crit_edge ]
  %src.addr.2.lcssa = phi ptr [ %src.addr.0.lcssa, %while.cond34.preheader.while.cond68.preheader_crit_edge ], [ %add.ptr61, %do.end59.while.cond68.preheader_crit_edge ]
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.0.lcssa, %while.cond34.preheader.while.cond68.preheader_crit_edge ], [ %add.ptr60, %do.end59.while.cond68.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size.addr.2.lcssa)
  %cmp69212 = icmp ugt i32 %size.addr.2.lcssa, 1
  br i1 %cmp69212, label %while.cond68.preheader.do.body71_crit_edge, label %while.cond68.preheader.while.cond99.preheader_crit_edge

while.cond68.preheader.while.cond99.preheader_crit_edge: ; preds = %while.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond99.preheader

while.cond68.preheader.do.body71_crit_edge:       ; preds = %while.cond68.preheader
  br label %do.body71

do.body37:                                        ; preds = %do.end59.do.body37_crit_edge, %while.cond34.preheader.do.body37_crit_edge
  %dst.addr.2208 = phi ptr [ %add.ptr60, %do.end59.do.body37_crit_edge ], [ %dst.addr.0.lcssa, %while.cond34.preheader.do.body37_crit_edge ]
  %src.addr.2207 = phi ptr [ %add.ptr61, %do.end59.do.body37_crit_edge ], [ %src.addr.0.lcssa, %while.cond34.preheader.do.body37_crit_edge ]
  %size.addr.2206 = phi i32 [ %sub62, %do.end59.do.body37_crit_edge ], [ %size.addr.0.lcssa, %while.cond34.preheader.do.body37_crit_edge ]
  %11 = ptrtoint ptr %src.addr.2207 to i32
  %12 = tail call { i32, i32 } asm sideeffect "1:\09ldr $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %11, i32 -14, i32 0) #3, !srcloc !19
  %asmresult42 = extractvalue { i32, i32 } %12, 0
  %asmresult43 = extractvalue { i32, i32 } %12, 1
  %13 = ptrtoint ptr %dst.addr.2208 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %asmresult43, ptr %dst.addr.2208, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult42)
  %tobool49.not = icmp eq i32 %asmresult42, 0
  br i1 %tobool49.not, label %do.end59, label %do.body37.Efault_crit_edge

do.body37.Efault_crit_edge:                       ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #5
  br label %Efault

do.end59:                                         ; preds = %do.body37
  %add.ptr60 = getelementptr i8, ptr %dst.addr.2208, i32 4
  %add.ptr61 = getelementptr i8, ptr %src.addr.2207, i32 4
  %sub62 = add i32 %size.addr.2206, -4
  %cmp35 = icmp ugt i32 %sub62, 3
  br i1 %cmp35, label %do.end59.do.body37_crit_edge, label %do.end59.while.cond68.preheader_crit_edge

do.end59.while.cond68.preheader_crit_edge:        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond68.preheader

do.end59.do.body37_crit_edge:                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body37

while.cond99.preheader:                           ; preds = %do.end93.while.cond99.preheader_crit_edge, %while.cond68.preheader.while.cond99.preheader_crit_edge
  %size.addr.4.lcssa = phi i32 [ %size.addr.2.lcssa, %while.cond68.preheader.while.cond99.preheader_crit_edge ], [ %sub96, %do.end93.while.cond99.preheader_crit_edge ]
  %src.addr.4.lcssa = phi ptr [ %src.addr.2.lcssa, %while.cond68.preheader.while.cond99.preheader_crit_edge ], [ %add.ptr95, %do.end93.while.cond99.preheader_crit_edge ]
  %dst.addr.4.lcssa = phi ptr [ %dst.addr.2.lcssa, %while.cond68.preheader.while.cond99.preheader_crit_edge ], [ %add.ptr94, %do.end93.while.cond99.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.4.lcssa)
  %cmp100.not219 = icmp eq i32 %size.addr.4.lcssa, 0
  br i1 %cmp100.not219, label %while.cond99.preheader.while.end128_crit_edge, label %do.body102

while.cond99.preheader.while.end128_crit_edge:    ; preds = %while.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end128

do.body71:                                        ; preds = %do.end93.do.body71_crit_edge, %while.cond68.preheader.do.body71_crit_edge
  %dst.addr.4215 = phi ptr [ %add.ptr94, %do.end93.do.body71_crit_edge ], [ %dst.addr.2.lcssa, %while.cond68.preheader.do.body71_crit_edge ]
  %src.addr.4214 = phi ptr [ %add.ptr95, %do.end93.do.body71_crit_edge ], [ %src.addr.2.lcssa, %while.cond68.preheader.do.body71_crit_edge ]
  %size.addr.4213 = phi i32 [ %sub96, %do.end93.do.body71_crit_edge ], [ %size.addr.2.lcssa, %while.cond68.preheader.do.body71_crit_edge ]
  %14 = ptrtoint ptr %src.addr.4214 to i32
  %15 = tail call { i32, i16 } asm sideeffect "1:\09ldrh $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %14, i32 -14, i32 0) #3, !srcloc !20
  %asmresult76 = extractvalue { i32, i16 } %15, 0
  %asmresult77 = extractvalue { i32, i16 } %15, 1
  %16 = ptrtoint ptr %dst.addr.4215 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %asmresult77, ptr %dst.addr.4215, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult76)
  %tobool83.not = icmp eq i32 %asmresult76, 0
  br i1 %tobool83.not, label %do.end93, label %do.body71.Efault_crit_edge

do.body71.Efault_crit_edge:                       ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #5
  br label %Efault

do.end93:                                         ; preds = %do.body71
  %add.ptr94 = getelementptr i8, ptr %dst.addr.4215, i32 2
  %add.ptr95 = getelementptr i8, ptr %src.addr.4214, i32 2
  %sub96 = add i32 %size.addr.4213, -2
  %cmp69 = icmp ugt i32 %sub96, 1
  br i1 %cmp69, label %do.end93.do.body71_crit_edge, label %do.end93.while.cond99.preheader_crit_edge

do.end93.while.cond99.preheader_crit_edge:        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond99.preheader

do.end93.do.body71_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body71

do.body102:                                       ; preds = %while.cond99.preheader
  %17 = ptrtoint ptr %src.addr.4.lcssa to i32
  %18 = tail call { i32, i8 } asm sideeffect "1:\09ldrb $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %17, i32 -14, i32 0) #3, !srcloc !21
  %asmresult107 = extractvalue { i32, i8 } %18, 0
  %asmresult108 = extractvalue { i32, i8 } %18, 1
  %19 = ptrtoint ptr %dst.addr.4.lcssa to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %asmresult108, ptr %dst.addr.4.lcssa, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult107)
  %tobool114.not = icmp eq i32 %asmresult107, 0
  br i1 %tobool114.not, label %do.body102.while.end128_crit_edge, label %do.body102.Efault_crit_edge

do.body102.Efault_crit_edge:                      ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #5
  br label %Efault

do.body102.while.end128_crit_edge:                ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end128

while.end128:                                     ; preds = %do.body102.while.end128_crit_edge, %while.cond99.preheader.while.end128_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  br label %cleanup129.sink.split

Efault:                                           ; preds = %do.body102.Efault_crit_edge, %do.body71.Efault_crit_edge, %do.body37.Efault_crit_edge, %cleanup.Efault_crit_edge, %cleanup.thread
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  br label %cleanup129.sink.split

cleanup129.sink.split:                            ; preds = %Efault, %while.end128
  %retval.0.ph = phi i32 [ 0, %while.end128 ], [ -14, %Efault ]
  %20 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i169 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i169 to ptr
  %task.i.i170 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i170 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i170, align 8
  %pagefault_disabled.i.i171 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i171 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i171, align 8
  %dec.i.i175 = add i32 %25, -1
  store i32 %dec.i.i175, ptr %pagefault_disabled.i.i171, align 8
  br label %cleanup129

cleanup129:                                       ; preds = %cleanup129.sink.split, %entry.cleanup129_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup129_crit_edge ], [ %retval.0.ph, %cleanup129.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_to_kernel_nofault(ptr noundef %dst, ptr nocapture noundef readonly %src, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp152 = icmp ugt i32 %size, 7
  br i1 %cmp152, label %entry.do.body_crit_edge, label %entry.while.cond12.preheader_crit_edge

entry.while.cond12.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond12.preheader

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

while.cond12.preheader:                           ; preds = %do.end.while.cond12.preheader_crit_edge, %entry.while.cond12.preheader_crit_edge
  %size.addr.0.lcssa = phi i32 [ %size, %entry.while.cond12.preheader_crit_edge ], [ %sub, %do.end.while.cond12.preheader_crit_edge ]
  %src.addr.0.lcssa = phi ptr [ %src, %entry.while.cond12.preheader_crit_edge ], [ %add.ptr7, %do.end.while.cond12.preheader_crit_edge ]
  %dst.addr.0.lcssa = phi ptr [ %dst, %entry.while.cond12.preheader_crit_edge ], [ %add.ptr, %do.end.while.cond12.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size.addr.0.lcssa)
  %cmp13158 = icmp ugt i32 %size.addr.0.lcssa, 3
  br i1 %cmp13158, label %while.cond12.preheader.do.body15_crit_edge, label %while.cond12.preheader.while.cond42.preheader_crit_edge

while.cond12.preheader.while.cond42.preheader_crit_edge: ; preds = %while.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond42.preheader

while.cond12.preheader.do.body15_crit_edge:       ; preds = %while.cond12.preheader
  br label %do.body15

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry.do.body_crit_edge
  %dst.addr.0155 = phi ptr [ %add.ptr, %do.end.do.body_crit_edge ], [ %dst, %entry.do.body_crit_edge ]
  %src.addr.0154 = phi ptr [ %add.ptr7, %do.end.do.body_crit_edge ], [ %src, %entry.do.body_crit_edge ]
  %size.addr.0153 = phi i32 [ %sub, %do.end.do.body_crit_edge ], [ %size, %entry.do.body_crit_edge ]
  %6 = ptrtoint ptr %dst.addr.0155 to i32
  %7 = ptrtoint ptr %src.addr.0154 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %src.addr.0154, align 1
  %9 = tail call { i32, i32 } asm sideeffect "1:\09str\09${2:R}, [$1], #4\0A2:\09str\09${2:Q}, [$1]\0A3:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $3\0A\09b\093b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4b\0A\09.long\092b, 4b\0A\09.popsection", "=r,=r,r,i,0,1,~{cc}"(i64 %8, i32 -14, i32 0, i32 %6) #3, !srcloc !23
  %asmresult = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool2.not = icmp eq i32 %asmresult, 0
  br i1 %tobool2.not, label %do.end, label %do.body.Efault_crit_edge

do.body.Efault_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %Efault

do.end:                                           ; preds = %do.body
  %add.ptr = getelementptr i8, ptr %dst.addr.0155, i32 8
  %add.ptr7 = getelementptr i8, ptr %src.addr.0154, i32 8
  %sub = add i32 %size.addr.0153, -8
  %cmp = icmp ugt i32 %sub, 7
  br i1 %cmp, label %do.end.do.body_crit_edge, label %do.end.while.cond12.preheader_crit_edge

do.end.while.cond12.preheader_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond12.preheader

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

while.cond42.preheader:                           ; preds = %do.end33.while.cond42.preheader_crit_edge, %while.cond12.preheader.while.cond42.preheader_crit_edge
  %size.addr.2.lcssa = phi i32 [ %size.addr.0.lcssa, %while.cond12.preheader.while.cond42.preheader_crit_edge ], [ %sub36, %do.end33.while.cond42.preheader_crit_edge ]
  %src.addr.2.lcssa = phi ptr [ %src.addr.0.lcssa, %while.cond12.preheader.while.cond42.preheader_crit_edge ], [ %add.ptr35, %do.end33.while.cond42.preheader_crit_edge ]
  %dst.addr.2.lcssa = phi ptr [ %dst.addr.0.lcssa, %while.cond12.preheader.while.cond42.preheader_crit_edge ], [ %add.ptr34, %do.end33.while.cond42.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size.addr.2.lcssa)
  %cmp43165 = icmp ugt i32 %size.addr.2.lcssa, 1
  br i1 %cmp43165, label %while.cond42.preheader.do.body45_crit_edge, label %while.cond42.preheader.while.cond70.preheader_crit_edge

while.cond42.preheader.while.cond70.preheader_crit_edge: ; preds = %while.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond70.preheader

while.cond42.preheader.do.body45_crit_edge:       ; preds = %while.cond42.preheader
  br label %do.body45

do.body15:                                        ; preds = %do.end33.do.body15_crit_edge, %while.cond12.preheader.do.body15_crit_edge
  %dst.addr.2161 = phi ptr [ %add.ptr34, %do.end33.do.body15_crit_edge ], [ %dst.addr.0.lcssa, %while.cond12.preheader.do.body15_crit_edge ]
  %src.addr.2160 = phi ptr [ %add.ptr35, %do.end33.do.body15_crit_edge ], [ %src.addr.0.lcssa, %while.cond12.preheader.do.body15_crit_edge ]
  %size.addr.2159 = phi i32 [ %sub36, %do.end33.do.body15_crit_edge ], [ %size.addr.0.lcssa, %while.cond12.preheader.do.body15_crit_edge ]
  %10 = ptrtoint ptr %dst.addr.2161 to i32
  %11 = ptrtoint ptr %src.addr.2160 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %src.addr.2160, align 1
  %13 = tail call i32 asm sideeffect "1:\09str $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,r,r,i,0,~{cc}"(i32 %12, i32 %10, i32 -14, i32 0) #3, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not = icmp eq i32 %13, 0
  br i1 %tobool23.not, label %do.end33, label %do.body15.Efault_crit_edge

do.body15.Efault_crit_edge:                       ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #5
  br label %Efault

do.end33:                                         ; preds = %do.body15
  %add.ptr34 = getelementptr i8, ptr %dst.addr.2161, i32 4
  %add.ptr35 = getelementptr i8, ptr %src.addr.2160, i32 4
  %sub36 = add i32 %size.addr.2159, -4
  %cmp13 = icmp ugt i32 %sub36, 3
  br i1 %cmp13, label %do.end33.do.body15_crit_edge, label %do.end33.while.cond42.preheader_crit_edge

do.end33.while.cond42.preheader_crit_edge:        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond42.preheader

do.end33.do.body15_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body15

while.cond70.preheader:                           ; preds = %do.end64.while.cond70.preheader_crit_edge, %while.cond42.preheader.while.cond70.preheader_crit_edge
  %size.addr.4.lcssa = phi i32 [ %size.addr.2.lcssa, %while.cond42.preheader.while.cond70.preheader_crit_edge ], [ %sub67, %do.end64.while.cond70.preheader_crit_edge ]
  %src.addr.4.lcssa = phi ptr [ %src.addr.2.lcssa, %while.cond42.preheader.while.cond70.preheader_crit_edge ], [ %add.ptr66, %do.end64.while.cond70.preheader_crit_edge ]
  %dst.addr.4.lcssa = phi ptr [ %dst.addr.2.lcssa, %while.cond42.preheader.while.cond70.preheader_crit_edge ], [ %add.ptr65, %do.end64.while.cond70.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.4.lcssa)
  %cmp71.not172 = icmp eq i32 %size.addr.4.lcssa, 0
  br i1 %cmp71.not172, label %while.cond70.preheader.while.end98_crit_edge, label %do.body74

while.cond70.preheader.while.end98_crit_edge:     ; preds = %while.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end98

do.body45:                                        ; preds = %do.end64.do.body45_crit_edge, %while.cond42.preheader.do.body45_crit_edge
  %dst.addr.4168 = phi ptr [ %add.ptr65, %do.end64.do.body45_crit_edge ], [ %dst.addr.2.lcssa, %while.cond42.preheader.do.body45_crit_edge ]
  %src.addr.4167 = phi ptr [ %add.ptr66, %do.end64.do.body45_crit_edge ], [ %src.addr.2.lcssa, %while.cond42.preheader.do.body45_crit_edge ]
  %size.addr.4166 = phi i32 [ %sub67, %do.end64.do.body45_crit_edge ], [ %size.addr.2.lcssa, %while.cond42.preheader.do.body45_crit_edge ]
  %14 = ptrtoint ptr %dst.addr.4168 to i32
  %15 = ptrtoint ptr %src.addr.4167 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %src.addr.4167, align 1
  %17 = tail call i32 asm sideeffect "1:\09strh $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,r,r,i,0,~{cc}"(i16 %16, i32 %14, i32 -14, i32 0) #3, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool54.not = icmp eq i32 %17, 0
  br i1 %tobool54.not, label %do.end64, label %do.body45.Efault_crit_edge

do.body45.Efault_crit_edge:                       ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #5
  br label %Efault

do.end64:                                         ; preds = %do.body45
  %add.ptr65 = getelementptr i8, ptr %dst.addr.4168, i32 2
  %add.ptr66 = getelementptr i8, ptr %src.addr.4167, i32 2
  %sub67 = add i32 %size.addr.4166, -2
  %cmp43 = icmp ugt i32 %sub67, 1
  br i1 %cmp43, label %do.end64.do.body45_crit_edge, label %do.end64.while.cond70.preheader_crit_edge

do.end64.while.cond70.preheader_crit_edge:        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond70.preheader

do.end64.do.body45_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body45

do.body74:                                        ; preds = %while.cond70.preheader
  %18 = ptrtoint ptr %dst.addr.4.lcssa to i32
  %19 = ptrtoint ptr %src.addr.4.lcssa to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %src.addr.4.lcssa, align 1
  %21 = tail call i32 asm sideeffect "1:\09strb $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,r,r,i,0,~{cc}"(i8 %20, i32 %18, i32 -14, i32 0) #3, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool84.not = icmp eq i32 %21, 0
  br i1 %tobool84.not, label %do.body74.while.end98_crit_edge, label %do.body74.Efault_crit_edge

do.body74.Efault_crit_edge:                       ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #5
  br label %Efault

do.body74.while.end98_crit_edge:                  ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end98

while.end98:                                      ; preds = %do.body74.while.end98_crit_edge, %while.cond70.preheader.while.end98_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  br label %cleanup99

Efault:                                           ; preds = %do.body74.Efault_crit_edge, %do.body45.Efault_crit_edge, %do.body15.Efault_crit_edge, %do.body.Efault_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  br label %cleanup99

cleanup99:                                        ; preds = %Efault, %while.end98
  %retval.0 = phi i32 [ -14, %Efault ], [ 0, %while.end98 ]
  %22 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i136 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i136 to ptr
  %task.i.i137 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i137 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i137, align 8
  %pagefault_disabled.i.i138 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i138 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i138, align 8
  %dec.i.i139 = add i32 %27, -1
  store i32 %dec.i.i139, ptr %pagefault_disabled.i.i138, align 8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @strncpy_from_kernel_nofault(ptr nocapture noundef %dst, ptr noundef %unsafe_addr, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp = icmp slt i32 %count, 1
  br i1 %cmp, label %entry.cleanup26_crit_edge, label %if.end, !prof !27

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup26

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @copy_from_kernel_nofault_allowed(ptr noundef %unsafe_addr, i32 noundef %count)
  br i1 %call, label %if.end3, label %if.end.cleanup26_crit_edge

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup26

if.end3:                                          ; preds = %if.end
  %0 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  %sub.ptr.rhs.cast = ptrtoint ptr %unsafe_addr to i32
  br label %do.body

do.body:                                          ; preds = %do.end14.do.body_crit_edge, %if.end3
  %src.0 = phi ptr [ %unsafe_addr, %if.end3 ], [ %incdec.ptr15, %do.end14.do.body_crit_edge ]
  %dst.addr.0 = phi ptr [ %dst, %if.end3 ], [ %incdec.ptr, %do.end14.do.body_crit_edge ]
  %6 = ptrtoint ptr %src.0 to i32
  %7 = tail call { i32, i8 } asm sideeffect "1:\09ldrb $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %6, i32 -14, i32 0) #3, !srcloc !28
  %asmresult = extractvalue { i32, i8 } %7, 0
  %asmresult5 = extractvalue { i32, i8 } %7, 1
  %8 = ptrtoint ptr %dst.addr.0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %asmresult5, ptr %dst.addr.0, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool7.not = icmp eq i32 %asmresult, 0
  br i1 %tobool7.not, label %do.end14, label %Efault

do.end14:                                         ; preds = %do.body
  %incdec.ptr15 = getelementptr i8, ptr %src.0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %asmresult5)
  %tobool17.not = icmp ne i8 %asmresult5, 0
  %incdec.ptr = getelementptr i8, ptr %dst.addr.0, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %count)
  %cmp18 = icmp slt i32 %sub.ptr.sub, %count
  %or.cond = select i1 %tobool17.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %do.end14.do.body_crit_edge, label %do.end20

do.end14.do.body_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end20:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  %9 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i40 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i40 to ptr
  %task.i.i41 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i41, align 8
  %pagefault_disabled.i.i42 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i42, align 8
  %dec.i.i = add i32 %14, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i42, align 8
  br label %cleanup26.sink.split

Efault:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  %15 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i43 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i43 to ptr
  %task.i.i44 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i44, align 8
  %pagefault_disabled.i.i45 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i45, align 8
  %dec.i.i46 = add i32 %20, -1
  store i32 %dec.i.i46, ptr %pagefault_disabled.i.i45, align 8
  %arrayidx25 = getelementptr i8, ptr %dst.addr.0, i32 -1
  br label %cleanup26.sink.split

cleanup26.sink.split:                             ; preds = %Efault, %do.end20
  %arrayidx25.sink = phi ptr [ %arrayidx25, %Efault ], [ %dst.addr.0, %do.end20 ]
  %retval.0.ph = phi i32 [ -14, %Efault ], [ %sub.ptr.sub, %do.end20 ]
  %21 = ptrtoint ptr %arrayidx25.sink to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx25.sink, align 1
  br label %cleanup26

cleanup26:                                        ; preds = %cleanup26.sink.split, %if.end.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup26_crit_edge ], [ -34, %if.end.cleanup26_crit_edge ], [ %retval.0.ph, %cleanup26.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_from_user_nofault(ptr noundef %dst, ptr noundef %src, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 %size, i32 -1226833920) #6, !srcloc !29
  %asmresult = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.then, label %entry.if.end.thread_crit_edge

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i7 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i7 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 213
  %5 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pagefault_disabled.i.i, align 8
  %inc.i.i = add i32 %6, 1
  store i32 %inc.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #3
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #3
  %7 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #2, !srcloc !30
  %and.i.i.i = and i32 %9, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %call1.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %src, i32 noundef %size) #3
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  %10 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i8 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i8 to ptr
  %task.i.i9 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i.i9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i.i9, align 8
  %pagefault_disabled.i.i10 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 213
  %14 = ptrtoint ptr %pagefault_disabled.i.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pagefault_disabled.i.i10, align 8
  %dec.i.i = add i32 %15, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %phi.cmp = icmp eq i32 %call1.i.i, 0
  %spec.select = select i1 %phi.cmp, i32 0, i32 -14
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.then, %entry.if.end.thread_crit_edge
  %16 = phi i32 [ -14, %entry.if.end.thread_crit_edge ], [ %spec.select, %if.then ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_to_user_nofault(ptr noundef %dst, ptr noundef %src, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dst, i32 %size, i32 -1226833920) #6, !srcloc !33
  %asmresult = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.then, label %entry.if.end.thread_crit_edge

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread

if.then:                                          ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 213
  %5 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pagefault_disabled.i.i, align 8
  %inc.i.i = add i32 %6, 1
  store i32 %inc.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  %call.i = tail call zeroext i1 @should_fail_usercopy() #3
  br i1 %call.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef %size) #3
  tail call void @__check_object_size(ptr noundef %src, i32 noundef %size, i1 noundef zeroext true) #3
  %call.i8.i = tail call i32 @arm_copy_to_user(ptr noundef %dst, ptr noundef %src, i32 noundef %size) #3
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge
  %retval.0.i = phi i32 [ %call.i8.i, %if.end.i ], [ %size, %if.then.if.end_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  %7 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i7 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i7 to ptr
  %task.i.i8 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i8, align 8
  %pagefault_disabled.i.i9 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 213
  %11 = ptrtoint ptr %pagefault_disabled.i.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagefault_disabled.i.i9, align 8
  %dec.i.i = add i32 %12, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %phi.cmp = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %phi.cmp, i32 0, i32 -14
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end, %entry.if.end.thread_crit_edge
  %13 = phi i32 [ -14, %entry.if.end.thread_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @strncpy_from_user_nofault(ptr noundef %dst, ptr noundef %unsafe_addr, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp = icmp slt i32 %count, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  %call = tail call i32 @strncpy_from_user(ptr noundef %dst, ptr noundef %unsafe_addr, i32 noundef %count) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  %6 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i17 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i17 to ptr
  %task.i.i18 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i18, align 8
  %pagefault_disabled.i.i19 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 213
  %10 = ptrtoint ptr %pagefault_disabled.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pagefault_disabled.i.i19, align 8
  %dec.i.i = add i32 %11, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i19, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %count)
  %cmp2.not = icmp slt i32 %call, %count
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %sub = add nsw i32 %count, -1
  %arrayidx = getelementptr i8, ptr %dst, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp sgt i32 %call, 0
  %inc = zext i1 %cmp4 to i32
  %spec.select = add nsw i32 %call, %inc
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %count, %if.then3 ], [ %spec.select, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @strnlen_user_nofault(ptr noundef %unsafe_addr, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !16
  %call = tail call i32 @strnlen_user(ptr noundef %unsafe_addr, i32 noundef %count) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !22
  %6 = tail call i32 @llvm.read_register.i32(metadata !6) #3
  %and.i.i.i1 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i1 to ptr
  %task.i.i2 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i2, align 8
  %pagefault_disabled.i.i3 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 213
  %10 = ptrtoint ptr %pagefault_disabled.i.i3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pagefault_disabled.i.i3, align 8
  %dec.i.i = add i32 %11, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i3, align 8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab_copy_from_kernel_nofault, !1, !"__ksymtab_copy_from_kernel_nofault", i1 false, i1 false}
!1 = !{!"../mm/maccess.c", i32 49, i32 1}
!2 = !{ptr @__ksymtab_copy_from_user_nofault, !3, !"__ksymtab_copy_from_user_nofault", i1 false, i1 false}
!3 = !{!"../mm/maccess.c", i32 237, i32 1}
!4 = !{ptr @__ksymtab_copy_to_user_nofault, !5, !"__ksymtab_copy_to_user_nofault", i1 false, i1 false}
!5 = !{!"../mm/maccess.c", i32 264, i32 1}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 2152735593}
!17 = !{i64 2153257103, i64 2153257139, i64 2153257155, i64 2153257196, i64 2153257217, i64 2153257241, i64 2153257263, i64 2153257280, i64 2153257304, i64 2153257343, i64 2153257364, i64 2153257388}
!18 = !{i64 2153257610, i64 2153257646, i64 2153257662, i64 2153257703, i64 2153257724, i64 2153257748, i64 2153257770, i64 2153257787, i64 2153257811, i64 2153257850, i64 2153257871, i64 2153257895}
!19 = !{i64 2153261107, i64 2153261143, i64 2153261159, i64 2153261200, i64 2153261221, i64 2153261245, i64 2153261267, i64 2153261284, i64 2153261308, i64 2153261347, i64 2153261368, i64 2153261392}
!20 = !{i64 2153265113, i64 2153265149, i64 2153265165, i64 2153265206, i64 2153265227, i64 2153265251, i64 2153265273, i64 2153265290, i64 2153265314, i64 2153265353, i64 2153265374, i64 2153265398}
!21 = !{i64 2153269108, i64 2153269144, i64 2153269160, i64 2153269201, i64 2153269222, i64 2153269246, i64 2153269268, i64 2153269285, i64 2153269309, i64 2153269348, i64 2153269369, i64 2153269393}
!22 = !{i64 2152735800}
!23 = !{i64 2153282486, i64 2153282532, i64 2153282100, i64 2153282116, i64 2153282157, i64 2153282178, i64 2153282202, i64 2153282219, i64 2153282243, i64 2153282282, i64 2153282303, i64 2153282327, i64 2153282351}
!24 = !{i64 2153285394, i64 2153285429, i64 2153285445, i64 2153285486, i64 2153285507, i64 2153285531, i64 2153285548, i64 2153285572, i64 2153285611, i64 2153285632, i64 2153285656}
!25 = !{i64 2153288846, i64 2153288881, i64 2153288897, i64 2153288938, i64 2153288959, i64 2153288983, i64 2153289000, i64 2153289024, i64 2153289063, i64 2153289084, i64 2153289108}
!26 = !{i64 2153292283, i64 2153292318, i64 2153292334, i64 2153292375, i64 2153292396, i64 2153292420, i64 2153292437, i64 2153292461, i64 2153292500, i64 2153292521, i64 2153292545}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2153295420, i64 2153295456, i64 2153295472, i64 2153295513, i64 2153295534, i64 2153295558, i64 2153295580, i64 2153295597, i64 2153295621, i64 2153295660, i64 2153295681, i64 2153295705}
!29 = !{i64 2153298784, i64 2153298809}
!30 = !{i64 5228331}
!31 = !{i64 5228528}
!32 = !{i64 2152713761}
!33 = !{i64 2153301134, i64 2153301159}
