; ModuleID = '/llk/IR_all_yes/kernel/cgroup/namespace.c_pt.bc'
source_filename = "../kernel/cgroup/namespace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+free_cgroup_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_free_cgroup_ns\09\09\09\09"
module asm "\09.long\09__crc_free_cgroup_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_cgroup_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22free_cgroup_ns\22\09\09\09\09\09"
module asm "__kstrtabns_free_cgroup_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cgroup_namespace = type { %struct.ns_common, ptr, ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.67 }
%union.anon.67 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.69, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.25 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.25 = type { %struct.callback_head }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nsset = type { i32, ptr, ptr, ptr }

@__kstrtab_free_cgroup_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_cgroup_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_free_cgroup_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_cgroup_ns to i32), ptr @__kstrtab_free_cgroup_ns, ptr @__kstrtabns_free_cgroup_ns }, section "___ksymtab+free_cgroup_ns", align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cgroup\00", [25 x i8] zeroinitializer }, align 32
@cgroupns_operations = dso_local constant { %struct.proc_ns_operations, [32 x i8] } { %struct.proc_ns_operations { ptr @.str, ptr null, i32 33554432, ptr @cgroupns_get, ptr @cgroupns_put, ptr @cgroupns_install, ptr @cgroupns_owner, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_namespace__234_157_cgroup_namespaces_init4 = internal global ptr @cgroup_namespaces_init, section ".initcall4.init", align 4
@task_css_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 145, i32 11 }
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"cgroupns_operations\00", align 1
@___asan_gen_.7 = private constant [29 x i8] c"../kernel/cgroup/namespace.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 144, i32 33 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 481, i32 9 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_namespace__234_157_cgroup_namespaces_init4, ptr @__ksymtab_free_cgroup_ns, ptr @.str, ptr @cgroupns_operations, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroupns_operations to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_cgroup_ns(ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %root_cset = getelementptr inbounds %struct.cgroup_namespace, ptr %ns, i32 0, i32 3
  %0 = ptrtoint ptr %root_cset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_cset, align 4
  %refcount.i = getelementptr inbounds %struct.css_set, ptr %1, i32 0, i32 1
  %call.i = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %refcount.i) #7
  br i1 %call.i, label %entry.put_css_set.exit_crit_edge, label %do.body1.i

entry.put_css_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_css_set.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #7
  tail call void @put_css_set_locked(ptr noundef %1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %call3.i) #7
  br label %put_css_set.exit

put_css_set.exit:                                 ; preds = %do.body1.i, %entry.put_css_set.exit_crit_edge
  %ucounts = getelementptr inbounds %struct.cgroup_namespace, ptr %ns, i32 0, i32 2
  %2 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ucounts, align 4
  tail call void @dec_ucount(ptr noundef %3, i32 noundef 6) #7
  %user_ns = getelementptr inbounds %struct.cgroup_namespace, ptr %ns, i32 0, i32 1
  %4 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %put_css_set.exit.put_user_ns.exit_crit_edge, label %land.lhs.true.i

put_css_set.exit.put_user_ns.exit_crit_edge:      ; preds = %put_css_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %put_css_set.exit
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %5, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #7, !srcloc !25
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !26

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #7
  br label %put_user_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @__put_user_ns(ptr noundef nonnull %5) #7
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %put_css_set.exit.put_user_ns.exit_crit_edge
  %inum = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 2
  %7 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inum, align 4
  tail call void @proc_free_inum(i32 noundef %8) #7
  tail call void @kfree(ptr noundef %ns) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_free_inum(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @copy_cgroup_ns(i32 noundef %flags, ptr noundef %user_ns, ptr noundef %old_ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old_ns, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !28

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/namespace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 58, 0\0A.popsection", ""() #7, !srcloc !29
  unreachable

do.end9:                                          ; preds = %entry
  %and = and i32 %flags, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then.i, label %if.end12

if.then.i:                                        ; preds = %do.end9
  %count.i = getelementptr inbounds %struct.ns_common, ptr %old_ns, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !28

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !26

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #7
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %call = tail call zeroext i1 @ns_capable(ptr noundef %user_ns, i32 noundef 21) #7
  br i1 %call, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %2 = tail call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred.i, align 16
  %euid.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %euid.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload.i, 0
  %call1.i = tail call ptr @inc_ucount(ptr noundef %user_ns, [1 x i32] %.fca.0.insert.i, i32 noundef 6) #7
  %tobool17.not = icmp eq ptr %call1.i, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 164
  %13 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i45 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i45, label %lor.lhs.false.i, label %if.end20.task_css_set.exit_crit_edge

if.end20.task_css_set.exit_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css_set.exit

lor.lhs.false.i:                                  ; preds = %if.end20
  %call.i18.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool3.not.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.task_css_set.exit_crit_edge

lor.lhs.false.i.task_css_set.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css_set.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i46 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool5.not.i = icmp eq i32 %and.i46, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false4.i.task_css_set.exit_crit_edge

lor.lhs.false4.i.task_css_set.exit_crit_edge:     ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css_set.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %call7.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %lor.lhs.false6.i.task_css_set.exit_crit_edge

lor.lhs.false6.i.task_css_set.exit_crit_edge:     ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css_set.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false6.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.task_css_set.exit_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.task_css_set.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css_set.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b17.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true11.i.task_css_set.exit_crit_edge, label %if.then.i47

land.lhs.true11.i.task_css_set.exit_crit_edge:    ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css_set.exit

if.then.i47:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 481, ptr noundef nonnull @.str.2) #7
  br label %task_css_set.exit

task_css_set.exit:                                ; preds = %if.then.i47, %land.lhs.true11.i.task_css_set.exit_crit_edge, %land.lhs.true.i.task_css_set.exit_crit_edge, %lor.lhs.false6.i.task_css_set.exit_crit_edge, %lor.lhs.false4.i.task_css_set.exit_crit_edge, %lor.lhs.false.i.task_css_set.exit_crit_edge, %if.end20.task_css_set.exit_crit_edge
  %refcount.i = getelementptr inbounds %struct.css_set, ptr %14, i32 0, i32 1
  %call.i.i.i.i.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i49 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i49)
  %tobool1.not.i.i.i.i50 = icmp eq i32 %asmresult.i.i.i.i.i.i49, 0
  br i1 %tobool1.not.i.i.i.i50, label %task_css_set.exit.if.end15.sink.split.i.i.i.i55_crit_edge, label %if.else.i.i.i.i53, !prof !28

task_css_set.exit.if.end15.sink.split.i.i.i.i55_crit_edge: ; preds = %task_css_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i55

if.else.i.i.i.i53:                                ; preds = %task_css_set.exit
  %add.i.i.i.i51 = add i32 %asmresult.i.i.i.i.i.i49, 1
  %18 = or i32 %add.i.i.i.i51, %asmresult.i.i.i.i.i.i49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i52 = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i52, label %if.else.i.i.i.i53.get_css_set.exit_crit_edge, label %if.else.i.i.i.i53.if.end15.sink.split.i.i.i.i55_crit_edge, !prof !26

if.else.i.i.i.i53.if.end15.sink.split.i.i.i.i55_crit_edge: ; preds = %if.else.i.i.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i55

if.else.i.i.i.i53.get_css_set.exit_crit_edge:     ; preds = %if.else.i.i.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_css_set.exit

if.end15.sink.split.i.i.i.i55:                    ; preds = %if.else.i.i.i.i53.if.end15.sink.split.i.i.i.i55_crit_edge, %task_css_set.exit.if.end15.sink.split.i.i.i.i55_crit_edge
  %.sink.i.i.i.i54 = phi i32 [ 2, %task_css_set.exit.if.end15.sink.split.i.i.i.i55_crit_edge ], [ 1, %if.else.i.i.i.i53.if.end15.sink.split.i.i.i.i55_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i54) #7
  br label %get_css_set.exit

get_css_set.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i55, %if.else.i.i.i.i53.get_css_set.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @css_set_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 4197824, i32 noundef 28) #10
  %tobool.not.i56 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i56, label %get_css_set.exit.if.then25_crit_edge, label %if.end.i

get_css_set.exit.if.then25_crit_edge:             ; preds = %get_css_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.end.i:                                         ; preds = %get_css_set.exit
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #7
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %call7.i.i.i, align 8
  %inum.i.i = getelementptr inbounds %struct.ns_common, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i57 = tail call i32 @proc_alloc_inum(ptr noundef %inum.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool3.not.i58 = icmp eq i32 %call.i.i57, 0
  br i1 %tobool3.not.i58, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  %21 = inttoptr i32 %call.i.i57 to ptr
  br label %alloc_cgroup_ns.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %count.i59 = getelementptr inbounds %struct.ns_common, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i16.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i59, i32 noundef 4) #7
  %22 = ptrtoint ptr %count.i59 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %count.i59, align 4
  %ops.i = getelementptr inbounds %struct.ns_common, ptr %call7.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @cgroupns_operations, ptr %ops.i, align 4
  br label %alloc_cgroup_ns.exit

alloc_cgroup_ns.exit:                             ; preds = %if.end6.i, %if.then4.i
  %retval.0.i = phi ptr [ %21, %if.then4.i ], [ %call7.i.i.i, %if.end6.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_cgroup_ns.exit.if.then25_crit_edge, label %if.end26

alloc_cgroup_ns.exit.if.then25_crit_edge:         ; preds = %alloc_cgroup_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.then25:                                        ; preds = %alloc_cgroup_ns.exit.if.then25_crit_edge, %get_css_set.exit.if.then25_crit_edge
  %retval.0.i75 = phi ptr [ %retval.0.i, %alloc_cgroup_ns.exit.if.then25_crit_edge ], [ inttoptr (i32 -12 to ptr), %get_css_set.exit.if.then25_crit_edge ]
  %call.i = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %refcount.i) #7
  br i1 %call.i, label %if.then25.put_css_set.exit_crit_edge, label %do.body1.i

if.then25.put_css_set.exit_crit_edge:             ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_css_set.exit

do.body1.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #7
  tail call void @put_css_set_locked(ptr noundef %14) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %call3.i) #7
  br label %put_css_set.exit

put_css_set.exit:                                 ; preds = %do.body1.i, %if.then25.put_css_set.exit_crit_edge
  tail call void @dec_ucount(ptr noundef nonnull %call1.i, i32 noundef 6) #7
  br label %cleanup

if.end26:                                         ; preds = %alloc_cgroup_ns.exit
  %tobool.not.i61 = icmp eq ptr %user_ns, null
  br i1 %tobool.not.i61, label %if.end26.get_user_ns.exit_crit_edge, label %if.then.i66

if.end26.get_user_ns.exit_crit_edge:              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_user_ns.exit

if.then.i66:                                      ; preds = %if.end26
  %count.i62 = getelementptr inbounds %struct.user_namespace, ptr %user_ns, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i62, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i62, i32 1, i32 3, i32 1) #7
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i62, ptr %count.i62, i32 1, ptr elementtype(i32) %count.i62) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i64 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i64)
  %tobool1.not.i.i.i.i65 = icmp eq i32 %asmresult.i.i.i.i.i.i64, 0
  br i1 %tobool1.not.i.i.i.i65, label %if.then.i66.if.end15.sink.split.i.i.i.i71_crit_edge, label %if.else.i.i.i.i69, !prof !28

if.then.i66.if.end15.sink.split.i.i.i.i71_crit_edge: ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i71

if.else.i.i.i.i69:                                ; preds = %if.then.i66
  %add.i.i.i.i67 = add i32 %asmresult.i.i.i.i.i.i64, 1
  %25 = or i32 %add.i.i.i.i67, %asmresult.i.i.i.i.i.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i68 = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i68, label %if.else.i.i.i.i69.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i69.if.end15.sink.split.i.i.i.i71_crit_edge, !prof !26

if.else.i.i.i.i69.if.end15.sink.split.i.i.i.i71_crit_edge: ; preds = %if.else.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i71

if.else.i.i.i.i69.get_user_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i71:                    ; preds = %if.else.i.i.i.i69.if.end15.sink.split.i.i.i.i71_crit_edge, %if.then.i66.if.end15.sink.split.i.i.i.i71_crit_edge
  %.sink.i.i.i.i70 = phi i32 [ 2, %if.then.i66.if.end15.sink.split.i.i.i.i71_crit_edge ], [ 1, %if.else.i.i.i.i69.if.end15.sink.split.i.i.i.i71_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i62, i32 noundef %.sink.i.i.i.i70) #7
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i71, %if.else.i.i.i.i69.get_user_ns.exit_crit_edge, %if.end26.get_user_ns.exit_crit_edge
  %user_ns28 = getelementptr inbounds %struct.cgroup_namespace, ptr %retval.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %user_ns28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %user_ns, ptr %user_ns28, align 4
  %ucounts29 = getelementptr inbounds %struct.cgroup_namespace, ptr %retval.0.i, i32 0, i32 2
  %27 = ptrtoint ptr %ucounts29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call1.i, ptr %ucounts29, align 4
  %root_cset = getelementptr inbounds %struct.cgroup_namespace, ptr %retval.0.i, i32 0, i32 3
  %28 = ptrtoint ptr %root_cset to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %14, ptr %root_cset, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_user_ns.exit, %put_css_set.exit, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i75, %put_css_set.exit ], [ %retval.0.i, %get_user_ns.exit ], [ %old_ns, %if.else.i.i.i.i.cleanup_crit_edge ], [ %old_ns, %if.end15.sink.split.i.i.i.i ], [ inttoptr (i32 -1 to ptr), %if.end12.cleanup_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.end15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cgroupns_get(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #7
  %nsproxy1 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 110
  %0 = ptrtoint ptr %nsproxy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsproxy1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %cgroup_ns = getelementptr inbounds %struct.nsproxy, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cgroup_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cgroup_ns, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %count.i = getelementptr inbounds %struct.ns_common, ptr %3, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !28

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !26

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #7
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ns.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ null, %if.then.if.end_crit_edge ], [ %3, %if.else.i.i.i.i.if.end_crit_edge ], [ %3, %if.end15.sink.split.i.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #7
  ret ptr %ns.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgroupns_put(ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ns, null
  br i1 %tobool.not.i, label %entry.put_cgroup_ns.exit_crit_edge, label %land.lhs.true.i

entry.put_cgroup_ns.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_cgroup_ns.exit

land.lhs.true.i:                                  ; preds = %entry
  %count.i = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #7, !srcloc !25
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_cgroup_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !26

if.end5.i.i.i.i.put_cgroup_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_cgroup_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #7
  br label %put_cgroup_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @free_cgroup_ns(ptr noundef nonnull %ns) #7
  br label %put_cgroup_ns.exit

put_cgroup_ns.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_cgroup_ns.exit_crit_edge, %entry.put_cgroup_ns.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroupns_install(ptr nocapture noundef readonly %nsset, ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nsproxy1 = getelementptr inbounds %struct.nsset, ptr %nsset, i32 0, i32 1
  %0 = ptrtoint ptr %nsproxy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsproxy1, align 4
  %cred = getelementptr inbounds %struct.nsset, ptr %nsset, i32 0, i32 3
  %2 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cred, align 4
  %user_ns = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns, align 4
  %call2 = tail call zeroext i1 @ns_capable(ptr noundef %5, i32 noundef 21) #7
  br i1 %call2, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %user_ns3 = getelementptr inbounds %struct.cgroup_namespace, ptr %ns, i32 0, i32 1
  %6 = ptrtoint ptr %user_ns3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns3, align 4
  %call4 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 21) #7
  br i1 %call4, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cgroup_ns5 = getelementptr inbounds %struct.nsproxy, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %cgroup_ns5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cgroup_ns5, align 4
  %cmp = icmp eq ptr %9, %ns
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tobool.not.i = icmp eq ptr %ns, null
  br i1 %tobool.not.i, label %if.end7.get_cgroup_ns.exit_crit_edge, label %if.then.i

if.end7.get_cgroup_ns.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_cgroup_ns.exit

if.then.i:                                        ; preds = %if.end7
  %count.i = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !28

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_cgroup_ns.exitthread-pre-split_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !26

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_cgroup_ns.exitthread-pre-split_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_cgroup_ns.exitthread-pre-split

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #7
  br label %get_cgroup_ns.exitthread-pre-split

get_cgroup_ns.exitthread-pre-split:               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_cgroup_ns.exitthread-pre-split_crit_edge
  %12 = ptrtoint ptr %cgroup_ns5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load ptr, ptr %cgroup_ns5, align 4
  br label %get_cgroup_ns.exit

get_cgroup_ns.exit:                               ; preds = %get_cgroup_ns.exitthread-pre-split, %if.end7.get_cgroup_ns.exit_crit_edge
  %13 = phi ptr [ %.pr, %get_cgroup_ns.exitthread-pre-split ], [ %9, %if.end7.get_cgroup_ns.exit_crit_edge ]
  %tobool.not.i17 = icmp eq ptr %13, null
  br i1 %tobool.not.i17, label %get_cgroup_ns.exit.put_cgroup_ns.exit_crit_edge, label %land.lhs.true.i

get_cgroup_ns.exit.put_cgroup_ns.exit_crit_edge:  ; preds = %get_cgroup_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_cgroup_ns.exit

land.lhs.true.i:                                  ; preds = %get_cgroup_ns.exit
  %count.i18 = getelementptr inbounds %struct.ns_common, ptr %13, i32 0, i32 3
  %call.i.i.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i18, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %count.i18, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i18, ptr %count.i18, i32 1, ptr elementtype(i32) %count.i18) #7, !srcloc !25
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i21, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i20 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i20, label %if.end5.i.i.i.i.put_cgroup_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !26

if.end5.i.i.i.i.put_cgroup_ns.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_cgroup_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %count.i18, i32 noundef 3) #7
  br label %put_cgroup_ns.exit

if.then.i21:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @free_cgroup_ns(ptr noundef nonnull %13) #7
  br label %put_cgroup_ns.exit

put_cgroup_ns.exit:                               ; preds = %if.then.i21, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_cgroup_ns.exit_crit_edge, %get_cgroup_ns.exit.put_cgroup_ns.exit_crit_edge
  %15 = ptrtoint ptr %cgroup_ns5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ns, ptr %cgroup_ns5, align 4
  br label %cleanup

cleanup:                                          ; preds = %put_cgroup_ns.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %put_cgroup_ns.exit ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cgroupns_owner(ptr nocapture noundef readonly %ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ns = getelementptr inbounds %struct.cgroup_namespace, ptr %ns, i32 0, i32 1
  %0 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ns, align 4
  ret ptr %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cgroup_namespaces_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_css_set_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inc_ucount(ptr noundef, [1 x i32], i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_alloc_inum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_free_cgroup_ns, !1, !"__ksymtab_free_cgroup_ns", i1 false, i1 false}
!1 = !{!"../kernel/cgroup/namespace.c", i32 48, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/cgroup/namespace.c", i32 145, i32 11}
!4 = !{ptr @cgroupns_operations, !5, !"cgroupns_operations", i1 false, i1 false}
!5 = !{!"../kernel/cgroup/namespace.c", i32 144, i32 33}
!6 = !{ptr @__initcall__kmod_namespace__234_157_cgroup_namespaces_init4, !7, !"__initcall__kmod_namespace__234_157_cgroup_namespaces_init4", i1 false, i1 false}
!7 = !{!"../kernel/cgroup/namespace.c", i32 157, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../kernel/cgroup/namespace.c", i32 14, i32 24}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/cgroup.h", i32 481, i32 9}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2148548283}
!25 = !{i64 2148462747, i64 2148462779, i64 2148462808, i64 2148462842, i64 2148462873, i64 2148462896}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2149594253}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2154024833, i64 2154025322, i64 2154024870, i64 2154024926, i64 2154024960, i64 2154024984, i64 2154025025, i64 2154025046, i64 2154025074, i64 2154025108}
!30 = !{i64 2148460282, i64 2148460314, i64 2148460343, i64 2148460377, i64 2148460408, i64 2148460431}
