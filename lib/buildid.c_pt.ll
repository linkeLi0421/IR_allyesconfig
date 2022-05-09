; ModuleID = '/llk/IR_all_yes/lib/buildid.c_pt.bc'
source_filename = "../lib/buildid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.66, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.39, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.39 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf32_note = type { i32, i32, i32 }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.40, %union.anon.52, %struct.atomic_t, i32 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.52 = type { %struct.atomic_t }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\7FELF\00", [27 x i8] zeroinitializer }, align 32
@__stop_notes = extern_weak dso_local constant i8, align 1
@__start_notes = extern_weak dso_local constant i8, align 1
@vmlinux_build_id = dso_local global [20 x i8] zeroinitializer, section ".data..ro_after_init", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GNU\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 147, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 717, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [17 x i8] c"../lib/buildid.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 28, i32 35 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_id_parse(ptr nocapture noundef readonly %vma, ptr nocapture noundef writeonly %build_id, ptr noundef writeonly %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %4, 512
  %5 = tail call i32 @llvm.read_register.i32(metadata !8) #10
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %9 = tail call i32 @llvm.read_register.i32(metadata !8) #10
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i, i32 noundef %or.i) #10
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %call.i.i, ptr noundef nonnull dereferenceable(4) @.str, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end8, label %if.end4.do.end_crit_edge

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end8:                                          ; preds = %if.end4
  %e_type = getelementptr inbounds %struct.elf32_hdr, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %e_type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %e_type, align 4
  %17 = and i16 %16, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %switch = icmp eq i16 %17, 2
  br i1 %switch, label %if.end16, label %if.end8.do.end_crit_edge

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end16:                                         ; preds = %if.end8
  %arrayidx = getelementptr [16 x i8], ptr %call.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %if.end16.do.end_crit_edge [
    i8 1, label %if.then21
    i8 2, label %if.then28
  ]

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then21:                                        ; preds = %if.end16
  %e_phnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %call.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %e_phnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 126, i16 %22)
  %cmp.i = icmp ugt i16 %22, 126
  br i1 %cmp.i, label %if.then21.do.end_crit_edge, label %if.end.i

if.then21.do.end_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.then21
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 52
  %conv3.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp427.not.i = icmp eq i16 %22, 0
  br i1 %cmp427.not.i, label %if.end.i.do.end_crit_edge, label %for.body.lr.ph.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %add.ptr3.i.i = getelementptr i8, ptr %call.i.i, i32 4096
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.elf32_phdr, ptr %add.ptr.i, i32 %i.028.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp6.i = icmp eq i32 %24, 4
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %p_offset.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx.i, i32 0, i32 1
  %25 = ptrtoint ptr %p_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p_offset.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %call.i.i, i32 %26
  %p_filesz.i = getelementptr inbounds %struct.elf32_phdr, ptr %arrayidx.i, i32 0, i32 4
  %27 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p_filesz.i, align 4
  %cmp.i.i = icmp ult ptr %add.ptr9.i, %call.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr9.i, i32 %28
  %cmp1.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr9.i
  %cmp4.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr3.i.i
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp4.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge, label %lor.lhs.false.i.i.while.cond.i.i.i_crit_edge

lor.lhs.false.i.i.while.cond.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  br label %while.cond.i.i.i

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.cond.i.i.i:                                 ; preds = %if.end20.i.i.i.while.cond.i.i.i_crit_edge, %lor.lhs.false.i.i.while.cond.i.i.i_crit_edge
  %note_offs.0.i.i.i = phi i32 [ %add28.i.i.i, %if.end20.i.i.i.while.cond.i.i.i_crit_edge ], [ 0, %lor.lhs.false.i.i.while.cond.i.i.i_crit_edge ]
  %add.i.i.i50 = add i32 %note_offs.0.i.i.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i50, i32 %28)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i50, %28
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %while.cond.i.i.i.for.inc.i_crit_edge

while.cond.i.i.i.for.inc.i_crit_edge:             ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr9.i, i32 %note_offs.0.i.i.i
  %n_type.i.i.i = getelementptr inbounds %struct.elf32_note, ptr %add.ptr.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %n_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp1.i.i.i = icmp eq i32 %30, 3
  br i1 %cmp1.i.i.i, label %land.lhs.true.i.i.i, label %while.body.i.i.i.if.end20.i.i.i_crit_edge

while.body.i.i.i.if.end20.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i.i

land.lhs.true.i.i.i:                              ; preds = %while.body.i.i.i
  %31 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp2.i.i.i = icmp eq i32 %32, 4
  br i1 %cmp2.i.i.i, label %land.lhs.true3.i.i.i, label %land.lhs.true.i.i.i.if.end20.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end20.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %add.ptr4.i.i.i = getelementptr %struct.elf32_note, ptr %add.ptr.i.i.i, i32 1
  %call.i.i.i = tail call i32 @strcmp(ptr noundef %add.ptr4.i.i.i, ptr noundef nonnull dereferenceable(4) @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true5.i.i.i, label %land.lhs.true3.i.i.i.if.end20.i.i.i_crit_edge

land.lhs.true3.i.i.i.if.end20.i.i.i_crit_edge:    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true3.i.i.i
  %n_descsz.i.i.i = getelementptr %struct.elf32_note, ptr %add.ptr.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %n_descsz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_descsz.i.i.i, align 4
  %35 = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %35)
  %36 = icmp ult i32 %35, 20
  br i1 %36, label %if.then.i.i.i, label %land.lhs.true5.i.i.i.if.end20.i.i.i_crit_edge

land.lhs.true5.i.i.i.if.end20.i.i.i_crit_edge:    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  %n_descsz.i.i.i.le = getelementptr %struct.elf32_note, ptr %add.ptr.i.i.i, i32 0, i32 1
  %add.ptr12.i.i.i = getelementptr i8, ptr %n_descsz.i.i.i.le, i32 12
  %37 = call ptr @memcpy(ptr %build_id, ptr %add.ptr12.i.i.i, i32 %34)
  %38 = ptrtoint ptr %n_descsz.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_descsz.i.i.i.le, align 4
  %add.ptr15.i.i.i = getelementptr i8, ptr %build_id, i32 %39
  %sub.i.i.i = sub i32 20, %39
  %40 = call ptr @memset(ptr %add.ptr15.i.i.i, i32 0, i32 %sub.i.i.i)
  %tobool17.not.i.i.i = icmp eq ptr %size, null
  br i1 %tobool17.not.i.i.i, label %if.then.i.i.i.do.end_crit_edge, label %if.then.i.i.i.do.end.sink.split_crit_edge

if.then.i.i.i.do.end.sink.split_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split

if.then.i.i.i.do.end_crit_edge:                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end20.i.i.i:                                   ; preds = %land.lhs.true5.i.i.i.if.end20.i.i.i_crit_edge, %land.lhs.true3.i.i.i.if.end20.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end20.i.i.i_crit_edge, %while.body.i.i.i.if.end20.i.i.i_crit_edge
  %41 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i.i, align 4
  %add23.i.i.i = add i32 %42, 3
  %and.i.i.i = and i32 %add23.i.i.i, -4
  %add24.i.i.i = add i32 %and.i.i.i, %add.i.i.i50
  %n_descsz25.i.i.i = getelementptr inbounds %struct.elf32_note, ptr %add.ptr.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %n_descsz25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_descsz25.i.i.i, align 4
  %add26.i.i.i = add i32 %44, 3
  %and27.i.i.i = and i32 %add26.i.i.i, -4
  %add28.i.i.i = add i32 %add24.i.i.i, %and27.i.i.i
  %cmp29.not.i.i.i = icmp ugt i32 %add28.i.i.i, %note_offs.0.i.i.i
  br i1 %cmp29.not.i.i.i, label %if.end20.i.i.i.while.cond.i.i.i_crit_edge, label %if.end20.i.i.i.for.inc.i_crit_edge

if.end20.i.i.i.for.inc.i_crit_edge:               ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end20.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i

for.inc.i:                                        ; preds = %if.end20.i.i.i.for.inc.i_crit_edge, %while.cond.i.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv3.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then28:                                        ; preds = %if.end16
  %e_phnum.i51 = getelementptr inbounds %struct.elf64_hdr, ptr %call.i.i, i32 0, i32 10
  %45 = ptrtoint ptr %e_phnum.i51 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %e_phnum.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 72, i16 %46)
  %cmp.i52 = icmp ugt i16 %46, 72
  br i1 %cmp.i52, label %if.then28.do.end_crit_edge, label %if.end.i55

if.then28.do.end_crit_edge:                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i55:                                       ; preds = %if.then28
  %add.ptr.i53 = getelementptr i8, ptr %call.i.i, i32 64
  %conv3.i54 = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp428.not.i = icmp eq i16 %46, 0
  br i1 %cmp428.not.i, label %if.end.i55.do.end_crit_edge, label %for.body.lr.ph.i57

if.end.i55.do.end_crit_edge:                      ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph.i57:                               ; preds = %if.end.i55
  %add.ptr3.i.i56 = getelementptr i8, ptr %call.i.i, i32 4096
  br label %for.body.i60

for.body.i60:                                     ; preds = %for.inc.i105.for.body.i60_crit_edge, %for.body.lr.ph.i57
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i57 ], [ %inc.i103, %for.inc.i105.for.body.i60_crit_edge ]
  %arrayidx.i58 = getelementptr %struct.elf64_phdr, ptr %add.ptr.i53, i32 %i.029.i
  %47 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp6.i59 = icmp eq i32 %48, 4
  br i1 %cmp6.i59, label %land.lhs.true.i65, label %for.body.i60.for.inc.i105_crit_edge

for.body.i60.for.inc.i105_crit_edge:              ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i105

land.lhs.true.i65:                                ; preds = %for.body.i60
  %p_offset.i61 = getelementptr inbounds %struct.elf64_phdr, ptr %arrayidx.i58, i32 0, i32 2
  %49 = ptrtoint ptr %p_offset.i61 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %p_offset.i61, align 8
  %idx.ext.i = trunc i64 %50 to i32
  %add.ptr9.i62 = getelementptr i8, ptr %call.i.i, i32 %idx.ext.i
  %p_filesz.i63 = getelementptr inbounds %struct.elf64_phdr, ptr %arrayidx.i58, i32 0, i32 5
  %51 = ptrtoint ptr %p_filesz.i63 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %p_filesz.i63, align 8
  %conv11.i = trunc i64 %52 to i32
  %cmp.i.i64 = icmp ult ptr %add.ptr9.i62, %call.i.i
  br i1 %cmp.i.i64, label %land.lhs.true.i65.for.inc.i105_crit_edge, label %lor.lhs.false.i.i70

land.lhs.true.i65.for.inc.i105_crit_edge:         ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i105

lor.lhs.false.i.i70:                              ; preds = %land.lhs.true.i65
  %add.ptr.i.i66 = getelementptr i8, ptr %add.ptr9.i62, i32 %conv11.i
  %cmp1.i.i67 = icmp ult ptr %add.ptr.i.i66, %add.ptr9.i62
  %cmp4.i.i68 = icmp ugt ptr %add.ptr.i.i66, %add.ptr3.i.i56
  %or.cond.i.i69 = or i1 %cmp1.i.i67, %cmp4.i.i68
  br i1 %or.cond.i.i69, label %lor.lhs.false.i.i70.for.inc.i105_crit_edge, label %lor.lhs.false.i.i70.while.cond.i.i.i74_crit_edge

lor.lhs.false.i.i70.while.cond.i.i.i74_crit_edge: ; preds = %lor.lhs.false.i.i70
  br label %while.cond.i.i.i74

lor.lhs.false.i.i70.for.inc.i105_crit_edge:       ; preds = %lor.lhs.false.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i105

while.cond.i.i.i74:                               ; preds = %if.end20.i.i.i102.while.cond.i.i.i74_crit_edge, %lor.lhs.false.i.i70.while.cond.i.i.i74_crit_edge
  %note_offs.0.i.i.i71 = phi i32 [ %add28.i.i.i100, %if.end20.i.i.i102.while.cond.i.i.i74_crit_edge ], [ 0, %lor.lhs.false.i.i70.while.cond.i.i.i74_crit_edge ]
  %add.i.i.i72 = add i32 %note_offs.0.i.i.i71, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i72, i32 %conv11.i)
  %cmp.i.i.i73 = icmp ult i32 %add.i.i.i72, %conv11.i
  br i1 %cmp.i.i.i73, label %while.body.i.i.i78, label %while.cond.i.i.i74.for.inc.i105_crit_edge

while.cond.i.i.i74.for.inc.i105_crit_edge:        ; preds = %while.cond.i.i.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i105

while.body.i.i.i78:                               ; preds = %while.cond.i.i.i74
  %add.ptr.i.i.i75 = getelementptr i8, ptr %add.ptr9.i62, i32 %note_offs.0.i.i.i71
  %n_type.i.i.i76 = getelementptr inbounds %struct.elf32_note, ptr %add.ptr.i.i.i75, i32 0, i32 2
  %53 = ptrtoint ptr %n_type.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_type.i.i.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp1.i.i.i77 = icmp eq i32 %54, 3
  br i1 %cmp1.i.i.i77, label %land.lhs.true.i.i.i80, label %while.body.i.i.i78.if.end20.i.i.i102_crit_edge

while.body.i.i.i78.if.end20.i.i.i102_crit_edge:   ; preds = %while.body.i.i.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i.i102

land.lhs.true.i.i.i80:                            ; preds = %while.body.i.i.i78
  %55 = ptrtoint ptr %add.ptr.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp2.i.i.i79 = icmp eq i32 %56, 4
  br i1 %cmp2.i.i.i79, label %land.lhs.true3.i.i.i84, label %land.lhs.true.i.i.i80.if.end20.i.i.i102_crit_edge

land.lhs.true.i.i.i80.if.end20.i.i.i102_crit_edge: ; preds = %land.lhs.true.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i.i102

land.lhs.true3.i.i.i84:                           ; preds = %land.lhs.true.i.i.i80
  %add.ptr4.i.i.i81 = getelementptr %struct.elf32_note, ptr %add.ptr.i.i.i75, i32 1
  %call.i.i.i82 = tail call i32 @strcmp(ptr noundef %add.ptr4.i.i.i81, ptr noundef nonnull dereferenceable(4) @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i82)
  %tobool.not.i.i.i83 = icmp eq i32 %call.i.i.i82, 0
  br i1 %tobool.not.i.i.i83, label %land.lhs.true5.i.i.i86, label %land.lhs.true3.i.i.i84.if.end20.i.i.i102_crit_edge

land.lhs.true3.i.i.i84.if.end20.i.i.i102_crit_edge: ; preds = %land.lhs.true3.i.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i.i102

land.lhs.true5.i.i.i86:                           ; preds = %land.lhs.true3.i.i.i84
  %n_descsz.i.i.i85 = getelementptr %struct.elf32_note, ptr %add.ptr.i.i.i75, i32 0, i32 1
  %57 = ptrtoint ptr %n_descsz.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_descsz.i.i.i85, align 4
  %59 = add i32 %58, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %59)
  %60 = icmp ult i32 %59, 20
  br i1 %60, label %if.then.i.i.i92, label %land.lhs.true5.i.i.i86.if.end20.i.i.i102_crit_edge

land.lhs.true5.i.i.i86.if.end20.i.i.i102_crit_edge: ; preds = %land.lhs.true5.i.i.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i.i102

if.then.i.i.i92:                                  ; preds = %land.lhs.true5.i.i.i86
  %n_descsz.i.i.i85.le = getelementptr %struct.elf32_note, ptr %add.ptr.i.i.i75, i32 0, i32 1
  %add.ptr12.i.i.i88 = getelementptr i8, ptr %n_descsz.i.i.i85.le, i32 12
  %61 = call ptr @memcpy(ptr %build_id, ptr %add.ptr12.i.i.i88, i32 %58)
  %62 = ptrtoint ptr %n_descsz.i.i.i85.le to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_descsz.i.i.i85.le, align 4
  %add.ptr15.i.i.i89 = getelementptr i8, ptr %build_id, i32 %63
  %sub.i.i.i90 = sub i32 20, %63
  %64 = call ptr @memset(ptr %add.ptr15.i.i.i89, i32 0, i32 %sub.i.i.i90)
  %tobool17.not.i.i.i91 = icmp eq ptr %size, null
  br i1 %tobool17.not.i.i.i91, label %if.then.i.i.i92.do.end_crit_edge, label %if.then.i.i.i92.do.end.sink.split_crit_edge

if.then.i.i.i92.do.end.sink.split_crit_edge:      ; preds = %if.then.i.i.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split

if.then.i.i.i92.do.end_crit_edge:                 ; preds = %if.then.i.i.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end20.i.i.i102:                                ; preds = %land.lhs.true5.i.i.i86.if.end20.i.i.i102_crit_edge, %land.lhs.true3.i.i.i84.if.end20.i.i.i102_crit_edge, %land.lhs.true.i.i.i80.if.end20.i.i.i102_crit_edge, %while.body.i.i.i78.if.end20.i.i.i102_crit_edge
  %65 = ptrtoint ptr %add.ptr.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr.i.i.i75, align 4
  %add23.i.i.i94 = add i32 %66, 3
  %and.i.i.i95 = and i32 %add23.i.i.i94, -4
  %add24.i.i.i96 = add i32 %and.i.i.i95, %add.i.i.i72
  %n_descsz25.i.i.i97 = getelementptr inbounds %struct.elf32_note, ptr %add.ptr.i.i.i75, i32 0, i32 1
  %67 = ptrtoint ptr %n_descsz25.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_descsz25.i.i.i97, align 4
  %add26.i.i.i98 = add i32 %68, 3
  %and27.i.i.i99 = and i32 %add26.i.i.i98, -4
  %add28.i.i.i100 = add i32 %add24.i.i.i96, %and27.i.i.i99
  %cmp29.not.i.i.i101 = icmp ugt i32 %add28.i.i.i100, %note_offs.0.i.i.i71
  br i1 %cmp29.not.i.i.i101, label %if.end20.i.i.i102.while.cond.i.i.i74_crit_edge, label %if.end20.i.i.i102.for.inc.i105_crit_edge

if.end20.i.i.i102.for.inc.i105_crit_edge:         ; preds = %if.end20.i.i.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i105

if.end20.i.i.i102.while.cond.i.i.i74_crit_edge:   ; preds = %if.end20.i.i.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i74

for.inc.i105:                                     ; preds = %if.end20.i.i.i102.for.inc.i105_crit_edge, %while.cond.i.i.i74.for.inc.i105_crit_edge, %lor.lhs.false.i.i70.for.inc.i105_crit_edge, %land.lhs.true.i65.for.inc.i105_crit_edge, %for.body.i60.for.inc.i105_crit_edge
  %inc.i103 = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i104 = icmp eq i32 %inc.i103, %conv3.i54
  br i1 %exitcond.not.i104, label %for.inc.i105.do.end_crit_edge, label %for.inc.i105.for.body.i60_crit_edge

for.inc.i105.for.body.i60_crit_edge:              ; preds = %for.inc.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i60

for.inc.i105.do.end_crit_edge:                    ; preds = %for.inc.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.sink.split:                                ; preds = %if.then.i.i.i92.do.end.sink.split_crit_edge, %if.then.i.i.i.do.end.sink.split_crit_edge
  %n_descsz.i.i.i85.le.sink = phi ptr [ %n_descsz.i.i.i.le, %if.then.i.i.i.do.end.sink.split_crit_edge ], [ %n_descsz.i.i.i85.le, %if.then.i.i.i92.do.end.sink.split_crit_edge ]
  %69 = ptrtoint ptr %n_descsz.i.i.i85.le.sink to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %n_descsz.i.i.i85.le.sink, align 4
  %71 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %size, align 4
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %for.inc.i105.do.end_crit_edge, %if.then.i.i.i92.do.end_crit_edge, %if.end.i55.do.end_crit_edge, %if.then28.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %if.then.i.i.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.then21.do.end_crit_edge, %if.end16.do.end_crit_edge, %if.end8.do.end_crit_edge, %if.end4.do.end_crit_edge
  %ret.0 = phi i32 [ -22, %if.end4.do.end_crit_edge ], [ -22, %if.end8.do.end_crit_edge ], [ -22, %if.end16.do.end_crit_edge ], [ -22, %if.then21.do.end_crit_edge ], [ 0, %if.then.i.i.i.do.end_crit_edge ], [ -22, %if.end.i.do.end_crit_edge ], [ -22, %if.then28.do.end_crit_edge ], [ 0, %if.then.i.i.i92.do.end_crit_edge ], [ -22, %if.end.i55.do.end_crit_edge ], [ 0, %do.end.sink.split ], [ -22, %for.inc.i.do.end_crit_edge ], [ -22, %for.inc.i105.do.end_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %72 = tail call i32 @llvm.read_register.i32(metadata !8) #10
  %and.i.i.i1.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 213
  %76 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %77, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %78 = tail call i32 @llvm.read_register.i32(metadata !8) #10
  %and.i.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %81, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %82 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %82, align 4
  %and.i.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !21

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i107 = add i32 %84, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i107, %if.then.i.i ], [ %85, %if.end.i.i ]
  %86 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %87 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i.i.i.i = icmp eq i32 %88, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !22

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %86, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !23
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !25
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %89, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@build_id_parse, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !27

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %86, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %86) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ %ret.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %ret.0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_id_parse_buf(ptr nocapture noundef readonly %buf, ptr nocapture noundef writeonly %build_id, i32 noundef %buf_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end20.i.while.cond.i_crit_edge, %entry
  %note_offs.0.i = phi i32 [ 0, %entry ], [ %add28.i, %if.end20.i.while.cond.i_crit_edge ]
  %add.i = add i32 %note_offs.0.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %buf_size)
  %cmp.i = icmp ult i32 %add.i, %buf_size
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.parse_build_id_buf.exit_crit_edge

while.cond.i.parse_build_id_buf.exit_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_build_id_buf.exit

while.body.i:                                     ; preds = %while.cond.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %note_offs.0.i
  %n_type.i = getelementptr inbounds %struct.elf32_note, ptr %add.ptr.i, i32 0, i32 2
  %0 = ptrtoint ptr %n_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1.i = icmp eq i32 %1, 3
  br i1 %cmp1.i, label %land.lhs.true.i, label %while.body.i.if.end20.i_crit_edge

while.body.i.if.end20.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp2.i = icmp eq i32 %3, 4
  br i1 %cmp2.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %add.ptr4.i = getelementptr %struct.elf32_note, ptr %add.ptr.i, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %add.ptr4.i, ptr noundef nonnull dereferenceable(4) @.str.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true5.i, label %land.lhs.true3.i.if.end20.i_crit_edge

land.lhs.true3.i.if.end20.i_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %n_descsz.i = getelementptr %struct.elf32_note, ptr %add.ptr.i, i32 0, i32 1
  %4 = ptrtoint ptr %n_descsz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_descsz.i, align 4
  %6 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %6)
  %7 = icmp ult i32 %6, 20
  br i1 %7, label %if.then.i, label %land.lhs.true5.i.if.end20.i_crit_edge

land.lhs.true5.i.if.end20.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  %n_descsz.i.le = getelementptr %struct.elf32_note, ptr %add.ptr.i, i32 0, i32 1
  %add.ptr12.i = getelementptr i8, ptr %n_descsz.i.le, i32 12
  %8 = call ptr @memcpy(ptr %build_id, ptr %add.ptr12.i, i32 %5)
  %9 = ptrtoint ptr %n_descsz.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_descsz.i.le, align 4
  %add.ptr15.i = getelementptr i8, ptr %build_id, i32 %10
  %sub.i = sub i32 20, %10
  %11 = call ptr @memset(ptr %add.ptr15.i, i32 0, i32 %sub.i)
  br label %parse_build_id_buf.exit

if.end20.i:                                       ; preds = %land.lhs.true5.i.if.end20.i_crit_edge, %land.lhs.true3.i.if.end20.i_crit_edge, %land.lhs.true.i.if.end20.i_crit_edge, %while.body.i.if.end20.i_crit_edge
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %add23.i = add i32 %13, 3
  %and.i = and i32 %add23.i, -4
  %add24.i = add i32 %and.i, %add.i
  %n_descsz25.i = getelementptr inbounds %struct.elf32_note, ptr %add.ptr.i, i32 0, i32 1
  %14 = ptrtoint ptr %n_descsz25.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_descsz25.i, align 4
  %add26.i = add i32 %15, 3
  %and27.i = and i32 %add26.i, -4
  %add28.i = add i32 %add24.i, %and27.i
  %cmp29.not.i = icmp ugt i32 %add28.i, %note_offs.0.i
  br i1 %cmp29.not.i, label %if.end20.i.while.cond.i_crit_edge, label %if.end20.i.parse_build_id_buf.exit_crit_edge

if.end20.i.parse_build_id_buf.exit_crit_edge:     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_build_id_buf.exit

if.end20.i.while.cond.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

parse_build_id_buf.exit:                          ; preds = %if.end20.i.parse_build_id_buf.exit_crit_edge, %if.then.i, %while.cond.i.parse_build_id_buf.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %if.then.i ], [ -22, %if.end20.i.parse_build_id_buf.exit_crit_edge ], [ -22, %while.cond.i.parse_build_id_buf.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @init_vmlinux_build_id() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @build_id_parse_buf(ptr noundef @__start_notes, ptr noundef nonnull @vmlinux_build_id, i32 noundef sub (i32 ptrtoint (ptr @__stop_notes to i32), i32 ptrtoint (ptr @__start_notes to i32)))
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/buildid.c", i32 147, i32 28}
!2 = !{ptr @vmlinux_build_id, !3, !"vmlinux_build_id", i1 false, i1 false}
!3 = !{!"../lib/buildid.c", i32 178, i32 15}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/mm.h", i32 717, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/buildid.c", i32 28, i32 35}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2153725109}
!18 = !{i64 2152814163}
!19 = !{i64 2152814370}
!20 = !{i64 2153727880}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2153201173, i64 2153201656, i64 2153201210, i64 2153201266, i64 2153201300, i64 2153201324, i64 2153201365, i64 2153201386, i64 2153201414, i64 2153201448}
!24 = !{i64 2148240576}
!25 = !{i64 2148155309, i64 2148155341, i64 2148155370, i64 2148155404, i64 2148155435, i64 2148155458}
!26 = !{i64 2148240805}
!27 = !{i64 2148755188, i64 2148755193, i64 2148755206, i64 2148755250, i64 2148755284, i64 2148755305}
