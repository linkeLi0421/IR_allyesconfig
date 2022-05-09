; ModuleID = '/llk/IR_all_yes/arch/arm/lib/uaccess_with_memcpy.c_pt.bc'
source_filename = "../arch/arm/lib/uaccess_with_memcpy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.73 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.restart_block = type { i32, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.2 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.7, %union.anon.42, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.42 = type { %struct.atomic_t }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"arch/arm/lib/uaccess_with_memcpy.c\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [38 x i8] c"../arch/arm/lib/uaccess_with_memcpy.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 113, i32 8 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arm_copy_to_user(ptr noundef %to, ptr noundef %from, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %n)
  %cmp = icmp ult i32 %n, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !12
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  %call1 = tail call i32 @__copy_to_user_std(ptr noundef %to, ptr noundef %from, i32 noundef %n) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call { ptr, i32 } asm sideeffect "\09.syntax unified\0A\09sub\09$1, $3, #1\0A\09subs\09$1, $1, $0\0A\09addhs\09$1, $1, #1\0A\09subshs\09$1, $1, $2\0A\09movlo\09$0, #0\0A", "=r,=&r,r,r,0,~{cc}"(i32 %n, i32 -1226833920, ptr %to) #7, !srcloc !15
  %asmresult.i = extractvalue { ptr, i32 } %3, 0
  %call3 = tail call fastcc i32 @__copy_to_user_memcpy(ptr noundef %asmresult.i, ptr noundef %from, i32 noundef %n)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %n.addr.0 = phi i32 [ %call1, %if.then ], [ %call3, %if.else ]
  ret i32 %n.addr.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__copy_to_user_std(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__copy_to_user_memcpy(ptr noundef %to, ptr nocapture noundef readonly %from, i32 noundef %n) unnamed_addr #3 align 64 {
entry:
  %pte = alloca ptr, align 4
  %ptl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i74 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i74 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %pagefault_disabled.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %lor.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.end:                                          ; preds = %entry
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.then, label %lor.end.if.end_crit_edge

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.end
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i75 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i75 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 53
  %12 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__copy_to_user_memcpy, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !16

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %13, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then
  %mmap_lock.i = getelementptr inbounds %struct.anon.2, ptr %13, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__copy_to_user_memcpy, %if.then.i3.i)) #7
          to label %if.end [label %if.then.i3.i], !srcloc !16

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %13, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i, %lor.end.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = phi i1 [ true, %lor.end.if.end_crit_edge ], [ false, %__mmap_lock_trace_start_locking.exit.i ], [ false, %if.then.i3.i ], [ true, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool3.not98 = icmp eq i32 %n, 0
  br i1 %tobool3.not98, label %if.end.while.end44_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end44_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end44

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %to.addr.0102 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %to, %if.end.while.body_crit_edge ]
  %from.addr.0101 = phi ptr [ %add.ptr29, %cleanup.while.body_crit_edge ], [ %from, %if.end.while.body_crit_edge ]
  %n.addr.099 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %n, %if.end.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pte) #7
  %15 = ptrtoint ptr %pte to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %pte, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptl) #7
  %16 = ptrtoint ptr %ptl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptl, align 4, !annotation !17
  %call596 = call fastcc i32 @pin_page_for_write(ptr noundef %to.addr.0102, ptr noundef nonnull %pte, ptr noundef nonnull %ptl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call596)
  %tobool6.not97 = icmp eq i32 %call596, 0
  br i1 %tobool6.not97, label %while.body.while.body7_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body7_crit_edge:                 ; preds = %while.body
  br label %while.body7

while.body7:                                      ; preds = %if.end24.while.body7_crit_edge, %while.body.while.body7_crit_edge
  br i1 %14, label %while.body7.if.end13_crit_edge, label %if.then9

while.body7.if.end13_crit_edge:                   ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %while.body7
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %task11 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task11, align 8
  %mm12 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 53
  %21 = ptrtoint ptr %mm12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mm12, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__copy_to_user_memcpy, %if.then.i.i77)) #7
          to label %mmap_read_unlock.exit [label %if.then.i.i77], !srcloc !16

if.then.i.i77:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %22, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i77, %if.then9
  %mmap_lock.i78 = getelementptr inbounds %struct.anon.2, ptr %22, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i78) #7
  br label %if.end13

if.end13:                                         ; preds = %mmap_read_unlock.exit, %while.body7.if.end13_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 113) #7
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !12
  %and.i = and i32 %25, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %to.addr.0102, i8 0, i32 -1226833921) #7, !srcloc !18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not = icmp eq i32 %26, 0
  br i1 %tobool16.not, label %if.end18, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptl) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pte) #7
  br label %cleanup51

if.end18:                                         ; preds = %if.end13
  br i1 %14, label %if.end18.if.end24_crit_edge, label %if.then20

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %if.end18
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i79 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i79 to ptr
  %task22 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task22, align 8
  %mm23 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 53
  %31 = ptrtoint ptr %mm23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mm23, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__copy_to_user_memcpy, %if.then.i.i80)) #7
          to label %__mmap_lock_trace_start_locking.exit.i82 [label %if.then.i.i80], !srcloc !16

if.then.i.i80:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %32, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i82

__mmap_lock_trace_start_locking.exit.i82:         ; preds = %if.then.i.i80, %if.then20
  %mmap_lock.i81 = getelementptr inbounds %struct.anon.2, ptr %32, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i81) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__copy_to_user_memcpy, %if.then.i3.i83)) #7
          to label %if.end24 [label %if.then.i3.i83], !srcloc !16

if.then.i3.i83:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %32, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then.i3.i83, %__mmap_lock_trace_start_locking.exit.i82, %if.end18.if.end24_crit_edge
  %call5 = call fastcc i32 @pin_page_for_write(ptr noundef %to.addr.0102, ptr noundef nonnull %pte, ptr noundef nonnull %ptl)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end24.while.body7_crit_edge, label %if.end24.while.end_crit_edge

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end24.while.body7_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body7

while.end:                                        ; preds = %if.end24.while.end_crit_edge, %while.body.while.end_crit_edge
  %33 = ptrtoint ptr %to.addr.0102 to i32
  %neg = and i32 %33, 4095
  %add = sub nuw nsw i32 4096, %neg
  %34 = tail call i32 @llvm.umin.i32(i32 %add, i32 %n.addr.099)
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i70 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i70 to ptr
  %cpu_domain.i.i71 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i71) #4, !srcloc !12
  %and.i72 = and i32 %37, -13
  %or.i73 = or i32 %and.i72, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i73) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  %38 = call ptr @memcpy(ptr %to.addr.0102, ptr %from.addr.0101, i32 %34)
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  %add.ptr = getelementptr i8, ptr %to.addr.0102, i32 %34
  %add.ptr29 = getelementptr i8, ptr %from.addr.0101, i32 %34
  %sub = sub i32 %n.addr.099, %34
  %39 = ptrtoint ptr %pte to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pte, align 4
  %tobool30.not = icmp eq ptr %40, null
  %41 = ptrtoint ptr %ptl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ptl, align 4
  tail call void @_raw_spin_unlock(ptr noundef %42) #7
  br i1 %tobool30.not, label %while.end.cleanup_crit_edge, label %do.body32

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kunmap_local_indexed(ptr noundef nonnull %40) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %43 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i1.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 213
  %47 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %48, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %while.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptl) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pte) #7
  %tobool3.not = icmp eq i32 %sub, 0
  br i1 %tobool3.not, label %cleanup.while.end44_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end44_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end44

while.end44:                                      ; preds = %cleanup.while.end44_crit_edge, %if.end.while.end44_crit_edge
  br i1 %14, label %while.end44.cleanup51_crit_edge, label %if.then46

while.end44.cleanup51_crit_edge:                  ; preds = %while.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.then46:                                        ; preds = %while.end44
  %53 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i85 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i85 to ptr
  %task48 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task48, align 8
  %mm49 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 53
  %57 = ptrtoint ptr %mm49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mm49, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__copy_to_user_memcpy, %if.then.i.i86)) #7
          to label %mmap_read_unlock.exit88 [label %if.then.i.i86], !srcloc !16

if.then.i.i86:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %58, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit88

mmap_read_unlock.exit88:                          ; preds = %if.then.i.i86, %if.then46
  %mmap_lock.i87 = getelementptr inbounds %struct.anon.2, ptr %58, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i87) #7
  br label %cleanup51

cleanup51:                                        ; preds = %mmap_read_unlock.exit88, %while.end44.cleanup51_crit_edge, %cleanup.thread
  %n.addr.095 = phi i32 [ %n.addr.099, %cleanup.thread ], [ 0, %mmap_read_unlock.exit88 ], [ 0, %while.end44.cleanup51_crit_edge ]
  ret i32 %n.addr.095
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arm_clear_user(ptr noundef %addr, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %n)
  %cmp = icmp ult i32 %n, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !12
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  %call1 = tail call i32 @__clear_user_std(ptr noundef %addr, i32 noundef %n) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @__clear_user_memset(ptr noundef %addr, i32 noundef %n)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %n.addr.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i32 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clear_user_std(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__clear_user_memset(ptr noundef %addr, i32 noundef %n) unnamed_addr #3 align 64 {
entry:
  %pte = alloca ptr, align 4
  %ptl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i52 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i52 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__clear_user_memset, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !16

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__clear_user_memset, %if.then.i3.i)) #7
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !16

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not71 = icmp eq i32 %n, 0
  br i1 %tobool.not71, label %mmap_read_lock.exit.while.end31_crit_edge, label %mmap_read_lock.exit.while.body_crit_edge

mmap_read_lock.exit.while.body_crit_edge:         ; preds = %mmap_read_lock.exit
  br label %while.body

mmap_read_lock.exit.while.end31_crit_edge:        ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end31

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %mmap_read_lock.exit.while.body_crit_edge
  %addr.addr.074 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %addr, %mmap_read_lock.exit.while.body_crit_edge ]
  %n.addr.072 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %n, %mmap_read_lock.exit.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pte) #7
  %6 = ptrtoint ptr %pte to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %pte, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptl) #7
  %7 = ptrtoint ptr %ptl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptl, align 4, !annotation !17
  %call269 = call fastcc i32 @pin_page_for_write(ptr noundef %addr.addr.074, ptr noundef nonnull %pte, ptr noundef nonnull %ptl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool3.not70 = icmp eq i32 %call269, 0
  br i1 %tobool3.not70, label %while.body.while.body4_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body4_crit_edge:                 ; preds = %while.body
  br label %while.body4

while.body4:                                      ; preds = %mmap_read_lock.exit59.while.body4_crit_edge, %while.body.while.body4_crit_edge
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %mm7 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %mm7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm7, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__clear_user_memset, %if.then.i.i53)) #7
          to label %mmap_read_unlock.exit [label %if.then.i.i53], !srcloc !16

if.then.i.i53:                                    ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %11, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i53, %while.body4
  %mmap_lock.i54 = getelementptr inbounds %struct.anon.2, ptr %11, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i54) #7
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 181) #7
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !12
  %and.i = and i32 %14, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  %15 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %addr.addr.074, i8 0, i32 -1226833921) #7, !srcloc !21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.end, label %cleanup.thread

cleanup.thread:                                   ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptl) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pte) #7
  br label %cleanup35

if.end:                                           ; preds = %mmap_read_unlock.exit
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %mm13 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 53
  %18 = ptrtoint ptr %mm13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mm13, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__clear_user_memset, %if.then.i.i55)) #7
          to label %__mmap_lock_trace_start_locking.exit.i57 [label %if.then.i.i55], !srcloc !16

if.then.i.i55:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %19, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i57

__mmap_lock_trace_start_locking.exit.i57:         ; preds = %if.then.i.i55, %if.end
  %mmap_lock.i56 = getelementptr inbounds %struct.anon.2, ptr %19, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i56) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__clear_user_memset, %if.then.i3.i58)) #7
          to label %mmap_read_lock.exit59 [label %if.then.i3.i58], !srcloc !16

if.then.i3.i58:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %19, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit59

mmap_read_lock.exit59:                            ; preds = %if.then.i3.i58, %__mmap_lock_trace_start_locking.exit.i57
  %call2 = call fastcc i32 @pin_page_for_write(ptr noundef %addr.addr.074, ptr noundef nonnull %pte, ptr noundef nonnull %ptl)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %mmap_read_lock.exit59.while.body4_crit_edge, label %mmap_read_lock.exit59.while.end_crit_edge

mmap_read_lock.exit59.while.end_crit_edge:        ; preds = %mmap_read_lock.exit59
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

mmap_read_lock.exit59.while.body4_crit_edge:      ; preds = %mmap_read_lock.exit59
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body4

while.end:                                        ; preds = %mmap_read_lock.exit59.while.end_crit_edge, %while.body.while.end_crit_edge
  %20 = ptrtoint ptr %addr.addr.074 to i32
  %neg = and i32 %20, 4095
  %add = sub nuw nsw i32 4096, %neg
  %21 = tail call i32 @llvm.umin.i32(i32 %add, i32 %n.addr.072)
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i48 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i48 to ptr
  %cpu_domain.i.i49 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i49) #4, !srcloc !12
  %and.i50 = and i32 %24, -13
  %or.i51 = or i32 %and.i50, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i51) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  %25 = call ptr @memset(ptr %addr.addr.074, i32 0, i32 %21)
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #7, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  %add.ptr = getelementptr i8, ptr %addr.addr.074, i32 %21
  %sub = sub i32 %n.addr.072, %21
  %26 = ptrtoint ptr %pte to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pte, align 4
  %tobool17.not = icmp eq ptr %27, null
  %28 = ptrtoint ptr %ptl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptl, align 4
  tail call void @_raw_spin_unlock(ptr noundef %29) #7
  br i1 %tobool17.not, label %while.end.cleanup_crit_edge, label %do.body19

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body19:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kunmap_local_indexed(ptr noundef nonnull %27) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i1.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 213
  %34 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %35, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body19, %while.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptl) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pte) #7
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup.while.end31_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end31_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end31

while.end31:                                      ; preds = %cleanup.while.end31_crit_edge, %mmap_read_lock.exit.while.end31_crit_edge
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %mm34 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 53
  %42 = ptrtoint ptr %mm34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mm34, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__clear_user_memset, %if.then.i.i60)) #7
          to label %mmap_read_unlock.exit62 [label %if.then.i.i60], !srcloc !16

if.then.i.i60:                                    ; preds = %while.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %43, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit62

mmap_read_unlock.exit62:                          ; preds = %if.then.i.i60, %while.end31
  %mmap_lock.i61 = getelementptr inbounds %struct.anon.2, ptr %43, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i61) #7
  br label %cleanup35

cleanup35:                                        ; preds = %mmap_read_unlock.exit62, %cleanup.thread
  %n.addr.068 = phi i32 [ %n.addr.072, %cleanup.thread ], [ 0, %mmap_read_unlock.exit62 ]
  ret i32 %n.addr.068
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pin_page_for_write(ptr noundef %_addr, ptr nocapture noundef writeonly %ptep, ptr nocapture noundef writeonly %ptlp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_addr to i32
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm, align 8
  %pgd1 = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %pgd1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pgd1, align 4
  %shr.i = lshr i32 %0, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %8, i32 %shr.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool45.not = icmp ne i32 %10, 0
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  %or.cond141 = and i1 %tobool45.not, %tobool56.not
  br i1 %or.cond141, label %if.end64, label %entry.cleanup_crit_edge, !prof !22

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %shr.i143 = lshr i32 %10, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i143, %12
  %ptl.i.i = getelementptr %struct.page, ptr %11, i32 %sub.i, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr = getelementptr %struct.page, ptr %11, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %15, 512
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i1.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #7
  %shr.i144 = lshr i32 %0, 12
  %and.i145 = and i32 %shr.i144, 511
  %add.ptr72 = getelementptr i32, ptr %call.i.i, i32 %and.i145
  tail call void @_raw_spin_lock(ptr noundef %14) #7
  %24 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr72, align 4
  %26 = and i32 %25, 195
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %26)
  %.not = icmp eq i32 %26, 67
  br i1 %.not, label %if.end113, label %do.body, !prof !25

do.body:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %14) #7
  tail call fastcc void @__kunmap_atomic(ptr noundef %add.ptr72)
  br label %cleanup

if.end113:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %ptep to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr72, ptr %ptep, align 4
  %28 = ptrtoint ptr %ptlp to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %14, ptr %ptlp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ 1, %if.end113 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kunmap_atomic(ptr noundef %addr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kunmap_local_indexed(ptr noundef %addr) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i1 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i1 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %dec.i.i = add i32 %5, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{!"sp"}
!1 = !{ptr @.str, !2, !"<string literal>", i1 false, i1 false}
!2 = !{!"../arch/arm/lib/uaccess_with_memcpy.c", i32 113, i32 8}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 3000965}
!13 = !{i64 3001162}
!14 = !{i64 2150486395}
!15 = !{i64 2983314, i64 2983337, i64 2983358, i64 2983380, i64 2983403, i64 2983427}
!16 = !{i64 2148696103, i64 2148696108, i64 2148696121, i64 2148696165, i64 2148696199, i64 2148696220}
!17 = !{!"auto-init"}
!18 = !{i64 2154123212, i64 2154123492, i64 2154123826, i64 2154124160}
!19 = !{i64 2150508434}
!20 = !{i64 2153645456}
!21 = !{i64 2154134246, i64 2154134526, i64 2154134860, i64 2154135194}
!22 = !{!"branch_weights", i32 4000000, i32 4001}
!23 = !{i64 2153642685}
!24 = !{i64 2150508227}
!25 = !{!"branch_weights", i32 -388717296, i32 7818360}
