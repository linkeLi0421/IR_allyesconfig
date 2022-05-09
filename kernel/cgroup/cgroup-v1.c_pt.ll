; ModuleID = '/llk/IR_all_yes/kernel/cgroup/cgroup-v1.c_pt.bc'
source_filename = "../kernel/cgroup/cgroup-v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cgroup_attach_task_all\22, \22a\22\09"
module asm "\09.weak\09__crc_cgroup_attach_task_all\09\09\09\09"
module asm "\09.long\09__crc_cgroup_attach_task_all\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cgroup_attach_task_all:\09\09\09\09\09"
module asm "\09.asciz \09\22cgroup_attach_task_all\22\09\09\09\09\09"
module asm "__kstrtabns_cgroup_attach_task_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.cgroup_namespace = type { %struct.ns_common, ptr, ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.17 }
%union.anon.17 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.cgroup_root = type { ptr, i32, i32, %struct.cgroup, i64, %struct.atomic_t, %struct.list_head, i32, [4096 x i8], [64 x i8] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernfs_syscall_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.32 }
%union.anon.32 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cgroup_mgctx = type { %struct.list_head, %struct.list_head, %struct.cgroup_taskset, i16 }
%struct.cgroup_taskset = type { %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.css_task_iter = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.69, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.69 = type { %struct.callback_head }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.kernfs_open_file = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, %struct.list_head, ptr, i32, i8, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.30, ptr, i64, i16, i16, ptr }
%union.anon.30 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.cgroup_file_ctx = type { ptr, %struct.anon.78, %struct.anon.79, %struct.anon.80 }
%struct.anon.78 = type { ptr }
%struct.anon.79 = type { i8, %struct.css_task_iter }
%struct.anon.80 = type { ptr }
%struct.cgroup_pidlist = type { %struct.anon.77, ptr, i32, %struct.list_head, ptr, %struct.delayed_work }
%struct.anon.77 = type { i32, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.35, %struct.list_head, %struct.list_head, %union.anon.36 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.spinlock, i32 }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.cgroupstats = type { i64, i64, i64, i64, i64 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.fs_parse_result = type { i8, %union.anon.33 }
%union.anon.33 = type { i64 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.cgroup_fs_context = type { %struct.kernfs_fs_context, ptr, ptr, i32, i8, i8, i8, i16, ptr, ptr }
%struct.kernfs_fs_context = type { ptr, ptr, i32, i8 }
%struct.fs_parameter = type { ptr, i8, %union.anon.16, i32, i32 }
%union.anon.16 = type { ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }

@cgroup_no_v1_mask = internal global { i16, [30 x i8] } zeroinitializer, align 32
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@cgroup_threadgroup_rwsem = external dso_local global %struct.percpu_rw_semaphore, align 4
@cgroup_roots = external dso_local global %struct.list_head, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@__kstrtab_cgroup_attach_task_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_cgroup_attach_task_all = external dso_local constant [0 x i8], align 1
@__ksymtab_cgroup_attach_task_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cgroup_attach_task_all to i32), ptr @__kstrtab_cgroup_attach_task_all, ptr @__kstrtabns_cgroup_attach_task_all }, section "___ksymtab_gpl+cgroup_attach_task_all", align 4
@trace_cgroup_path_lock = external dso_local global %struct.spinlock, align 4
@trace_cgroup_path = external dso_local global [1024 x i8], align 1
@cgroup_pidlist_destroy_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cgroup1_base_files = dso_local global { [7 x %struct.cftype], [280 x i8] } { [7 x %struct.cftype] [%struct.cftype { [64 x i8] c"cgroup.procs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_pidlist_show, ptr @cgroup_pidlist_start, ptr @cgroup_pidlist_next, ptr @cgroup_pidlist_stop, ptr null, ptr null, ptr @cgroup1_procs_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"cgroup.clone_children\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cgroup_clone_children_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_clone_children_write, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"cgroup.sane_behavior\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_sane_behavior_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"tasks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_pidlist_show, ptr @cgroup_pidlist_start, ptr @cgroup_pidlist_next, ptr @cgroup_pidlist_stop, ptr null, ptr null, ptr @cgroup1_tasks_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"notify_on_release\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cgroup_read_notify_on_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_write_notify_on_release, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"release_agent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4095, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_release_agent_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_release_agent_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [280 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"#subsys_name\09hierarchy\09num_cgroups\09enabled\0A\00", [52 x i8] zeroinitializer }, align 32
@cgroup_subsys = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s\09%d\09%d\09%d\0A\00", [19 x i8] zeroinitializer }, align 32
@cgroup_fs_type = external dso_local global %struct.file_system_type, align 4
@cgroupstats_build.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/cgroup/cgroup-v1.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@release_agent_path_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@init_cgroup_ns = external dso_local global %struct.cgroup_namespace, align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clone_children\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpuset_v2_mode\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"noprefix\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"release_agent\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xattr\00", [26 x i8] zeroinitializer }, align 32
@cgroup1_fs_parameters = dso_local constant { [9 x %struct.fs_parameter_spec], [48 x i8] } { [9 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.6, ptr null, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.7, ptr null, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.8, ptr null, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.9, ptr @fs_param_is_string, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.10, ptr null, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.11, ptr null, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.12, ptr @fs_param_is_string, i8 6, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.13, ptr null, i8 7, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Disabled controller '%s'\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown subsys name '%s'\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"release_agent respecified\00", [38 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Setting release_agent not allowed\00", [62 x i8] zeroinitializer }, align 32
@cgroup_no_v1_named = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Empty name\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Name too long\00", [18 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Invalid name\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"name respecified\00", [47 x i8] zeroinitializer }, align 32
@cgrp_dfl_root = external dso_local global %struct.cgroup_root, align 8
@cgroup1_reconfigure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014option changes via remount are deprecated (pid=%d comm=%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cgroup1_reconfigure\00", [44 x i8] zeroinitializer }, align 32
@cgroup1_reconfigure._entry_ptr = internal global ptr @cgroup1_reconfigure._entry, section ".printk_index", align 4
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"option or name mismatch, new: 0x%x \22%s\22, old: 0x%x \22%s\22\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cgroup1_kf_syscall_ops = dso_local global { %struct.kernfs_syscall_ops, [44 x i8] } { %struct.kernfs_syscall_ops { ptr @cgroup1_show_options, ptr @cgroup_mkdir, ptr @cgroup_rmdir, ptr @cgroup1_rename, ptr @cgroup_show_path }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_cgroup_v1__273_1262_cgroup1_wq_init1 = internal global ptr @cgroup1_wq_init, section ".initcall1.init", align 4
@__setup_str_cgroup_no_v1 = internal constant [14 x i8] c"cgroup_no_v1=\00", section ".init.rodata", align 1
@__setup_cgroup_no_v1 = internal global %struct.obs_kernel_param { ptr @__setup_str_cgroup_no_v1, ptr @cgroup_no_v1, i32 0 }, section ".init.setup", align 4
@__tracepoint_cgroup_transfer_tasks = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/cgroup.h\00", [34 x i8] zeroinitializer }, align 32
@trace_cgroup_transfer_tasks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@cgroup_pidlist_find_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&l->destroy_dwork)->work)\00", [50 x i8] zeroinitializer }, align 32
@cgroup_pidlist_find_create.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&l->destroy_dwork)->timer\00", [36 x i8] zeroinitializer }, align 32
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"release_agent_path_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"subsys name conflicts with all\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Need name or subsystem set\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"noprefix used incorrectly\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"none used incorrectly\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_cgroup_remount = external dso_local global %struct.tracepoint, align 4
@trace_cgroup_remount.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",noprefix\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",xattr\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",cpuset_v2_mode\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",clone_children\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",= \09\0A\\\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", \09\0A\\\00", [26 x i8] zeroinitializer }, align 32
@__tracepoint_cgroup_rename = external dso_local global %struct.tracepoint, align 4
@trace_cgroup_rename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup1_root_to_use._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014new mount options do not match the existing superblock, will be ignored\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cgroup1_root_to_use\00", [44 x i8] zeroinitializer }, align 32
@cgroup1_root_to_use._entry_ptr = internal global ptr @cgroup1_root_to_use._entry, section ".printk_index", align 4
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No subsys list or none specified\00", [63 x i8] zeroinitializer }, align 32
@percpu_ref_tryget_live_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/linux/percpu-refcount.h\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cgroup_pidlist_destroy\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"named\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 260]
@__sancov_gen_cov_switch_values.55 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 8, i64 45, i64 46, i64 95]
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"cgroup_no_v1_mask\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 30, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [26 x i8] c"cgroup_pidlist_destroy_wq\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 39, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"cgroup1_base_files\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 623, i32 15 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 673, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 680, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 717, i32 9 }
@___asan_gen_.78 = private unnamed_addr constant [24 x i8] c"release_agent_path_lock\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 814, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 815, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 904, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 905, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 906, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 907, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 908, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 909, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 910, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 911, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"cgroup1_fs_parameters\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 903, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 933, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 938, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 966, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 972, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"cgroup_no_v1_named\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 982, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 984, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 992, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 996, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1074, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1083, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"cgroup1_kf_syscall_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1114, i32 27 }
@___asan_gen_.158 = private unnamed_addr constant [33 x i8] c"../include/trace/events/cgroup.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 158, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 108, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 484, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 314, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 286, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 586, i32 16 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 695, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 723, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 42, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1031, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1041, i32 10 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1049, i32 10 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1053, i32 10 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 873, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 875, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 877, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 886, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 242, i32 22 }
@___asan_gen_.224 = private unnamed_addr constant [28 x i8] c"../include/linux/seq_file.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 245, i32 24 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1188, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1200, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant [35 x i8] c"../include/linux/percpu-refcount.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 280, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1257, i32 46 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1270, i32 31 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [29 x i8] c"../kernel/cgroup/cgroup-v1.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1279, i32 22 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__initcall__kmod_cgroup_v1__273_1262_cgroup1_wq_init1, ptr @__ksymtab_cgroup_attach_task_all, ptr @__setup_cgroup_no_v1, ptr @cgroup1_reconfigure._entry, ptr @cgroup1_reconfigure._entry_ptr, ptr @cgroup1_root_to_use._entry, ptr @cgroup1_root_to_use._entry_ptr, ptr @cgroup_no_v1_mask, ptr @cgroup_pidlist_destroy_wq, ptr @cgroup1_base_files, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @release_agent_path_lock, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @cgroup1_fs_parameters, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @cgroup_no_v1_named, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @cgroup1_kf_syscall_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @cgroup_pidlist_find_create.__key, ptr @.str.29, ptr @cgroup_pidlist_find_create.__key.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_no_v1_mask to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_pidlist_destroy_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup1_base_files to i32), i32 1064, i32 1344, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_agent_path_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup1_fs_parameters to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_no_v1_named to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup1_reconfigure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup1_kf_syscall_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_pidlist_find_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_pidlist_find_create.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup1_root_to_use._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cgroup1_ssid_disabled(i32 noundef %ssid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @cgroup_no_v1_mask, align 2
  %conv = zext i16 %0 to i32
  %shl = shl nuw i32 1, %ssid
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroup_attach_task_all(ptr noundef %from, ptr noundef %tsk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #18
  tail call void @percpu_down_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #18
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @cgroup_roots, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @cgroup_roots
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.cond
  %root.0 = getelementptr i8, ptr %.pn, i32 -2076
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #18
  %call = tail call ptr @task_cgroup_from_root(ptr noundef %from, ptr noundef %root.0) #18
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @css_set_lock) #18
  %call2 = tail call i32 @cgroup_attach_task(ptr noundef %call, ptr noundef %tsk, i1 noundef zeroext false) #18
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %retval1.1 = phi i32 [ %call2, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  tail call void @percpu_up_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #18
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #18
  ret i32 %retval1.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_cgroup_from_root(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_attach_task(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroup_transfer_tasks(ptr noundef %to, ptr noundef %from) local_unnamed_addr #1 align 64 {
entry:
  %mgctx = alloca %struct.cgroup_mgctx, align 4
  %it = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mgctx) #18
  %0 = getelementptr inbounds i8, ptr %mgctx, i32 52
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !151
  %2 = ptrtoint ptr %mgctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mgctx, ptr %mgctx, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %mgctx, i32 0, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mgctx, ptr %prev, align 4
  %preloaded_dst_csets = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 1
  %4 = ptrtoint ptr %preloaded_dst_csets to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %preloaded_dst_csets, ptr %preloaded_dst_csets, align 4
  %prev5 = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %preloaded_dst_csets, ptr %prev5, align 4
  %tset = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 2
  %6 = ptrtoint ptr %tset to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tset, ptr %tset, align 4
  %prev10 = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %prev10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tset, ptr %prev10, align 4
  %dst_csets = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %dst_csets to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dst_csets, ptr %dst_csets, align 4
  %prev16 = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 2, i32 1, i32 1
  %9 = ptrtoint ptr %prev16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dst_csets, ptr %prev16, align 4
  %nr_tasks = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %nr_tasks to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %nr_tasks, align 4
  %ssid = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %ssid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ssid, align 4
  %csets = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %csets to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tset, ptr %csets, align 4
  %cur_cset = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %cur_cset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cur_cset, align 4
  %cur_task = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %cur_task to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cur_task, align 4
  %ss_mask = getelementptr inbounds %struct.cgroup_mgctx, ptr %mgctx, i32 0, i32 3
  %15 = ptrtoint ptr %ss_mask to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %ss_mask, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it) #18
  %16 = call ptr @memset(ptr %it, i32 255, i32 52)
  %call = call zeroext i1 @cgroup_on_dfl(ptr noundef %to) #18
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call21 = call i32 @cgroup_migrate_vet_dst(ptr noundef %to) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #18
  call void @percpu_down_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #18
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #18
  %cset_links = getelementptr inbounds %struct.cgroup, ptr %from, i32 0, i32 20
  %17 = ptrtoint ptr %cset_links to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn110 = load ptr, ptr %cset_links, align 4
  %cmp.not111 = icmp eq ptr %.pn110, %cset_links
  br i1 %cmp.not111, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end23.for.body_crit_edge
  %.pn112 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn110, %if.end23.for.body_crit_edge ]
  %cset = getelementptr i8, ptr %.pn112, i32 -4
  %18 = ptrtoint ptr %cset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cset, align 4
  call void @cgroup_migrate_add_src(ptr noundef %19, ptr noundef %to, ptr noundef nonnull %mgctx) #18
  %20 = ptrtoint ptr %.pn112 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn112, align 4
  %cmp.not = icmp eq ptr %.pn, %cset_links
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end23.for.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @css_set_lock) #18
  %call31 = call i32 @cgroup_migrate_prepare_dst(ptr noundef nonnull %mgctx) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body.preheader, label %for.end.out_err_crit_edge

for.end.out_err_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_err

do.body.preheader:                                ; preds = %for.end
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %to, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.cond68.do.body_crit_edge, %do.body.preheader
  call void @css_task_iter_start(ptr noundef %from, i32 noundef 0, ptr noundef nonnull %it) #18
  br label %do.body35

do.body35:                                        ; preds = %land.rhs.do.body35_crit_edge, %do.body
  %call36 = call ptr @css_task_iter_next(ptr noundef nonnull %it) #18
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %do.cond68.thread, label %land.rhs

land.rhs:                                         ; preds = %do.body35
  %flags = getelementptr inbounds %struct.task_struct, ptr %call36, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, 4
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.then40.critedge, label %land.rhs.do.body35_crit_edge

land.rhs.do.body35_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body35

if.then40.critedge:                               ; preds = %land.rhs
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call36, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #18
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #18, !srcloc !152
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then40.critedge.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !153

if.then40.critedge.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then40.critedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then40.critedge
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !154

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then40.critedge.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then40.critedge.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #18
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it) #18
  %call45 = call i32 @cgroup_migrate(ptr noundef nonnull %call36, i1 noundef zeroext false, ptr noundef nonnull %mgctx) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body48, label %get_task_struct.exit.if.end66_crit_edge

get_task_struct.exit.if.end66_crit_edge:          ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

do.body48:                                        ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_transfer_tasks, i32 0, i32 1), ptr blockaddress(@cgroup_transfer_tasks, %if.then50)) #18
          to label %if.end66 [label %if.then50], !srcloc !155

if.then50:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #20
  %call57 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #18
  %25 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kn.i, align 8
  %call.i.i = call i32 @kernfs_path_from_node(ptr noundef %26, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #18
  call fastcc void @trace_cgroup_transfer_tasks(ptr noundef %to, ptr noundef nonnull %call36)
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %call57) #18
  br label %if.end66

if.end66:                                         ; preds = %if.then50, %do.body48, %get_task_struct.exit.if.end66_crit_edge
  %call.i.i.i.i.i.i101 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !156
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #18
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #18, !srcloc !157
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i102 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i102, label %if.end5.i.i.i.i.do.cond68_crit_edge, label %if.then10.i.i.i.i, !prof !154

if.end5.i.i.i.i.do.cond68_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.cond68

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #18
  br label %do.cond68

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !158
  call void @__put_task_struct(ptr noundef nonnull %call36) #18
  br label %do.cond68

do.cond68.thread:                                 ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #20
  call void @css_task_iter_end(ptr noundef nonnull %it) #18
  br label %out_err

do.cond68:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.do.cond68_crit_edge
  br i1 %tobool46.not, label %do.cond68.do.body_crit_edge, label %do.cond68.out_err_crit_edge

do.cond68.out_err_crit_edge:                      ; preds = %do.cond68
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_err

do.cond68.do.body_crit_edge:                      ; preds = %do.cond68
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

out_err:                                          ; preds = %do.cond68.out_err_crit_edge, %do.cond68.thread, %for.end.out_err_crit_edge
  %ret.2 = phi i32 [ %call31, %for.end.out_err_crit_edge ], [ 0, %do.cond68.thread ], [ %call45, %do.cond68.out_err_crit_edge ]
  call void @cgroup_migrate_finish(ptr noundef nonnull %mgctx) #18
  call void @percpu_up_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #18
  call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #18
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_err ], [ -22, %entry.cleanup_crit_edge ], [ %call21, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mgctx) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cgroup_on_dfl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_migrate_vet_dst(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_migrate_add_src(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_migrate_prepare_dst(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_start(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_task_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_migrate(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cgroup_transfer_tasks(ptr noundef %dst_cgrp, ptr noundef %task) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_transfer_tasks, i32 0, i32 1), ptr blockaddress(@trace_cgroup_transfer_tasks, %do.body)) #18
          to label %if.end49 [label %do.body], !srcloc !155

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !159
  %call43 = tail call i32 @__traceiter_cgroup_transfer_tasks(ptr noundef null, ptr noundef %dst_cgrp, ptr noundef nonnull @trace_cgroup_path, ptr noundef %task, i1 noundef zeroext false) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !160
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !154

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_transfer_tasks, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_transfer_tasks, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_cgroup_transfer_tasks.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_cgroup_transfer_tasks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 164, ptr noundef nonnull @.str.3) #18
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !162
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_migrate_finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup1_pidlist_destroy_all(ptr noundef %cgrp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pidlist_mutex = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %pidlist_mutex, i32 noundef 0) #18
  %pidlists = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 29
  %0 = ptrtoint ptr %pidlists to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pidlists, align 8
  %cmp.not33 = icmp eq ptr %1, %pidlists
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in34 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in34, align 4
  %3 = load ptr, ptr @cgroup_pidlist_destroy_wq, align 4
  %destroy_dwork = getelementptr i8, ptr %.pn.in34, i32 12
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %destroy_dwork, i32 noundef 0) #18
  %cmp.not = icmp eq ptr %.pn, %pidlists
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %pidlist_mutex) #18
  %4 = load ptr, ptr @cgroup_pidlist_destroy_wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #18
  %5 = ptrtoint ptr %pidlists to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pidlists, align 4
  %cmp.i.not = icmp eq ptr %6, %pidlists
  br i1 %cmp.i.not, label %do.end24, label %do.body19, !prof !154

do.body19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup-v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #18, !srcloc !163
  unreachable

do.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_pidlist_show(ptr noundef %s, ptr nocapture noundef readonly %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28, i32 noundef %1) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cgroup_pidlist_start(ptr nocapture noundef readonly %s, ptr nocapture noundef %pos) #1 align 64 {
entry:
  %it.i = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv = getelementptr inbounds %struct.kernfs_open_file, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call.i = tail call ptr @of_css(ptr noundef %1) #18
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 8
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %priv.i.i = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i.i, align 8
  %private2 = getelementptr inbounds %struct.cftype, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %private2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %private2, align 4
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  %conv = trunc i64 %15 to i32
  %pidlist_mutex = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %pidlist_mutex, i32 noundef 0) #18
  %procs1 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %procs1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %procs1, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.then9_crit_edge, label %if.then

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then9

if.then:                                          ; preds = %entry
  %18 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %call1.i = tail call ptr @task_active_pid_ns(ptr noundef %21) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.rhs.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then
  %dep_map.i = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 30, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !153

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 284, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %pidlists.i = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 29
  %23 = ptrtoint ptr %pidlists.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn51.i = load ptr, ptr %pidlists.i, align 4
  %cmp28.not53.i = icmp eq ptr %.pn51.i, %pidlists.i
  br i1 %cmp28.not53.i, label %if.end.i.if.end.thread88_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end.thread88_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.thread88

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn54.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn51.i, %if.end.i.for.body.i_crit_edge ]
  %l.055.i = getelementptr i8, ptr %.pn54.i, i32 -16
  %24 = ptrtoint ptr %l.055.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %l.055.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %13)
  %cmp32.i = icmp eq i32 %25, %13
  br i1 %cmp32.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ns34.i = getelementptr i8, ptr %.pn54.i, i32 -12
  %26 = ptrtoint ptr %ns34.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ns34.i, align 4
  %cmp35.i = icmp eq ptr %27, %call1.i
  br i1 %cmp35.i, label %if.end, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %28 = ptrtoint ptr %.pn54.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn54.i, align 4
  %cmp28.not.i = icmp eq ptr %.pn.i, %pidlists.i
  br i1 %cmp28.not.i, label %for.inc.i.if.end.thread88_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end.thread88_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.thread88

if.end.thread88:                                  ; preds = %for.inc.i.if.end.thread88_crit_edge, %if.end.i.if.end.thread88_crit_edge
  %29 = ptrtoint ptr %procs1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %procs1, align 4
  br label %if.then9

if.end:                                           ; preds = %land.lhs.true.i
  %l.055.i.le = getelementptr i8, ptr %.pn54.i, i32 -16
  %30 = ptrtoint ptr %procs1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %l.055.i.le, ptr %procs1, align 4
  %tobool8.not = icmp eq ptr %l.055.i.le, null
  br i1 %tobool8.not, label %if.end.if.then9_crit_edge, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then9

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.end.thread88, %entry.if.then9_crit_edge
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it.i) #18
  %31 = call ptr @memset(ptr %it.i, i32 255, i32 52)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %32 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i79 = icmp eq i32 %32, 0
  br i1 %tobool.not.i79, label %if.then9.if.end.i85_crit_edge, label %land.rhs.i83

if.then9.if.end.i85_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i85

land.rhs.i83:                                     ; preds = %if.then9
  %dep_map.i80 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 30, i32 5
  %call.i.i81 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i80, i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %cmp.not.i82 = icmp eq i32 %call.i.i81, 0
  br i1 %cmp.not.i82, label %do.end.i84, label %land.rhs.i83.if.end.i85_crit_edge, !prof !153

land.rhs.i83.if.end.i85_crit_edge:                ; preds = %land.rhs.i83
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i85

do.end.i84:                                       ; preds = %land.rhs.i83
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 336, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i85

if.end.i85:                                       ; preds = %do.end.i84, %land.rhs.i83.if.end.i85_crit_edge, %if.then9.if.end.i85_crit_edge
  %call24.i = tail call i32 @cgroup_task_count(ptr noundef %5) #18
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call24.i, i32 4) #18
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %if.end.i85.if.then14_crit_edge, label %kvmalloc_array.exit.i, !prof !153

if.end.i85.if.then14_crit_edge:                   ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then14

kvmalloc_array.exit.i:                            ; preds = %if.end.i85
  %35 = extractvalue { i32, i1 } %33, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %35, i32 noundef 3264, i32 noundef -1) #21
  %tobool26.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool26.not.i, label %kvmalloc_array.exit.i.if.then14_crit_edge, label %if.end28.i

kvmalloc_array.exit.i.if.then14_crit_edge:        ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then14

if.end28.i:                                       ; preds = %kvmalloc_array.exit.i
  call void @css_task_iter_start(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %it.i) #18
  %call29104.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i) #18
  %tobool30.not105.i = icmp eq ptr %call29104.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp31106.i = icmp eq i32 %call24.i, 0
  %or.cond107.i = select i1 %tobool30.not105.i, i1 true, i1 %cmp31106.i
  br i1 %or.cond107.i, label %if.end28.i.while.end.i_crit_edge, label %if.end39.lr.ph.i, !prof !164

if.end28.i.while.end.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

if.end39.lr.ph.i:                                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp40.i = icmp eq i32 %13, 0
  %..i = zext i1 %cmp40.i to i32
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end47.i.if.end39.i_crit_edge, %if.end39.lr.ph.i
  %call29109.i = phi ptr [ %call29104.i, %if.end39.lr.ph.i ], [ %call29.i, %if.end47.i.if.end39.i_crit_edge ]
  %n.0108.i = phi i32 [ 0, %if.end39.lr.ph.i ], [ %n.1.i, %if.end47.i.if.end39.i_crit_edge ]
  %call.i88.i = call i32 @__task_pid_nr_ns(ptr noundef nonnull %call29109.i, i32 noundef %..i, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %cmp45.i = icmp sgt i32 %call.i88.i, 0
  br i1 %cmp45.i, label %if.then46.i, label %if.end39.i.if.end47.i_crit_edge

if.end39.i.if.end47.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47.i

if.then46.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #20
  %inc.i = add i32 %n.0108.i, 1
  %arrayidx.i = getelementptr i32, ptr %call.i.i.i, i32 %n.0108.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i88.i, ptr %arrayidx.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then46.i, %if.end39.i.if.end47.i_crit_edge
  %n.1.i = phi i32 [ %inc.i, %if.then46.i ], [ %n.0108.i, %if.end39.i.if.end47.i_crit_edge ]
  %call29.i = call ptr @css_task_iter_next(ptr noundef nonnull %it.i) #18
  %tobool30.not.i = icmp eq ptr %call29.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %n.1.i, i32 %call24.i)
  %cmp31.i = icmp eq i32 %n.1.i, %call24.i
  %or.cond.i = select i1 %tobool30.not.i, i1 true, i1 %cmp31.i
  br i1 %or.cond.i, label %if.end47.i.while.end.i_crit_edge, label %if.end47.i.if.end39.i_crit_edge, !prof !164

if.end47.i.if.end39.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39.i

if.end47.i.while.end.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

while.end.i:                                      ; preds = %if.end47.i.while.end.i_crit_edge, %if.end28.i.while.end.i_crit_edge
  %n.0.lcssa.i = phi i32 [ 0, %if.end28.i.while.end.i_crit_edge ], [ %n.1.i, %if.end47.i.while.end.i_crit_edge ]
  call void @css_task_iter_end(ptr noundef nonnull %it.i) #18
  call void @sort(ptr noundef nonnull %call.i.i.i, i32 noundef %n.0.lcssa.i, i32 noundef 4, ptr noundef nonnull @cmppid, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp48.i = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n.0.lcssa.i)
  %switch.i.i = icmp ult i32 %n.0.lcssa.i, 2
  %or.cond98.i = select i1 %cmp48.i, i1 true, i1 %switch.i.i
  br i1 %or.cond98.i, label %while.end.i.if.end51.i_crit_edge, label %for.cond.preheader.i.i

while.end.i.if.end51.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.i

for.cond.preheader.i.i:                           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.0.lcssa.i)
  %cmp232.i.i = icmp sgt i32 %n.0.lcssa.i, 1
  br i1 %cmp232.i.i, label %for.cond.preheader.i.i.while.cond.preheader.i.i_crit_edge, label %for.cond.preheader.i.i.if.end51.i_crit_edge

for.cond.preheader.i.i.if.end51.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.i

for.cond.preheader.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %while.end.i.i.while.cond.preheader.i.i_crit_edge, %for.cond.preheader.i.i.while.cond.preheader.i.i_crit_edge
  %dest.034.i.i = phi i32 [ %inc10.i.i, %while.end.i.i.while.cond.preheader.i.i_crit_edge ], [ 1, %for.cond.preheader.i.i.while.cond.preheader.i.i_crit_edge ]
  %src.033.i.i = phi i32 [ %inc11.i.i, %while.end.i.i.while.cond.preheader.i.i_crit_edge ], [ 1, %for.cond.preheader.i.i.while.cond.preheader.i.i_crit_edge ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i.i
  %src.1.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %src.033.i.i, %while.cond.preheader.i.i ]
  %arrayidx.i.i = getelementptr i32, ptr %call.i.i.i, i32 %src.1.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i = add i32 %src.1.i.i, -1
  %arrayidx3.i.i = getelementptr i32, ptr %call.i.i.i, i32 %sub.i.i
  %39 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp4.i.i = icmp eq i32 %38, %40
  br i1 %cmp4.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %inc.i.i = add i32 %src.1.i.i, 1
  %cmp5.i.i = icmp eq i32 %inc.i.i, %n.0.lcssa.i
  br i1 %cmp5.i.i, label %while.body.i.i.if.end51.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.i.i

while.body.i.i.if.end51.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %arrayidx9.i.i = getelementptr i32, ptr %call.i.i.i, i32 %dest.034.i.i
  %41 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %arrayidx9.i.i, align 4
  %inc10.i.i = add i32 %dest.034.i.i, 1
  %inc11.i.i = add i32 %src.1.i.i, 1
  %cmp2.i.i = icmp slt i32 %inc11.i.i, %n.0.lcssa.i
  br i1 %cmp2.i.i, label %while.end.i.i.while.cond.preheader.i.i_crit_edge, label %while.end.i.i.if.end51.i_crit_edge

while.end.i.i.if.end51.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.i

while.end.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.preheader.i.i

if.end51.i:                                       ; preds = %while.end.i.i.if.end51.i_crit_edge, %while.body.i.i.if.end51.i_crit_edge, %for.cond.preheader.i.i.if.end51.i_crit_edge, %while.end.i.if.end51.i_crit_edge
  %length.0.i = phi i32 [ %n.0.lcssa.i, %while.end.i.if.end51.i_crit_edge ], [ 1, %for.cond.preheader.i.i.if.end51.i_crit_edge ], [ %dest.034.i.i, %while.body.i.i.if.end51.i_crit_edge ], [ %inc10.i.i, %while.end.i.i.if.end51.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %42 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i, label %if.end51.i.if.end.i91.i_crit_edge, label %land.rhs.i.i

if.end51.i.if.end.i91.i_crit_edge:                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i91.i

land.rhs.i.i:                                     ; preds = %if.end51.i
  %dep_map.i.i = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 30, i32 5
  %call.i.i90.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i90.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i91.i_crit_edge, !prof !153

land.rhs.i.i.if.end.i91.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i91.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 303, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i91.i

if.end.i91.i:                                     ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i91.i_crit_edge, %if.end51.i.if.end.i91.i_crit_edge
  %43 = call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i, align 8
  %call1.i.i.i = call ptr @task_active_pid_ns(ptr noundef %46) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %47 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i, label %if.end.i91.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i

if.end.i91.i.if.end.i.i.i_crit_edge:              ; preds = %if.end.i91.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i91.i
  %dep_map.i.i.i = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 30, i32 5
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.if.end.i.i.i_crit_edge, !prof !153

land.rhs.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 284, i32 noundef 9, ptr noundef null) #18
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %land.rhs.i.i.i.if.end.i.i.i_crit_edge, %if.end.i91.i.if.end.i.i.i_crit_edge
  %pidlists.i.i.i = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 29
  %48 = ptrtoint ptr %pidlists.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn51.i.i.i = load ptr, ptr %pidlists.i.i.i, align 4
  %cmp28.not53.i.i.i = icmp eq ptr %.pn51.i.i.i, %pidlists.i.i.i
  br i1 %cmp28.not53.i.i.i, label %if.end.i.i.i.if.end27.i.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  br label %for.body.i.i.i

if.end.i.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.i.for.body.i.i.i_crit_edge
  %.pn54.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn51.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %l.055.i.i.i = getelementptr i8, ptr %.pn54.i.i.i, i32 -16
  %49 = ptrtoint ptr %l.055.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %l.055.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %13)
  %cmp32.i.i.i = icmp eq i32 %50, %13
  br i1 %cmp32.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %ns34.i.i.i = getelementptr i8, ptr %.pn54.i.i.i, i32 -12
  %51 = ptrtoint ptr %ns34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ns34.i.i.i, align 4
  %cmp35.i.i.i = icmp eq ptr %52, %call1.i.i.i
  br i1 %cmp35.i.i.i, label %cgroup_pidlist_find.exit.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %53 = ptrtoint ptr %.pn54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i.i.i = load ptr, ptr %.pn54.i.i.i, align 4
  %cmp28.not.i.i.i = icmp eq ptr %.pn.i.i.i, %pidlists.i.i.i
  br i1 %cmp28.not.i.i.i, label %for.inc.i.i.i.if.end27.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i.i

for.inc.i.i.i.if.end27.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i.i

cgroup_pidlist_find.exit.i.i:                     ; preds = %land.lhs.true.i.i.i
  %l.055.i.i.i.le = getelementptr i8, ptr %.pn54.i.i.i, i32 -16
  %tobool25.not.i.i = icmp eq ptr %l.055.i.i.i.le, null
  br i1 %tobool25.not.i.i, label %cgroup_pidlist_find.exit.i.i.if.end27.i.i_crit_edge, label %cgroup_pidlist_find.exit.i.i.pidlist_array_load.exit_crit_edge

cgroup_pidlist_find.exit.i.i.pidlist_array_load.exit_crit_edge: ; preds = %cgroup_pidlist_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pidlist_array_load.exit

cgroup_pidlist_find.exit.i.i.if.end27.i.i_crit_edge: ; preds = %cgroup_pidlist_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %cgroup_pidlist_find.exit.i.i.if.end27.i.i_crit_edge, %for.inc.i.i.i.if.end27.i.i_crit_edge, %if.end.i.i.i.if.end27.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 128) #22
  %tobool29.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool29.not.i.i, label %if.then54.i, label %do.body33.i.i

do.body33.i.i:                                    ; preds = %if.end27.i.i
  %destroy_dwork.i.i = getelementptr inbounds %struct.cgroup_pidlist, ptr %call7.i.i.i.i, i32 0, i32 5
  call void @__init_work(ptr noundef %destroy_dwork.i.i, i32 noundef 0) #18
  %55 = ptrtoint ptr %destroy_dwork.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -64, ptr %destroy_dwork.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.cgroup_pidlist, ptr %call7.i.i.i.i, i32 0, i32 5, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @cgroup_pidlist_find_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry40.i.i = getelementptr inbounds %struct.cgroup_pidlist, ptr %call7.i.i.i.i, i32 0, i32 5, i32 0, i32 1
  %56 = ptrtoint ptr %entry40.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %entry40.i.i, ptr %entry40.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.cgroup_pidlist, ptr %call7.i.i.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %entry40.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.cgroup_pidlist, ptr %call7.i.i.i.i, i32 0, i32 5, i32 0, i32 2
  %58 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @cgroup_pidlist_destroy_work_fn, ptr %func.i.i, align 8
  %timer.i.i = getelementptr inbounds %struct.cgroup_pidlist, ptr %call7.i.i.i.i, i32 0, i32 5, i32 1
  call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.31, ptr noundef nonnull @cgroup_pidlist_find_create.__key.30) #18
  %59 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %13, ptr %call7.i.i.i.i, align 8
  %60 = call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i.i, align 8
  %call53.i.i = call ptr @task_active_pid_ns(ptr noundef %63) #18
  %cmp.not.i75.i.i = icmp eq ptr %call53.i.i, @init_pid_ns
  br i1 %cmp.not.i75.i.i, label %do.body33.i.i.get_pid_ns.exit.i.i_crit_edge, label %if.then.i.i.i

do.body33.i.i.get_pid_ns.exit.i.i_crit_edge:      ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_pid_ns.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body33.i.i
  %count.i.i.i = getelementptr inbounds %struct.pid_namespace, ptr %call53.i.i, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #18
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #18, !srcloc !152
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !153

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %65 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %.not.i.i.i.i.i.i = icmp sgt i32 %65, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_pid_ns.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !154

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_pid_ns.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_pid_ns.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %get_pid_ns.exit.i.i

get_pid_ns.exit.i.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_pid_ns.exit.i.i_crit_edge, %do.body33.i.i.get_pid_ns.exit.i.i_crit_edge
  %ns.i.i = getelementptr inbounds %struct.anon.77, ptr %call7.i.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call53.i.i, ptr %ns.i.i, align 4
  %owner.i.i = getelementptr inbounds %struct.cgroup_pidlist, ptr %call7.i.i.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %5, ptr %owner.i.i, align 8
  %links.i.i = getelementptr inbounds %struct.cgroup_pidlist, ptr %call7.i.i.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %pidlists.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pidlists.i.i.i, align 4
  %call.i.i77.i.i = call zeroext i1 @__list_add_valid(ptr noundef %links.i.i, ptr noundef %pidlists.i.i.i, ptr noundef %69) #18
  br i1 %call.i.i77.i.i, label %if.end.i.i.i.i, label %get_pid_ns.exit.i.i.pidlist_array_load.exit_crit_edge

get_pid_ns.exit.i.i.pidlist_array_load.exit_crit_edge: ; preds = %get_pid_ns.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pidlist_array_load.exit

if.end.i.i.i.i:                                   ; preds = %get_pid_ns.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %links.i.i, ptr %prev1.i.i.i.i, align 4
  %71 = ptrtoint ptr %links.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %links.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.cgroup_pidlist, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %pidlists.i.i.i, ptr %prev3.i.i.i.i, align 4
  %73 = ptrtoint ptr %pidlists.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %links.i.i, ptr %pidlists.i.i.i, align 4
  br label %pidlist_array_load.exit

if.then54.i:                                      ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #18
  br label %if.then14

pidlist_array_load.exit:                          ; preds = %if.end.i.i.i.i, %get_pid_ns.exit.i.i.pidlist_array_load.exit_crit_edge, %cgroup_pidlist_find.exit.i.i.pidlist_array_load.exit_crit_edge
  %retval.0.i92.ph.i = phi ptr [ %call7.i.i.i.i, %if.end.i.i.i.i ], [ %call7.i.i.i.i, %get_pid_ns.exit.i.i.pidlist_array_load.exit_crit_edge ], [ %l.055.i.i.i.le, %cgroup_pidlist_find.exit.i.i.pidlist_array_load.exit_crit_edge ]
  %list.i = getelementptr inbounds %struct.cgroup_pidlist, ptr %retval.0.i92.ph.i, i32 0, i32 1
  %74 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %list.i, align 4
  call void @kvfree(ptr noundef %75) #18
  %76 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i.i.i, ptr %list.i, align 4
  %length57.i = getelementptr inbounds %struct.cgroup_pidlist, ptr %retval.0.i92.ph.i, i32 0, i32 2
  %77 = ptrtoint ptr %length57.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %length.0.i, ptr %length57.i, align 4
  %78 = ptrtoint ptr %procs1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %retval.0.i92.ph.i, ptr %procs1, align 4
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i) #18
  br label %if.end17

if.then14:                                        ; preds = %if.then54.i, %kvmalloc_array.exit.i.if.then14_crit_edge, %if.end.i85.if.then14_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it.i) #18
  br label %cleanup43

if.end17:                                         ; preds = %pidlist_array_load.exit, %if.end.if.end17_crit_edge
  %79 = ptrtoint ptr %procs1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %procs1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool20.not = icmp eq i32 %conv, 0
  br i1 %tobool20.not, label %if.end17.if.end35_crit_edge, label %if.then21

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.then21:                                        ; preds = %if.end17
  %length = getelementptr inbounds %struct.cgroup_pidlist, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %length, align 4
  %list = getelementptr inbounds %struct.cgroup_pidlist, ptr %80, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then21
  %index.0 = phi i32 [ 0, %if.then21 ], [ %index.1, %while.body.while.cond_crit_edge ]
  %end.0 = phi i32 [ %82, %if.then21 ], [ %end.1, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0, i32 %end.0)
  %cmp = icmp slt i32 %index.0, %end.0
  br i1 %cmp, label %while.body, label %while.cond.if.end35_crit_edge

while.cond.if.end35_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

while.body:                                       ; preds = %while.cond
  %add = add i32 %end.0, %index.0
  %div = sdiv i32 %add, 2
  %83 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %list, align 4
  %arrayidx = getelementptr i32, ptr %84, i32 %div
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx, align 4
  %cmp23 = icmp eq i32 %86, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %conv)
  %cmp28.not = icmp sgt i32 %86, %conv
  %add31 = add nsw i32 %div, 1
  %index.1 = select i1 %cmp28.not, i32 %index.0, i32 %add31
  %end.1 = select i1 %cmp28.not, i32 %div, i32 %end.0
  br i1 %cmp23, label %while.body.if.end35_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

while.body.if.end35_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.end35:                                         ; preds = %while.body.if.end35_crit_edge, %while.cond.if.end35_crit_edge, %if.end17.if.end35_crit_edge
  %index.4 = phi i32 [ 0, %if.end17.if.end35_crit_edge ], [ %index.0, %while.cond.if.end35_crit_edge ], [ %div, %while.body.if.end35_crit_edge ]
  %length36 = getelementptr inbounds %struct.cgroup_pidlist, ptr %80, i32 0, i32 2
  %87 = ptrtoint ptr %length36 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %length36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.4, i32 %88)
  %cmp37.not = icmp slt i32 %index.4, %88
  br i1 %cmp37.not, label %if.end40, label %if.end35.cleanup43_crit_edge

if.end35.cleanup43_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup43

if.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  %list41 = getelementptr inbounds %struct.cgroup_pidlist, ptr %80, i32 0, i32 1
  %89 = ptrtoint ptr %list41 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %list41, align 4
  %add.ptr = getelementptr i32, ptr %90, i32 %index.4
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr, align 4
  %conv42 = sext i32 %92 to i64
  %93 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv42, ptr %pos, align 8
  br label %cleanup43

cleanup43:                                        ; preds = %if.end40, %if.end35.cleanup43_crit_edge, %if.then14
  %retval.0 = phi ptr [ %add.ptr, %if.end40 ], [ inttoptr (i32 -12 to ptr), %if.then14 ], [ null, %if.end35.cleanup43_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cgroup_pidlist_next(ptr nocapture noundef readonly %s, ptr noundef readonly %v, ptr nocapture noundef %pos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv = getelementptr inbounds %struct.kernfs_open_file, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %procs1 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %procs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %procs1, align 4
  %list = getelementptr inbounds %struct.cgroup_pidlist, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %length = getelementptr inbounds %struct.cgroup_pidlist, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %add.ptr = getelementptr i32, ptr %7, i32 %9
  %incdec.ptr = getelementptr i32, ptr %v, i32 1
  %cmp.not = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %inc = add i64 %11, 1
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr, align 4
  %conv = sext i32 %13 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %storemerge = phi i64 [ %conv, %if.else ], [ %inc, %if.then ]
  %retval.0 = phi ptr [ %incdec.ptr, %if.else ], [ null, %if.then ]
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %storemerge, ptr %pos, align 8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgroup_pidlist_stop(ptr nocapture noundef readonly %s, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv = getelementptr inbounds %struct.kernfs_open_file, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %procs1 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %procs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %procs1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %6 = load ptr, ptr @cgroup_pidlist_destroy_wq, align 4
  %destroy_dwork = getelementptr inbounds %struct.cgroup_pidlist, ptr %5, i32 0, i32 5
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %destroy_dwork, i32 noundef 100) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 8
  %call.i4 = tail call ptr @of_css(ptr noundef %8) #18
  %9 = ptrtoint ptr %call.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i4, align 8
  %pidlist_mutex = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 30
  tail call void @mutex_unlock(ptr noundef %pidlist_mutex) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup1_procs_write(ptr nocapture noundef readonly %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__cgroup1_procs_write(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @cgroup_clone_children_read(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %css, align 8
  %flags = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %3, 1
  %and1.i = and i32 %shr.i, 1
  %4 = zext i32 %and1.i to i64
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_clone_children_write(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft, i64 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool.not = icmp eq i64 %val, 0
  %0 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %css, align 8
  %flags2 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags2) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags2) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_sane_behavior_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.33) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup1_tasks_write(ptr nocapture noundef readonly %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__cgroup1_procs_write(ptr noundef %of, ptr noundef %buf, i32 noundef %nbytes, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @cgroup_read_notify_on_release(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %css, align 8
  %flags.i = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  %4 = zext i32 %and1.i.i to i64
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_write_notify_on_release(ptr nocapture noundef readonly %css, ptr nocapture noundef readnone %cft, i64 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool.not = icmp eq i64 %val, 0
  %0 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %css, align 8
  %flags2 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags2) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags2) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_release_agent_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #18
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_agent_path_lock) #18
  %root = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %release_agent_path = getelementptr inbounds %struct.cgroup_root, ptr %5, i32 0, i32 8
  tail call void @seq_puts(ptr noundef %seq, ptr noundef %release_agent_path) #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_agent_path_lock) #18
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_release_agent_write(ptr nocapture noundef readonly %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.kernfs_open_file, ptr %of, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %user_ns = getelementptr inbounds %struct.cgroup_namespace, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns, align 4
  %cmp.not = icmp eq ptr %5, @init_user_ns
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %file = getelementptr inbounds %struct.kernfs_open_file, ptr %of, i32 0, i32 1
  %6 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file, align 4
  %call = tail call zeroext i1 @file_ns_capable(ptr noundef %7, ptr noundef nonnull @init_user_ns, i32 noundef 21) #18
  br i1 %call, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of, align 4
  %call1 = tail call ptr @cgroup_kn_lock_live(ptr noundef %9, i1 noundef zeroext false) #18
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_agent_path_lock) #18
  %root = getelementptr inbounds %struct.cgroup, ptr %call1, i32 0, i32 19
  %10 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %root, align 4
  %release_agent_path = getelementptr inbounds %struct.cgroup_root, ptr %11, i32 0, i32 8
  %call.i = tail call ptr @strim(ptr noundef %buf) #18
  %call5 = tail call i32 @strlcpy(ptr noundef %release_agent_path, ptr noundef %call.i, i32 noundef 4096) #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_agent_path_lock) #18
  %12 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of, align 4
  tail call void @cgroup_kn_unlock(ptr noundef %13) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %nbytes, %if.end3 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_cgroupstats_show(ptr noundef %m, ptr nocapture noundef readnone %v) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str) #18
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %land.rhs.land.rhs_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr @cgroup_subsys, i32 0, i32 %i.09
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %legacy_name = getelementptr inbounds %struct.cgroup_subsys, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %legacy_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %legacy_name, align 4
  %root = getelementptr inbounds %struct.cgroup_subsys, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %hierarchy_id = getelementptr inbounds %struct.cgroup_root, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hierarchy_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hierarchy_id, align 8
  %nr_cgrps = getelementptr inbounds %struct.cgroup_root, ptr %5, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_cgrps, i32 noundef 4) #18
  %8 = ptrtoint ptr %nr_cgrps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %nr_cgrps, align 4
  %call2 = tail call zeroext i1 @cgroup_ssid_enabled(i32 noundef %i.09) #18
  %conv = zext i1 %call2 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %7, i32 noundef %9, i32 noundef %conv) #18
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

for.end:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cgroup_ssid_enabled(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroupstats_build(ptr nocapture noundef %stats, ptr noundef %dentry) local_unnamed_addr #1 align 64 {
entry:
  %it = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kernfs_node_from_dentry(ptr noundef %dentry) #18
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it) #18
  %0 = call ptr @memset(ptr %it, i32 255, i32 52)
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %1 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_sb, align 4
  %s_type = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_type, align 32
  %cmp.not = icmp ne ptr %4, @cgroup_fs_type
  %tobool.not = icmp eq ptr %call, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false1:                                   ; preds = %entry
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i, align 8
  %7 = and i16 %6, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp3.not = icmp eq i16 %7, 1
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false1.cleanup_crit_edge

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %8 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !165
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 9
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %priv, align 8
  %call5 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end14

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b51 = load i1, ptr @cgroupstats_build.__warned, align 1
  br i1 %.b51, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cgroupstats_build.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 717, ptr noundef nonnull @.str.3) #18
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %do.end14.if.then19_crit_edge, label %lor.lhs.false17

do.end14.if.then19_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then19

lor.lhs.false17:                                  ; preds = %do.end14
  %flags.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %lor.lhs.false17.if.end20_crit_edge

lor.lhs.false17.if.end20_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then.i.i:                                      ; preds = %lor.lhs.false17
  %refcnt.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 2
  %16 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !165
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i.i.i.i, label %if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b4.i.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #18
  br label %rcu_read_lock.exit.i.i.i.i

rcu_read_lock.exit.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge, %if.then.i.i.rcu_read_lock.exit.i.i.i.i_crit_edge
  %20 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %refcnt.i.i, align 4
  %and.i.i.i.i.i52 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i52)
  %tobool.not.i1.i.i.i.i = icmp eq i32 %and.i.i.i.i.i52, 0
  br i1 %tobool.not.i1.i.i.i.i, label %do.body1.i.i.i.i, label %if.else.i.i.i.i, !prof !154

do.body1.i.i.i.i:                                 ; preds = %rcu_read_lock.exit.i.i.i.i
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !166
  %23 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i2.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i2.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %28, %21
  %29 = inttoptr i32 %add.i.i.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add15.i.i.i.i = add i32 %31, 1
  store i32 %add15.i.i.i.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !167
  %and.i.i.i.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then29.i.i.i.i, label %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge, !prof !153

do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge:      ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end31.i.i.i.i

if.then29.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end31.i.i.i.i

do.end31.i.i.i.i:                                 ; preds = %if.then29.i.i.i.i, %do.body1.i.i.i.i.do.end31.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #18, !srcloc !168
  br label %if.end39.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %rcu_read_lock.exit.i.i.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %34, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %34, i32 1, i32 3, i32 1) #18
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 0, i32 1, ptr elementtype(i32) %34) #18, !srcloc !170
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %if.else.i.i.i.i.atomic_long_add_unless.exit.i.i.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i.i

if.else.i.i.i.i.atomic_long_add_unless.exit.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %atomic_long_add_unless.exit.i.i.i.i

do.end11.i.i.i.i.i.i.i.i:                         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !171
  br label %atomic_long_add_unless.exit.i.i.i.i

atomic_long_add_unless.exit.i.i.i.i:              ; preds = %do.end11.i.i.i.i.i.i.i.i, %if.else.i.i.i.i.atomic_long_add_unless.exit.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br label %if.end39.i.i.i.i

if.end39.i.i.i.i:                                 ; preds = %atomic_long_add_unless.exit.i.i.i.i, %do.end31.i.i.i.i
  %ret.0.off0.i.i.i.i = phi i1 [ true, %do.end31.i.i.i.i ], [ %cmp.i.i.i.i.i.i.i, %atomic_long_add_unless.exit.i.i.i.i ]
  %call.i3.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i3.i.i.i.i, label %if.end39.i.i.i.i.cgroup_tryget.exit_crit_edge, label %land.lhs.true.i6.i.i.i.i

if.end39.i.i.i.i.cgroup_tryget.exit_crit_edge:    ; preds = %if.end39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cgroup_tryget.exit

land.lhs.true.i6.i.i.i.i:                         ; preds = %if.end39.i.i.i.i
  %call1.i4.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %call1.i4.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i.i, label %land.lhs.true.i6.i.i.i.i.cgroup_tryget.exit_crit_edge, label %land.lhs.true2.i8.i.i.i.i

land.lhs.true.i6.i.i.i.i.cgroup_tryget.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cgroup_tryget.exit

land.lhs.true2.i8.i.i.i.i:                        ; preds = %land.lhs.true.i6.i.i.i.i
  %.b4.i7.i.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i.i, label %land.lhs.true2.i8.i.i.i.i.cgroup_tryget.exit_crit_edge, label %if.then.i9.i.i.i.i

land.lhs.true2.i8.i.i.i.i.cgroup_tryget.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cgroup_tryget.exit

if.then.i9.i.i.i.i:                               ; preds = %land.lhs.true2.i8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #18
  br label %cgroup_tryget.exit

cgroup_tryget.exit:                               ; preds = %if.then.i9.i.i.i.i, %land.lhs.true2.i8.i.i.i.i.cgroup_tryget.exit_crit_edge, %land.lhs.true.i6.i.i.i.i.cgroup_tryget.exit_crit_edge, %if.end39.i.i.i.i.cgroup_tryget.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !172
  %36 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i.i10.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i10.i.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br i1 %ret.0.off0.i.i.i.i, label %cgroup_tryget.exit.if.end20_crit_edge, label %cgroup_tryget.exit.if.then19_crit_edge

cgroup_tryget.exit.if.then19_crit_edge:           ; preds = %cgroup_tryget.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then19

cgroup_tryget.exit.if.end20_crit_edge:            ; preds = %cgroup_tryget.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then19:                                        ; preds = %cgroup_tryget.exit.if.then19_crit_edge, %do.end14.if.then19_crit_edge
  %call.i53 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i53, label %if.then19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i56

if.then19.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i56:                                ; preds = %if.then19
  %call1.i54 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, label %if.then.i59

land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i59, %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, %if.then19.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !172
  %40 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i.i60 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i60 to ptr
  %preempt_count.i.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i61, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i61, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %cleanup

if.end20:                                         ; preds = %cgroup_tryget.exit.if.end20_crit_edge, %lor.lhs.false17.if.end20_crit_edge
  %call.i62 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i62, label %if.end20.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true.i65

if.end20.rcu_read_unlock.exit72_crit_edge:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit72

land.lhs.true.i65:                                ; preds = %if.end20
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit72

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit72

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #18
  br label %rcu_read_unlock.exit72

rcu_read_unlock.exit72:                           ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, %if.end20.rcu_read_unlock.exit72_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !172
  %44 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i.i69 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i71 = add i32 %47, -1
  store volatile i32 %sub.i.i.i71, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @css_task_iter_start(ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %it) #18
  %call2174 = call ptr @css_task_iter_next(ptr noundef nonnull %it) #18
  %tobool22.not75 = icmp eq ptr %call2174, null
  br i1 %tobool22.not75, label %rcu_read_unlock.exit72.while.end_crit_edge, label %do.end25.lr.ph

rcu_read_unlock.exit72.while.end_crit_edge:       ; preds = %rcu_read_unlock.exit72
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

do.end25.lr.ph:                                   ; preds = %rcu_read_unlock.exit72
  %nr_stopped = getelementptr inbounds %struct.cgroupstats, ptr %stats, i32 0, i32 2
  %nr_uninterruptible = getelementptr inbounds %struct.cgroupstats, ptr %stats, i32 0, i32 3
  %nr_running = getelementptr inbounds %struct.cgroupstats, ptr %stats, i32 0, i32 1
  %nr_io_wait = getelementptr inbounds %struct.cgroupstats, ptr %stats, i32 0, i32 4
  br label %do.end25

do.end25:                                         ; preds = %sw.epilog.do.end25_crit_edge, %do.end25.lr.ph
  %call2176 = phi ptr [ %call2174, %do.end25.lr.ph ], [ %call21, %sw.epilog.do.end25_crit_edge ]
  %48 = ptrtoint ptr %call2176 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %call2176, align 128
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %49, label %sw.default [
    i32 0, label %do.end25.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb27
    i32 2, label %sw.bb29
    i32 260, label %sw.bb31
  ]

do.end25.sw.epilog.sink.split_crit_edge:          ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

sw.bb27:                                          ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

sw.bb29:                                          ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

sw.bb31:                                          ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %do.end25
  %in_iowait = getelementptr inbounds %struct.task_struct, ptr %call2176, i32 0, i32 65
  %51 = ptrtoint ptr %in_iowait to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load = load i16, ptr %in_iowait, align 8
  %52 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool33.not = icmp eq i16 %52, 0
  br i1 %tobool33.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.sw.epilog.sink.split_crit_edge

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.default.sw.epilog.sink.split_crit_edge, %sw.bb31, %sw.bb29, %sw.bb27, %do.end25.sw.epilog.sink.split_crit_edge
  %nr_io_wait.sink77 = phi ptr [ %nr_stopped, %sw.bb31 ], [ %nr_uninterruptible, %sw.bb29 ], [ %stats, %sw.bb27 ], [ %nr_running, %do.end25.sw.epilog.sink.split_crit_edge ], [ %nr_io_wait, %sw.default.sw.epilog.sink.split_crit_edge ]
  %53 = ptrtoint ptr %nr_io_wait.sink77 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %nr_io_wait.sink77, align 8
  %inc35 = add i64 %54, 1
  store i64 %inc35, ptr %nr_io_wait.sink77, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default.sw.epilog_crit_edge
  %call21 = call ptr @css_task_iter_next(ptr noundef nonnull %it) #18
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.do.end25_crit_edge

sw.epilog.do.end25_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end25

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %rcu_read_unlock.exit72.while.end_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it) #18
  call fastcc void @cgroup_put(ptr noundef nonnull %13)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %rcu_read_unlock.exit, %lor.lhs.false1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -2, %rcu_read_unlock.exit ], [ -22, %lor.lhs.false1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_node_from_dentry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cgroup_put(ptr noundef %cgrp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %flags.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 7
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.css_put.exit_crit_edge

entry.css_put.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %css_put.exit

if.then.i:                                        ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !165
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i.i.i, label %if.then.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.rcu_read_lock.exit.i.i.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #18
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.then.i.rcu_read_lock.exit.i.i.i_crit_edge
  %6 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt.i, align 4
  %and.i.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %do.body1.i.i.i, label %if.else.i.i.i, !prof !154

do.body1.i.i.i:                                   ; preds = %rcu_read_lock.exit.i.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !166
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i2.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i2.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add15.i.i.i = add i32 %17, -1
  store i32 %add15.i.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !167
  %and.i.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then29.i.i.i, label %do.body1.i.i.i.do.end31.i.i.i_crit_edge, !prof !153

do.body1.i.i.i.do.end31.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %do.body1.i.i.i.do.end31.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #18, !srcloc !168
  br label %if.end48.i.i.i

if.else.i.i.i:                                    ; preds = %rcu_read_lock.exit.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #18
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #18, !srcloc !174
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then45.i.i.i, label %if.else.i.i.i.if.end48.i.i.i_crit_edge, !prof !153

if.else.i.i.i.if.end48.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48.i.i.i

if.then45.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %release.i.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %release.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release.i.i.i, align 4
  tail call void %25(ptr noundef %refcnt.i) #18
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %if.then45.i.i.i, %if.else.i.i.i.if.end48.i.i.i_crit_edge, %do.end31.i.i.i
  %call.i3.i.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i3.i.i.i, label %if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge, label %land.lhs.true.i6.i.i.i

if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge:   ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %percpu_ref_put.exit.i

land.lhs.true.i6.i.i.i:                           ; preds = %if.end48.i.i.i
  %call1.i4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %call1.i4.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i, label %land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge, label %land.lhs.true2.i8.i.i.i

land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %percpu_ref_put.exit.i

land.lhs.true2.i8.i.i.i:                          ; preds = %land.lhs.true.i6.i.i.i
  %.b4.i7.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i, label %land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge, label %if.then.i9.i.i.i

land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %percpu_ref_put.exit.i

if.then.i9.i.i.i:                                 ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #18
  br label %percpu_ref_put.exit.i

percpu_ref_put.exit.i:                            ; preds = %if.then.i9.i.i.i, %land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge, %land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge, %if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !172
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i.i10.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i10.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  br label %css_put.exit

css_put.exit:                                     ; preds = %percpu_ref_put.exit.i, %entry.css_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup1_check_for_release(ptr noundef %cgrp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nr_populated_csets.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 7
  %2 = ptrtoint ptr %nr_populated_csets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_populated_csets.i, align 8
  %nr_populated_domain_children.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 8
  %4 = ptrtoint ptr %nr_populated_domain_children.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_populated_domain_children.i, align 4
  %add.i = add i32 %5, %3
  %nr_populated_threaded_children.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 9
  %6 = ptrtoint ptr %nr_populated_threaded_children.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_populated_threaded_children.i, align 8
  %add1.i = sub i32 0, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add1.i)
  %tobool.i11.not = icmp eq i32 %add.i, %add1.i
  br i1 %tobool.i11.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call zeroext i1 @css_has_online_children(ptr noundef %cgrp) #18
  br i1 %call3, label %land.lhs.true2.if.end_crit_edge, label %land.lhs.true4

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %flags.i12 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 7
  %8 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i12, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true4.if.end_crit_edge, label %if.then

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  %release_agent_work = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %release_agent_work) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @css_has_online_children(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup1_release_agent(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  %argv = alloca [3 x ptr], align 4
  %envp = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -800
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %argv) #18
  %0 = ptrtoint ptr %argv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %argv, align 4, !annotation !151
  %1 = getelementptr inbounds [3 x ptr], ptr %argv, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !151
  %3 = getelementptr inbounds [3 x ptr], ptr %argv, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !151
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp) #18
  %5 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %envp, align 4, !annotation !151
  %6 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !151
  %8 = getelementptr inbounds [3 x ptr], ptr %envp, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !151
  %root = getelementptr i8, ptr %work, i32 -412
  %10 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %root, align 4
  %release_agent_path = getelementptr inbounds %struct.cgroup_root, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %release_agent_path to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %release_agent_path, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 4096) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 4096) #22
  %tobool2.not = icmp eq ptr %call7.i, null
  %tobool3.not = icmp eq ptr %call7.i44, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.end.out_free_crit_edge, label %if.end5

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free

if.end5:                                          ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_agent_path_lock) #18
  %16 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root, align 4
  %release_agent_path7 = getelementptr inbounds %struct.cgroup_root, ptr %17, i32 0, i32 8
  %call8 = tail call i32 @strlcpy(ptr noundef nonnull %call7.i44, ptr noundef %release_agent_path7, i32 noundef 4096) #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_agent_path_lock) #18
  %18 = ptrtoint ptr %call7.i44 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call7.i44, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool10.not = icmp eq i8 %19, 0
  br i1 %tobool10.not, label %if.end5.out_free_crit_edge, label %if.end12

if.end5.out_free_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free

if.end12:                                         ; preds = %if.end5
  %call13 = tail call i32 @cgroup_path_ns(ptr noundef %add.ptr, ptr noundef nonnull %call7.i, i32 noundef 4096, ptr noundef nonnull @init_cgroup_ns) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call13)
  %20 = icmp ugt i32 %call13, 4095
  br i1 %20, label %if.end12.out_free_crit_edge, label %if.end17

if.end12.out_free_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %argv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i44, ptr %argv, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i, ptr %1, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %3, align 4
  %24 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.4, ptr %envp, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.5, ptr %6, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %8, align 4
  %call27 = call i32 @call_usermodehelper(ptr noundef nonnull %call7.i44, ptr noundef nonnull %argv, ptr noundef nonnull %envp, i32 noundef 1) #18
  br label %out_free

out_free:                                         ; preds = %if.end17, %if.end12.out_free_crit_edge, %if.end5.out_free_crit_edge, %if.end.out_free_crit_edge
  call void @kfree(ptr noundef %call7.i44) #18
  call void @kfree(ptr noundef %call7.i) #18
  br label %cleanup

cleanup:                                          ; preds = %out_free, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %argv) #18
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_path_ns(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroup1_parse_param(ptr noundef %fc, ptr noundef %param) local_unnamed_addr #1 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #18
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @cgroup1_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -519, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -519
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %call2 = call i32 @vfs_parse_fs_param_source(ptr noundef %fc, ptr noundef %param) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -519, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, -519
  br i1 %cmp3.not, label %for.cond.preheader, label %if.then.cleanup119_crit_edge

if.then.cleanup119_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup119

for.cond.preheader:                               ; preds = %if.then
  %3 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %param, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cgroup_subsys to i32))
  %5 = load ptr, ptr @cgroup_subsys, align 4
  %legacy_name = getelementptr inbounds %struct.cgroup_subsys, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %legacy_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %legacy_name, align 4
  %call6 = call i32 @strcmp(ptr noundef %4, ptr noundef %7) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond.preheader.if.end9_crit_edge, label %for.inc

for.cond.preheader.if.end9_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.end9:                                          ; preds = %for.inc.12.if.end9_crit_edge, %for.inc.11.if.end9_crit_edge, %for.inc.10.if.end9_crit_edge, %for.inc.9.if.end9_crit_edge, %for.inc.8.if.end9_crit_edge, %for.inc.7.if.end9_crit_edge, %for.inc.6.if.end9_crit_edge, %for.inc.5.if.end9_crit_edge, %for.inc.4.if.end9_crit_edge, %for.inc.3.if.end9_crit_edge, %for.inc.2.if.end9_crit_edge, %for.inc.1.if.end9_crit_edge, %for.inc.if.end9_crit_edge, %for.cond.preheader.if.end9_crit_edge
  %i.0184.lcssa = phi i32 [ 0, %for.cond.preheader.if.end9_crit_edge ], [ 1, %for.inc.if.end9_crit_edge ], [ 2, %for.inc.1.if.end9_crit_edge ], [ 3, %for.inc.2.if.end9_crit_edge ], [ 4, %for.inc.3.if.end9_crit_edge ], [ 5, %for.inc.4.if.end9_crit_edge ], [ 6, %for.inc.5.if.end9_crit_edge ], [ 7, %for.inc.6.if.end9_crit_edge ], [ 8, %for.inc.7.if.end9_crit_edge ], [ 9, %for.inc.8.if.end9_crit_edge ], [ 10, %for.inc.9.if.end9_crit_edge ], [ 11, %for.inc.10.if.end9_crit_edge ], [ 12, %for.inc.11.if.end9_crit_edge ], [ 13, %for.inc.12.if.end9_crit_edge ]
  %call10 = call zeroext i1 @cgroup_ssid_enabled(i32 noundef %i.0184.lcssa) #18
  br i1 %call10, label %lor.lhs.false, label %if.end9.if.then12_crit_edge

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end9
  %8 = load i16, ptr @cgroup_no_v1_mask, align 2
  %conv.i = zext i16 %8 to i32
  %shl.i = shl nuw nsw i32 1, %i.0184.lcssa
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end16, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end9.if.then12_crit_edge
  %log13 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %log13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %log13, align 4
  %11 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %log.i, align 4
  %13 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %param, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %10, ptr noundef %12, i8 noundef zeroext 101, ptr noundef nonnull @.str.14, ptr noundef %14) #18
  br label %cleanup119

if.end16:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  %subsys_mask = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %subsys_mask to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsys_mask, align 4
  %17 = trunc i32 %shl.i to i16
  %conv17 = or i16 %16, %17
  store i16 %conv17, ptr %subsys_mask, align 4
  br label %cleanup119

for.inc:                                          ; preds = %for.cond.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 1), align 4
  %legacy_name.1 = getelementptr inbounds %struct.cgroup_subsys, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %legacy_name.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %legacy_name.1, align 4
  %call6.1 = call i32 @strcmp(ptr noundef %4, ptr noundef %20) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool7.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool7.not.1, label %for.inc.if.end9_crit_edge, label %for.inc.1

for.inc.if.end9_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.1:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 2), align 4
  %legacy_name.2 = getelementptr inbounds %struct.cgroup_subsys, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %legacy_name.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %legacy_name.2, align 4
  %call6.2 = call i32 @strcmp(ptr noundef %4, ptr noundef %23) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2)
  %tobool7.not.2 = icmp eq i32 %call6.2, 0
  br i1 %tobool7.not.2, label %for.inc.1.if.end9_crit_edge, label %for.inc.2

for.inc.1.if.end9_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.2:                                        ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 3) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 3), align 4
  %legacy_name.3 = getelementptr inbounds %struct.cgroup_subsys, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %legacy_name.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %legacy_name.3, align 4
  %call6.3 = call i32 @strcmp(ptr noundef %4, ptr noundef %26) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3)
  %tobool7.not.3 = icmp eq i32 %call6.3, 0
  br i1 %tobool7.not.3, label %for.inc.2.if.end9_crit_edge, label %for.inc.3

for.inc.2.if.end9_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.3:                                        ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 4) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 4), align 4
  %legacy_name.4 = getelementptr inbounds %struct.cgroup_subsys, ptr %27, i32 0, i32 21
  %28 = ptrtoint ptr %legacy_name.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %legacy_name.4, align 4
  %call6.4 = call i32 @strcmp(ptr noundef %4, ptr noundef %29) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.4)
  %tobool7.not.4 = icmp eq i32 %call6.4, 0
  br i1 %tobool7.not.4, label %for.inc.3.if.end9_crit_edge, label %for.inc.4

for.inc.3.if.end9_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.4:                                        ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 5) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 5), align 4
  %legacy_name.5 = getelementptr inbounds %struct.cgroup_subsys, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %legacy_name.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %legacy_name.5, align 4
  %call6.5 = call i32 @strcmp(ptr noundef %4, ptr noundef %32) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.5)
  %tobool7.not.5 = icmp eq i32 %call6.5, 0
  br i1 %tobool7.not.5, label %for.inc.4.if.end9_crit_edge, label %for.inc.5

for.inc.4.if.end9_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.5:                                        ; preds = %for.inc.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 6) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 6), align 4
  %legacy_name.6 = getelementptr inbounds %struct.cgroup_subsys, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %legacy_name.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %legacy_name.6, align 4
  %call6.6 = call i32 @strcmp(ptr noundef %4, ptr noundef %35) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.6)
  %tobool7.not.6 = icmp eq i32 %call6.6, 0
  br i1 %tobool7.not.6, label %for.inc.5.if.end9_crit_edge, label %for.inc.6

for.inc.5.if.end9_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.6:                                        ; preds = %for.inc.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 7), align 4
  %legacy_name.7 = getelementptr inbounds %struct.cgroup_subsys, ptr %36, i32 0, i32 21
  %37 = ptrtoint ptr %legacy_name.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %legacy_name.7, align 4
  %call6.7 = call i32 @strcmp(ptr noundef %4, ptr noundef %38) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.7)
  %tobool7.not.7 = icmp eq i32 %call6.7, 0
  br i1 %tobool7.not.7, label %for.inc.6.if.end9_crit_edge, label %for.inc.7

for.inc.6.if.end9_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.7:                                        ; preds = %for.inc.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 8) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 8), align 4
  %legacy_name.8 = getelementptr inbounds %struct.cgroup_subsys, ptr %39, i32 0, i32 21
  %40 = ptrtoint ptr %legacy_name.8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %legacy_name.8, align 4
  %call6.8 = call i32 @strcmp(ptr noundef %4, ptr noundef %41) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.8)
  %tobool7.not.8 = icmp eq i32 %call6.8, 0
  br i1 %tobool7.not.8, label %for.inc.7.if.end9_crit_edge, label %for.inc.8

for.inc.7.if.end9_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.8:                                        ; preds = %for.inc.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 9) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 9), align 4
  %legacy_name.9 = getelementptr inbounds %struct.cgroup_subsys, ptr %42, i32 0, i32 21
  %43 = ptrtoint ptr %legacy_name.9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %legacy_name.9, align 4
  %call6.9 = call i32 @strcmp(ptr noundef %4, ptr noundef %44) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.9)
  %tobool7.not.9 = icmp eq i32 %call6.9, 0
  br i1 %tobool7.not.9, label %for.inc.8.if.end9_crit_edge, label %for.inc.9

for.inc.8.if.end9_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.9:                                        ; preds = %for.inc.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 10) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 10), align 4
  %legacy_name.10 = getelementptr inbounds %struct.cgroup_subsys, ptr %45, i32 0, i32 21
  %46 = ptrtoint ptr %legacy_name.10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %legacy_name.10, align 4
  %call6.10 = call i32 @strcmp(ptr noundef %4, ptr noundef %47) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.10)
  %tobool7.not.10 = icmp eq i32 %call6.10, 0
  br i1 %tobool7.not.10, label %for.inc.9.if.end9_crit_edge, label %for.inc.10

for.inc.9.if.end9_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.10:                                       ; preds = %for.inc.9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 11) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 11), align 4
  %legacy_name.11 = getelementptr inbounds %struct.cgroup_subsys, ptr %48, i32 0, i32 21
  %49 = ptrtoint ptr %legacy_name.11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %legacy_name.11, align 4
  %call6.11 = call i32 @strcmp(ptr noundef %4, ptr noundef %50) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.11)
  %tobool7.not.11 = icmp eq i32 %call6.11, 0
  br i1 %tobool7.not.11, label %for.inc.10.if.end9_crit_edge, label %for.inc.11

for.inc.10.if.end9_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.11:                                       ; preds = %for.inc.10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 12) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 12), align 4
  %legacy_name.12 = getelementptr inbounds %struct.cgroup_subsys, ptr %51, i32 0, i32 21
  %52 = ptrtoint ptr %legacy_name.12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %legacy_name.12, align 4
  %call6.12 = call i32 @strcmp(ptr noundef %4, ptr noundef %53) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.12)
  %tobool7.not.12 = icmp eq i32 %call6.12, 0
  br i1 %tobool7.not.12, label %for.inc.11.if.end9_crit_edge, label %for.inc.12

for.inc.11.if.end9_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.12:                                       ; preds = %for.inc.11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 13) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cgroup_subsys, i32 0, i32 13), align 4
  %legacy_name.13 = getelementptr inbounds %struct.cgroup_subsys, ptr %54, i32 0, i32 21
  %55 = ptrtoint ptr %legacy_name.13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %legacy_name.13, align 4
  %call6.13 = call i32 @strcmp(ptr noundef %4, ptr noundef %56) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.13)
  %tobool7.not.13 = icmp eq i32 %call6.13, 0
  br i1 %tobool7.not.13, label %for.inc.12.if.end9_crit_edge, label %for.inc.13

for.inc.12.if.end9_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #20
  %log19 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %57 = ptrtoint ptr %log19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %log19, align 4
  %59 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %log.i, align 4
  %61 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %param, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %58, ptr noundef %60, i8 noundef zeroext 101, ptr noundef nonnull @.str.15, ptr noundef %62) #18
  br label %cleanup119

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp24 = icmp slt i32 %call.i, 0
  br i1 %cmp24, label %if.end23.cleanup119_crit_edge, label %if.end27

if.end23.cleanup119_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup119

if.end27:                                         ; preds = %if.end23
  %63 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call.i, label %if.end27.cleanup119_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %sw.bb28
    i32 5, label %sw.bb29
    i32 1, label %sw.bb31
    i32 2, label %sw.bb32
    i32 7, label %sw.bb35
    i32 6, label %sw.bb38
    i32 3, label %sw.bb57
  ]

if.end27.cleanup119_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup119

sw.bb:                                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  %none = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 5
  %64 = ptrtoint ptr %none to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %none, align 1
  br label %cleanup119

sw.bb28:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  %all_ss = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 6
  %65 = ptrtoint ptr %all_ss to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %all_ss, align 2
  br label %cleanup119

sw.bb29:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  %flags = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %or30 = or i32 %67, 2
  store i32 %or30, ptr %flags, align 4
  br label %cleanup119

sw.bb31:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  %cpuset_clone_children = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 4
  %68 = ptrtoint ptr %cpuset_clone_children to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %cpuset_clone_children, align 4
  br label %cleanup119

sw.bb32:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  %flags33 = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags33, align 4
  %or34 = or i32 %70, 16
  store i32 %or34, ptr %flags33, align 4
  br label %cleanup119

sw.bb35:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  %flags36 = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 3
  %71 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags36, align 4
  %or37 = or i32 %72, 4
  store i32 %or37, ptr %flags36, align 4
  br label %cleanup119

sw.bb38:                                          ; preds = %if.end27
  %release_agent = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 9
  %73 = ptrtoint ptr %release_agent to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %release_agent, align 4
  %tobool39.not = icmp eq ptr %74, null
  br i1 %tobool39.not, label %if.end45, label %if.then40

if.then40:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #20
  %log42 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %75 = ptrtoint ptr %log42 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %log42, align 4
  %77 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %76, ptr noundef %78, i8 noundef zeroext 101, ptr noundef nonnull @.str.16) #18
  br label %cleanup119

if.end45:                                         ; preds = %sw.bb38
  %user_ns = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 6
  %79 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %user_ns, align 4
  %cmp46.not = icmp eq ptr %80, @init_user_ns
  br i1 %cmp46.not, label %lor.lhs.false48, label %if.end45.if.then50_crit_edge

if.end45.if.then50_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then50

lor.lhs.false48:                                  ; preds = %if.end45
  %call49 = call zeroext i1 @capable(i32 noundef 21) #18
  br i1 %call49, label %if.end55, label %lor.lhs.false48.if.then50_crit_edge

lor.lhs.false48.if.then50_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false48.if.then50_crit_edge, %if.end45.if.then50_crit_edge
  %log52 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %81 = ptrtoint ptr %log52 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %log52, align 4
  %83 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %82, ptr noundef %84, i8 noundef zeroext 101, ptr noundef nonnull @.str.17) #18
  br label %cleanup119

if.end55:                                         ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #20
  %85 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %release_agent to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %release_agent, align 4
  store ptr null, ptr %85, align 4
  br label %cleanup119

sw.bb57:                                          ; preds = %if.end27
  %.b180 = load i1, ptr @cgroup_no_v1_named, align 1
  br i1 %.b180, label %sw.bb57.cleanup119_crit_edge, label %if.end60

sw.bb57.cleanup119_crit_edge:                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup119

if.end60:                                         ; preds = %sw.bb57
  %size = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 3
  %89 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool61.not = icmp eq i32 %90, 0
  br i1 %tobool61.not, label %if.then62, label %if.end67

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  %log64 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %91 = ptrtoint ptr %log64 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %log64, align 4
  %93 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %92, ptr noundef %94, i8 noundef zeroext 101, ptr noundef nonnull @.str.18) #18
  br label %cleanup119

if.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %90)
  %cmp69 = icmp ugt i32 %90, 63
  br i1 %cmp69, label %if.then71, label %for.body81.preheader

for.body81.preheader:                             ; preds = %if.end67
  %95 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  br label %for.body81

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #20
  %log73 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %98 = ptrtoint ptr %log73 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %log73, align 4
  %100 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %99, ptr noundef %101, i8 noundef zeroext 101, ptr noundef nonnull @.str.19) #18
  br label %cleanup119

for.body81:                                       ; preds = %for.inc108.for.body81_crit_edge, %for.body81.preheader
  %i.1183 = phi i32 [ %inc109, %for.inc108.for.body81_crit_edge ], [ 0, %for.body81.preheader ]
  %arrayidx82 = getelementptr i8, ptr %97, i32 %i.1183
  %102 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %103 to i32
  %arrayidx84 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv83
  %104 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx84, align 1
  %106 = and i8 %105, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp86.not = icmp eq i8 %106, 0
  br i1 %cmp86.not, label %if.end89, label %for.body81.for.inc108_crit_edge

for.body81.for.inc108_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc108

if.end89:                                         ; preds = %for.body81
  %107 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %103, label %if.end102 [
    i8 46, label %if.end89.for.inc108_crit_edge
    i8 45, label %if.end89.for.inc108_crit_edge187
    i8 95, label %if.end89.for.inc108_crit_edge188
  ]

if.end89.for.inc108_crit_edge188:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc108

if.end89.for.inc108_crit_edge187:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc108

if.end89.for.inc108_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc108

if.end102:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #20
  %log104 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %108 = ptrtoint ptr %log104 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %log104, align 4
  %110 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %109, ptr noundef %111, i8 noundef zeroext 101, ptr noundef nonnull @.str.20) #18
  br label %cleanup119

for.inc108:                                       ; preds = %if.end89.for.inc108_crit_edge, %if.end89.for.inc108_crit_edge187, %if.end89.for.inc108_crit_edge188, %for.body81.for.inc108_crit_edge
  %inc109 = add nuw i32 %i.1183, 1
  %exitcond.not = icmp eq i32 %inc109, %90
  br i1 %exitcond.not, label %for.end110, label %for.inc108.for.body81_crit_edge

for.inc108.for.body81_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body81

for.end110:                                       ; preds = %for.inc108
  %name = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 8
  %112 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name, align 4
  %tobool111.not = icmp eq ptr %113, null
  br i1 %tobool111.not, label %if.end117, label %if.then112

if.then112:                                       ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #20
  %log114 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %114 = ptrtoint ptr %log114 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %log114, align 4
  %116 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %115, ptr noundef %117, i8 noundef zeroext 101, ptr noundef nonnull @.str.21) #18
  br label %cleanup119

if.end117:                                        ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #20
  %118 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %95, align 4
  %120 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %name, align 4
  store ptr null, ptr %95, align 4
  br label %cleanup119

cleanup119:                                       ; preds = %if.end117, %if.then112, %if.end102, %if.then71, %if.then62, %sw.bb57.cleanup119_crit_edge, %if.end55, %if.then50, %if.then40, %sw.bb35, %sw.bb32, %sw.bb31, %sw.bb29, %sw.bb28, %sw.bb, %if.end27.cleanup119_crit_edge, %if.end23.cleanup119_crit_edge, %for.inc.13, %if.end16, %if.then12, %if.then.cleanup119_crit_edge
  %retval.3 = phi i32 [ -22, %if.then71 ], [ -22, %if.then112 ], [ -22, %if.then62 ], [ -22, %if.then40 ], [ -22, %if.then50 ], [ -22, %if.then12 ], [ 0, %if.end16 ], [ -22, %for.inc.13 ], [ %call2, %if.then.cleanup119_crit_edge ], [ %call.i, %if.end23.cleanup119_crit_edge ], [ -2, %sw.bb57.cleanup119_crit_edge ], [ -22, %if.end102 ], [ 0, %if.end27.cleanup119_crit_edge ], [ 0, %if.end117 ], [ 0, %if.end55 ], [ 0, %sw.bb35 ], [ 0, %sw.bb32 ], [ 0, %sw.bb31 ], [ 0, %sw.bb29 ], [ 0, %sw.bb28 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #18
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_param_source(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroup1_reconfigure(ptr nocapture noundef readonly %fc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %call1 = tail call ptr @kernfs_root_from_sb(ptr noundef %5) #18
  %call3 = tail call ptr @cgroup_root_from_kf(ptr noundef %call1) #18
  tail call void @cgroup_lock_and_drain_offline(ptr noundef getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3)) #18
  %call4 = tail call fastcc i32 @check_cgroupfs_options(ptr noundef %fc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

if.end:                                           ; preds = %entry
  %subsys_mask = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %subsys_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsys_mask, align 4
  %conv = zext i16 %7 to i32
  %subsys_mask5 = getelementptr inbounds %struct.cgroup_root, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %subsys_mask5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %subsys_mask5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp.not = icmp eq i32 %9, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %release_agent = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %release_agent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %release_agent, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %12 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %tgid.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 69
  %16 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tgid.i, align 4
  %comm = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 101
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %17, ptr noundef %comm) #24
  br label %if.end14

if.end14:                                         ; preds = %do.end, %lor.lhs.false.if.end14_crit_edge
  %18 = ptrtoint ptr %subsys_mask to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsys_mask, align 4
  %conv16 = zext i16 %19 to i32
  %20 = ptrtoint ptr %subsys_mask5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %subsys_mask5, align 4
  %22 = trunc i32 %21 to i16
  %23 = xor i16 %22, -1
  %conv18 = and i16 %19, %23
  %neg22 = xor i32 %conv16, -1
  %and23 = and i32 %21, %neg22
  %conv24 = trunc i32 %and23 to i16
  %flags = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %flags25 = getelementptr inbounds %struct.cgroup_root, ptr %call3, i32 0, i32 7
  %26 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %tobool26.not = icmp eq i32 %25, %27
  br i1 %tobool26.not, label %lor.lhs.false27, label %if.end14.if.then34_crit_edge

if.end14.if.then34_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then34

lor.lhs.false27:                                  ; preds = %if.end14
  %name = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 4
  %tobool28.not = icmp eq ptr %29, null
  br i1 %tobool28.not, label %lor.lhs.false27.if.end43_crit_edge, label %land.lhs.true

lor.lhs.false27.if.end43_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

land.lhs.true:                                    ; preds = %lor.lhs.false27
  %name30 = getelementptr inbounds %struct.cgroup_root, ptr %call3, i32 0, i32 9
  %call32 = tail call i32 @strcmp(ptr noundef nonnull %29, ptr noundef %name30) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end43_crit_edge, label %land.lhs.true.if.then34_crit_edge

land.lhs.true.if.then34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then34

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then34:                                        ; preds = %land.lhs.true.if.then34_crit_edge, %if.end14.if.then34_crit_edge
  %log = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log35 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %log35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %log35, align 4
  %32 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %log, align 4
  %name38 = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %name38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name38, align 4
  %tobool39.not = icmp eq ptr %35, null
  %..str.25 = select i1 %tobool39.not, ptr @.str.25, ptr %35
  %name41 = getelementptr inbounds %struct.cgroup_root, ptr %call3, i32 0, i32 9
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %31, ptr noundef %33, i8 noundef zeroext 101, ptr noundef nonnull @.str.24, i32 noundef %25, ptr noundef %..str.25, i32 noundef %27, ptr noundef %name41) #18
  br label %out_unlock

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %lor.lhs.false27.if.end43_crit_edge
  %children = getelementptr inbounds %struct.cgroup_root, ptr %call3, i32 0, i32 3, i32 0, i32 4
  %36 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %children, align 4
  %cmp.i.not = icmp eq ptr %37, %children
  br i1 %cmp.i.not, label %if.end47, label %if.end43.out_unlock_crit_edge

if.end43.out_unlock_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

if.end47:                                         ; preds = %if.end43
  %call48 = tail call i32 @rebind_subsystems(ptr noundef %call3, i16 noundef zeroext %conv18) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.out_unlock_crit_edge

if.end47.out_unlock_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

if.end51:                                         ; preds = %if.end47
  %call52 = tail call i32 @rebind_subsystems(ptr noundef nonnull @cgrp_dfl_root, i16 noundef zeroext %conv24) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end51.if.end71_crit_edge, label %do.end65, !prof !154

if.end51.if.end71_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end71

do.end65:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1099, i32 noundef 9, ptr noundef null) #18
  br label %if.end71

if.end71:                                         ; preds = %do.end65, %if.end51.if.end71_crit_edge
  %release_agent79 = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %release_agent79 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %release_agent79, align 4
  %tobool80.not = icmp eq ptr %39, null
  br i1 %tobool80.not, label %if.end71.if.end85_crit_edge, label %if.then81

if.end71.if.end85_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end85

if.then81:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_agent_path_lock) #18
  %release_agent_path = getelementptr inbounds %struct.cgroup_root, ptr %call3, i32 0, i32 8
  %40 = ptrtoint ptr %release_agent79 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %release_agent79, align 4
  %call84 = tail call ptr @strcpy(ptr noundef %release_agent_path, ptr noundef %41) #23
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_agent_path_lock) #18
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end71.if.end85_crit_edge
  tail call fastcc void @trace_cgroup_remount(ptr noundef %call3)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end85, %if.end47.out_unlock_crit_edge, %if.end43.out_unlock_crit_edge, %if.then34, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call4, %entry.out_unlock_crit_edge ], [ -22, %if.then34 ], [ %call48, %if.end47.out_unlock_crit_edge ], [ 0, %if.end85 ], [ -16, %if.end43.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #18
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_root_from_sb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_root_from_kf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_lock_and_drain_offline(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_cgroupfs_options(ptr nocapture noundef readonly %fc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry
  %i.0102 = phi i32 [ 0, %entry ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %enabled.0101 = phi i16 [ 0, %entry ], [ %enabled.1, %for.inc.land.rhs_crit_edge ]
  %call1 = tail call zeroext i1 @cgroup_ssid_enabled(i32 noundef %i.0102) #18
  br i1 %call1, label %land.lhs.true, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true:                                    ; preds = %land.rhs
  %2 = load i16, ptr @cgroup_no_v1_mask, align 2
  %conv.i = zext i16 %2 to i32
  %shl.i = shl nuw nsw i32 1, %i.0102
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %3 = trunc i32 %shl.i to i16
  %conv3 = or i16 %enabled.0101, %3
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %enabled.1 = phi i16 [ %enabled.0101, %land.lhs.true.for.inc_crit_edge ], [ %conv3, %if.then ], [ %enabled.0101, %land.rhs.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

for.end:                                          ; preds = %for.inc
  %subsys_mask = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %subsys_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsys_mask, align 4
  %and96 = and i16 %5, %enabled.1
  store i16 %and96, ptr %subsys_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and96)
  %tobool8.not = icmp eq i16 %and96, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %for.end.if.end14_crit_edge

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

land.lhs.true9:                                   ; preds = %for.end
  %none = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %none to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %none, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %land.lhs.true9.if.end14_crit_edge

land.lhs.true9.if.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

land.lhs.true11:                                  ; preds = %land.lhs.true9
  %name = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true11.if.end14_crit_edge

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #20
  %all_ss = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %all_ss to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %all_ss, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true11.if.end14_crit_edge, %land.lhs.true9.if.end14_crit_edge, %for.end.if.end14_crit_edge
  %all_ss15 = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %all_ss15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %all_ss15, align 2, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %subsys_mask to i32
  call void @__asan_load2_noabort(i32 %13)
  %.pr = load i16, ptr %subsys_mask, align 4
  br i1 %tobool16.not, label %if.end14.if.end25_crit_edge, label %if.then17

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool19.not = icmp eq i16 %.pr, 0
  br i1 %tobool19.not, label %if.end23, label %if.then17.cleanup.sink.split_crit_edge

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %subsys_mask to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %enabled.1, ptr %subsys_mask, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end14.if.end25_crit_edge
  %15 = phi i16 [ %enabled.1, %if.end23 ], [ %.pr, %if.end14.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool27.not = icmp eq i16 %15, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %if.end36

land.lhs.true28:                                  ; preds = %if.end25
  %name29 = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name29, align 4
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool30.not, label %land.lhs.true28.cleanup.sink.split_crit_edge, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true28.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end36:                                         ; preds = %if.end25
  %flags = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and37 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %tobool44.not = icmp eq i16 %15, 1
  %or.cond = select i1 %tobool38.not, i1 true, i1 %tobool44.not
  br i1 %or.cond, label %land.lhs.true54, label %if.end36.cleanup.sink.split_crit_edge

if.end36.cleanup.sink.split_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

land.lhs.true54:                                  ; preds = %if.end36
  %none55 = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %none55 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %none55, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool56.not = icmp eq i8 %21, 0
  br i1 %tobool56.not, label %land.lhs.true54.cleanup_crit_edge, label %land.lhs.true54.cleanup.sink.split_crit_edge

land.lhs.true54.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

land.lhs.true54.cleanup_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true54.cleanup.sink.split_crit_edge, %if.end36.cleanup.sink.split_crit_edge, %land.lhs.true28.cleanup.sink.split_crit_edge, %if.then17.cleanup.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.38, %if.then17.cleanup.sink.split_crit_edge ], [ @.str.39, %land.lhs.true28.cleanup.sink.split_crit_edge ], [ @.str.40, %if.end36.cleanup.sink.split_crit_edge ], [ @.str.41, %land.lhs.true54.cleanup.sink.split_crit_edge ]
  %log59 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log60 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %log60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %log60, align 4
  %24 = ptrtoint ptr %log59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %log59, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %23, ptr noundef %25, i8 noundef zeroext 101, ptr noundef nonnull %.str.41.sink) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true54.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true54.cleanup_crit_edge ], [ 0, %land.lhs.true28.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rebind_subsystems(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cgroup_remount(ptr noundef %root) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_remount, i32 0, i32 1), ptr blockaddress(@trace_cgroup_remount, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !155

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !177
  %call42 = tail call i32 @__traceiter_cgroup_remount(ptr noundef null, ptr noundef %root) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !178
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !154

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_remount, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_remount, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cgroup_remount.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_cgroup_remount.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 52, ptr noundef nonnull @.str.3) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !162
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup1_show_options(ptr noundef %seq, ptr noundef %kf_root) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cgroup_root_from_kf(ptr noundef %kf_root) #18
  %subsys_mask = getelementptr inbounds %struct.cgroup_root, ptr %call, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry
  %ssid.058 = phi i32 [ 0, %entry ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %subsys_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subsys_mask, align 4
  %shl = shl nuw nsw i32 1, %ssid.058
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.rhs.for.inc_crit_edge, label %if.then

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [0 x ptr], ptr @cgroup_subsys, i32 0, i32 %ssid.058
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %legacy_name = getelementptr inbounds %struct.cgroup_subsys, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %legacy_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %legacy_name, align 4
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 44) #18
  %call.i.i.i = tail call i32 @strlen(ptr noundef %5) #25
  tail call void @seq_escape_mem(ptr noundef %seq, ptr noundef %5, i32 noundef %call.i.i.i, i32 noundef 8, ptr noundef nonnull @.str.46) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.rhs.for.inc_crit_edge
  %inc = add nuw nsw i32 %ssid.058, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

for.end:                                          ; preds = %for.inc
  %flags = getelementptr inbounds %struct.cgroup_root, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and2 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %for.end.if.end5_crit_edge, label %if.then4

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.42) #18
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.end.if.end5_crit_edge
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and7 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.43) #18
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.44) #18
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10.if.end15_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_agent_path_lock) #18
  %release_agent_path = getelementptr inbounds %struct.cgroup_root, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %release_agent_path to i32
  call void @__asan_load1_noabort(i32 %12)
  %char0 = load i8, ptr %release_agent_path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool17.not = icmp eq i8 %char0, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 44) #18
  tail call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull @.str.12, i32 noundef 13, i32 noundef 8, ptr noundef nonnull @.str.46) #18
  %tobool.not.i = icmp eq ptr %release_agent_path, null
  br i1 %tobool.not.i, label %if.then18.if.end21_crit_edge, label %if.then.i

if.then18.if.end21_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 61) #18
  %call.i.i5.i = tail call i32 @strlen(ptr noundef nonnull %release_agent_path) #25
  tail call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull %release_agent_path, i32 noundef %call.i.i5.i, i32 noundef 8, ptr noundef nonnull @.str.47) #18
  br label %if.end21

if.end21:                                         ; preds = %if.then.i, %if.then18.if.end21_crit_edge, %if.end15.if.end21_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_agent_path_lock) #18
  %flags22 = getelementptr inbounds %struct.cgroup_root, ptr %call, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags22, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool24.not = icmp eq i32 %15, 0
  br i1 %tobool24.not, label %if.end21.if.end26_crit_edge, label %if.then25

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.45) #18
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21.if.end26_crit_edge
  %name = getelementptr inbounds %struct.cgroup_root, ptr %call, i32 0, i32 9
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %16)
  %char051 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char051)
  %tobool29.not = icmp eq i8 %char051, 0
  br i1 %tobool29.not, label %if.end26.if.end33_crit_edge, label %if.then30

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33

if.then30:                                        ; preds = %if.end26
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 44) #18
  tail call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull @.str.9, i32 noundef 4, i32 noundef 8, ptr noundef nonnull @.str.46) #18
  %tobool.not.i54 = icmp eq ptr %name, null
  br i1 %tobool.not.i54, label %if.then30.if.end33_crit_edge, label %if.then.i56

if.then30.if.end33_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33

if.then.i56:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 61) #18
  %call.i.i5.i55 = tail call i32 @strlen(ptr noundef nonnull %name) #25
  tail call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull %name, i32 noundef %call.i.i5.i55, i32 noundef 8, ptr noundef nonnull @.str.47) #18
  br label %if.end33

if.end33:                                         ; preds = %if.then.i56, %if.then30.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_mkdir(ptr noundef, ptr noundef, i16 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_rmdir(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup1_rename(ptr noundef %kn, ptr noundef %new_parent, ptr noundef %new_name_str) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @strchr(ptr noundef %new_name_str, i32 noundef 10)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 8
  %4 = and i16 %3, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp.not = icmp eq i16 %4, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %cmp4.not = icmp eq ptr %6, %new_parent
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  tail call void @kernfs_break_active_protection(ptr noundef %new_parent) #18
  tail call void @kernfs_break_active_protection(ptr noundef %kn) #18
  tail call void @mutex_lock_nested(ptr noundef nonnull @cgroup_mutex, i32 noundef 0) #18
  %call.i = tail call i32 @kernfs_rename_ns(ptr noundef %kn, ptr noundef %new_parent, ptr noundef %new_name_str, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %do.body, label %if.end6.if.end23_crit_edge

if.end6.if.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_rename, i32 0, i32 1), ptr blockaddress(@cgroup1_rename, %if.then11)) #18
          to label %if.end23 [label %if.then11], !srcloc !155

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #18
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kn.i, align 8
  %call.i.i = tail call i32 @kernfs_path_from_node(ptr noundef %8, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #18
  tail call fastcc void @trace_cgroup_rename(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %call16) #18
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %do.body, %if.end6.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #18
  tail call void @kernfs_unbreak_active_protection(ptr noundef %kn) #18
  tail call void @kernfs_unbreak_active_protection(ptr noundef %new_parent) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ -20, %if.end.cleanup_crit_edge ], [ -5, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_show_path(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroup1_get_tree(ptr noundef %fc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %ns = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns, align 4
  %user_ns = getelementptr inbounds %struct.cgroup_namespace, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns, align 4
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %5, i32 noundef 21) #18
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cgroup_lock_and_drain_offline(ptr noundef getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3)) #18
  %6 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_private.i, align 4
  %call1.i = tail call fastcc i32 @check_cgroupfs_options(ptr noundef %fc) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.if.end9.thread59_crit_edge

if.end.if.end9.thread59_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.thread59

for.cond.preheader.i:                             ; preds = %if.end
  %subsys_mask.i = getelementptr inbounds %struct.cgroup_fs_context, ptr %7, i32 0, i32 7
  br label %land.rhs.i

for.cond15.preheader.i:                           ; preds = %for.inc.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cgroup_roots to i32))
  %.pn133.i = load ptr, ptr @cgroup_roots, align 4
  %cmp16.not135.i = icmp eq ptr %.pn133.i, @cgroup_roots
  br i1 %cmp16.not135.i, label %for.cond15.preheader.i.for.end60.i_crit_edge, label %for.body18.lr.ph.i

for.cond15.preheader.i.for.end60.i_crit_edge:     ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end60.i

for.body18.lr.ph.i:                               ; preds = %for.cond15.preheader.i
  %name.i = getelementptr inbounds %struct.cgroup_fs_context, ptr %7, i32 0, i32 8
  %none.i = getelementptr inbounds %struct.cgroup_fs_context, ptr %7, i32 0, i32 5
  br label %for.body18.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.cond.preheader.i
  %i.0131.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %8 = ptrtoint ptr %subsys_mask.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsys_mask.i, align 4
  %conv.i = zext i16 %9 to i32
  %shl.i = shl nuw nsw i32 1, %i.0131.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.rhs.i.for.inc.i_crit_edge, label %lor.lhs.false.i

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %arrayidx.i = getelementptr [0 x ptr], ptr @cgroup_subsys, i32 0, i32 %i.0131.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %root4.i = getelementptr inbounds %struct.cgroup_subsys, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %root4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %root4.i, align 4
  %cmp5.i = icmp eq ptr %13, @cgrp_dfl_root
  br i1 %cmp5.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end8.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %refcnt.i = getelementptr inbounds %struct.cgroup_root, ptr %13, i32 0, i32 3, i32 0, i32 2
  %call10.i = tail call fastcc zeroext i1 @percpu_ref_tryget_live(ptr noundef %refcnt.i) #18
  br i1 %call10.i, label %if.end12.i, label %if.end8.i.if.end9.thread59_crit_edge

if.end8.i.if.end9.thread59_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.thread59

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %root4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root4.i, align 4
  %cgrp14.i = getelementptr inbounds %struct.cgroup_root, ptr %15, i32 0, i32 3
  tail call fastcc void @cgroup_put(ptr noundef %cgrp14.i) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %lor.lhs.false.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0131.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %for.cond15.preheader.i, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i

for.body18.i:                                     ; preds = %for.cond15.backedge.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %.pn136.i = phi ptr [ %.pn133.i, %for.body18.lr.ph.i ], [ %.pn.i, %for.cond15.backedge.i.for.body18.i_crit_edge ]
  %root.0137.i = getelementptr i8, ptr %.pn136.i, i32 -2076
  %cmp19.i = icmp eq ptr %root.0137.i, @cgrp_dfl_root
  br i1 %cmp19.i, label %for.body18.i.for.cond15.backedge.i_crit_edge, label %if.end22.i

for.body18.i.for.cond15.backedge.i_crit_edge:     ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond15.backedge.i

if.end22.i:                                       ; preds = %for.body18.i
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.i, align 4
  %tobool23.not.i = icmp eq ptr %17, null
  br i1 %tobool23.not.i, label %if.end22.i.if.end31.i_crit_edge, label %if.then24.i

if.end22.i.if.end31.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31.i

if.then24.i:                                      ; preds = %if.end22.i
  %name26.i = getelementptr i8, ptr %.pn136.i, i32 4108
  %call27.i = tail call i32 @strcmp(ptr noundef nonnull %17, ptr noundef %name26.i) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then24.i.if.end31.i_crit_edge, label %if.then24.i.for.cond15.backedge.i_crit_edge

if.then24.i.for.cond15.backedge.i_crit_edge:      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond15.backedge.i

if.then24.i.if.end31.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then24.i.if.end31.i_crit_edge, %if.end22.i.if.end31.i_crit_edge
  %18 = ptrtoint ptr %subsys_mask.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsys_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool34.not.i = icmp eq i16 %19, 0
  br i1 %tobool34.not.i, label %lor.lhs.false35.i, label %if.end31.i.land.lhs.true.i_crit_edge

if.end31.i.land.lhs.true.i_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i

lor.lhs.false35.i:                                ; preds = %if.end31.i
  %20 = ptrtoint ptr %none.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %none.i, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool36.not.i = icmp eq i8 %21, 0
  br i1 %tobool36.not.i, label %lor.lhs.false35.i.if.end47.i_crit_edge, label %lor.lhs.false35.i.land.lhs.true.i_crit_edge

lor.lhs.false35.i.land.lhs.true.i_crit_edge:      ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i

lor.lhs.false35.i.if.end47.i_crit_edge:           ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false35.i.land.lhs.true.i_crit_edge, %if.end31.i.land.lhs.true.i_crit_edge
  %conv39.i = zext i16 %19 to i32
  %subsys_mask40.i = getelementptr i8, ptr %.pn136.i, i32 -2072
  %22 = ptrtoint ptr %subsys_mask40.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %subsys_mask40.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv39.i)
  %cmp41.not.i = icmp eq i32 %23, %conv39.i
  br i1 %cmp41.not.i, label %land.lhs.true.i.if.end47.i_crit_edge, label %if.then43.i

land.lhs.true.i.if.end47.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47.i

if.then43.i:                                      ; preds = %land.lhs.true.i
  br i1 %tobool23.not.i, label %if.then43.i.for.cond15.backedge.i_crit_edge, label %if.then43.i.if.end9.thread59_crit_edge

if.then43.i.if.end9.thread59_crit_edge:           ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.thread59

if.then43.i.for.cond15.backedge.i_crit_edge:      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond15.backedge.i

for.cond15.backedge.i:                            ; preds = %if.then43.i.for.cond15.backedge.i_crit_edge, %if.then24.i.for.cond15.backedge.i_crit_edge, %for.body18.i.for.cond15.backedge.i_crit_edge
  %24 = ptrtoint ptr %.pn136.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn136.i, align 4
  %cmp16.not.i = icmp eq ptr %.pn.i, @cgroup_roots
  br i1 %cmp16.not.i, label %for.cond15.backedge.i.for.end60.i_crit_edge, label %for.cond15.backedge.i.for.body18.i_crit_edge

for.cond15.backedge.i.for.body18.i_crit_edge:     ; preds = %for.cond15.backedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body18.i

for.cond15.backedge.i.for.end60.i_crit_edge:      ; preds = %for.cond15.backedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end60.i

if.end47.i:                                       ; preds = %land.lhs.true.i.if.end47.i_crit_edge, %lor.lhs.false35.i.if.end47.i_crit_edge
  %flags.i = getelementptr i8, ptr %.pn136.i, i32 8
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %flags48.i = getelementptr inbounds %struct.cgroup_fs_context, ptr %7, i32 0, i32 3
  %27 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %tobool49.not.i = icmp eq i32 %26, %28
  br i1 %tobool49.not.i, label %if.end47.i.cleanup.thread.i_crit_edge, label %do.end.i

if.end47.i.cleanup.thread.i_crit_edge:            ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread.i

do.end.i:                                         ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #20
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #24
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end.i, %if.end47.i.cleanup.thread.i_crit_edge
  %root54.i = getelementptr inbounds %struct.cgroup_fs_context, ptr %7, i32 0, i32 1
  %29 = ptrtoint ptr %root54.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %root.0137.i, ptr %root54.i, align 4
  br label %land.lhs.true

for.end60.i:                                      ; preds = %for.cond15.backedge.i.for.end60.i_crit_edge, %for.cond15.preheader.i.for.end60.i_crit_edge
  %30 = ptrtoint ptr %subsys_mask.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %subsys_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool62.not.i = icmp eq i16 %31, 0
  br i1 %tobool62.not.i, label %land.lhs.true63.i, label %for.end60.i.if.end69.i_crit_edge

for.end60.i.if.end69.i_crit_edge:                 ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69.i

land.lhs.true63.i:                                ; preds = %for.end60.i
  %none64.i = getelementptr inbounds %struct.cgroup_fs_context, ptr %7, i32 0, i32 5
  %32 = ptrtoint ptr %none64.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %none64.i, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool65.not.i = icmp eq i8 %33, 0
  br i1 %tobool65.not.i, label %if.then66.i, label %land.lhs.true63.i.if.end69.i_crit_edge

land.lhs.true63.i.if.end69.i_crit_edge:           ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69.i

if.then66.i:                                      ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #20
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log67.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %log67.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %log67.i, align 4
  %36 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %log.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %35, ptr noundef %37, i8 noundef zeroext 101, ptr noundef nonnull @.str.50) #18
  br label %if.end9.thread59

if.end69.i:                                       ; preds = %land.lhs.true63.i.if.end69.i_crit_edge, %for.end60.i.if.end69.i_crit_edge
  %ns.i = getelementptr inbounds %struct.cgroup_fs_context, ptr %7, i32 0, i32 2
  %38 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ns.i, align 4
  %cmp70.not.i = icmp eq ptr %39, @init_cgroup_ns
  br i1 %cmp70.not.i, label %if.end73.i, label %if.end69.i.if.end9.thread59_crit_edge

if.end69.i.if.end9.thread59_crit_edge:            ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.thread59

if.end73.i:                                       ; preds = %if.end69.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 6248) #22
  %tobool75.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool75.not.i, label %if.end73.i.if.end9.thread59_crit_edge, label %if.end77.i

if.end73.i.if.end9.thread59_crit_edge:            ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.thread59

if.end77.i:                                       ; preds = %if.end73.i
  %root78.i = getelementptr inbounds %struct.cgroup_fs_context, ptr %7, i32 0, i32 1
  %41 = ptrtoint ptr %root78.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i, ptr %root78.i, align 4
  tail call void @init_cgroup_root(ptr noundef %7) #18
  %42 = ptrtoint ptr %subsys_mask.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %subsys_mask.i, align 4
  %call80.i = tail call i32 @cgroup_setup_root(ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext %43) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.end77.i.land.lhs.true_crit_edge, label %if.then82.i

if.end77.i.land.lhs.true_crit_edge:               ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true

if.then82.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @cgroup_free_root(ptr noundef nonnull %call7.i.i.i) #18
  br label %if.end9.thread59

land.lhs.true:                                    ; preds = %if.end77.i.land.lhs.true_crit_edge, %cleanup.thread.i
  %root = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %root, align 4
  %refcnt = getelementptr inbounds %struct.cgroup_root, ptr %45, i32 0, i32 3, i32 0, i32 2
  %call3 = tail call fastcc zeroext i1 @percpu_ref_tryget_live(ptr noundef %refcnt)
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #18
  br i1 %call3, label %if.end9, label %land.lhs.true.if.then21_crit_edge

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then21

if.end9.thread59:                                 ; preds = %if.then82.i, %if.end73.i.if.end9.thread59_crit_edge, %if.end69.i.if.end9.thread59_crit_edge, %if.then66.i, %if.then43.i.if.end9.thread59_crit_edge, %if.end8.i.if.end9.thread59_crit_edge, %if.end.if.end9.thread59_crit_edge
  %retval.2.i.ph = phi i32 [ %call80.i, %if.then82.i ], [ -12, %if.end73.i.if.end9.thread59_crit_edge ], [ -1, %if.end69.i.if.end9.thread59_crit_edge ], [ %call1.i, %if.end.if.end9.thread59_crit_edge ], [ -22, %if.then66.i ], [ -16, %if.then43.i.if.end9.thread59_crit_edge ], [ 1, %if.end8.i.if.end9.thread59_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #18
  br label %if.end18

if.end9:                                          ; preds = %land.lhs.true
  %call8 = tail call i32 @cgroup_do_get_tree(ptr noundef %fc) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

land.lhs.true11:                                  ; preds = %if.end9
  %root12 = getelementptr inbounds %struct.cgroup_fs_context, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %root12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %root12, align 4
  %refcnt15 = getelementptr inbounds %struct.cgroup_root, ptr %47, i32 0, i32 3, i32 0, i32 2
  %48 = ptrtoint ptr %refcnt15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %refcnt15, align 4
  %and.i34 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.i.not = icmp eq i32 %and.i34, 0
  br i1 %tobool.i.not, label %land.lhs.true11.cleanup_crit_edge, label %if.then17

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @fc_drop_locked(ptr noundef %fc) #18
  br label %if.then21

if.end18:                                         ; preds = %if.end9.if.end18_crit_edge, %if.end9.thread59
  %ret.162 = phi i32 [ %retval.2.i.ph, %if.end9.thread59 ], [ %call8, %if.end9.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.162)
  %cmp = icmp sgt i32 %ret.162, 0
  br i1 %cmp, label %if.end18.if.then21_crit_edge, label %if.end18.cleanup_crit_edge, !prof !153

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then21

if.then21:                                        ; preds = %if.end18.if.then21_crit_edge, %if.then17, %land.lhs.true.if.then21_crit_edge
  tail call void @msleep(i32 noundef 10) #18
  %50 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %55) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end18.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -513, %if.then21 ], [ -1, %entry.cleanup_crit_edge ], [ %ret.162, %if.end18.cleanup_crit_edge ], [ 0, %land.lhs.true11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @percpu_ref_tryget_live(ptr noundef %ref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !165
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #18
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i1 = tail call i32 @rcu_read_lock_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i2 = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i2, label %land.rhs.i, label %rcu_read_lock.exit.if.end29.i_crit_edge

rcu_read_lock.exit.if.end29.i_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29.i

land.rhs.i:                                       ; preds = %rcu_read_lock.exit
  %.b104.i = load i1, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  br i1 %.b104.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i3, !prof !154

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29.i

if.then.i3:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 280, i32 noundef 9, ptr noundef null) #18
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i3, %land.rhs.i.if.end29.i_crit_edge, %rcu_read_lock.exit.if.end29.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body46.i, label %if.else.i, !prof !154

do.body46.i:                                      ; preds = %if.end29.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !166
  %7 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i105.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i105.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add63.i = add i32 %15, 1
  store i32 %add63.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !167
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool74.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool74.not.i, label %if.then83.i, label %do.body46.i.do.end86.i_crit_edge, !prof !153

do.body46.i.do.end86.i_crit_edge:                 ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end86.i

if.then83.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %do.end86.i

do.end86.i:                                       ; preds = %if.then83.i, %do.body46.i.do.end86.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #18, !srcloc !168
  br label %percpu_ref_tryget_live_rcu.exit

if.else.i:                                        ; preds = %if.end29.i
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool93.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool93.not.i, label %if.then94.i, label %if.else.i.percpu_ref_tryget_live_rcu.exit_crit_edge

if.else.i.percpu_ref_tryget_live_rcu.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %percpu_ref_tryget_live_rcu.exit

if.then94.i:                                      ; preds = %if.else.i
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #18
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 1, ptr elementtype(i32) %18) #18, !srcloc !170
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then94.i.atomic_long_inc_not_zero.exit.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then94.i.atomic_long_inc_not_zero.exit.i_crit_edge: ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %atomic_long_inc_not_zero.exit.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !171
  br label %atomic_long_inc_not_zero.exit.i

atomic_long_inc_not_zero.exit.i:                  ; preds = %do.end11.i.i.i.i.i.i, %if.then94.i.atomic_long_inc_not_zero.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i, 0
  br label %percpu_ref_tryget_live_rcu.exit

percpu_ref_tryget_live_rcu.exit:                  ; preds = %atomic_long_inc_not_zero.exit.i, %if.else.i.percpu_ref_tryget_live_rcu.exit_crit_edge, %do.end86.i
  %ret.0.off0.i = phi i1 [ true, %do.end86.i ], [ false, %if.else.i.percpu_ref_tryget_live_rcu.exit_crit_edge ], [ %cmp.i.i.i.i.i, %atomic_long_inc_not_zero.exit.i ]
  %call.i4 = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i4, label %percpu_ref_tryget_live_rcu.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

percpu_ref_tryget_live_rcu.exit.rcu_read_unlock.exit_crit_edge: ; preds = %percpu_ref_tryget_live_rcu.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %percpu_ref_tryget_live_rcu.exit
  %call1.i5 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #18
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %percpu_ref_tryget_live_rcu.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !172
  %20 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i.i11 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  tail call void @rcu_read_unlock_strict() #18
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  ret i1 %ret.0.off0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_do_get_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_drop_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup1_wq_init() #11 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef 1) #18
  store ptr %call, ptr @cgroup_pidlist_destroy_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !153

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup-v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1259, 0\0A.popsection", ""() #18, !srcloc !179
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cgroup_no_v1(ptr noundef %str) #11 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  %call30 = call ptr @strsep(ptr noundef nonnull %str.addr, ptr noundef nonnull @.str.53) #18
  %cmp.not31 = icmp eq ptr %call30, null
  br i1 %cmp.not31, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %call32 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call30, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %call32 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %call1 = call i32 @strcmp(ptr noundef nonnull %call32, ptr noundef nonnull dereferenceable(4) @.str.6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  store i16 -1, ptr @cgroup_no_v1_mask, align 2
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.inc.while.cond.backedge_crit_edge, %if.then7, %if.then3, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %str.addr, ptr noundef nonnull @.str.53) #18
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @strcmp(ptr noundef nonnull %call32, ptr noundef nonnull dereferenceable(6) @.str.54) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end4
  %cgroup_no_v1_mask.promoted = load i16, ptr @cgroup_no_v1_mask, align 2
  br label %land.rhs

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cgroup_no_v1_named, align 1
  br label %while.cond.backedge

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader
  %i.029 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %conv172728 = phi i16 [ %cgroup_no_v1_mask.promoted, %for.cond.preheader ], [ %conv1726, %for.inc.land.rhs_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr @cgroup_subsys, i32 0, i32 %i.029
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.cgroup_subsys, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call11 = call i32 @strcmp(ptr noundef nonnull %call32, ptr noundef %6) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.rhs.if.end16_crit_edge, label %land.lhs.true

land.rhs.if.end16_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

land.lhs.true:                                    ; preds = %land.rhs
  %legacy_name = getelementptr inbounds %struct.cgroup_subsys, ptr %4, i32 0, i32 21
  %7 = ptrtoint ptr %legacy_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %legacy_name, align 4
  %call13 = call i32 @strcmp(ptr noundef nonnull %call32, ptr noundef %8) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %land.rhs.if.end16_crit_edge
  %shl = shl nuw nsw i32 1, %i.029
  %9 = trunc i32 %shl to i16
  %conv17 = or i16 %conv172728, %9
  store i16 %conv17, ptr @cgroup_no_v1_mask, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %land.lhs.true.for.inc_crit_edge
  %conv1726 = phi i16 [ %conv172728, %land.lhs.true.for.inc_crit_edge ], [ %conv17, %if.end16 ]
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.inc.while.cond.backedge_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

for.inc.while.cond.backedge_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_transfer_tasks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_task_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmppid(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgroup_pidlist_destroy_work_fn(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %pidlist_mutex = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %pidlist_mutex, i32 noundef 0) #18
  %2 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %work, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  %links = getelementptr i8, ptr %work, i32 -12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %links) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %links, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %links to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %links, align 4
  %prev.i = getelementptr i8, ptr %work, i32 -8
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %list = getelementptr i8, ptr %work, i32 -20
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  tail call void @kvfree(ptr noundef %13) #18
  %ns = getelementptr i8, ptr %work, i32 -24
  %14 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns, align 4
  tail call void @put_pid_ns(ptr noundef %15) #18
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %tofree.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %add.ptr, %list_del.exit ]
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner, align 4
  %pidlist_mutex4 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 30
  tail call void @mutex_unlock(ptr noundef %pidlist_mutex4) #18
  tail call void @kfree(ptr noundef %tofree.0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cgroup1_procs_write(ptr nocapture noundef readonly %of, ptr noundef %buf, i32 noundef %nbytes, i1 noundef zeroext %threadgroup) unnamed_addr #1 align 64 {
entry:
  %locked = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %locked) #18
  %0 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %locked, align 1, !annotation !151
  %1 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of, align 4
  %call = tail call ptr @cgroup_kn_lock_live(ptr noundef %2, i1 noundef zeroext false) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @cgroup_procs_write_start(ptr noundef %buf, i1 noundef zeroext %threadgroup, ptr noundef nonnull %locked) #18
  %cmp.i.i.not = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call2 to i32
  br i1 %cmp.i.i.not, label %if.end.out_unlock_crit_edge, label %if.end6

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  %file = getelementptr inbounds %struct.kernfs_open_file, ptr %of, i32 0, i32 1
  %4 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file, align 4
  %f_cred = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_cred, align 8
  %call7 = call ptr @get_task_cred(ptr noundef %call2) #18
  %euid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %euid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %if.end6.if.end20_crit_edge, label %land.lhs.true

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end6
  %uid = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 4
  %9 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack2 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack2)
  %cmp.i7 = icmp eq i32 %.unpack, %.unpack2
  br i1 %cmp.i7, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true14

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

land.lhs.true14:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %suid = getelementptr inbounds %struct.cred, ptr %call7, i32 0, i32 6
  %10 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack4 = load i32, ptr %suid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack4)
  %cmp.i8 = icmp eq i32 %.unpack, %.unpack4
  %spec.select5 = select i1 %cmp.i8, i32 0, i32 -13
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true14, %land.lhs.true.if.end20_crit_edge, %if.end6.if.end20_crit_edge
  %tobool21.not = phi i1 [ true, %land.lhs.true.if.end20_crit_edge ], [ true, %if.end6.if.end20_crit_edge ], [ %cmp.i8, %land.lhs.true14 ]
  %ret.0 = phi i32 [ 0, %land.lhs.true.if.end20_crit_edge ], [ 0, %if.end6.if.end20_crit_edge ], [ %spec.select5, %land.lhs.true14 ]
  %tobool.not.i = icmp eq ptr %call7, null
  br i1 %tobool.not.i, label %if.end20.put_cred.exit_crit_edge, label %do.body.i

if.end20.put_cred.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_cred.exit

do.body.i:                                        ; preds = %if.end20
  %call.i.i = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call7) #18
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !153

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__invalid_creds(ptr noundef nonnull %call7, ptr noundef nonnull @.str.32, i32 noundef 286) #18
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7, i32 noundef 4) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !173
  call void @llvm.prefetch.p0(ptr nonnull %call7, i32 1, i32 3, i32 1) #18
  %11 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7, ptr nonnull %call7, i32 1, ptr nonnull elementtype(i32) %call7) #18, !srcloc !174
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__put_cred(ptr noundef nonnull %call7) #18
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %if.end20.put_cred.exit_crit_edge
  br i1 %tobool21.not, label %if.end23, label %put_cred.exit.out_finish_crit_edge

put_cred.exit.out_finish_crit_edge:               ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_finish

if.end23:                                         ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call25 = call i32 @cgroup_attach_task(ptr noundef nonnull %call, ptr noundef %call2, i1 noundef zeroext %threadgroup) #18
  br label %out_finish

out_finish:                                       ; preds = %if.end23, %put_cred.exit.out_finish_crit_edge
  %ret.1 = phi i32 [ %ret.0, %put_cred.exit.out_finish_crit_edge ], [ %call25, %if.end23 ]
  %12 = ptrtoint ptr %locked to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %locked, align 1, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool26 = icmp ne i8 %13, 0
  call void @cgroup_procs_write_finish(ptr noundef %call2, i1 noundef zeroext %tobool26) #18
  br label %out_unlock

out_unlock:                                       ; preds = %out_finish, %if.end.out_unlock_crit_edge
  %ret.2 = phi i32 [ %3, %if.end.out_unlock_crit_edge ], [ %ret.1, %out_finish ]
  %14 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of, align 4
  call void @cgroup_kn_unlock(ptr noundef %15) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool28.not = icmp eq i32 %ret.2, 0
  %spec.select6 = select i1 %tobool28.not, i32 %nbytes, i32 %ret.2
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select6, %out_unlock ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %locked) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_kn_lock_live(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_procs_write_start(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_procs_write_finish(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_kn_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_remount(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_break_active_protection(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cgroup_rename(ptr noundef %cgrp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_rename, i32 0, i32 1), ptr blockaddress(@trace_cgroup_rename, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !155

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !180
  %call42 = tail call i32 @__traceiter_cgroup_rename(ptr noundef null, ptr noundef %cgrp, ptr noundef nonnull @trace_cgroup_path) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !181
  %13 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !154

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_rename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_rename, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_cgroup_rename.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_cgroup_rename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 104, ptr noundef nonnull @.str.3) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !162
  %31 = tail call i32 @llvm.read_register.i32(metadata !141) #18
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_unbreak_active_protection(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_rename_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cgroup_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_setup_root(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_free_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind readonly }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nobuiltin }
attributes #24 = { cold nounwind }
attributes #25 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !76, !77, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !94, !95, !97, !98, !100, !102, !104, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !124, !126, !127, !128, !129, !131, !133, !134, !136, !137, !139}
!llvm.named.register.sp = !{!141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__ksymtab_cgroup_attach_task_all, !1, !"__ksymtab_cgroup_attach_task_all", i1 false, i1 false}
!1 = !{!"../kernel/cgroup/cgroup-v1.c", i32 79, i32 1}
!2 = !{ptr @cgroup1_base_files, !3, !"cgroup1_base_files", i1 false, i1 false}
!3 = !{!"../kernel/cgroup/cgroup-v1.c", i32 623, i32 15}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/cgroup/cgroup-v1.c", i32 673, i32 14}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/cgroup/cgroup-v1.c", i32 680, i32 17}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../kernel/cgroup/cgroup-v1.c", i32 717, i32 9}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/cgroup/cgroup-v1.c", i32 814, i32 12}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/cgroup/cgroup-v1.c", i32 815, i32 12}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/cgroup/cgroup-v1.c", i32 904, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/cgroup/cgroup-v1.c", i32 905, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/cgroup/cgroup-v1.c", i32 906, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/cgroup/cgroup-v1.c", i32 907, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/cgroup/cgroup-v1.c", i32 908, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/cgroup/cgroup-v1.c", i32 909, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/cgroup/cgroup-v1.c", i32 910, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/cgroup/cgroup-v1.c", i32 911, i32 2}
!32 = !{ptr @cgroup1_fs_parameters, !33, !"cgroup1_fs_parameters", i1 false, i1 false}
!33 = !{!"../kernel/cgroup/cgroup-v1.c", i32 903, i32 32}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/cgroup/cgroup-v1.c", i32 933, i32 12}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/cgroup/cgroup-v1.c", i32 938, i32 10}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/cgroup/cgroup-v1.c", i32 966, i32 11}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/cgroup/cgroup-v1.c", i32 972, i32 11}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/cgroup/cgroup-v1.c", i32 982, i32 11}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/cgroup/cgroup-v1.c", i32 984, i32 11}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/cgroup/cgroup-v1.c", i32 992, i32 11}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/cgroup/cgroup-v1.c", i32 996, i32 11}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1074, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @cgroup1_reconfigure._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @cgroup1_reconfigure._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1083, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @cgroup1_kf_syscall_ops, !59, !"cgroup1_kf_syscall_ops", i1 false, i1 false}
!59 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1114, i32 27}
!60 = !{ptr @__initcall__kmod_cgroup_v1__273_1262_cgroup1_wq_init1, !61, !"__initcall__kmod_cgroup_v1__273_1262_cgroup1_wq_init1", i1 false, i1 false}
!61 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1262, i32 1}
!62 = !{ptr @__setup_cgroup_no_v1, !63, !"__setup_cgroup_no_v1", i1 false, i1 false}
!63 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1294, i32 1}
!64 = !{ptr @cgroup_no_v1_mask, !65, !"cgroup_no_v1_mask", i1 false, i1 false}
!65 = !{!"../kernel/cgroup/cgroup-v1.c", i32 30, i32 12}
!66 = distinct !{null, !67, !"cgroup_no_v1_named", i1 false, i1 false}
!67 = !{!"../kernel/cgroup/cgroup-v1.c", i32 33, i32 13}
!68 = !{ptr @cgroup_pidlist_destroy_wq, !69, !"cgroup_pidlist_destroy_wq", i1 false, i1 false}
!69 = !{!"../kernel/cgroup/cgroup-v1.c", i32 39, i32 33}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/trace/events/cgroup.h", i32 158, i32 1}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/cgroup/cgroup-v1.c", i32 484, i32 16}
!79 = !{ptr @cgroup_pidlist_find_create.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../kernel/cgroup/cgroup-v1.c", i32 314, i32 2}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @cgroup_pidlist_find_create.__key.30, !80, !"__key", i1 false, i1 false}
!83 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/cred.h", i32 286, i32 3}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../kernel/cgroup/cgroup-v1.c", i32 586, i32 16}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!94 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../kernel/cgroup/cgroup-v1.c", i32 42, i32 8}
!97 = !{ptr @release_agent_path_lock, !96, !"release_agent_path_lock", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1031, i32 11}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1041, i32 10}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1049, i32 10}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1053, i32 10}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../include/trace/events/cgroup.h", i32 47, i32 1}
!108 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../kernel/cgroup/cgroup-v1.c", i32 873, i32 17}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../kernel/cgroup/cgroup-v1.c", i32 875, i32 17}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../kernel/cgroup/cgroup-v1.c", i32 877, i32 17}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../kernel/cgroup/cgroup-v1.c", i32 886, i32 17}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/seq_file.h", i32 242, i32 22}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../include/linux/seq_file.h", i32 245, i32 24}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../include/trace/events/cgroup.h", i32 99, i32 1}
!123 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1188, i32 4}
!126 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cgroup1_root_to_use._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @cgroup1_root_to_use._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1200, i32 10}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/linux/percpu-refcount.h", i32 280, i32 2}
!133 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1257, i32 46}
!136 = !{ptr @__setup_str_cgroup_no_v1, !63, !"__setup_str_cgroup_no_v1", i1 false, i1 false}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1270, i32 31}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../kernel/cgroup/cgroup-v1.c", i32 1279, i32 22}
!141 = !{!"sp"}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{!"auto-init"}
!152 = !{i64 2148491494, i64 2148491526, i64 2148491555, i64 2148491589, i64 2148491620, i64 2148491643}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 2148303357, i64 2148303362, i64 2148303375, i64 2148303419, i64 2148303453, i64 2148303474}
!156 = !{i64 2148579495}
!157 = !{i64 2148493959, i64 2148493991, i64 2148494020, i64 2148494054, i64 2148494085, i64 2148494108}
!158 = !{i64 2149625465}
!159 = !{i64 2154662576}
!160 = !{i64 2154662847}
!161 = !{i64 2149326037}
!162 = !{i64 2149327073}
!163 = !{i64 2154732046, i64 2154732536, i64 2154732083, i64 2154732139, i64 2154732173, i64 2154732197, i64 2154732238, i64 2154732259, i64 2154732287, i64 2154732321}
!164 = !{!"branch_weights", i32 2002, i32 2000}
!165 = !{i64 2149317478}
!166 = !{i64 884222, i64 884283}
!167 = !{i64 886954}
!168 = !{i64 887239}
!169 = !{i64 2148489383}
!170 = !{i64 975983, i64 976008, i64 976030, i64 976046, i64 976058, i64 976078, i64 976102, i64 976118, i64 976130}
!171 = !{i64 2148489571}
!172 = !{i64 2149317744}
!173 = !{i64 2148578416}
!174 = !{i64 2148493149, i64 2148493181, i64 2148493210, i64 2148493244, i64 2148493275, i64 2148493298}
!175 = !{i64 2148578645}
!176 = !{i8 0, i8 2}
!177 = !{i64 2154521797}
!178 = !{i64 2154521996}
!179 = !{i64 2154770256, i64 2154770747, i64 2154770293, i64 2154770349, i64 2154770383, i64 2154770407, i64 2154770448, i64 2154770469, i64 2154770497, i64 2154770531}
!180 = !{i64 2154590587}
!181 = !{i64 2154590796}
