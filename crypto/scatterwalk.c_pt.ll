; ModuleID = '/llk/IR_all_yes/crypto/scatterwalk.c_pt.bc'
source_filename = "../crypto/scatterwalk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+scatterwalk_copychunks\22, \22a\22\09"
module asm "\09.weak\09__crc_scatterwalk_copychunks\09\09\09\09"
module asm "\09.long\09__crc_scatterwalk_copychunks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scatterwalk_copychunks:\09\09\09\09\09"
module asm "\09.asciz \09\22scatterwalk_copychunks\22\09\09\09\09\09"
module asm "__kstrtabns_scatterwalk_copychunks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scatterwalk_map_and_copy\22, \22a\22\09"
module asm "\09.weak\09__crc_scatterwalk_map_and_copy\09\09\09\09"
module asm "\09.long\09__crc_scatterwalk_map_and_copy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scatterwalk_map_and_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22scatterwalk_map_and_copy\22\09\09\09\09\09"
module asm "__kstrtabns_scatterwalk_map_and_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scatterwalk_ffwd\22, \22a\22\09"
module asm "\09.weak\09__crc_scatterwalk_ffwd\09\09\09\09"
module asm "\09.long\09__crc_scatterwalk_ffwd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scatterwalk_ffwd:\09\09\09\09\09"
module asm "\09.asciz \09\22scatterwalk_ffwd\22\09\09\09\09\09"
module asm "__kstrtabns_scatterwalk_ffwd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scatter_walk = type { ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.66, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.66 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.42, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.42 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_scatterwalk_copychunks = external dso_local constant [0 x i8], align 1
@__kstrtabns_scatterwalk_copychunks = external dso_local constant [0 x i8], align 1
@__ksymtab_scatterwalk_copychunks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scatterwalk_copychunks to i32), ptr @__kstrtab_scatterwalk_copychunks, ptr @__kstrtabns_scatterwalk_copychunks }, section "___ksymtab_gpl+scatterwalk_copychunks", align 4
@__kstrtab_scatterwalk_map_and_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns_scatterwalk_map_and_copy = external dso_local constant [0 x i8], align 1
@__ksymtab_scatterwalk_map_and_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scatterwalk_map_and_copy to i32), ptr @__kstrtab_scatterwalk_map_and_copy, ptr @__kstrtabns_scatterwalk_map_and_copy }, section "___ksymtab_gpl+scatterwalk_map_and_copy", align 4
@__kstrtab_scatterwalk_ffwd = external dso_local constant [0 x i8], align 1
@__kstrtabns_scatterwalk_ffwd = external dso_local constant [0 x i8], align 1
@__ksymtab_scatterwalk_ffwd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scatterwalk_ffwd to i32), ptr @__kstrtab_scatterwalk_ffwd, ptr @__kstrtabns_scatterwalk_ffwd }, section "___ksymtab_gpl+scatterwalk_ffwd", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_scatterwalk_copychunks, ptr @__ksymtab_scatterwalk_ffwd, ptr @__ksymtab_scatterwalk_map_and_copy], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scatterwalk_copychunks(ptr nocapture noundef %buf, ptr nocapture noundef %walk, i32 noundef %nbytes, i32 noundef %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offset2.i = getelementptr inbounds %struct.scatter_walk, ptr %walk, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %out)
  %cmp1.not = icmp eq i32 %out, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %tobool.not.i = icmp eq i32 %out, 0
  %and = and i32 %out, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i26 = icmp eq i32 %and, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %nbytes.addr.0 = phi i32 [ %nbytes, %entry ], [ %sub, %for.cond.backedge ]
  %buf.addr.0 = phi ptr [ %buf, %entry ], [ %add.ptr, %for.cond.backedge ]
  %0 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %walk, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  %add.i = add i32 %5, %3
  %6 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset2.i, align 4
  %sub.i = sub i32 %add.i, %7
  %neg.i = and i32 %7, 4095
  %add4.i = sub nuw nsw i32 4096, %neg.i
  %8 = tail call i32 @llvm.umin.i32(i32 %add4.i, i32 %sub.i) #5
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %nbytes.addr.0)
  br i1 %cmp1.not, label %for.cond.if.end4_crit_edge, label %if.then2

for.cond.if.end4_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %for.cond
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %scatterwalk_map.exit, label %do.body2.i.i.i, !prof !16

do.body2.i.i.i:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

scatterwalk_map.exit:                             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i.i = and i32 %11, -4
  %12 = inttoptr i32 %and.i.i.i to ptr
  %shr.i.i = lshr i32 %7, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %12, i32 %shr.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %13 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %13, 512
  %14 = tail call i32 @llvm.read_register.i32(metadata !6) #5
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %18 = tail call i32 @llvm.read_register.i32(metadata !6) #5
  %and.i.i.i1.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i.i, i32 noundef %or.i.i) #5
  %24 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset2.i, align 4
  %and.i = and i32 %25, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i
  %sgdata.buf.i = select i1 %tobool.not.i, ptr %add.ptr.i, ptr %buf.addr.0
  %cond5.i = select i1 %tobool.not.i, ptr %buf.addr.0, ptr %add.ptr.i
  %26 = call ptr @memcpy(ptr %cond5.i, ptr %sgdata.buf.i, i32 %9)
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr.i) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  %27 = tail call i32 @llvm.read_register.i32(metadata !6) #5
  %and.i.i.i1.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 213
  %31 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %32, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !21
  %33 = tail call i32 @llvm.read_register.i32(metadata !6) #5
  %and.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %scatterwalk_map.exit, %for.cond.if.end4_crit_edge
  %37 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset2.i, align 4
  %add.i25 = add i32 %38, %9
  store i32 %add.i25, ptr %offset2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.addr.0, i32 %8)
  %cmp5.not = icmp ugt i32 %nbytes.addr.0, %8
  br i1 %cmp5.not, label %if.end7, label %for.end

if.end7:                                          ; preds = %if.end4
  %add.ptr = getelementptr i8, ptr %buf.addr.0, i32 %9
  %sub = sub i32 %nbytes.addr.0, %9
  br i1 %tobool.not.i26, label %if.end7.if.end.i_crit_edge, label %if.then.i

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end7
  %39 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %walk, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %and.i.i.i27 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i27, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !16

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

sg_page.exit.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i = and i32 %42, -4
  %43 = inttoptr i32 %and.i.i to ptr
  %sub.i29 = add i32 %add.i25, -1
  %shr.i = lshr i32 %sub.i29, 12
  %add.ptr.i30 = getelementptr %struct.page, ptr %43, i32 %shr.i
  tail call void @flush_dcache_page(ptr noundef %add.ptr.i30) #5
  br label %if.end.i

if.end.i:                                         ; preds = %sg_page.exit.i, %if.end7.if.end.i_crit_edge
  %44 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset2.i, align 4
  %46 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %walk, align 4
  %offset4.i = getelementptr inbounds %struct.scatterlist, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %offset4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset4.i, align 4
  %length.i32 = getelementptr inbounds %struct.scatterlist, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %length.i32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length.i32, align 4
  %add.i33 = add i32 %51, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %add.i33)
  %cmp.not.i = icmp ult i32 %45, %add.i33
  br i1 %cmp.not.i, label %if.end.i.for.cond.backedge_crit_edge, label %if.then6.i

if.end.i.for.cond.backedge_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call ptr @sg_next(ptr noundef %47) #5
  %52 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call8.i, ptr %walk, align 4
  %offset.i.i34 = getelementptr inbounds %struct.scatterlist, ptr %call8.i, i32 0, i32 1
  %53 = ptrtoint ptr %offset.i.i34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset.i.i34, align 4
  %55 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %offset2.i, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then6.i, %if.end.i.for.cond.backedge_crit_edge
  br label %for.cond

for.end:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scatterwalk_map_and_copy(ptr nocapture noundef %buf, ptr noundef %sg, i32 noundef %start, i32 noundef %nbytes, i32 noundef %out) #0 align 64 {
entry:
  %walk = alloca %struct.scatter_walk, align 4
  %tmp = alloca [2 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %walk) #5
  %0 = getelementptr inbounds %struct.scatter_walk, ptr %walk, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp) #5
  %1 = call ptr @memset(ptr %tmp, i32 255, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %tobool.not = icmp eq i32 %nbytes, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @scatterwalk_ffwd(ptr noundef nonnull %tmp, ptr noundef %sg, i32 noundef %start)
  %2 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %walk, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %0, align 4
  call void @scatterwalk_copychunks(ptr noundef %buf, ptr noundef nonnull %walk, i32 noundef %nbytes, i32 noundef %out)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %tobool.not.i.i = icmp eq i32 %out, 0
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.then.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  %6 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %walk, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_page.exit.i.i, label %do.body2.i.i.i, !prof !16

do.body2.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

sg_page.exit.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i.i.i to ptr
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %sub.i.i = add i32 %12, -1
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %10, i32 %shr.i.i
  call void @flush_dcache_page(ptr noundef %add.ptr.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %sg_page.exit.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scatterwalk_ffwd(ptr noundef %dst, ptr noundef %src, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not28 = icmp eq i32 %len, 0
  br i1 %tobool.not28, label %entry.return_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %if.end2.if.end_crit_edge, %entry.if.end_crit_edge
  %len.addr.030 = phi i32 [ %sub, %if.end2.if.end_crit_edge ], [ %len, %entry.if.end_crit_edge ]
  %src.addr.029 = phi ptr [ %call, %if.end2.if.end_crit_edge ], [ %src, %entry.if.end_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %src.addr.029, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.030, i32 %1)
  %cmp = icmp ult i32 %len.addr.030, %1
  br i1 %cmp, label %for.end, label %if.end2

if.end2:                                          ; preds = %if.end
  %sub = sub i32 %len.addr.030, %1
  %call = tail call ptr @sg_next(ptr noundef %src.addr.029) #5
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end2.return_crit_edge, label %if.end2.if.end_crit_edge

if.end2.if.end_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

for.end:                                          ; preds = %if.end
  %length.le = getelementptr inbounds %struct.scatterlist, ptr %src.addr.029, i32 0, i32 2
  tail call void @sg_init_table(ptr noundef %dst, i32 noundef 2) #5
  %2 = ptrtoint ptr %src.addr.029 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src.addr.029, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !16

do.body2.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !17
  unreachable

sg_page.exit:                                     ; preds = %for.end
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !16

do.body19.i.i:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #5, !srcloc !22
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit
  %offset = getelementptr inbounds %struct.scatterlist, ptr %src.addr.029, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add = add i32 %7, %len.addr.030
  %8 = ptrtoint ptr %length.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.le, align 4
  %sub6 = sub i32 %9, %len.addr.030
  %and.i = and i32 %3, -4
  %and.i.i22 = and i32 %5, 3
  %or.i.i = or i32 %and.i.i22, %and.i
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i, ptr %dst, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %dst, i32 0, i32 1
  %11 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %dst, i32 0, i32 2
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub6, ptr %length.i, align 4
  %call7 = tail call ptr @sg_next(ptr noundef %src.addr.029) #5
  %tobool.not.i = icmp eq ptr %call7, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.scatterlist, ptr %dst, i32 1
  %offset.i.i.i = getelementptr %struct.scatterlist, ptr %dst, i32 1, i32 1
  %13 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %offset.i.i.i, align 4
  %length.i.i.i = getelementptr %struct.scatterlist, ptr %dst, i32 1, i32 2
  %14 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %length.i.i.i, align 4
  %15 = ptrtoint ptr %call7 to i32
  br label %scatterwalk_crypto_chain.exit

if.else.i:                                        ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst, align 4
  br label %scatterwalk_crypto_chain.exit

scatterwalk_crypto_chain.exit:                    ; preds = %if.else.i, %if.then.i
  %.sink1.i = phi i32 [ %17, %if.else.i ], [ %15, %if.then.i ]
  %.sink.i = phi i32 [ 2, %if.else.i ], [ 1, %if.then.i ]
  %head.sink.i = phi ptr [ %dst, %if.else.i ], [ %arrayidx.i.i, %if.then.i ]
  %or.i.i23 = and i32 %.sink1.i, -4
  %and.i.i24 = or i32 %or.i.i23, %.sink.i
  %18 = ptrtoint ptr %head.sink.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i.i24, ptr %head.sink.i, align 4
  br label %return

return:                                           ; preds = %scatterwalk_crypto_chain.exit, %if.end2.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %dst, %scatterwalk_crypto_chain.exit ], [ %src, %entry.return_crit_edge ], [ %call, %if.end2.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab_scatterwalk_copychunks, !1, !"__ksymtab_scatterwalk_copychunks", i1 false, i1 false}
!1 = !{!"../crypto/scatterwalk.c", i32 53, i32 1}
!2 = !{ptr @__ksymtab_scatterwalk_map_and_copy, !3, !"__ksymtab_scatterwalk_map_and_copy", i1 false, i1 false}
!3 = !{!"../crypto/scatterwalk.c", i32 70, i32 1}
!4 = !{ptr @__ksymtab_scatterwalk_ffwd, !5, !"__ksymtab_scatterwalk_ffwd", i1 false, i1 false}
!5 = !{!"../crypto/scatterwalk.c", i32 93, i32 1}
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
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2153747071, i64 2153747563, i64 2153747108, i64 2153747164, i64 2153747198, i64 2153747222, i64 2153747263, i64 2153747284, i64 2153747312, i64 2153747346}
!18 = !{i64 2153683624}
!19 = !{i64 2152628503}
!20 = !{i64 2152628710}
!21 = !{i64 2153686395}
!22 = !{i64 2153745123, i64 2153745615, i64 2153745160, i64 2153745216, i64 2153745250, i64 2153745274, i64 2153745315, i64 2153745336, i64 2153745364, i64 2153745398}
