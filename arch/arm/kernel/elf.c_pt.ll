; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/elf.c_pt.bc'
source_filename = "../arch/arm/kernel/elf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+elf_check_arch\22, \22a\22\09"
module asm "\09.weak\09__crc_elf_check_arch\09\09\09\09"
module asm "\09.long\09__crc_elf_check_arch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elf_check_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22elf_check_arch\22\09\09\09\09\09"
module asm "__kstrtabns_elf_check_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+elf_set_personality\22, \22a\22\09"
module asm "\09.weak\09__crc_elf_set_personality\09\09\09\09"
module asm "\09.long\09__crc_elf_set_personality\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elf_set_personality:\09\09\09\09\09"
module asm "\09.asciz \09\22elf_set_personality\22\09\09\09\09\09"
module asm "__kstrtabns_elf_set_personality:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+arm_elf_read_implies_exec\22, \22a\22\09"
module asm "\09.weak\09__crc_arm_elf_read_implies_exec\09\09\09\09"
module asm "\09.long\09__crc_arm_elf_read_implies_exec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_elf_read_implies_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_elf_read_implies_exec\22\09\09\09\09\09"
module asm "__kstrtabns_arm_elf_read_implies_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.23, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.23 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.elf_fdpic_params = type { %struct.elf32_hdr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_elf_check_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_elf_check_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_elf_check_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elf_check_arch to i32), ptr @__kstrtab_elf_check_arch, ptr @__kstrtabns_elf_check_arch }, section "___ksymtab+elf_check_arch", align 4
@__kstrtab_elf_set_personality = external dso_local constant [0 x i8], align 1
@__kstrtabns_elf_set_personality = external dso_local constant [0 x i8], align 1
@__ksymtab_elf_set_personality = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elf_set_personality to i32), ptr @__kstrtab_elf_set_personality, ptr @__kstrtabns_elf_set_personality }, section "___ksymtab+elf_set_personality", align 4
@__kstrtab_arm_elf_read_implies_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_elf_read_implies_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_elf_read_implies_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_elf_read_implies_exec to i32), ptr @__kstrtab_arm_elf_read_implies_exec, ptr @__kstrtabns_arm_elf_read_implies_exec }, section "___ksymtab+arm_elf_read_implies_exec", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_arm_elf_read_implies_exec, ptr @__ksymtab_elf_check_arch, ptr @__ksymtab_elf_set_personality], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @elf_check_arch(ptr nocapture noundef readonly %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %e_machine = getelementptr inbounds %struct.elf32_hdr, ptr %x, i32 0, i32 2
  %0 = ptrtoint ptr %e_machine to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e_machine, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %1)
  %cmp.not = icmp eq i16 %1, 40
  br i1 %cmp.not, label %if.end, label %entry.cleanup32_crit_edge

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end:                                           ; preds = %entry
  %e_entry = getelementptr inbounds %struct.elf32_hdr, ptr %x, i32 0, i32 4
  %2 = ptrtoint ptr %e_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %e_entry, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %4 = load i32, ptr @elf_hwcap, align 4
  %and3 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then2.cleanup32_crit_edge, label %if.then2.if.end12_crit_edge

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then2.cleanup32_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.else:                                          ; preds = %if.end
  %and8 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else.if.end12_crit_edge, label %if.else.cleanup32_crit_edge

if.else.cleanup32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %if.then2.if.end12_crit_edge
  %e_flags = getelementptr inbounds %struct.elf32_hdr, ptr %x, i32 0, i32 7
  %5 = ptrtoint ptr %e_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %e_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp14 = icmp ult i32 %6, 16777216
  br i1 %cmp14, label %if.then16, label %if.end12.cleanup32_crit_edge

if.end12.cleanup32_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.then16:                                        ; preds = %if.end12
  %and17 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then16.if.end22_crit_edge, label %land.lhs.true

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %7 = load i32, ptr @elf_hwcap, align 4
  %and19 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true.cleanup32_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true.cleanup32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.then16.if.end22_crit_edge
  %and23 = and i32 %6, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 1024
  br i1 %cmp24, label %land.lhs.true26, label %if.end22.if.end31.critedge_crit_edge

if.end22.if.end31.critedge_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.critedge

land.lhs.true26:                                  ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %8 = load i32, ptr @elf_hwcap, align 4
  %and27 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true26.cleanup32_crit_edge, label %land.lhs.true26.if.end31.critedge_crit_edge

land.lhs.true26.if.end31.critedge_crit_edge:      ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.critedge

land.lhs.true26.cleanup32_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end31.critedge:                                ; preds = %land.lhs.true26.if.end31.critedge_crit_edge, %if.end22.if.end31.critedge_crit_edge
  br label %cleanup32

cleanup32:                                        ; preds = %if.end31.critedge, %land.lhs.true26.cleanup32_crit_edge, %land.lhs.true.cleanup32_crit_edge, %if.end12.cleanup32_crit_edge, %if.else.cleanup32_crit_edge, %if.then2.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup32_crit_edge ], [ 0, %if.then2.cleanup32_crit_edge ], [ 0, %if.else.cleanup32_crit_edge ], [ 0, %land.lhs.true26.cleanup32_crit_edge ], [ 0, %land.lhs.true.cleanup32_crit_edge ], [ 1, %if.end31.critedge ], [ 1, %if.end12.cleanup32_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @elf_set_personality(ptr nocapture noundef readonly %x) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %e_flags = getelementptr inbounds %struct.elf32_hdr, ptr %x, i32 0, i32 7
  %0 = ptrtoint ptr %e_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %e_flags, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !6) #6
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %personality1 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 62
  %6 = ptrtoint ptr %personality1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %personality1, align 32
  %and = and i32 %7, -8388864
  %8 = and i32 %1, -16777208
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %.not = icmp eq i32 %8, 8
  %or5 = or i32 %and, 8388608
  %personality.0 = select i1 %.not, i32 %and, i32 %or5
  %9 = ptrtoint ptr %personality1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %personality.0, ptr %personality1, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %10 = load i32, ptr @elf_hwcap, align 4
  %and9 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %and12 = and i32 %1, -16776704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond24 = select i1 %tobool10.not, i1 true, i1 %tobool13.not
  br i1 %or.cond24, label %if.else16, label %if.then14

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 17, ptr noundef %3) #6
  br label %if.end18

if.else16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %3) #6
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then14
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @arm_elf_read_implies_exec(i32 noundef %executable_stack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %executable_stack)
  %cmp = icmp eq i32 %executable_stack, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @cpu_architecture() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp1 = icmp slt i32 %call, 8
  %. = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @elf_fdpic_arch_lay_out_mm(ptr nocapture noundef %exec_params, ptr nocapture noundef writeonly %interp_params, ptr nocapture noundef writeonly %start_stack, ptr nocapture noundef readnone %start_brk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %e_flags.i = getelementptr inbounds %struct.elf32_hdr, ptr %exec_params, i32 0, i32 7
  %0 = ptrtoint ptr %e_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %e_flags.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !6) #6
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %personality1.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 62
  %6 = ptrtoint ptr %personality1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %personality1.i, align 32
  %and.i = and i32 %7, -8388864
  %8 = and i32 %1, -16777208
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %.not.i = icmp eq i32 %8, 8
  %or5.i = or i32 %and.i, 8388608
  %personality.0.i = select i1 %.not.i, i32 %and.i, i32 %or5.i
  %9 = ptrtoint ptr %personality1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %personality.0.i, ptr %personality1.i, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %10 = load i32, ptr @elf_hwcap, align 4
  %and9.i = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %and12.i = and i32 %1, -16776704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %or.cond24.i = select i1 %tobool10.not.i, i1 true, i1 %tobool13.not.i
  br i1 %or.cond24.i, label %if.else16.i, label %if.then14.i

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 17, ptr noundef %3) #6
  br label %elf_set_personality.exit

if.else16.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %3) #6
  br label %elf_set_personality.exit

elf_set_personality.exit:                         ; preds = %if.else16.i, %if.then14.i
  %load_addr = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 9
  %11 = ptrtoint ptr %load_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32768, ptr %load_addr, align 4
  %load_addr1 = getelementptr inbounds %struct.elf_fdpic_params, ptr %interp_params, i32 0, i32 9
  %12 = ptrtoint ptr %load_addr1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4194304, ptr %load_addr1, align 4
  %13 = ptrtoint ptr %start_stack to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1243611136, ptr %start_stack, align 4
  %flags = getelementptr inbounds %struct.elf_fdpic_params, ptr %exec_params, i32 0, i32 10
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %elf_set_personality.exit.if.end_crit_edge

elf_set_personality.exit.if.end_crit_edge:        ; preds = %elf_set_personality.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %elf_set_personality.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and3 = and i32 %15, -16
  %or = or i32 %and3, 2
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %elf_set_personality.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab_elf_check_arch, !1, !"__ksymtab_elf_check_arch", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/elf.c", i32 41, i32 1}
!2 = !{ptr @__ksymtab_elf_set_personality, !3, !"__ksymtab_elf_set_personality", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/elf.c", i32 78, i32 1}
!4 = !{ptr @__ksymtab_arm_elf_read_implies_exec, !5, !"__ksymtab_arm_elf_read_implies_exec", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/elf.c", i32 112, i32 1}
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
