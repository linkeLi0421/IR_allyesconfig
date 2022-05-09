; ModuleID = '/llk/IR_all_yes/kernel/cgroup/debug.c_pt.bc'
source_filename = "../kernel/cgroup/debug.c"
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
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.60 = type { %struct.callback_head }
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
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.cgroup_root = type { ptr, i32, i32, %struct.cgroup, i64, %struct.atomic_t, %struct.list_head, i32, [4096 x i8], [64 x i8] }

@debug_legacy_files = internal global { [9 x %struct.cftype], [328 x i8] } { [9 x %struct.cftype] [%struct.cftype { [64 x i8] c"taskcount\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @debug_taskcount_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"current_css_set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @current_css_set_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"current_css_set_refcount\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @current_css_set_refcount_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"current_css_set_cg_links\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @current_css_set_cg_links_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"cgroup_css_links\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_css_links_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"cgroup_subsys_states\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_subsys_states_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"cgroup_masks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_masks_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"releasable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @releasable_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [328 x i8] zeroinitializer }, align 32
@debug_cgrp_subsys = dso_local global { %struct.cgroup_subsys, [52 x i8] } { %struct.cgroup_subsys { ptr @debug_css_alloc, ptr null, ptr null, ptr null, ptr @debug_css_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @debug_legacy_files, i32 0 }, [52 x i8] zeroinitializer }, align 32
@debug_files = internal global { [8 x %struct.cftype], [288 x i8] } { [8 x %struct.cftype] [%struct.cftype { [64 x i8] c"taskcount\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @debug_taskcount_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"current_css_set\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @current_css_set_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"current_css_set_refcount\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @current_css_set_refcount_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"current_css_set_cg_links\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @current_css_set_cg_links_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"css_links\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_css_links_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"csses\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_subsys_states_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"masks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_masks_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [288 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"css_set %pK %d\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" +%d\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cgroup_subsys = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%2d: %-4s\09- %p[%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@task_css_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Root %d group %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"css_set %pK\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"=>%pK\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<=\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pK\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@init_css_set = external dso_local global %struct.css_set, align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  task %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"  ... (%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"    [dead]\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/cgroup/debug.c\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"threaded css_sets = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"extra references = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dead css_sets = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" P=%d\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%2d: %-4s\09- %p[%d] %d%s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"subtree_control\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"subtree_ss_mask\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%-17s: \00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"debug_legacy_files\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 277, i32 22 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"debug_cgrp_subsys\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 366, i32 22 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"debug_files\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 324, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 55, i32 18 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 57, i32 19 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 58, i32 16 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 67, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 695, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 481, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 723, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 104, i32 19 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 132, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 135, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 143, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 143, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 144, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 148, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 166, i32 21 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 177, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 181, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 185, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 194, i32 19 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 196, i32 19 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 198, i32 19 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 225, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 227, i32 19 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 264, i32 29 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 265, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 243, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [25 x i8] c"../kernel/cgroup/debug.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 248, i32 18 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @debug_legacy_files, ptr @debug_cgrp_subsys, ptr @debug_files, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_legacy_files to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_cgrp_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_files to i32), i32 1216, i32 1504, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @debug_css_alloc(ptr nocapture noundef readnone %parent_css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -12 to ptr), ptr %call7.i.i
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @debug_css_free(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %css) #8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @enable_debug_cgroup() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @debug_files, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @debug_cgrp_subsys, i32 0, i32 25), align 4
  %bf.load = load i8, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @debug_cgrp_subsys, i32 0, i32 18), align 4
  %bf.set3 = or i8 %bf.load, 96
  store i8 %bf.set3, ptr getelementptr inbounds (%struct.cgroup_subsys, ptr @debug_cgrp_subsys, i32 0, i32 18), align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @debug_taskcount_read(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %css, align 8
  %call = tail call i32 @cgroup_task_count(ptr noundef %1) #8
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_css_set_read(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @cgroup_kn_lock_live(ptr noundef %3, i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #8
  %4 = tail call i32 @llvm.read_register.i32(metadata !69) #8
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %8 = tail call i32 @llvm.read_register.i32(metadata !69) #8
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 164
  %12 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i39 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i39, label %lor.lhs.false.i, label %rcu_read_lock.exit.task_css_set.exit_crit_edge

rcu_read_lock.exit.task_css_set.exit_crit_edge:   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %call.i18.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool3.not.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.task_css_set.exit_crit_edge

lor.lhs.false.i.task_css_set.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i40 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool5.not.i = icmp eq i32 %and.i40, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false4.i.task_css_set.exit_crit_edge

lor.lhs.false4.i.task_css_set.exit_crit_edge:     ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %call7.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i41, label %lor.lhs.false6.i.task_css_set.exit_crit_edge

lor.lhs.false6.i.task_css_set.exit_crit_edge:     ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

land.lhs.true.i41:                                ; preds = %lor.lhs.false6.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i41.task_css_set.exit_crit_edge, label %land.lhs.true11.i

land.lhs.true.i41.task_css_set.exit_crit_edge:    ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true.i41
  %.b17.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true11.i.task_css_set.exit_crit_edge, label %if.then.i42

land.lhs.true11.i.task_css_set.exit_crit_edge:    ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

if.then.i42:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 481, ptr noundef nonnull @.str.7) #8
  br label %task_css_set.exit

task_css_set.exit:                                ; preds = %if.then.i42, %land.lhs.true11.i.task_css_set.exit_crit_edge, %land.lhs.true.i41.task_css_set.exit_crit_edge, %lor.lhs.false6.i.task_css_set.exit_crit_edge, %lor.lhs.false4.i.task_css_set.exit_crit_edge, %lor.lhs.false.i.task_css_set.exit_crit_edge, %rcu_read_lock.exit.task_css_set.exit_crit_edge
  %refcount = getelementptr inbounds %struct.css_set, ptr %13, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %16 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %refcount, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %17) #8
  %nr_tasks = getelementptr inbounds %struct.css_set, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %nr_tasks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_tasks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp = icmp sgt i32 %17, %19
  br i1 %cmp, label %if.then4, label %task_css_set.exit.if.end6_crit_edge

task_css_set.exit.if.end6_crit_edge:              ; preds = %task_css_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %task_css_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %17, %19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.1, i32 noundef %sub) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %task_css_set.exit.if.end6_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.2) #8
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end6
  %i.052 = phi i32 [ 0, %if.end6 ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr @cgroup_subsys, i32 0, i32 %i.052
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.cgroup_subsys, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %arrayidx9 = getelementptr [14 x ptr], ptr %13, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %25, null
  br i1 %tobool10.not, label %land.rhs.for.inc_crit_edge, label %if.end12

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end12:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cgroup_subsys, ptr %21, i32 0, i32 20
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %id14 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %25, i32 0, i32 6
  %28 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id14, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.3, i32 noundef %23, ptr noundef %27, ptr noundef nonnull %25, i32 noundef %29) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %land.rhs.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %for.inc
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i43, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %for.end
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  %30 = tail call i32 @llvm.read_register.i32(metadata !69) #8
  %and.i.i.i.i.i50 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @css_set_lock) #8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  tail call void @cgroup_kn_unlock(ptr noundef %35) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @current_css_set_refcount_read(ptr nocapture noundef readnone %css, ptr nocapture noundef readnone %cft) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !69) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 164
  %8 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i3 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i3, label %lor.lhs.false.i, label %rcu_read_lock.exit.task_css_set.exit_crit_edge

rcu_read_lock.exit.task_css_set.exit_crit_edge:   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %call.i18.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool3.not.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.task_css_set.exit_crit_edge

lor.lhs.false.i.task_css_set.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i4 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool5.not.i = icmp eq i32 %and.i4, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false4.i.task_css_set.exit_crit_edge

lor.lhs.false4.i.task_css_set.exit_crit_edge:     ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %call7.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i5, label %lor.lhs.false6.i.task_css_set.exit_crit_edge

lor.lhs.false6.i.task_css_set.exit_crit_edge:     ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

land.lhs.true.i5:                                 ; preds = %lor.lhs.false6.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i5.task_css_set.exit_crit_edge, label %land.lhs.true11.i

land.lhs.true.i5.task_css_set.exit_crit_edge:     ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true.i5
  %.b17.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true11.i.task_css_set.exit_crit_edge, label %if.then.i6

land.lhs.true11.i.task_css_set.exit_crit_edge:    ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

if.then.i6:                                       ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 481, ptr noundef nonnull @.str.7) #8
  br label %task_css_set.exit

task_css_set.exit:                                ; preds = %if.then.i6, %land.lhs.true11.i.task_css_set.exit_crit_edge, %land.lhs.true.i5.task_css_set.exit_crit_edge, %lor.lhs.false6.i.task_css_set.exit_crit_edge, %lor.lhs.false4.i.task_css_set.exit_crit_edge, %lor.lhs.false.i.task_css_set.exit_crit_edge, %rcu_read_lock.exit.task_css_set.exit_crit_edge
  %refcount = getelementptr inbounds %struct.css_set, ptr %9, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %12 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %refcount, align 4
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i7, label %task_css_set.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

task_css_set.exit.rcu_read_unlock.exit_crit_edge: ; preds = %task_css_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %task_css_set.exit
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %task_css_set.exit.rcu_read_unlock.exit_crit_edge
  %conv = zext i32 %13 to i64
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  %14 = tail call i32 @llvm.read_register.i32(metadata !69) #8
  %and.i.i.i.i.i14 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_css_set_cg_links_read(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #8
  %1 = tail call i32 @llvm.read_register.i32(metadata !69) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %5 = tail call i32 @llvm.read_register.i32(metadata !69) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 164
  %9 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i19 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i19, label %lor.lhs.false.i, label %rcu_read_lock.exit.task_css_set.exit_crit_edge

rcu_read_lock.exit.task_css_set.exit_crit_edge:   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %call.i18.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool3.not.i = icmp eq i32 %call.i18.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.task_css_set.exit_crit_edge

lor.lhs.false.i.task_css_set.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i20 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool5.not.i = icmp eq i32 %and.i20, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false4.i.task_css_set.exit_crit_edge

lor.lhs.false4.i.task_css_set.exit_crit_edge:     ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %call7.i21 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i21)
  %tobool8.not.i = icmp eq i32 %call7.i21, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i22, label %lor.lhs.false6.i.task_css_set.exit_crit_edge

lor.lhs.false6.i.task_css_set.exit_crit_edge:     ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

land.lhs.true.i22:                                ; preds = %lor.lhs.false6.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i22.task_css_set.exit_crit_edge, label %land.lhs.true11.i

land.lhs.true.i22.task_css_set.exit_crit_edge:    ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true.i22
  %.b17.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i, label %land.lhs.true11.i.task_css_set.exit_crit_edge, label %if.then.i23

land.lhs.true11.i.task_css_set.exit_crit_edge:    ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_css_set.exit

if.then.i23:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 481, ptr noundef nonnull @.str.7) #8
  br label %task_css_set.exit

task_css_set.exit:                                ; preds = %if.then.i23, %land.lhs.true11.i.task_css_set.exit_crit_edge, %land.lhs.true.i22.task_css_set.exit_crit_edge, %lor.lhs.false6.i.task_css_set.exit_crit_edge, %lor.lhs.false4.i.task_css_set.exit_crit_edge, %lor.lhs.false.i.task_css_set.exit_crit_edge, %rcu_read_lock.exit.task_css_set.exit_crit_edge
  %cgrp_links = getelementptr inbounds %struct.css_set, ptr %10, i32 0, i32 13
  %13 = ptrtoint ptr %cgrp_links to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn34 = load ptr, ptr %cgrp_links, align 4
  %cmp.not35 = icmp eq ptr %.pn34, %cgrp_links
  br i1 %cmp.not35, label %task_css_set.exit.for.end_crit_edge, label %task_css_set.exit.for.body_crit_edge

task_css_set.exit.for.body_crit_edge:             ; preds = %task_css_set.exit
  br label %for.body

task_css_set.exit.for.end_crit_edge:              ; preds = %task_css_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %task_css_set.exit.for.body_crit_edge
  %.pn36 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn34, %task_css_set.exit.for.body_crit_edge ]
  %link.0 = getelementptr i8, ptr %.pn36, i32 -16
  %14 = ptrtoint ptr %link.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link.0, align 4
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kn.i, align 8
  %call.i24 = tail call i32 @kernfs_name(ptr noundef %17, ptr noundef nonnull %call7.i, i32 noundef 256) #8
  %root = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 19
  %18 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %root, align 4
  %hierarchy_id = getelementptr inbounds %struct.cgroup_root, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %hierarchy_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hierarchy_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, i32 noundef %21, ptr noundef nonnull %call7.i) #8
  %22 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn36, align 4
  %cmp.not = icmp eq ptr %.pn, %cgrp_links
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %task_css_set.exit.for.end_crit_edge
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i25, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %for.end
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  %23 = tail call i32 @llvm.read_register.i32(metadata !69) #8
  %and.i.i.i.i.i32 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @css_set_lock) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_css_links_read(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 8
  %cset_links = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %cset_links to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn225 = load ptr, ptr %cset_links, align 4
  %cmp.not227 = icmp eq ptr %.pn225, %cset_links
  br i1 %cmp.not227, label %entry.for.end122_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end122_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end122

for.body:                                         ; preds = %if.end108.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn231 = phi ptr [ %.pn, %if.end108.for.body_crit_edge ], [ %.pn225, %entry.for.body_crit_edge ]
  %dead_cnt.0230 = phi i32 [ %dead_cnt.1, %if.end108.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %extra_refs.0229 = phi i32 [ %extra_refs.1, %if.end108.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %threaded_csets.0228 = phi i32 [ %threaded_csets.1, %if.end108.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %cset3 = getelementptr i8, ptr %.pn231, i32 -4
  %5 = ptrtoint ptr %cset3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cset3, align 4
  %refcount = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %7 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %refcount, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, ptr noundef %6) #8
  %dom_cset = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %dom_cset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dom_cset, align 4
  %cmp6.not = icmp eq ptr %10, %6
  br i1 %cmp6.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %threaded_csets.0228, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, ptr noundef %10) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %threaded_csets.1 = phi i32 [ %inc, %if.then ], [ %threaded_csets.0228, %for.body.if.end_crit_edge ]
  %threaded_csets8 = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 10
  %11 = ptrtoint ptr %threaded_csets8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %threaded_csets8, align 4
  %cmp.i.not = icmp eq ptr %12, %threaded_csets8
  br i1 %cmp.i.not, label %if.else, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %if.end
  %13 = ptrtoint ptr %threaded_csets8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn202208 = load ptr, ptr %threaded_csets8, align 4
  %cmp18.not209 = icmp eq ptr %.pn202208, %threaded_csets8
  br i1 %cmp18.not209, label %for.cond16.preheader.if.end36_crit_edge, label %for.cond16.preheader.for.body20_crit_edge

for.cond16.preheader.for.body20_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body20

for.cond16.preheader.if.end36_crit_edge:          ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.cond16.preheader.for.body20_crit_edge
  %.pn202211 = phi ptr [ %.pn202, %for.body20.for.body20_crit_edge ], [ %.pn202208, %for.cond16.preheader.for.body20_crit_edge ]
  %idx.0210 = phi i32 [ %inc22, %for.body20.for.body20_crit_edge ], [ 0, %for.cond16.preheader.for.body20_crit_edge ]
  %tcset.0 = getelementptr i8, ptr %.pn202211, i32 -224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0210)
  %tobool21.not = icmp eq i32 %idx.0210, 0
  %cond = select i1 %tobool21.not, ptr @.str.13, ptr @.str.12
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %cond) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.14, ptr noundef %tcset.0) #8
  %inc22 = add i32 %idx.0210, 1
  %14 = ptrtoint ptr %.pn202211 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn202 = load ptr, ptr %.pn202211, align 4
  %cmp18.not = icmp eq ptr %.pn202, %threaded_csets8
  br i1 %cmp18.not, label %for.body20.if.end36_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20

for.body20.if.end36_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.else:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, i32 noundef %8) #8
  %nr_tasks = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 4
  %15 = ptrtoint ptr %nr_tasks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_tasks, align 4
  %sub = sub i32 %8, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp28 = icmp sgt i32 %sub, 0
  br i1 %cmp28, label %if.then29, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.1, i32 noundef %sub) #8
  %cmp32 = icmp eq ptr %6, @init_css_set
  %dec = sext i1 %cmp32 to i32
  %spec.select = add i32 %extra_refs.0229, %dec
  %add = add i32 %spec.select, %sub
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.else.if.end36_crit_edge, %for.body20.if.end36_crit_edge, %for.cond16.preheader.if.end36_crit_edge
  %extra_refs.1 = phi i32 [ %add, %if.then29 ], [ %extra_refs.0229, %if.else.if.end36_crit_edge ], [ %extra_refs.0229, %for.cond16.preheader.if.end36_crit_edge ], [ %extra_refs.0229, %for.body20.if.end36_crit_edge ]
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.2) #8
  %tasks = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 5
  %17 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn203212 = load ptr, ptr %tasks, align 4
  %cmp43.not214 = icmp eq ptr %.pn203212, %tasks
  br i1 %cmp43.not214, label %if.end36.for.end57_crit_edge, label %if.end36.for.body45_crit_edge

if.end36.for.body45_crit_edge:                    ; preds = %if.end36
  br label %for.body45

if.end36.for.end57_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end57

for.body45:                                       ; preds = %for.inc51.for.body45_crit_edge, %if.end36.for.body45_crit_edge
  %.pn203216 = phi ptr [ %.pn203, %for.inc51.for.body45_crit_edge ], [ %.pn203212, %if.end36.for.body45_crit_edge ]
  %count.0215 = phi i32 [ %inc46, %for.inc51.for.body45_crit_edge ], [ 0, %if.end36.for.body45_crit_edge ]
  %inc46 = add i32 %count.0215, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %count.0215)
  %cmp47 = icmp slt i32 %count.0215, 26
  br i1 %cmp47, label %if.then48, label %for.body45.for.inc51_crit_edge

for.body45.for.inc51_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc51

if.then48:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  %task.0217 = getelementptr i8, ptr %.pn203216, i32 -4468
  %call.i206 = tail call i32 @__task_pid_nr_ns(ptr noundef %task.0217, i32 noundef 0, ptr noundef null) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.16, i32 noundef %call.i206) #8
  br label %for.inc51

for.inc51:                                        ; preds = %if.then48, %for.body45.for.inc51_crit_edge
  %18 = ptrtoint ptr %.pn203216 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn203 = load ptr, ptr %.pn203216, align 4
  %cmp43.not = icmp eq ptr %.pn203, %tasks
  br i1 %cmp43.not, label %for.inc51.for.end57_crit_edge, label %for.inc51.for.body45_crit_edge

for.inc51.for.body45_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45

for.inc51.for.end57_crit_edge:                    ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end57

for.end57:                                        ; preds = %for.inc51.for.end57_crit_edge, %if.end36.for.end57_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end36.for.end57_crit_edge ], [ %inc46, %for.inc51.for.end57_crit_edge ]
  %mg_tasks = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 6
  %19 = ptrtoint ptr %mg_tasks to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn204218 = load ptr, ptr %mg_tasks, align 4
  %cmp65.not220 = icmp eq ptr %.pn204218, %mg_tasks
  br i1 %cmp65.not220, label %for.end57.for.end79_crit_edge, label %for.end57.for.body67_crit_edge

for.end57.for.body67_crit_edge:                   ; preds = %for.end57
  br label %for.body67

for.end57.for.end79_crit_edge:                    ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end79

for.body67:                                       ; preds = %for.inc73.for.body67_crit_edge, %for.end57.for.body67_crit_edge
  %.pn204222 = phi ptr [ %.pn204, %for.inc73.for.body67_crit_edge ], [ %.pn204218, %for.end57.for.body67_crit_edge ]
  %count.1221 = phi i32 [ %inc68, %for.inc73.for.body67_crit_edge ], [ %count.0.lcssa, %for.end57.for.body67_crit_edge ]
  %inc68 = add i32 %count.1221, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %count.1221)
  %cmp69 = icmp slt i32 %count.1221, 26
  br i1 %cmp69, label %if.then70, label %for.body67.for.inc73_crit_edge

for.body67.for.inc73_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73

if.then70:                                        ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #10
  %task.1223 = getelementptr i8, ptr %.pn204222, i32 -4468
  %call.i207 = tail call i32 @__task_pid_nr_ns(ptr noundef %task.1223, i32 noundef 0, ptr noundef null) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.16, i32 noundef %call.i207) #8
  br label %for.inc73

for.inc73:                                        ; preds = %if.then70, %for.body67.for.inc73_crit_edge
  %20 = ptrtoint ptr %.pn204222 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn204 = load ptr, ptr %.pn204222, align 4
  %cmp65.not = icmp eq ptr %.pn204, %mg_tasks
  br i1 %cmp65.not, label %for.inc73.for.end79_crit_edge, label %for.inc73.for.body67_crit_edge

for.inc73.for.body67_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body67

for.inc73.for.end79_crit_edge:                    ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end79

for.end79:                                        ; preds = %for.inc73.for.end79_crit_edge, %for.end57.for.end79_crit_edge
  %count.1.lcssa = phi i32 [ %count.0.lcssa, %for.end57.for.end79_crit_edge ], [ %inc68, %for.inc73.for.end79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %count.1.lcssa)
  %cmp80 = icmp sgt i32 %count.1.lcssa, 25
  br i1 %cmp80, label %if.then81, label %for.end79.if.end83_crit_edge

for.end79.if.end83_crit_edge:                     ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then81:                                        ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #10
  %sub82 = add nsw i32 %count.1.lcssa, -25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.17, i32 noundef %sub82) #8
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %for.end79.if.end83_crit_edge
  %dead = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 19
  %21 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dead, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool84.not = icmp eq i8 %22, 0
  br i1 %tobool84.not, label %if.end83.if.end87_crit_edge, label %if.then85

if.end83.if.end87_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.18) #8
  %inc86 = add i32 %dead_cnt.0230, 1
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end83.if.end87_crit_edge
  %dead_cnt.1 = phi i32 [ %inc86, %if.then85 ], [ %dead_cnt.0230, %if.end83.if.end87_crit_edge ]
  %nr_tasks88 = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 4
  %23 = ptrtoint ptr %nr_tasks88 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_tasks88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.lcssa, i32 %24)
  %cmp89.not = icmp eq i32 %count.1.lcssa, %24
  br i1 %cmp89.not, label %if.end87.if.end108_crit_edge, label %do.end102, !prof !82

if.end87.if.end108_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

do.end102:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 185, i32 noundef 9, ptr noundef null) #8
  br label %if.end108

if.end108:                                        ; preds = %do.end102, %if.end87.if.end108_crit_edge
  %25 = ptrtoint ptr %.pn231 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn231, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 8
  %cset_links2 = getelementptr inbounds %struct.cgroup, ptr %27, i32 0, i32 20
  %cmp.not = icmp eq ptr %.pn, %cset_links2
  br i1 %cmp.not, label %if.end108.for.end122_crit_edge, label %if.end108.for.body_crit_edge

if.end108.for.body_crit_edge:                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end108.for.end122_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end122

for.end122:                                       ; preds = %if.end108.for.end122_crit_edge, %entry.for.end122_crit_edge
  %threaded_csets.0.lcssa = phi i32 [ 0, %entry.for.end122_crit_edge ], [ %threaded_csets.1, %if.end108.for.end122_crit_edge ]
  %extra_refs.0.lcssa = phi i32 [ 0, %entry.for.end122_crit_edge ], [ %extra_refs.1, %if.end108.for.end122_crit_edge ]
  %dead_cnt.0.lcssa = phi i32 [ 0, %entry.for.end122_crit_edge ], [ %dead_cnt.1, %if.end108.for.end122_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @css_set_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dead_cnt.0.lcssa)
  %tobool123.not = icmp eq i32 %dead_cnt.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_refs.0.lcssa)
  %tobool124.not = icmp eq i32 %extra_refs.0.lcssa, 0
  %or.cond = select i1 %tobool123.not, i1 %tobool124.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %threaded_csets.0.lcssa)
  %tobool126.not = icmp eq i32 %threaded_csets.0.lcssa, 0
  %or.cond205 = select i1 %or.cond, i1 %tobool126.not, i1 false
  br i1 %or.cond205, label %for.end122.cleanup_crit_edge, label %if.end128

for.end122.cleanup_crit_edge:                     ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end128:                                        ; preds = %for.end122
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.2) #8
  br i1 %tobool126.not, label %if.end128.if.end131_crit_edge, label %if.then130

if.end128.if.end131_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.20, i32 noundef %threaded_csets.0.lcssa) #8
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.end128.if.end131_crit_edge
  br i1 %tobool124.not, label %if.end131.if.end134_crit_edge, label %if.then133

if.end131.if.end134_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then133:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.21, i32 noundef %extra_refs.0.lcssa) #8
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end131.if.end134_crit_edge
  br i1 %tobool123.not, label %if.end134.cleanup_crit_edge, label %if.then136

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then136:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.22, i32 noundef %dead_cnt.0.lcssa) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then136, %if.end134.cleanup_crit_edge, %for.end122.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_subsys_states_read(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %pbuf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pbuf) #8
  %2 = call ptr @memset(ptr %pbuf, i32 255, i32 16)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call = tail call ptr @cgroup_kn_lock_live(ptr noundef %4, i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.040 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr @cgroup_subsys, i32 0, i32 %i.040
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.cgroup_subsys, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %arrayidx2 = getelementptr %struct.cgroup, ptr %call, i32 0, i32 18, i32 %8
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx2, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %land.rhs.for.inc_crit_edge, label %if.end9

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end9:                                          ; preds = %land.rhs
  %11 = ptrtoint ptr %pbuf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %pbuf, align 1
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 12
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end9.if.end16_crit_edge, label %if.then12

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %id14 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %id14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id14, align 8
  %call15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pbuf, i32 noundef 15, ptr noundef nonnull @.str.23, i32 noundef %15)
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9.if.end16_crit_edge
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %name = getelementptr inbounds %struct.cgroup_subsys, ptr %6, i32 0, i32 20
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %id18 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 6
  %20 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id18, align 8
  %online_cnt = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %online_cnt, i32 noundef 4) #8
  %22 = ptrtoint ptr %online_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %online_cnt, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.24, i32 noundef %17, ptr noundef %19, ptr noundef nonnull %10, i32 noundef %21, i32 noundef %23, ptr noundef nonnull %pbuf) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %land.rhs.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  call void @cgroup_kn_unlock(ptr noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pbuf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_masks_read(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @cgroup_kn_lock_live(ptr noundef %3, i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %subtree_control = getelementptr inbounds %struct.cgroup, ptr %call, i32 0, i32 14
  %4 = ptrtoint ptr %subtree_control to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subtree_control, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #8
  %conv.i = zext i16 %5 to i32
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end
  %first.0.off014.i = phi i1 [ true, %if.end ], [ %first.1.off0.i, %for.inc.i.land.rhs.i_crit_edge ]
  %ssid.013.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x ptr], ptr @cgroup_subsys, i32 0, i32 %ssid.013.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %shl.i = shl nuw nsw i32 1, %ssid.013.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i.for.inc.i_crit_edge, label %if.end.i

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %land.rhs.i
  br i1 %first.0.off014.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.28) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %name5.i = getelementptr inbounds %struct.cgroup_subsys, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %name5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name5.i, align 4
  tail call void @seq_puts(ptr noundef %seq, ptr noundef %9) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i, %land.rhs.i.for.inc.i_crit_edge
  %first.1.off0.i = phi i1 [ false, %if.end4.i ], [ %first.0.off014.i, %land.rhs.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %ssid.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %cgroup_masks_read_one.exit, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

cgroup_masks_read_one.exit:                       ; preds = %for.inc.i
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #8
  %subtree_ss_mask = getelementptr inbounds %struct.cgroup, ptr %call, i32 0, i32 15
  %10 = ptrtoint ptr %subtree_ss_mask to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subtree_ss_mask, align 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26) #8
  %conv.i8 = zext i16 %11 to i32
  br label %land.rhs.i15

land.rhs.i15:                                     ; preds = %for.inc.i23.land.rhs.i15_crit_edge, %cgroup_masks_read_one.exit
  %first.0.off014.i9 = phi i1 [ true, %cgroup_masks_read_one.exit ], [ %first.1.off0.i20, %for.inc.i23.land.rhs.i15_crit_edge ]
  %ssid.013.i10 = phi i32 [ 0, %cgroup_masks_read_one.exit ], [ %inc.i21, %for.inc.i23.land.rhs.i15_crit_edge ]
  %arrayidx.i11 = getelementptr [0 x ptr], ptr @cgroup_subsys, i32 0, i32 %ssid.013.i10
  %12 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i11, align 4
  %shl.i12 = shl nuw nsw i32 1, %ssid.013.i10
  %and.i13 = and i32 %shl.i12, %conv.i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool1.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool1.not.i14, label %land.rhs.i15.for.inc.i23_crit_edge, label %if.end.i16

land.rhs.i15.for.inc.i23_crit_edge:               ; preds = %land.rhs.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i23

if.end.i16:                                       ; preds = %land.rhs.i15
  br i1 %first.0.off014.i9, label %if.end.i16.if.end4.i19_crit_edge, label %if.then3.i17

if.end.i16.if.end4.i19_crit_edge:                 ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i19

if.then3.i17:                                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.28) #8
  br label %if.end4.i19

if.end4.i19:                                      ; preds = %if.then3.i17, %if.end.i16.if.end4.i19_crit_edge
  %name5.i18 = getelementptr inbounds %struct.cgroup_subsys, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %name5.i18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name5.i18, align 4
  tail call void @seq_puts(ptr noundef %seq, ptr noundef %15) #8
  br label %for.inc.i23

for.inc.i23:                                      ; preds = %if.end4.i19, %land.rhs.i15.for.inc.i23_crit_edge
  %first.1.off0.i20 = phi i1 [ false, %if.end4.i19 ], [ %first.0.off014.i9, %land.rhs.i15.for.inc.i23_crit_edge ]
  %inc.i21 = add nuw nsw i32 %ssid.013.i10, 1
  %exitcond.not.i22 = icmp eq i32 %inc.i21, 14
  br i1 %exitcond.not.i22, label %cgroup_masks_read_one.exit24, label %for.inc.i23.land.rhs.i15_crit_edge

for.inc.i23.land.rhs.i15_crit_edge:               ; preds = %for.inc.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i15

cgroup_masks_read_one.exit24:                     ; preds = %for.inc.i23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void @cgroup_kn_unlock(ptr noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %cgroup_masks_read_one.exit24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cgroup_masks_read_one.exit24 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @releasable_read(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %css, align 8
  %nr_populated_csets.i = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %nr_populated_csets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_populated_csets.i, align 8
  %nr_populated_domain_children.i = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %nr_populated_domain_children.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_populated_domain_children.i, align 4
  %add.i = add i32 %5, %3
  %nr_populated_threaded_children.i = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %nr_populated_threaded_children.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_populated_threaded_children.i, align 8
  %add1.i = sub i32 0, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add1.i)
  %tobool.i.not = icmp eq i32 %add.i, %add1.i
  br i1 %tobool.i.not, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call zeroext i1 @css_has_online_children(ptr noundef %1) #8
  %lnot = xor i1 %call2, true
  %phi.cast = zext i1 %lnot to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %9 = zext i32 %8 to i64
  ret i64 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_task_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_kn_lock_live(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_kn_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @css_has_online_children(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @debug_cgrp_subsys, !1, !"debug_cgrp_subsys", i1 false, i1 false}
!1 = !{!"../kernel/cgroup/debug.c", i32 366, i32 22}
!2 = !{ptr @debug_legacy_files, !3, !"debug_legacy_files", i1 false, i1 false}
!3 = !{!"../kernel/cgroup/debug.c", i32 277, i32 22}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/cgroup/debug.c", i32 55, i32 18}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/cgroup/debug.c", i32 57, i32 19}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/cgroup/debug.c", i32 58, i32 16}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/cgroup/debug.c", i32 67, i32 19}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/cgroup.h", i32 481, i32 9}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/cgroup/debug.c", i32 104, i32 19}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/cgroup/debug.c", i32 132, i32 19}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../kernel/cgroup/debug.c", i32 133, i32 7}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/cgroup/debug.c", i32 135, i32 20}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/cgroup/debug.c", i32 143, i32 25}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/cgroup/debug.c", i32 143, i32 31}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/cgroup/debug.c", i32 144, i32 21}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/cgroup/debug.c", i32 148, i32 20}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/cgroup/debug.c", i32 166, i32 21}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/cgroup/debug.c", i32 177, i32 20}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/cgroup/debug.c", i32 181, i32 18}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/cgroup/debug.c", i32 185, i32 3}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/cgroup/debug.c", i32 194, i32 19}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/cgroup/debug.c", i32 196, i32 19}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/cgroup/debug.c", i32 198, i32 19}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../kernel/cgroup/debug.c", i32 217, i32 9}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/cgroup/debug.c", i32 225, i32 37}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/cgroup/debug.c", i32 227, i32 19}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/cgroup/debug.c", i32 264, i32 29}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/cgroup/debug.c", i32 265, i32 29}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/cgroup/debug.c", i32 243, i32 18}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/cgroup/debug.c", i32 248, i32 18}
!67 = !{ptr @debug_files, !68, !"debug_files", i1 false, i1 false}
!68 = !{!"../kernel/cgroup/debug.c", i32 324, i32 22}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2150009908}
!80 = !{i64 2150010174}
!81 = !{i8 0, i8 2}
!82 = !{!"branch_weights", i32 2000, i32 1}
