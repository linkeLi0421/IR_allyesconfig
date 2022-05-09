; ModuleID = '/llk/IR_all_yes/kernel/cgroup/legacy_freezer.c_pt.bc'
source_filename = "../kernel/cgroup/legacy_freezer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.66, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.66 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.freezer = type { %struct.cgroup_subsys_state, i32 }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.css_task_iter = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }

@files = internal global { [4 x %struct.cftype], [128 x i8] } { [4 x %struct.cftype] [%struct.cftype { [64 x i8] c"state\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @freezer_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @freezer_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"self_freezing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @freezer_self_freezing_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"parent_freezing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @freezer_parent_freezing_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [128 x i8] zeroinitializer }, align 32
@freezer_cgrp_subsys = dso_local global { %struct.cgroup_subsys, [52 x i8] } { %struct.cgroup_subsys { ptr @freezer_css_alloc, ptr @freezer_css_online, ptr @freezer_css_offline, ptr null, ptr @freezer_css_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @freezer_attach, ptr null, ptr null, ptr null, ptr @freezer_fork, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @files, i32 0 }, [52 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@task_css.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@freezer_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @freezer_mutex, i64 52), ptr getelementptr (i8, ptr @freezer_mutex, i64 52) }, ptr @freezer_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"freezer_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"freezer_mutex\00", [18 x i8] zeroinitializer }, align 32
@init_css_set = external dso_local local_unnamed_addr global %struct.css_set, align 4
@percpu_ref_tryget_live_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/linux/percpu-refcount.h\00", [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kernel/cgroup/legacy_freezer.c\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FROZEN\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FREEZING\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"THAWED\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 453, i32 22 }
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"freezer_cgrp_subsys\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 473, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 695, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 494, i32 9 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 723, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"freezer_mutex\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 48, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [35 x i8] c"../include/linux/percpu-refcount.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 280, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 251, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 79, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 81, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [34 x i8] c"../kernel/cgroup/legacy_freezer.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 82, i32 9 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @files, ptr @freezer_cgrp_subsys, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @freezer_mutex, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @files to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freezer_cgrp_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freezer_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cgroup_freezing(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 164
  %4 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.task_freezer.exit_crit_edge

rcu_read_lock.exit.task_freezer.exit_crit_edge:   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_freezer.exit_crit_edge

lor.lhs.false.i.i.task_freezer.exit_crit_edge:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_freezer.exit_crit_edge

lor.lhs.false4.i.i.task_freezer.exit_crit_edge:   ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_freezer.exit_crit_edge

lor.lhs.false6.i.i.task_freezer.exit_crit_edge:   ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_freezer.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_freezer.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_freezer.exit_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_freezer.exit_crit_edge:  ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 494, ptr noundef nonnull @.str.3) #9
  br label %task_freezer.exit

task_freezer.exit:                                ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_freezer.exit_crit_edge, %land.lhs.true.i.i.task_freezer.exit_crit_edge, %lor.lhs.false6.i.i.task_freezer.exit_crit_edge, %lor.lhs.false4.i.i.task_freezer.exit_crit_edge, %lor.lhs.false.i.i.task_freezer.exit_crit_edge, %rcu_read_lock.exit.task_freezer.exit_crit_edge
  %arrayidx.i.i = getelementptr [14 x ptr], ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %state = getelementptr inbounds %struct.freezer, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i2, label %task_freezer.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

task_freezer.exit.rcu_read_unlock.exit_crit_edge: ; preds = %task_freezer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %task_freezer.exit
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %task_freezer.exit.rcu_read_unlock.exit_crit_edge
  %and = and i32 %11, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %12 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i9 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i1 %tobool
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @freezer_css_alloc(ptr nocapture noundef readnone %parent_css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 176) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -12 to ptr), ptr %call7.i.i
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @freezer_css_online(ptr nocapture noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @freezer_mutex, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.freezer, ptr %css, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %or = or i32 %3, 1
  store i32 %or, ptr %state, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state2 = getelementptr inbounds %struct.freezer, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state2, align 8
  %and = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %or5 = or i32 %3, 13
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or5, ptr %state, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @system_freezing_cnt, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @system_freezing_cnt, ptr nonnull @system_freezing_cnt, i32 1, ptr nonnull elementtype(i32) @system_freezing_cnt) #9, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @freezer_mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @freezer_css_offline(ptr nocapture noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @freezer_mutex, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.freezer, ptr %css, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @system_freezing_cnt, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @system_freezing_cnt, ptr nonnull @system_freezing_cnt, i32 1, ptr nonnull elementtype(i32) @system_freezing_cnt) #9, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @freezer_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @freezer_css_free(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %css) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @freezer_attach(ptr noundef %tset) #0 align 64 {
entry:
  %new_css = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_css) #9
  %0 = ptrtoint ptr %new_css to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_css, align 4, !annotation !46
  tail call void @mutex_lock_nested(ptr noundef nonnull @freezer_mutex, i32 noundef 0) #9
  %call = call ptr @cgroup_taskset_first(ptr noundef %tset, ptr noundef nonnull %new_css) #9
  %tobool.not21 = icmp eq ptr %call, null
  br i1 %tobool.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %task.022 = phi ptr [ %call11, %if.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %new_css to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %new_css, align 4
  %state = getelementptr inbounds %struct.freezer, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  %and = and i32 %4, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__thaw_task(ptr noundef nonnull %task.022) #9
  br label %if.end

if.else:                                          ; preds = %for.body
  %call3 = call zeroext i1 @freeze_task(ptr noundef nonnull %task.022) #9
  %tobool4.not19 = icmp eq ptr %2, null
  br i1 %tobool4.not19, label %if.else.if.end_crit_edge, label %if.else.land.rhs_crit_edge

if.else.land.rhs_crit_edge:                       ; preds = %if.else
  br label %land.rhs

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.else.land.rhs_crit_edge
  %freezer.020 = phi ptr [ %9, %while.body.land.rhs_crit_edge ], [ %2, %if.else.land.rhs_crit_edge ]
  %state5 = getelementptr inbounds %struct.freezer, ptr %freezer.020, i32 0, i32 1
  %5 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state5, align 8
  %and6 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %land.rhs.if.end_crit_edge, label %while.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body:                                       ; preds = %land.rhs
  %and9 = and i32 %6, -9
  %7 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and9, ptr %state5, align 8
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %freezer.020, i32 0, i32 12
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %while.body.if.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %land.rhs.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  %call11 = call ptr @cgroup_taskset_next(ptr noundef %tset, ptr noundef nonnull %new_css) #9
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @freezer_mutex) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_css) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @freezer_fork(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 164
  %0 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i7 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i7, label %lor.lhs.false.i, label %entry.task_css_is_root.exit_crit_edge

entry.task_css_is_root.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_css_is_root.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i1.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  br label %task_css_is_root.exit

task_css_is_root.exit:                            ; preds = %lor.lhs.false.i, %entry.task_css_is_root.exit_crit_edge
  %arrayidx.i = getelementptr [14 x ptr], ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 0, i32 6) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 0, i32 6), align 4
  %cmp.i = icmp eq ptr %3, %4
  br i1 %cmp.i, label %task_css_is_root.exit.cleanup_crit_edge, label %if.end

task_css_is_root.exit.cleanup_crit_edge:          ; preds = %task_css_is_root.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %task_css_is_root.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @freezer_mutex, i32 noundef 0) #9
  %5 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %9 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.task_freezer.exit_crit_edge

rcu_read_lock.exit.task_freezer.exit_crit_edge:   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_freezer.exit_crit_edge

lor.lhs.false.i.i.task_freezer.exit_crit_edge:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_freezer.exit_crit_edge

lor.lhs.false4.i.i.task_freezer.exit_crit_edge:   ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_freezer.exit_crit_edge

lor.lhs.false6.i.i.task_freezer.exit_crit_edge:   ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_freezer.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_freezer.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_freezer.exit_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_freezer.exit_crit_edge:  ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %task_freezer.exit

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 494, ptr noundef nonnull @.str.3) #9
  br label %task_freezer.exit

task_freezer.exit:                                ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_freezer.exit_crit_edge, %land.lhs.true.i.i.task_freezer.exit_crit_edge, %lor.lhs.false6.i.i.task_freezer.exit_crit_edge, %lor.lhs.false4.i.i.task_freezer.exit_crit_edge, %lor.lhs.false.i.i.task_freezer.exit_crit_edge, %rcu_read_lock.exit.task_freezer.exit_crit_edge
  %arrayidx.i.i = getelementptr [14 x ptr], ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %state = getelementptr inbounds %struct.freezer, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 8
  %and = and i32 %16, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %task_freezer.exit.if.end4_crit_edge, label %if.then2

task_freezer.exit.if.end4_crit_edge:              ; preds = %task_freezer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %task_freezer.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call zeroext i1 @freeze_task(ptr noundef %task) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %task_freezer.exit.if.end4_crit_edge
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i8, label %if.end4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.end4.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.end4
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.end4.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %17 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i15 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @mutex_unlock(ptr noundef nonnull @freezer_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %task_css_is_root.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_taskset_first(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__thaw_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freeze_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_taskset_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @freezer_read(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %it.i = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i25 = tail call ptr @of_css(ptr noundef %1) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @freezer_mutex, i32 noundef 0) #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call ptr @css_next_descendant_post(ptr noundef null, ptr noundef %call.i25) #9
  %tobool.not50 = icmp eq ptr %call1, null
  br i1 %tobool.not50, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %pos.051 = phi ptr [ %call3, %for.inc.for.body_crit_edge ], [ %call1, %rcu_read_lock.exit.for.body_crit_edge ]
  %call2 = call fastcc zeroext i1 @css_tryget_online(ptr noundef nonnull %pos.051)
  br i1 %call2, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i26 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i26, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %if.end
  %call1.i27 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %6 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i33 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it.i) #9
  %10 = call ptr @memset(ptr %it.i, i32 255, i32 52)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i35 = icmp eq i32 %11, 0
  br i1 %tobool.not.i35, label %rcu_read_unlock.exit.if.end.i_crit_edge, label %land.rhs.i

rcu_read_unlock.exit.if.end.i_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %rcu_read_unlock.exit
  %call.i72.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @freezer_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %cmp.not.i = icmp eq i32 %call.i72.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !47

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 251, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %rcu_read_unlock.exit.if.end.i_crit_edge
  %state.i = getelementptr inbounds %struct.freezer, ptr %pos.051, i32 0, i32 1
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 8
  %and.i = and i32 %13, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp ne i32 %and.i, 0
  %and27.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %or.cond.i = and i1 %tobool25.not.i, %tobool28.not.i
  br i1 %or.cond.i, label %if.end30.i, label %if.end.i.update_if_frozen.exit_crit_edge

if.end.i.update_if_frozen.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_if_frozen.exit

if.end30.i:                                       ; preds = %if.end.i
  %14 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end30.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end30.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end30.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end30.i.rcu_read_lock.exit.i_crit_edge
  %call31.i = call ptr @css_next_child(ptr noundef null, ptr noundef nonnull %pos.051) #9
  %tobool32.not98.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not98.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i_crit_edge

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %pos.099.i = phi ptr [ %call42.i, %for.inc.i.for.body.i_crit_edge ], [ %call31.i, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %state34.i = getelementptr inbounds %struct.freezer, ptr %pos.099.i, i32 0, i32 1
  %18 = ptrtoint ptr %state34.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state34.i, align 8
  %20 = and i32 %19, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %if.then40.i, label %for.inc.i

if.then40.i:                                      ; preds = %for.body.i
  %call.i73.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i73.i, label %if.then40.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i76.i

if.then40.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i76.i:                              ; preds = %if.then40.i
  %call1.i74.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74.i)
  %tobool.not.i75.i = icmp eq i32 %call1.i74.i, 0
  br i1 %tobool.not.i75.i, label %land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i78.i

land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i78.i:                             ; preds = %land.lhs.true.i76.i
  %.b4.i77.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77.i, label %land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i79.i

land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i79.i:                                    ; preds = %land.lhs.true2.i78.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i79.i, %land.lhs.true2.i78.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i76.i.rcu_read_unlock.exit.i_crit_edge, %if.then40.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %22 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i80.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i80.i to ptr
  %preempt_count.i.i.i.i81.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i81.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i81.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %update_if_frozen.exit

for.inc.i:                                        ; preds = %for.body.i
  %call42.i = call ptr @css_next_child(ptr noundef nonnull %pos.099.i, ptr noundef nonnull %pos.051) #9
  %tobool32.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool32.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %call.i82.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i82.i, label %for.end.i.rcu_read_unlock.exit92.i_crit_edge, label %land.lhs.true.i85.i

for.end.i.rcu_read_unlock.exit92.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit92.i

land.lhs.true.i85.i:                              ; preds = %for.end.i
  %call1.i83.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83.i)
  %tobool.not.i84.i = icmp eq i32 %call1.i83.i, 0
  br i1 %tobool.not.i84.i, label %land.lhs.true.i85.i.rcu_read_unlock.exit92.i_crit_edge, label %land.lhs.true2.i87.i

land.lhs.true.i85.i.rcu_read_unlock.exit92.i_crit_edge: ; preds = %land.lhs.true.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit92.i

land.lhs.true2.i87.i:                             ; preds = %land.lhs.true.i85.i
  %.b4.i86.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i86.i, label %land.lhs.true2.i87.i.rcu_read_unlock.exit92.i_crit_edge, label %if.then.i88.i

land.lhs.true2.i87.i.rcu_read_unlock.exit92.i_crit_edge: ; preds = %land.lhs.true2.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit92.i

if.then.i88.i:                                    ; preds = %land.lhs.true2.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_unlock.exit92.i

rcu_read_unlock.exit92.i:                         ; preds = %if.then.i88.i, %land.lhs.true2.i87.i.rcu_read_unlock.exit92.i_crit_edge, %land.lhs.true.i85.i.rcu_read_unlock.exit92.i_crit_edge, %for.end.i.rcu_read_unlock.exit92.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %26 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i89.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i89.i to ptr
  %preempt_count.i.i.i.i90.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i90.i, align 4
  %sub.i.i.i91.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i91.i, ptr %preempt_count.i.i.i.i90.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @css_task_iter_start(ptr noundef nonnull %pos.051, i32 noundef 0, ptr noundef nonnull %it.i) #9
  %call43100.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i) #9
  %tobool44.not101.i = icmp eq ptr %call43100.i, null
  br i1 %tobool44.not101.i, label %rcu_read_unlock.exit92.i.while.end.i_crit_edge, label %rcu_read_unlock.exit92.i.while.body.i_crit_edge

rcu_read_unlock.exit92.i.while.body.i_crit_edge:  ; preds = %rcu_read_unlock.exit92.i
  br label %while.body.i

rcu_read_unlock.exit92.i.while.end.i_crit_edge:   ; preds = %rcu_read_unlock.exit92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %if.end52.i.while.body.i_crit_edge, %rcu_read_unlock.exit92.i.while.body.i_crit_edge
  %call43102.i = phi ptr [ %call43.i, %if.end52.i.while.body.i_crit_edge ], [ %call43100.i, %rcu_read_unlock.exit92.i.while.body.i_crit_edge ]
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %30 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i93.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i93.i, label %while.body.i.if.end52.i_crit_edge, label %freezing.exit.i, !prof !48

while.body.i.if.end52.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

freezing.exit.i:                                  ; preds = %while.body.i
  %call4.i.i = call zeroext i1 @freezing_slow_path(ptr noundef nonnull %call43102.i) #9
  br i1 %call4.i.i, label %if.then46.i, label %freezing.exit.i.if.end52.i_crit_edge

freezing.exit.i.if.end52.i_crit_edge:             ; preds = %freezing.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then46.i:                                      ; preds = %freezing.exit.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %call43102.i, i32 0, i32 3
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true48.i, label %if.then46.i.if.end52.i_crit_edge

if.then46.i.if.end52.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

land.lhs.true48.i:                                ; preds = %if.then46.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i, align 4
  %and.i95.i = and i32 %34, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95.i)
  %tobool.i96.not.i = icmp eq i32 %and.i95.i, 0
  br i1 %tobool.i96.not.i, label %land.lhs.true48.i.out_iter_end.i_crit_edge, label %land.lhs.true48.i.if.end52.i_crit_edge

land.lhs.true48.i.if.end52.i_crit_edge:           ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

land.lhs.true48.i.out_iter_end.i_crit_edge:       ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_iter_end.i

if.end52.i:                                       ; preds = %land.lhs.true48.i.if.end52.i_crit_edge, %if.then46.i.if.end52.i_crit_edge, %freezing.exit.i.if.end52.i_crit_edge, %while.body.i.if.end52.i_crit_edge
  %call43.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i) #9
  %tobool44.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool44.not.i, label %if.end52.i.while.end.i_crit_edge, label %if.end52.i.while.body.i_crit_edge

if.end52.i.while.body.i_crit_edge:                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end52.i.while.end.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end52.i.while.end.i_crit_edge, %rcu_read_unlock.exit92.i.while.end.i_crit_edge
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state.i, align 8
  %or.i = or i32 %36, 8
  store i32 %or.i, ptr %state.i, align 8
  br label %out_iter_end.i

out_iter_end.i:                                   ; preds = %while.end.i, %land.lhs.true48.i.out_iter_end.i_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it.i) #9
  br label %update_if_frozen.exit

update_if_frozen.exit:                            ; preds = %out_iter_end.i, %rcu_read_unlock.exit.i, %if.end.i.update_if_frozen.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i) #9
  %37 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i14 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %add.i.i.i16 = add i32 %40, 1
  store volatile i32 %add.i.i.i16, ptr %preempt_count.i.i.i.i15, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i17 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %update_if_frozen.exit.rcu_read_lock.exit24_crit_edge, label %land.lhs.true.i20

update_if_frozen.exit.rcu_read_lock.exit24_crit_edge: ; preds = %update_if_frozen.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit24

land.lhs.true.i20:                                ; preds = %update_if_frozen.exit
  %call1.i18 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_lock.exit24_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_lock.exit24_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit24

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_lock.exit24_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_lock.exit24_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit24

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #9
  br label %rcu_read_lock.exit24

rcu_read_lock.exit24:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_lock.exit24_crit_edge, %land.lhs.true.i20.rcu_read_lock.exit24_crit_edge, %update_if_frozen.exit.rcu_read_lock.exit24_crit_edge
  call fastcc void @css_put(ptr noundef nonnull %pos.051)
  br label %for.inc

for.inc:                                          ; preds = %rcu_read_lock.exit24, %for.body.for.inc_crit_edge
  %call3 = call ptr @css_next_descendant_post(ptr noundef nonnull %pos.051, ptr noundef %call.i25) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i36 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i36, label %for.end.rcu_read_unlock.exit47_crit_edge, label %land.lhs.true.i39

for.end.rcu_read_unlock.exit47_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit47

land.lhs.true.i39:                                ; preds = %for.end
  %call1.i37 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit47_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit47_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit47

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit47_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit47_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit47

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_unlock.exit47

rcu_read_unlock.exit47:                           ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit47_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit47_crit_edge, %for.end.rcu_read_unlock.exit47_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %41 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i43 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i45 = add i32 %44, -1
  store volatile i32 %sub.i.i.i45, ptr %preempt_count.i.i.i.i44, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @mutex_unlock(ptr noundef nonnull @freezer_mutex) #9
  %state = getelementptr inbounds %struct.freezer, ptr %call.i25, i32 0, i32 1
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state, align 8
  %and.i48 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i49 = icmp eq i32 %and.i48, 0
  %and1.i = and i32 %46, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %.str.11..str.10.i = select i1 %tobool2.not.i, ptr @.str.11, ptr @.str.10
  %retval.0.i = select i1 %tobool.not.i49, ptr %.str.11..str.10.i, ptr @.str.9
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %retval.0.i) #9
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @freezer_write(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @strim(ptr noundef %buf) #9
  %call2 = tail call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(7) @.str.11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(7) @.str.9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.else.if.end8_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %0 = xor i1 %cmp, true
  %call9 = tail call ptr @of_css(ptr noundef %of) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @freezer_mutex, i32 noundef 0) #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end8.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end8.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end8
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end8.rcu_read_lock.exit.i_crit_edge
  %call.i13 = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %call9) #9
  %tobool.not51.i = icmp eq ptr %call.i13, null
  br i1 %tobool.not51.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i_crit_edge

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %pos.052.i = phi ptr [ %call10.i, %cleanup.i.for.body.i_crit_edge ], [ %call.i13, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos.052.i, i32 0, i32 12
  %5 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i.i, align 8
  %call3.i = tail call fastcc zeroext i1 @css_tryget_online(ptr noundef nonnull %pos.052.i) #9
  br i1 %call3.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %call.i31.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i31.i, label %if.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i34.i

if.end.i.rcu_read_unlock.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i34.i:                              ; preds = %if.end.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool.not.i33.i, label %land.lhs.true.i34.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i36.i

land.lhs.true.i34.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b4.i35.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35.i, label %land.lhs.true2.i36.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i37.i

land.lhs.true2.i36.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i37.i:                                    ; preds = %land.lhs.true2.i36.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i37.i, %land.lhs.true2.i36.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i34.i.rcu_read_unlock.exit.i_crit_edge, %if.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %7 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i38.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i38.i to ptr
  %preempt_count.i.i.i.i39.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i39.i, align 4
  %sub.i.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i39.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %cmp.i = icmp eq ptr %pos.052.i, %call9
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @freezer_apply_state(ptr noundef nonnull %call9, i1 noundef zeroext %0, i32 noundef 2) #9
  br label %if.end7.i

if.else.i:                                        ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr inbounds %struct.freezer, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 8
  %and.i = and i32 %12, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.i = icmp ne i32 %and.i, 0
  tail call fastcc void @freezer_apply_state(ptr noundef nonnull %pos.052.i, i1 noundef zeroext %tobool6.i, i32 noundef 4) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then4.i
  %13 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i20.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i20.i to ptr
  %preempt_count.i.i.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i21.i, align 4
  %add.i.i.i22.i = add i32 %16, 1
  store volatile i32 %add.i.i.i22.i, ptr %preempt_count.i.i.i.i21.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i23.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i23.i, label %if.end7.i.rcu_read_lock.exit30.i_crit_edge, label %land.lhs.true.i26.i

if.end7.i.rcu_read_lock.exit30.i_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit30.i

land.lhs.true.i26.i:                              ; preds = %if.end7.i
  %call1.i24.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call1.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true.i26.i.rcu_read_lock.exit30.i_crit_edge, label %land.lhs.true2.i28.i

land.lhs.true.i26.i.rcu_read_lock.exit30.i_crit_edge: ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit30.i

land.lhs.true2.i28.i:                             ; preds = %land.lhs.true.i26.i
  %.b4.i27.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i27.i, label %land.lhs.true2.i28.i.rcu_read_lock.exit30.i_crit_edge, label %if.then.i29.i

land.lhs.true2.i28.i.rcu_read_lock.exit30.i_crit_edge: ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit30.i

if.then.i29.i:                                    ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #9
  br label %rcu_read_lock.exit30.i

rcu_read_lock.exit30.i:                           ; preds = %if.then.i29.i, %land.lhs.true2.i28.i.rcu_read_lock.exit30.i_crit_edge, %land.lhs.true.i26.i.rcu_read_lock.exit30.i_crit_edge, %if.end7.i.rcu_read_lock.exit30.i_crit_edge
  tail call fastcc void @css_put(ptr noundef nonnull %pos.052.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %rcu_read_lock.exit30.i, %for.body.i.cleanup.i_crit_edge
  %call10.i = tail call ptr @css_next_descendant_pre(ptr noundef nonnull %pos.052.i, ptr noundef %call9) #9
  %tobool.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %call.i40.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i40.i, label %for.end.i.freezer_change_state.exit_crit_edge, label %land.lhs.true.i43.i

for.end.i.freezer_change_state.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %freezer_change_state.exit

land.lhs.true.i43.i:                              ; preds = %for.end.i
  %call1.i41.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41.i)
  %tobool.not.i42.i = icmp eq i32 %call1.i41.i, 0
  br i1 %tobool.not.i42.i, label %land.lhs.true.i43.i.freezer_change_state.exit_crit_edge, label %land.lhs.true2.i45.i

land.lhs.true.i43.i.freezer_change_state.exit_crit_edge: ; preds = %land.lhs.true.i43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %freezer_change_state.exit

land.lhs.true2.i45.i:                             ; preds = %land.lhs.true.i43.i
  %.b4.i44.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44.i, label %land.lhs.true2.i45.i.freezer_change_state.exit_crit_edge, label %if.then.i46.i

land.lhs.true2.i45.i.freezer_change_state.exit_crit_edge: ; preds = %land.lhs.true2.i45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %freezer_change_state.exit

if.then.i46.i:                                    ; preds = %land.lhs.true2.i45.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #9
  br label %freezer_change_state.exit

freezer_change_state.exit:                        ; preds = %if.then.i46.i, %land.lhs.true2.i45.i.freezer_change_state.exit_crit_edge, %land.lhs.true.i43.i.freezer_change_state.exit_crit_edge, %for.end.i.freezer_change_state.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %17 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i47.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i47.i to ptr
  %preempt_count.i.i.i.i48.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i48.i, align 4
  %sub.i.i.i49.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i49.i, ptr %preempt_count.i.i.i.i48.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @mutex_unlock(ptr noundef nonnull @freezer_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %freezer_change_state.exit, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %nbytes, %freezer_change_state.exit ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @freezer_self_freezing_read(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.freezer, ptr %css, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = lshr i32 %1, 1
  %and.lobit = and i32 %and, 1
  %2 = zext i32 %and.lobit to i64
  ret i64 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @freezer_parent_freezing_read(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.freezer, ptr %css, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = lshr i32 %1, 2
  %and.lobit = and i32 %and, 1
  %2 = zext i32 %and.lobit to i64
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_post(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @css_tryget_online(ptr noundef %css) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %call.i1.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %land.rhs.i.i, label %rcu_read_lock.exit.i.if.end29.i.i_crit_edge

rcu_read_lock.exit.i.if.end29.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %rcu_read_lock.exit.i
  %.b104.i.i = load i1, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  br i1 %.b104.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i3.i, !prof !48

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.then.i3.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 280, i32 noundef 9, ptr noundef null) #9
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i3.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %rcu_read_lock.exit.i.if.end29.i.i_crit_edge
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt, align 4
  %and.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body46.i.i, label %if.else.i.i, !prof !48

do.body46.i.i:                                    ; preds = %if.end29.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !50
  %9 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i105.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i105.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add63.i.i = add i32 %17, 1
  store i32 %add63.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !51
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool74.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool74.not.i.i, label %if.then83.i.i, label %do.body46.i.i.do.end86.i.i_crit_edge, !prof !47

do.body46.i.i.do.end86.i.i_crit_edge:             ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end86.i.i

if.then83.i.i:                                    ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end86.i.i

do.end86.i.i:                                     ; preds = %if.then83.i.i, %do.body46.i.i.do.end86.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #9, !srcloc !52
  br label %percpu_ref_tryget_live_rcu.exit.i

if.else.i.i:                                      ; preds = %if.end29.i.i
  %and.i.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool93.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool93.not.i.i, label %if.then94.i.i, label %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge

if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_tryget_live_rcu.exit.i

if.then94.i.i:                                    ; preds = %if.else.i.i
  %data.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 1, ptr elementtype(i32) %20) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_long_inc_not_zero.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  br label %atomic_long_inc_not_zero.exit.i.i

atomic_long_inc_not_zero.exit.i.i:                ; preds = %do.end11.i.i.i.i.i.i.i, %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  br label %percpu_ref_tryget_live_rcu.exit.i

percpu_ref_tryget_live_rcu.exit.i:                ; preds = %atomic_long_inc_not_zero.exit.i.i, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge, %do.end86.i.i
  %ret.0.off0.i.i = phi i1 [ true, %do.end86.i.i ], [ false, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge ], [ %cmp.i.i.i.i.i.i, %atomic_long_inc_not_zero.exit.i.i ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i4.i, label %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true.i7.i

percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %percpu_ref_tryget_live_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_tryget_live.exit

land.lhs.true.i7.i:                               ; preds = %percpu_ref_tryget_live_rcu.exit.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_tryget_live.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_tryget_live.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #9
  br label %percpu_ref_tryget_live.exit

percpu_ref_tryget_live.exit:                      ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %22 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i11.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %return

return:                                           ; preds = %percpu_ref_tryget_live.exit, %entry.return_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0.i.i, %percpu_ref_tryget_live.exit ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @css_put(ptr noundef %css) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i, label %if.then.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #9
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.rcu_read_lock.exit.i.i_crit_edge
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt, align 4
  %and.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !48

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !50
  %9 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i2.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add15.i.i = add i32 %17, -1
  store i32 %add15.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !51
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !47

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #9, !srcloc !52
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #9, !srcloc !57
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !47

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release.i.i, align 4
  tail call void %25(ptr noundef %refcnt) #9
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #9
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %26 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i10.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.end

if.end:                                           ; preds = %percpu_ref_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_start(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_task_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @freezer_apply_state(ptr noundef %freezer, i1 noundef zeroext %freeze, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  %it.i65 = alloca %struct.css_task_iter, align 4
  %it.i = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @freezer_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !47

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 353, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %state24 = getelementptr inbounds %struct.freezer, ptr %freezer, i32 0, i32 1
  %1 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state24, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end.if.end52_crit_edge, label %if.end27

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end27:                                         ; preds = %if.end
  br i1 %freeze, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end27
  %and31 = and i32 %2, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then33, label %if.then29.if.end34_crit_edge

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @system_freezing_cnt, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @system_freezing_cnt, ptr nonnull @system_freezing_cnt, i32 1, ptr nonnull elementtype(i32) @system_freezing_cnt) #9, !srcloc !44
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then29.if.end34_crit_edge
  %4 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state24, align 8
  %or = or i32 %5, %state
  store i32 %or, ptr %state24, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it.i) #9
  %6 = call ptr @memset(ptr %it.i, i32 255, i32 52)
  call void @css_task_iter_start(ptr noundef %freezer, i32 noundef 0, ptr noundef nonnull %it.i) #9
  %call2.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i) #9
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %if.end34.freeze_cgroup.exit_crit_edge, label %if.end34.while.body.i_crit_edge

if.end34.while.body.i_crit_edge:                  ; preds = %if.end34
  br label %while.body.i

if.end34.freeze_cgroup.exit_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %freeze_cgroup.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end34.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i64, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %if.end34.while.body.i_crit_edge ]
  %call1.i = call zeroext i1 @freeze_task(ptr noundef nonnull %call4.i) #9
  %call.i64 = call ptr @css_task_iter_next(ptr noundef nonnull %it.i) #9
  %tobool.not.i = icmp eq ptr %call.i64, null
  br i1 %tobool.not.i, label %while.body.i.freeze_cgroup.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.freeze_cgroup.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %freeze_cgroup.exit

freeze_cgroup.exit:                               ; preds = %while.body.i.freeze_cgroup.exit_crit_edge, %if.end34.freeze_cgroup.exit_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it.i) #9
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i) #9
  br label %if.end52

if.else:                                          ; preds = %if.end27
  %neg = xor i32 %state, -1
  %and41 = and i32 %2, %neg
  %7 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and41, ptr %state24, align 8
  %and43 = and i32 %and41, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then45, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then45:                                        ; preds = %if.else
  %and37 = and i32 %2, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then45.if.end48_crit_edge, label %if.then47

if.then45.if.end48_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @system_freezing_cnt, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @system_freezing_cnt, ptr nonnull @system_freezing_cnt, i32 1, ptr nonnull elementtype(i32) @system_freezing_cnt) #9, !srcloc !45
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then45.if.end48_crit_edge
  %9 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state24, align 8
  %and50 = and i32 %10, -9
  store i32 %and50, ptr %state24, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it.i65) #9
  %11 = call ptr @memset(ptr %it.i65, i32 255, i32 52)
  call void @css_task_iter_start(ptr noundef %freezer, i32 noundef 0, ptr noundef nonnull %it.i65) #9
  %call1.i66 = call ptr @css_task_iter_next(ptr noundef nonnull %it.i65) #9
  %tobool.not2.i = icmp eq ptr %call1.i66, null
  br i1 %tobool.not2.i, label %if.end48.unfreeze_cgroup.exit_crit_edge, label %if.end48.while.body.i69_crit_edge

if.end48.while.body.i69_crit_edge:                ; preds = %if.end48
  br label %while.body.i69

if.end48.unfreeze_cgroup.exit_crit_edge:          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %unfreeze_cgroup.exit

while.body.i69:                                   ; preds = %while.body.i69.while.body.i69_crit_edge, %if.end48.while.body.i69_crit_edge
  %call3.i = phi ptr [ %call.i67, %while.body.i69.while.body.i69_crit_edge ], [ %call1.i66, %if.end48.while.body.i69_crit_edge ]
  call void @__thaw_task(ptr noundef nonnull %call3.i) #9
  %call.i67 = call ptr @css_task_iter_next(ptr noundef nonnull %it.i65) #9
  %tobool.not.i68 = icmp eq ptr %call.i67, null
  br i1 %tobool.not.i68, label %while.body.i69.unfreeze_cgroup.exit_crit_edge, label %while.body.i69.while.body.i69_crit_edge

while.body.i69.while.body.i69_crit_edge:          ; preds = %while.body.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i69

while.body.i69.unfreeze_cgroup.exit_crit_edge:    ; preds = %while.body.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %unfreeze_cgroup.exit

unfreeze_cgroup.exit:                             ; preds = %while.body.i69.unfreeze_cgroup.exit_crit_edge, %if.end48.unfreeze_cgroup.exit_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it.i65) #9
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i65) #9
  br label %if.end52

if.end52:                                         ; preds = %unfreeze_cgroup.exit, %if.else.if.end52_crit_edge, %freeze_cgroup.exit, %if.end.if.end52_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !21, !23, !24, !26, !28, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @freezer_cgrp_subsys, !1, !"freezer_cgrp_subsys", i1 false, i1 false}
!1 = !{!"../kernel/cgroup/legacy_freezer.c", i32 473, i32 22}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/cgroup.h", i32 494, i32 9}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/cgroup/legacy_freezer.c", i32 48, i32 8}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @freezer_mutex, !14, !"freezer_mutex", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/cgroup.h", i32 538, i32 9}
!19 = !{ptr @files, !20, !"files", i1 false, i1 false}
!20 = !{!"../kernel/cgroup/legacy_freezer.c", i32 453, i32 22}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/percpu-refcount.h", i32 280, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/cgroup/legacy_freezer.c", i32 251, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/cgroup/legacy_freezer.c", i32 79, i32 10}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/cgroup/legacy_freezer.c", i32 81, i32 10}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/cgroup/legacy_freezer.c", i32 82, i32 9}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2149928148}
!43 = !{i64 2149928414}
!44 = !{i64 2148591277, i64 2148591303, i64 2148591332, i64 2148591366, i64 2148591397, i64 2148591420}
!45 = !{i64 2148593742, i64 2148593768, i64 2148593797, i64 2148593831, i64 2148593862, i64 2148593885}
!46 = !{!"auto-init"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2153600291}
!50 = !{i64 995957, i64 996018}
!51 = !{i64 998689}
!52 = !{i64 998974}
!53 = !{i64 2148590696}
!54 = !{i64 1077296, i64 1077321, i64 1077343, i64 1077359, i64 1077371, i64 1077391, i64 1077415, i64 1077431, i64 1077443}
!55 = !{i64 2148590884}
!56 = !{i64 2148679753}
!57 = !{i64 2148594462, i64 2148594494, i64 2148594523, i64 2148594557, i64 2148594588, i64 2148594611}
!58 = !{i64 2148679982}
