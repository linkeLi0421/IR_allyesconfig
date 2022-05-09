; ModuleID = '/llk/IR_all_yes/kernel/cgroup/pids.c_pt.bc'
source_filename = "../kernel/cgroup/pids.c"
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pids_cgroup = type { %struct.cgroup_subsys_state, %struct.atomic64_t, %struct.atomic64_t, %struct.cgroup_file, %struct.atomic64_t }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.45, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.45 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@pids_files = internal global { [4 x %struct.cftype], [128 x i8] } { [4 x %struct.cftype] [%struct.cftype { [64 x i8] c"max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pids_max_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pids_max_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"current\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @pids_current_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pids_events_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [128 x i8] zeroinitializer }, align 32
@pids_cgrp_subsys = dso_local global { %struct.cgroup_subsys, [52 x i8] } { %struct.cgroup_subsys { ptr @pids_css_alloc, ptr null, ptr null, ptr null, ptr @pids_css_free, ptr null, ptr null, ptr null, ptr @pids_can_attach, ptr @pids_cancel_attach, ptr null, ptr null, ptr @pids_can_fork, ptr @pids_cancel_fork, ptr null, ptr null, ptr @pids_release, ptr null, i8 32, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr @pids_files, ptr @pids_files, i32 0 }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@task_css.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@pids_cancel.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/cgroup/pids.c\00", [43 x i8] zeroinitializer }, align 32
@pids_can_fork._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cgroup: fork rejected by pids controller in \00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pids_can_fork\00", [18 x i8] zeroinitializer }, align 32
@pids_can_fork._entry_ptr = internal global ptr @pids_can_fork._entry, section ".printk_index", align 4
@pids_can_fork._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@pids_can_fork._entry_ptr.7 = internal global ptr @pids_can_fork._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max %lld\0A\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [11 x i8] c"pids_files\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 322, i32 22 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"pids_cgrp_subsys\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 343, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 494, i32 9 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 102, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 233, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 235, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 299, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 299, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 301, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [24 x i8] c"../kernel/cgroup/pids.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 318, i32 17 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @pids_can_fork._entry, ptr @pids_can_fork._entry.5, ptr @pids_can_fork._entry_ptr, ptr @pids_can_fork._entry_ptr.7, ptr @pids_files, ptr @pids_cgrp_subsys, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pids_files to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pids_cgrp_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pids_can_fork._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pids_can_fork._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pids_css_alloc(ptr nocapture noundef readnone %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 248) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %counter = getelementptr inbounds %struct.pids_cgroup, ptr %call7.i.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter, i32 noundef 8) #7
  tail call void @generic_atomic64_set(ptr noundef %counter, i64 noundef 0) #7
  %limit = getelementptr inbounds %struct.pids_cgroup, ptr %call7.i.i, i32 0, i32 2
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %limit, i32 noundef 8) #7
  tail call void @generic_atomic64_set(ptr noundef %limit, i64 noundef 32769) #7
  %events_limit = getelementptr inbounds %struct.pids_cgroup, ptr %call7.i.i, i32 0, i32 4
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %events_limit, i32 noundef 8) #7
  tail call void @generic_atomic64_set(ptr noundef %events_limit, i64 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pids_css_free(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %css) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pids_can_attach(ptr noundef %tset) #0 align 64 {
entry:
  %dst_css = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_css) #7
  %0 = ptrtoint ptr %dst_css to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst_css, align 4, !annotation !42
  %call = call ptr @cgroup_taskset_first(ptr noundef %tset, ptr noundef nonnull %dst_css) #7
  %tobool.not15 = icmp eq ptr %call, null
  br i1 %tobool.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %pids_uncharge.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %task.016 = phi ptr [ %call4, %pids_uncharge.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %dst_css to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dst_css, align 4
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %task.016, i32 0, i32 164
  %3 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.task_css.exit_crit_edge

for.body.task_css.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

lor.lhs.false.i:                                  ; preds = %for.body
  %call.i2.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool3.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.task_css.exit_crit_edge

lor.lhs.false.i.task_css.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %task.016, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false4.i.task_css.exit_crit_edge

lor.lhs.false4.i.task_css.exit_crit_edge:         ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %call7.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %lor.lhs.false6.i.task_css.exit_crit_edge

lor.lhs.false6.i.task_css.exit_crit_edge:         ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false6.i
  %call9.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.task_css.exit_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.task_css.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true11.i.task_css.exit_crit_edge, label %if.then.i

land.lhs.true11.i.task_css.exit_crit_edge:        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

if.then.i:                                        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @task_css.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 494, ptr noundef nonnull @.str.1) #7
  br label %task_css.exit

task_css.exit:                                    ; preds = %if.then.i, %land.lhs.true11.i.task_css.exit_crit_edge, %land.lhs.true.i.task_css.exit_crit_edge, %lor.lhs.false6.i.task_css.exit_crit_edge, %lor.lhs.false4.i.task_css.exit_crit_edge, %lor.lhs.false.i.task_css.exit_crit_edge, %for.body.task_css.exit_crit_edge
  %arrayidx.i = getelementptr [14 x ptr], ptr %4, i32 0, i32 10
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %parent.i2.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 12
  %9 = ptrtoint ptr %parent.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i2.i, align 8
  %tobool.not3.i = icmp eq ptr %10, null
  br i1 %tobool.not3.i, label %task_css.exit.pids_charge.exit_crit_edge, label %task_css.exit.for.body.i_crit_edge

task_css.exit.for.body.i_crit_edge:               ; preds = %task_css.exit
  br label %for.body.i

task_css.exit.pids_charge.exit_crit_edge:         ; preds = %task_css.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_charge.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %task_css.exit.for.body.i_crit_edge
  %parent.i5.i = phi ptr [ %parent.i.i, %for.body.i.for.body.i_crit_edge ], [ %parent.i2.i, %task_css.exit.for.body.i_crit_edge ]
  %p.04.i = phi ptr [ %12, %for.body.i.for.body.i_crit_edge ], [ %2, %task_css.exit.for.body.i_crit_edge ]
  %counter.i = getelementptr inbounds %struct.pids_cgroup, ptr %p.04.i, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %counter.i, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %counter.i) #7
  %11 = ptrtoint ptr %parent.i5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i5.i, align 8
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i7 = icmp eq ptr %14, null
  br i1 %tobool.not.i7, label %for.body.i.pids_charge.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.pids_charge.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_charge.exit

pids_charge.exit:                                 ; preds = %for.body.i.pids_charge.exit_crit_edge, %task_css.exit.pids_charge.exit_crit_edge
  %parent.i2.i8 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %8, i32 0, i32 12
  %15 = ptrtoint ptr %parent.i2.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i2.i8, align 8
  %tobool.not3.i9 = icmp eq ptr %16, null
  br i1 %tobool.not3.i9, label %pids_charge.exit.pids_uncharge.exit_crit_edge, label %pids_charge.exit.for.body.i12_crit_edge

pids_charge.exit.for.body.i12_crit_edge:          ; preds = %pids_charge.exit
  br label %for.body.i12

pids_charge.exit.pids_uncharge.exit_crit_edge:    ; preds = %pids_charge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_uncharge.exit

for.body.i12:                                     ; preds = %pids_cancel.exit.i.for.body.i12_crit_edge, %pids_charge.exit.for.body.i12_crit_edge
  %parent.i5.i10 = phi ptr [ %parent.i.i13, %pids_cancel.exit.i.for.body.i12_crit_edge ], [ %parent.i2.i8, %pids_charge.exit.for.body.i12_crit_edge ]
  %p.04.i11 = phi ptr [ %18, %pids_cancel.exit.i.for.body.i12_crit_edge ], [ %8, %pids_charge.exit.for.body.i12_crit_edge ]
  %counter.i.i = getelementptr inbounds %struct.pids_cgroup, ptr %p.04.i11, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %counter.i.i, i32 noundef 8) #7
  %call.i1.i.i.i = call i64 @generic_atomic64_add_return(i64 noundef -1, ptr noundef %counter.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i1.i.i.i)
  %cmp.i.i.i.i = icmp slt i64 %call.i1.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i, label %for.body.i12.pids_cancel.exit.i_crit_edge

for.body.i12.pids_cancel.exit.i_crit_edge:        ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_cancel.exit.i

land.rhs.i.i:                                     ; preds = %for.body.i12
  %.b1.i.i = load i1, ptr @pids_cancel.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.pids_cancel.exit.i_crit_edge, label %if.then.i.i, !prof !43

land.rhs.i.i.pids_cancel.exit.i_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_cancel.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pids_cancel.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 102, i32 noundef 9, ptr noundef null) #7
  br label %pids_cancel.exit.i

pids_cancel.exit.i:                               ; preds = %if.then.i.i, %land.rhs.i.i.pids_cancel.exit.i_crit_edge, %for.body.i12.pids_cancel.exit.i_crit_edge
  %17 = ptrtoint ptr %parent.i5.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i5.i10, align 8
  %parent.i.i13 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i.i13, align 8
  %tobool.not.i14 = icmp eq ptr %20, null
  br i1 %tobool.not.i14, label %pids_cancel.exit.i.pids_uncharge.exit_crit_edge, label %pids_cancel.exit.i.for.body.i12_crit_edge

pids_cancel.exit.i.for.body.i12_crit_edge:        ; preds = %pids_cancel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i12

pids_cancel.exit.i.pids_uncharge.exit_crit_edge:  ; preds = %pids_cancel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_uncharge.exit

pids_uncharge.exit:                               ; preds = %pids_cancel.exit.i.pids_uncharge.exit_crit_edge, %pids_charge.exit.pids_uncharge.exit_crit_edge
  %call4 = call ptr @cgroup_taskset_next(ptr noundef %tset, ptr noundef nonnull %dst_css) #7
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %pids_uncharge.exit.for.end_crit_edge, label %pids_uncharge.exit.for.body_crit_edge

pids_uncharge.exit.for.body_crit_edge:            ; preds = %pids_uncharge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

pids_uncharge.exit.for.end_crit_edge:             ; preds = %pids_uncharge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %pids_uncharge.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_css) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pids_cancel_attach(ptr noundef %tset) #0 align 64 {
entry:
  %dst_css = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_css) #7
  %0 = ptrtoint ptr %dst_css to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst_css, align 4, !annotation !42
  %call = call ptr @cgroup_taskset_first(ptr noundef %tset, ptr noundef nonnull %dst_css) #7
  %tobool.not15 = icmp eq ptr %call, null
  br i1 %tobool.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %pids_uncharge.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %task.016 = phi ptr [ %call4, %pids_uncharge.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %dst_css to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dst_css, align 4
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %task.016, i32 0, i32 164
  %3 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.task_css.exit_crit_edge

for.body.task_css.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

lor.lhs.false.i:                                  ; preds = %for.body
  %call.i2.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool3.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.task_css.exit_crit_edge

lor.lhs.false.i.task_css.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %task.016, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false4.i.task_css.exit_crit_edge

lor.lhs.false4.i.task_css.exit_crit_edge:         ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %call7.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %lor.lhs.false6.i.task_css.exit_crit_edge

lor.lhs.false6.i.task_css.exit_crit_edge:         ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false6.i
  %call9.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.task_css.exit_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.task_css.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true11.i.task_css.exit_crit_edge, label %if.then.i

land.lhs.true11.i.task_css.exit_crit_edge:        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

if.then.i:                                        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @task_css.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 494, ptr noundef nonnull @.str.1) #7
  br label %task_css.exit

task_css.exit:                                    ; preds = %if.then.i, %land.lhs.true11.i.task_css.exit_crit_edge, %land.lhs.true.i.task_css.exit_crit_edge, %lor.lhs.false6.i.task_css.exit_crit_edge, %lor.lhs.false4.i.task_css.exit_crit_edge, %lor.lhs.false.i.task_css.exit_crit_edge, %for.body.task_css.exit_crit_edge
  %arrayidx.i = getelementptr [14 x ptr], ptr %4, i32 0, i32 10
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %parent.i2.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %parent.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i2.i, align 8
  %tobool.not3.i = icmp eq ptr %10, null
  br i1 %tobool.not3.i, label %task_css.exit.pids_charge.exit_crit_edge, label %task_css.exit.for.body.i_crit_edge

task_css.exit.for.body.i_crit_edge:               ; preds = %task_css.exit
  br label %for.body.i

task_css.exit.pids_charge.exit_crit_edge:         ; preds = %task_css.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_charge.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %task_css.exit.for.body.i_crit_edge
  %parent.i5.i = phi ptr [ %parent.i.i, %for.body.i.for.body.i_crit_edge ], [ %parent.i2.i, %task_css.exit.for.body.i_crit_edge ]
  %p.04.i = phi ptr [ %12, %for.body.i.for.body.i_crit_edge ], [ %8, %task_css.exit.for.body.i_crit_edge ]
  %counter.i = getelementptr inbounds %struct.pids_cgroup, ptr %p.04.i, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %counter.i, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %counter.i) #7
  %11 = ptrtoint ptr %parent.i5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i5.i, align 8
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i7 = icmp eq ptr %14, null
  br i1 %tobool.not.i7, label %for.body.i.pids_charge.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.pids_charge.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_charge.exit

pids_charge.exit:                                 ; preds = %for.body.i.pids_charge.exit_crit_edge, %task_css.exit.pids_charge.exit_crit_edge
  %parent.i2.i8 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 12
  %15 = ptrtoint ptr %parent.i2.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i2.i8, align 8
  %tobool.not3.i9 = icmp eq ptr %16, null
  br i1 %tobool.not3.i9, label %pids_charge.exit.pids_uncharge.exit_crit_edge, label %pids_charge.exit.for.body.i12_crit_edge

pids_charge.exit.for.body.i12_crit_edge:          ; preds = %pids_charge.exit
  br label %for.body.i12

pids_charge.exit.pids_uncharge.exit_crit_edge:    ; preds = %pids_charge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_uncharge.exit

for.body.i12:                                     ; preds = %pids_cancel.exit.i.for.body.i12_crit_edge, %pids_charge.exit.for.body.i12_crit_edge
  %parent.i5.i10 = phi ptr [ %parent.i.i13, %pids_cancel.exit.i.for.body.i12_crit_edge ], [ %parent.i2.i8, %pids_charge.exit.for.body.i12_crit_edge ]
  %p.04.i11 = phi ptr [ %18, %pids_cancel.exit.i.for.body.i12_crit_edge ], [ %2, %pids_charge.exit.for.body.i12_crit_edge ]
  %counter.i.i = getelementptr inbounds %struct.pids_cgroup, ptr %p.04.i11, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %counter.i.i, i32 noundef 8) #7
  %call.i1.i.i.i = call i64 @generic_atomic64_add_return(i64 noundef -1, ptr noundef %counter.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i1.i.i.i)
  %cmp.i.i.i.i = icmp slt i64 %call.i1.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i, label %for.body.i12.pids_cancel.exit.i_crit_edge

for.body.i12.pids_cancel.exit.i_crit_edge:        ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_cancel.exit.i

land.rhs.i.i:                                     ; preds = %for.body.i12
  %.b1.i.i = load i1, ptr @pids_cancel.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.pids_cancel.exit.i_crit_edge, label %if.then.i.i, !prof !43

land.rhs.i.i.pids_cancel.exit.i_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_cancel.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pids_cancel.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 102, i32 noundef 9, ptr noundef null) #7
  br label %pids_cancel.exit.i

pids_cancel.exit.i:                               ; preds = %if.then.i.i, %land.rhs.i.i.pids_cancel.exit.i_crit_edge, %for.body.i12.pids_cancel.exit.i_crit_edge
  %17 = ptrtoint ptr %parent.i5.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i5.i10, align 8
  %parent.i.i13 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i.i13, align 8
  %tobool.not.i14 = icmp eq ptr %20, null
  br i1 %tobool.not.i14, label %pids_cancel.exit.i.pids_uncharge.exit_crit_edge, label %pids_cancel.exit.i.for.body.i12_crit_edge

pids_cancel.exit.i.for.body.i12_crit_edge:        ; preds = %pids_cancel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i12

pids_cancel.exit.i.pids_uncharge.exit_crit_edge:  ; preds = %pids_cancel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_uncharge.exit

pids_uncharge.exit:                               ; preds = %pids_cancel.exit.i.pids_uncharge.exit_crit_edge, %pids_charge.exit.pids_uncharge.exit_crit_edge
  %call4 = call ptr @cgroup_taskset_next(ptr noundef %tset, ptr noundef nonnull %dst_css) #7
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %pids_uncharge.exit.for.end_crit_edge, label %pids_uncharge.exit.for.body_crit_edge

pids_uncharge.exit.for.body_crit_edge:            ; preds = %pids_uncharge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

pids_uncharge.exit.for.end_crit_edge:             ; preds = %pids_uncharge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %pids_uncharge.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_css) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pids_can_fork(ptr nocapture noundef readnone %task, ptr noundef readonly %cset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cset, null
  br i1 %tobool.not, label %if.else, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.else:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  %cgroups = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 164
  %4 = ptrtoint ptr %cgroups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cgroups, align 16
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i49 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  br label %if.end25

if.end25:                                         ; preds = %lor.lhs.false, %if.else.if.end25_crit_edge, %entry.if.end25_crit_edge
  %cset.pn = phi ptr [ %cset, %entry.if.end25_crit_edge ], [ %5, %lor.lhs.false ], [ %5, %if.else.if.end25_crit_edge ]
  %css.0.in = getelementptr [14 x ptr], ptr %cset.pn, i32 0, i32 10
  %6 = ptrtoint ptr %css.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %css.0 = load ptr, ptr %css.0.in, align 4
  %parent.i14.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css.0, i32 0, i32 12
  %7 = ptrtoint ptr %parent.i14.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i14.i, align 8
  %tobool.not15.i = icmp eq ptr %8, null
  br i1 %tobool.not15.i, label %if.end25.if.end43_crit_edge, label %if.end25.for.body.i_crit_edge

if.end25.for.body.i_crit_edge:                    ; preds = %if.end25
  br label %for.body.i

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end25.for.body.i_crit_edge
  %parent.i17.i = phi ptr [ %parent.i.i, %for.inc.i.for.body.i_crit_edge ], [ %parent.i14.i, %if.end25.for.body.i_crit_edge ]
  %p.016.i = phi ptr [ %10, %for.inc.i.for.body.i_crit_edge ], [ %css.0, %if.end25.for.body.i_crit_edge ]
  %counter.i = getelementptr inbounds %struct.pids_cgroup, ptr %p.016.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter.i, i32 noundef 8) #7
  %call.i.i50 = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %counter.i) #7
  %limit2.i = getelementptr inbounds %struct.pids_cgroup, ptr %p.016.i, i32 0, i32 2
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %limit2.i, i32 noundef 8) #7
  %call.i2.i51 = tail call i64 @generic_atomic64_read(ptr noundef %limit2.i) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i50, i64 %call.i2.i51)
  %cmp.i = icmp sgt i64 %call.i.i50, %call.i2.i51
  br i1 %cmp.i, label %for.cond7.preheader.i, label %for.inc.i

for.cond7.preheader.i:                            ; preds = %for.body.i
  %cmp8.not18.i = icmp eq ptr %p.016.i, %css.0
  br i1 %cmp8.not18.i, label %for.cond7.preheader.i.for.end13.i_crit_edge, label %for.cond7.preheader.i.for.body10.i_crit_edge

for.cond7.preheader.i.for.body10.i_crit_edge:     ; preds = %for.cond7.preheader.i
  br label %for.body10.i

for.cond7.preheader.i.for.end13.i_crit_edge:      ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13.i

for.inc.i:                                        ; preds = %for.body.i
  %9 = ptrtoint ptr %parent.i17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i17.i, align 8
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.inc.i.if.end43_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end43_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

for.body10.i:                                     ; preds = %pids_cancel.exit.i.for.body10.i_crit_edge, %for.cond7.preheader.i.for.body10.i_crit_edge
  %q.019.i = phi ptr [ %14, %pids_cancel.exit.i.for.body10.i_crit_edge ], [ %css.0, %for.cond7.preheader.i.for.body10.i_crit_edge ]
  %counter.i.i = getelementptr inbounds %struct.pids_cgroup, ptr %q.019.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter.i.i, i32 noundef 8) #7
  %call.i1.i.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef -1, ptr noundef %counter.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i1.i.i.i)
  %cmp.i.i.i.i = icmp slt i64 %call.i1.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i, label %for.body10.i.pids_cancel.exit.i_crit_edge

for.body10.i.pids_cancel.exit.i_crit_edge:        ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_cancel.exit.i

land.rhs.i.i:                                     ; preds = %for.body10.i
  %.b1.i.i = load i1, ptr @pids_cancel.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.pids_cancel.exit.i_crit_edge, label %if.then.i.i, !prof !43

land.rhs.i.i.pids_cancel.exit.i_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_cancel.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pids_cancel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 102, i32 noundef 9, ptr noundef null) #7
  br label %pids_cancel.exit.i

pids_cancel.exit.i:                               ; preds = %if.then.i.i, %land.rhs.i.i.pids_cancel.exit.i_crit_edge, %for.body10.i.pids_cancel.exit.i_crit_edge
  %parent.i4.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %q.019.i, i32 0, i32 12
  %13 = ptrtoint ptr %parent.i4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i4.i, align 8
  %cmp8.not.i = icmp eq ptr %14, %p.016.i
  br i1 %cmp8.not.i, label %pids_cancel.exit.i.for.end13.i_crit_edge, label %pids_cancel.exit.i.for.body10.i_crit_edge

pids_cancel.exit.i.for.body10.i_crit_edge:        ; preds = %pids_cancel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

pids_cancel.exit.i.for.end13.i_crit_edge:         ; preds = %pids_cancel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13.i

for.end13.i:                                      ; preds = %pids_cancel.exit.i.for.end13.i_crit_edge, %for.cond7.preheader.i.for.end13.i_crit_edge
  %call.i.i.i6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter.i, i32 noundef 8) #7
  %call.i1.i.i7.i = tail call i64 @generic_atomic64_add_return(i64 noundef -1, ptr noundef %counter.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i1.i.i7.i)
  %cmp.i.i.i8.i = icmp slt i64 %call.i1.i.i7.i, 0
  br i1 %cmp.i.i.i8.i, label %land.rhs.i10.i, label %for.end13.i.if.then29_crit_edge

for.end13.i.if.then29_crit_edge:                  ; preds = %for.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

land.rhs.i10.i:                                   ; preds = %for.end13.i
  %.b1.i9.i = load i1, ptr @pids_cancel.__already_done, align 1
  br i1 %.b1.i9.i, label %land.rhs.i10.i.if.then29_crit_edge, label %if.then.i11.i, !prof !43

land.rhs.i10.i.if.then29_crit_edge:               ; preds = %land.rhs.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.then.i11.i:                                    ; preds = %land.rhs.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pids_cancel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 102, i32 noundef 9, ptr noundef null) #7
  br label %if.then29

if.then29:                                        ; preds = %if.then.i11.i, %land.rhs.i10.i.if.then29_crit_edge, %for.end13.i.if.then29_crit_edge
  %events_limit = getelementptr inbounds %struct.pids_cgroup, ptr %css.0, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %events_limit, i32 noundef 8) #7
  %call.i2.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %events_limit) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call.i2.i)
  %cmp = icmp eq i64 %call.i2.i, 1
  br i1 %cmp, label %do.end34, label %if.then29.if.end42_crit_edge

if.then29.if.end42_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end34:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  %15 = ptrtoint ptr %css.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %css.0, align 8
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kn.i, align 8
  tail call void @pr_cont_kernfs_path(ptr noundef %18) #7
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %if.end42

if.end42:                                         ; preds = %do.end34, %if.then29.if.end42_crit_edge
  %events_file = getelementptr inbounds %struct.pids_cgroup, ptr %css.0, i32 0, i32 3
  tail call void @cgroup_file_notify(ptr noundef %events_file) #7
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %for.inc.i.if.end43_crit_edge, %if.end25.if.end43_crit_edge
  %retval.0.i55 = phi i32 [ -11, %if.end42 ], [ 0, %if.end25.if.end43_crit_edge ], [ 0, %for.inc.i.if.end43_crit_edge ]
  ret i32 %retval.0.i55
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pids_cancel_fork(ptr nocapture noundef readnone %task, ptr noundef readonly %cset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cset, null
  br i1 %tobool.not, label %if.else, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.else:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  %cgroups = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 164
  %4 = ptrtoint ptr %cgroups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cgroups, align 16
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i28 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  br label %if.end25

if.end25:                                         ; preds = %lor.lhs.false, %if.else.if.end25_crit_edge, %entry.if.end25_crit_edge
  %cset.pn = phi ptr [ %cset, %entry.if.end25_crit_edge ], [ %5, %lor.lhs.false ], [ %5, %if.else.if.end25_crit_edge ]
  %css.0.in = getelementptr [14 x ptr], ptr %cset.pn, i32 0, i32 10
  %6 = ptrtoint ptr %css.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %css.0 = load ptr, ptr %css.0.in, align 4
  %parent.i2.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css.0, i32 0, i32 12
  %7 = ptrtoint ptr %parent.i2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i2.i, align 8
  %tobool.not3.i = icmp eq ptr %8, null
  br i1 %tobool.not3.i, label %if.end25.pids_uncharge.exit_crit_edge, label %if.end25.for.body.i_crit_edge

if.end25.for.body.i_crit_edge:                    ; preds = %if.end25
  br label %for.body.i

if.end25.pids_uncharge.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_uncharge.exit

for.body.i:                                       ; preds = %pids_cancel.exit.i.for.body.i_crit_edge, %if.end25.for.body.i_crit_edge
  %parent.i5.i = phi ptr [ %parent.i.i, %pids_cancel.exit.i.for.body.i_crit_edge ], [ %parent.i2.i, %if.end25.for.body.i_crit_edge ]
  %p.04.i = phi ptr [ %10, %pids_cancel.exit.i.for.body.i_crit_edge ], [ %css.0, %if.end25.for.body.i_crit_edge ]
  %counter.i.i = getelementptr inbounds %struct.pids_cgroup, ptr %p.04.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter.i.i, i32 noundef 8) #7
  %call.i1.i.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef -1, ptr noundef %counter.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i1.i.i.i)
  %cmp.i.i.i.i = icmp slt i64 %call.i1.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i, label %for.body.i.pids_cancel.exit.i_crit_edge

for.body.i.pids_cancel.exit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_cancel.exit.i

land.rhs.i.i:                                     ; preds = %for.body.i
  %.b1.i.i = load i1, ptr @pids_cancel.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.pids_cancel.exit.i_crit_edge, label %if.then.i.i, !prof !43

land.rhs.i.i.pids_cancel.exit.i_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_cancel.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pids_cancel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 102, i32 noundef 9, ptr noundef null) #7
  br label %pids_cancel.exit.i

pids_cancel.exit.i:                               ; preds = %if.then.i.i, %land.rhs.i.i.pids_cancel.exit.i_crit_edge, %for.body.i.pids_cancel.exit.i_crit_edge
  %9 = ptrtoint ptr %parent.i5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i5.i, align 8
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %pids_cancel.exit.i.pids_uncharge.exit_crit_edge, label %pids_cancel.exit.i.for.body.i_crit_edge

pids_cancel.exit.i.for.body.i_crit_edge:          ; preds = %pids_cancel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

pids_cancel.exit.i.pids_uncharge.exit_crit_edge:  ; preds = %pids_cancel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_uncharge.exit

pids_uncharge.exit:                               ; preds = %pids_cancel.exit.i.pids_uncharge.exit_crit_edge, %if.end25.pids_uncharge.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pids_release(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 164
  %0 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.task_css.exit_crit_edge

entry.task_css.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call.i2.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool3.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.task_css.exit_crit_edge

lor.lhs.false.i.task_css.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false4.i.task_css.exit_crit_edge

lor.lhs.false4.i.task_css.exit_crit_edge:         ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %call7.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %lor.lhs.false6.i.task_css.exit_crit_edge

lor.lhs.false6.i.task_css.exit_crit_edge:         ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false6.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.task_css.exit_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.task_css.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true11.i.task_css.exit_crit_edge, label %if.then.i

land.lhs.true11.i.task_css.exit_crit_edge:        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %task_css.exit

if.then.i:                                        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 494, ptr noundef nonnull @.str.1) #7
  br label %task_css.exit

task_css.exit:                                    ; preds = %if.then.i, %land.lhs.true11.i.task_css.exit_crit_edge, %land.lhs.true.i.task_css.exit_crit_edge, %lor.lhs.false6.i.task_css.exit_crit_edge, %lor.lhs.false4.i.task_css.exit_crit_edge, %lor.lhs.false.i.task_css.exit_crit_edge, %entry.task_css.exit_crit_edge
  %arrayidx.i = getelementptr [14 x ptr], ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %parent.i2.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %parent.i2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i2.i, align 8
  %tobool.not3.i = icmp eq ptr %7, null
  br i1 %tobool.not3.i, label %task_css.exit.pids_uncharge.exit_crit_edge, label %task_css.exit.for.body.i_crit_edge

task_css.exit.for.body.i_crit_edge:               ; preds = %task_css.exit
  br label %for.body.i

task_css.exit.pids_uncharge.exit_crit_edge:       ; preds = %task_css.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_uncharge.exit

for.body.i:                                       ; preds = %pids_cancel.exit.i.for.body.i_crit_edge, %task_css.exit.for.body.i_crit_edge
  %parent.i5.i = phi ptr [ %parent.i.i, %pids_cancel.exit.i.for.body.i_crit_edge ], [ %parent.i2.i, %task_css.exit.for.body.i_crit_edge ]
  %p.04.i = phi ptr [ %9, %pids_cancel.exit.i.for.body.i_crit_edge ], [ %5, %task_css.exit.for.body.i_crit_edge ]
  %counter.i.i = getelementptr inbounds %struct.pids_cgroup, ptr %p.04.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %counter.i.i, i32 noundef 8) #7
  %call.i1.i.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef -1, ptr noundef %counter.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i1.i.i.i)
  %cmp.i.i.i.i = icmp slt i64 %call.i1.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i, label %for.body.i.pids_cancel.exit.i_crit_edge

for.body.i.pids_cancel.exit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_cancel.exit.i

land.rhs.i.i:                                     ; preds = %for.body.i
  %.b1.i.i = load i1, ptr @pids_cancel.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.pids_cancel.exit.i_crit_edge, label %if.then.i.i, !prof !43

land.rhs.i.i.pids_cancel.exit.i_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_cancel.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pids_cancel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 102, i32 noundef 9, ptr noundef null) #7
  br label %pids_cancel.exit.i

pids_cancel.exit.i:                               ; preds = %if.then.i.i, %land.rhs.i.i.pids_cancel.exit.i_crit_edge, %for.body.i.pids_cancel.exit.i_crit_edge
  %8 = ptrtoint ptr %parent.i5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i5.i, align 8
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i2 = icmp eq ptr %11, null
  br i1 %tobool.not.i2, label %pids_cancel.exit.i.pids_uncharge.exit_crit_edge, label %pids_cancel.exit.i.for.body.i_crit_edge

pids_cancel.exit.i.for.body.i_crit_edge:          ; preds = %pids_cancel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

pids_cancel.exit.i.pids_uncharge.exit_crit_edge:  ; preds = %pids_cancel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pids_uncharge.exit

pids_uncharge.exit:                               ; preds = %pids_cancel.exit.i.pids_uncharge.exit_crit_edge, %task_css.exit.pids_uncharge.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_taskset_first(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_taskset_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_file_notify(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pr_cont_kernfs_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pids_max_show(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i7 = tail call ptr @of_css(ptr noundef %1) #7
  %limit2 = getelementptr inbounds %struct.pids_cgroup, ptr %call.i7, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %limit2, i32 noundef 8) #7
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %limit2) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 32768, i64 %call.i)
  %cmp = icmp ugt i64 %call.i, 32768
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.10, i64 noundef %call.i) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pids_max_write(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #0 align 64 {
entry:
  %limit = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_css(ptr noundef %of) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %limit) #7
  %0 = ptrtoint ptr %limit to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %limit, align 8, !annotation !42
  %call.i = tail call ptr @strim(ptr noundef %buf) #7
  %call3 = tail call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(4) @.str.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %limit to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 32769, ptr %limit, align 8
  br label %set_limit

if.end:                                           ; preds = %entry
  %call4 = call i32 @kstrtoll(ptr noundef %call.i, i32 noundef 0, ptr noundef nonnull %limit) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %limit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 32768, i64 %3)
  %cmp8 = icmp ugt i64 %3, 32768
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end7.set_limit_crit_edge

if.end7.set_limit_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_limit

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

set_limit:                                        ; preds = %if.end7.set_limit_crit_edge, %if.then
  %limit11 = getelementptr inbounds %struct.pids_cgroup, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %limit, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %limit11, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %limit11, i64 noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %set_limit, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %nbytes, %set_limit ], [ %call4, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %limit) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @pids_current_read(ptr noundef %css, ptr nocapture noundef readnone %cft) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %counter = getelementptr inbounds %struct.pids_cgroup, ptr %css, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %counter, i32 noundef 8) #7
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %counter) #7
  ret i64 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pids_events_show(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i4 = tail call ptr @of_css(ptr noundef %1) #7
  %events_limit = getelementptr inbounds %struct.pids_cgroup, ptr %call.i4, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %events_limit, i32 noundef 8) #7
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %events_limit) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.11, i64 noundef %call.i) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @pids_cgrp_subsys, !1, !"pids_cgrp_subsys", i1 false, i1 false}
!1 = !{!"../kernel/cgroup/pids.c", i32 343, i32 22}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../include/linux/cgroup.h", i32 494, i32 9}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../kernel/cgroup/pids.c", i32 102, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../kernel/cgroup/pids.c", i32 227, i32 9}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/cgroup/pids.c", i32 233, i32 4}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pids_can_fork._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @pids_can_fork._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/cgroup/pids.c", i32 235, i32 4}
!18 = !{ptr @pids_can_fork._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @pids_can_fork._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../kernel/cgroup/pids.c", i32 250, i32 9}
!22 = !{ptr @pids_files, !23, !"pids_files", i1 false, i1 false}
!23 = !{!"../kernel/cgroup/pids.c", i32 322, i32 22}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/cgroup/pids.c", i32 299, i32 18}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/cgroup/pids.c", i32 299, i32 26}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/cgroup/pids.c", i32 301, i32 18}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/cgroup/pids.c", i32 318, i32 17}
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
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 2000, i32 1}
