; ModuleID = '/llk/IR_all_yes/net/core/netclassid_cgroup.c_pt.bc'
source_filename = "../net/core/netclassid_cgroup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+task_cls_state\22, \22a\22\09"
module asm "\09.weak\09__crc_task_cls_state\09\09\09\09"
module asm "\09.long\09__crc_task_cls_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_task_cls_state:\09\09\09\09\09"
module asm "\09.asciz \09\22task_cls_state\22\09\09\09\09\09"
module asm "__kstrtabns_task_cls_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.107, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.107 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_cls_state = type { %struct.cgroup_subsys_state, i32 }
%struct.update_classid_context = type { i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.css_task_iter = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@task_cls_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/core/netclassid_cgroup.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_task_cls_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_task_cls_state = external dso_local constant [0 x i8], align 1
@__ksymtab_task_cls_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @task_cls_state to i32), ptr @__kstrtab_task_cls_state, ptr @__kstrtabns_task_cls_state }, section "___ksymtab_gpl+task_cls_state", align 4
@ss_files = internal global { [2 x %struct.cftype], [80 x i8] } { [2 x %struct.cftype] [%struct.cftype { [64 x i8] c"classid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @read_classid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @write_classid, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [80 x i8] zeroinitializer }, align 32
@net_cls_cgrp_subsys = dso_local global { %struct.cgroup_subsys, [52 x i8] } { %struct.cgroup_subsys { ptr @cgrp_css_alloc, ptr @cgrp_css_online, ptr null, ptr null, ptr @cgrp_css_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgrp_attach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @ss_files, i32 0 }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 23, i32 23 }
@___asan_gen_.8 = private unnamed_addr constant [9 x i8] c"ss_files\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 131, i32 22 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"net_cls_cgrp_subsys\00", align 1
@___asan_gen_.12 = private constant [32 x i8] c"../net/core/netclassid_cgroup.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 140, i32 22 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_task_cls_state, ptr @.str, ptr @.str.1, ptr @ss_files, ptr @net_cls_cgrp_subsys], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_files to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_cls_cgrp_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @task_cls_state(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cgroups = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 164
  %0 = ptrtoint ptr %cgroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cgroups, align 16
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end17_crit_edge

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

lor.lhs.false:                                    ; preds = %entry
  %call.i22 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool3.not = icmp eq i32 %call.i22, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.do.end17_crit_edge

lor.lhs.false.do.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false4.do.end17_crit_edge

lor.lhs.false4.do.end17_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %call7 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.do.end17_crit_edge

lor.lhs.false6.do.end17_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %lor.lhs.false9.do.end17_crit_edge

lor.lhs.false9.do.end17_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true14

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b21 = load i1, ptr @task_cls_state.__warned, align 1
  br i1 %.b21, label %land.lhs.true14.do.end17_crit_edge, label %if.then

land.lhs.true14.do.end17_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

if.then:                                          ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @task_cls_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 24, ptr noundef nonnull @.str.1) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then, %land.lhs.true14.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %lor.lhs.false9.do.end17_crit_edge, %lor.lhs.false6.do.end17_crit_edge, %lor.lhs.false4.do.end17_crit_edge, %lor.lhs.false.do.end17_crit_edge, %entry.do.end17_crit_edge
  %arrayidx = getelementptr [14 x ptr], ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cgrp_css_alloc(ptr nocapture noundef readnone %parent_css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 176) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -12 to ptr), ptr %call7.i.i
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cgrp_css_online(ptr nocapture noundef %css) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %classid = getelementptr inbounds %struct.cgroup_cls_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %classid, align 8
  %classid3 = getelementptr inbounds %struct.cgroup_cls_state, ptr %css, i32 0, i32 1
  %4 = ptrtoint ptr %classid3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %classid3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgrp_css_free(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %css) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgrp_attach(ptr noundef %tset) #0 align 64 {
entry:
  %ctx.i = alloca %struct.update_classid_context, align 4
  %css = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %css) #6
  %0 = ptrtoint ptr %css to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %css, align 4, !annotation !19
  %call = call ptr @cgroup_taskset_first(ptr noundef %tset, ptr noundef nonnull %css) #6
  %tobool.not5 = icmp eq ptr %call, null
  br i1 %tobool.not5, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.update_classid_context, ptr %ctx.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %update_classid_task.exit.for.body_crit_edge, %for.body.lr.ph
  %p.06 = phi ptr [ %call, %for.body.lr.ph ], [ %call2, %update_classid_task.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %css, align 4
  %classid = getelementptr inbounds %struct.cgroup_cls_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %classid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctx.i) #6
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ctx.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1000, ptr %1, align 4
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %p.06, i32 0, i32 127
  %files.i = getelementptr inbounds %struct.task_struct, ptr %p.06, i32 0, i32 108
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body
  %fd.0.i = phi i32 [ 0, %for.body ], [ %call.i, %do.body.i.do.body.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #6
  %8 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %files.i, align 4
  %call.i = call i32 @iterate_fd(ptr noundef %9, i32 noundef %fd.0.i, ptr noundef nonnull @update_classid_sock, ptr noundef nonnull %ctx.i) #6
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i) #6
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 0) #6
  %call.i.i = call i32 @__cond_resched() #6
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %update_classid_task.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

update_classid_task.exit:                         ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctx.i) #6
  %call2 = call ptr @cgroup_taskset_next(ptr noundef %tset, ptr noundef nonnull %css) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %update_classid_task.exit.for.end_crit_edge, label %update_classid_task.exit.for.body_crit_edge

update_classid_task.exit.for.body_crit_edge:      ; preds = %update_classid_task.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

update_classid_task.exit.for.end_crit_edge:       ; preds = %update_classid_task.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %update_classid_task.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %css) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_taskset_first(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_taskset_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_fd(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_classid_sock(ptr nocapture noundef %v, ptr noundef %file, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sock_from_file(ptr noundef %file) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sk = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  %classid3.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 74, i32 1
  %4 = ptrtoint ptr %classid3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %3, ptr %classid3.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %batch = getelementptr inbounds %struct.update_classid_context, ptr %v, i32 0, i32 1
  %5 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %batch, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %batch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1000, ptr %batch, align 4
  %add = add i32 %n, 1
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then1 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_from_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @read_classid(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %classid = getelementptr inbounds %struct.cgroup_cls_state, ptr %css, i32 0, i32 1
  %0 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %classid, align 8
  %conv = zext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_classid(ptr noundef %css, ptr nocapture noundef readnone %cft, i64 noundef %value) #0 align 64 {
entry:
  %ctx.i = alloca %struct.update_classid_context, align 4
  %it = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it) #6
  %0 = call ptr @memset(ptr %it, i32 255, i32 52)
  %conv = trunc i64 %value to i32
  %classid = getelementptr inbounds %struct.cgroup_cls_state, ptr %css, i32 0, i32 1
  %1 = ptrtoint ptr %classid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %classid, align 8
  call void @css_task_iter_start(ptr noundef %css, i32 noundef 0, ptr noundef nonnull %it) #6
  %call15 = call ptr @css_task_iter_next(ptr noundef nonnull %it) #6
  %tobool.not6 = icmp eq ptr %call15, null
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = getelementptr inbounds %struct.update_classid_context, ptr %ctx.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %update_classid_task.exit.while.body_crit_edge, %while.body.lr.ph
  %call17 = phi ptr [ %call15, %while.body.lr.ph ], [ %call1, %update_classid_task.exit.while.body_crit_edge ]
  %3 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %classid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctx.i) #6
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ctx.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %2, align 4
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %call17, i32 0, i32 127
  %files.i = getelementptr inbounds %struct.task_struct, ptr %call17, i32 0, i32 108
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %while.body
  %fd.0.i = phi i32 [ 0, %while.body ], [ %call.i, %do.body.i.do.body.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #6
  %7 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %files.i, align 4
  %call.i = call i32 @iterate_fd(ptr noundef %8, i32 noundef %fd.0.i, ptr noundef nonnull @update_classid_sock, ptr noundef nonnull %ctx.i) #6
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i) #6
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 0) #6
  %call.i.i = call i32 @__cond_resched() #6
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %update_classid_task.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

update_classid_task.exit:                         ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctx.i) #6
  %call1 = call ptr @css_task_iter_next(ptr noundef nonnull %it) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %update_classid_task.exit.while.end_crit_edge, label %update_classid_task.exit.while.body_crit_edge

update_classid_task.exit.while.body_crit_edge:    ; preds = %update_classid_task.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

update_classid_task.exit.while.end_crit_edge:     ; preds = %update_classid_task.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %update_classid_task.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it) #6
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_start(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_task_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/core/netclassid_cgroup.c", i32 23, i32 23}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_task_cls_state, !5, !"__ksymtab_task_cls_state", i1 false, i1 false}
!5 = !{!"../net/core/netclassid_cgroup.c", i32 26, i32 1}
!6 = !{ptr @net_cls_cgrp_subsys, !7, !"net_cls_cgrp_subsys", i1 false, i1 false}
!7 = !{!"../net/core/netclassid_cgroup.c", i32 140, i32 22}
!8 = !{ptr @ss_files, !9, !"ss_files", i1 false, i1 false}
!9 = !{!"../net/core/netclassid_cgroup.c", i32 131, i32 22}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
