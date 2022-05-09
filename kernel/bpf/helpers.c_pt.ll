; ModuleID = '/llk/IR_all_yes/kernel/bpf/helpers.c_pt.bc'
source_filename = "../kernel/bpf/helpers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.164, %union.anon.165, ptr, ptr }
%union.anon.164 = type { %struct.anon.163 }
%struct.anon.163 = type { i32, i32, i32, i32, i32 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { ptr, ptr, ptr, ptr, ptr }
%struct.bpf_bprintf_buffers = type { [3 x [512 x i8]] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.31 }
%union.anon.31 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.147, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.143, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.57 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.143 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.70 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.70 = type { %struct.callback_head }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.atomic64_t = type { i64 }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.46, ptr, i64, i16, i16, ptr }
%union.anon.46 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.bpf_cg_run_ctx = type { %struct.bpf_run_ctx, ptr }
%struct.bpf_run_ctx = type {}
%struct.bpf_prog_array_item = type { ptr, %union.anon.139 }
%union.anon.139 = type { i64 }
%struct.bpf_storage_buffer = type { %struct.callback_head, [0 x i8] }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bpf_pidns_info = type { i32, i32 }
%struct.bpf_timer_kern = type { ptr, %struct.bpf_spin_lock }
%struct.bpf_spin_lock = type { i32 }
%struct.bpf_hrtimer = type { %struct.hrtimer, ptr, ptr, ptr, ptr }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.133 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%union.anon.133 = type { %struct.work_struct }
%struct.bpf_array = type { %struct.bpf_map, i32, i32, ptr, [4 x i8], %union.anon.168, [112 x i8] }
%union.anon.168 = type { [0 x ptr] }

@bpf_map_lookup_elem_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_map_lookup_elem, i8 0, i8 1, i32 258, %union.anon.164 { %struct.anon.163 { i32 1, i32 2, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_map_update_elem_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_map_update_elem, i8 0, i8 1, i32 0, %union.anon.164 { %struct.anon.163 { i32 1, i32 2, i32 3, i32 10, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_map_delete_elem_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_map_delete_elem, i8 0, i8 1, i32 0, %union.anon.164 { %struct.anon.163 { i32 1, i32 2, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_map_push_elem_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_map_push_elem, i8 0, i8 1, i32 0, %union.anon.164 { %struct.anon.163 { i32 1, i32 3, i32 10, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_map_pop_elem_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_map_pop_elem, i8 0, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 1, i32 4, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_map_peek_elem_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_map_peek_elem, i8 0, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 1, i32 4, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_prandom_u32_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_user_rnd_u32, i8 0, i8 0, i32 0, %union.anon.164 zeroinitializer, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_smp_processor_id_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_smp_processor_id, i8 0, i8 0, i32 0, %union.anon.164 zeroinitializer, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_numa_node_id_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_numa_node_id, i8 0, i8 0, i32 0, %union.anon.164 zeroinitializer, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_ktime_get_ns_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_ktime_get_ns, i8 0, i8 0, i32 0, %union.anon.164 zeroinitializer, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_ktime_get_boot_ns_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_ktime_get_boot_ns, i8 0, i8 0, i32 0, %union.anon.164 zeroinitializer, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_ktime_get_coarse_ns_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_ktime_get_coarse_ns, i8 0, i8 0, i32 0, %union.anon.164 zeroinitializer, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_current_pid_tgid_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_current_pid_tgid, i8 0, i8 0, i32 0, %union.anon.164 zeroinitializer, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_current_uid_gid_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_current_uid_gid, i8 0, i8 0, i32 0, %union.anon.164 zeroinitializer, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_current_comm_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_current_comm, i8 0, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 6, i32 7, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_spin_lock_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_spin_lock, i8 0, i8 0, i32 1, %union.anon.164 { %struct.anon.163 { i32 11, i32 0, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_spin_unlock_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_spin_unlock, i8 0, i8 0, i32 1, %union.anon.164 { %struct.anon.163 { i32 11, i32 0, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_jiffies64_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_jiffies64, i8 0, i8 0, i32 0, %union.anon.164 zeroinitializer, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_current_cgroup_id_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_current_cgroup_id, i8 0, i8 0, i32 0, %union.anon.164 zeroinitializer, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_current_ancestor_cgroup_id_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_current_ancestor_cgroup_id, i8 0, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 10, i32 0, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_local_storage_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_local_storage, i8 0, i8 0, i32 2, %union.anon.164 { %struct.anon.163 { i32 1, i32 10, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_strtol_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_strtol, i8 0, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 517, i32 7, i32 10, i32 14, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_strtoul_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_strtoul, i8 0, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 517, i32 7, i32 10, i32 14, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_strncmp_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_strncmp, i8 0, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 5, i32 7, i32 23, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_ns_current_pid_tgid_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_ns_current_pid_tgid, i8 0, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 10, i32 10, i32 6, i32 7, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_event_output_data_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_event_output_data, i8 1, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 9, i32 1, i32 10, i32 517, i32 8 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_copy_from_user_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_copy_from_user, i8 0, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 6, i32 8, i32 10, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_per_cpu_ptr_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_per_cpu_ptr, i8 0, i8 0, i32 775, %union.anon.164 { %struct.anon.163 { i32 20, i32 10, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_this_cpu_ptr_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_this_cpu_ptr, i8 0, i8 0, i32 519, %union.anon.164 { %struct.anon.163 { i32 20, i32 0, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_bprintf_nest_level = weak dso_local global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__const.bpf_bprintf_prepare.ip_spec = private unnamed_addr constant [5 x i8] c"%pXX\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pB\00", [28 x i8] zeroinitializer }, align 32
@bpf_snprintf_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_snprintf, i8 1, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 261, i32 8, i32 23, i32 773, i32 8 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@hrtimer_running = weak dso_local global ptr null, section ".data..percpu", align 4
@bpf_get_raw_smp_processor_id_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_raw_cpu_id, i8 0, i8 0, i32 0, %union.anon.164 zeroinitializer, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_tail_call_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_ringbuf_output_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_ringbuf_reserve_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_ringbuf_submit_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_ringbuf_discard_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_ringbuf_query_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_for_each_map_elem_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_loop_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_timer_init_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_timer_init, i8 1, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 24, i32 1, i32 10, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_timer_set_callback_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_timer_set_callback, i8 1, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 24, i32 21, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_timer_start_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_timer_start, i8 1, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 24, i32 10, i32 10, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_timer_cancel_proto = internal constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_timer_cancel, i8 1, i8 0, i32 0, %union.anon.164 { %struct.anon.163 { i32 24, i32 0, i32 0, i32 0, i32 0 } }, %union.anon.165 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_current_task_proto = weak_odr dso_local constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_task_btf_proto = weak_odr dso_local constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_probe_read_user_proto = weak_odr dso_local constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_probe_read_kernel_proto = weak_odr dso_local constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_probe_read_user_str_proto = weak_odr dso_local constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_probe_read_kernel_str_proto = weak_odr dso_local constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_snprintf_btf_proto = external dso_local constant %struct.bpf_func_proto, align 4
@bpf_task_pt_regs_proto = weak_odr dso_local constant %struct.bpf_func_proto zeroinitializer, align 4
@__pcpu_unique_irqsave_flags = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@irqsave_flags = weak dso_local global i32 0, section ".data..percpu", align 4
@__pcpu_unique_bpf_bprintf_bufs = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@bpf_bprintf_bufs = weak dso_local global %struct.bpf_bprintf_buffers zeroinitializer, section ".data..percpu", align 1
@__pcpu_unique_bpf_bprintf_nest_level = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_hrtimer_running = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@____bpf_map_lookup_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/bpf/helpers.c\00", [43 x i8] zeroinitializer }, align 32
@____bpf_map_update_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@____bpf_map_delete_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@task_css_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@try_get_fmt_tmp_buf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_timer_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 43, i64 45, i64 48]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 8, i64 99, i64 108, i64 112, i64 115]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 107, i64 117]
@__sancov_gen_cov_switch_values.14 = internal global [9 x i64] [i64 7, i64 8, i64 66, i64 73, i64 75, i64 83, i64 105, i64 115, i64 120]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 52, i64 54]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 8, i64 107, i64 115, i64 117]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 8, i64 88, i64 100, i64 105, i64 117, i64 120]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.19 = internal global [22 x i64] [i64 20, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7, i64 8, i64 12, i64 42, i64 87, i64 88, i64 89, i64 125, i64 130, i64 131, i64 132, i64 133, i64 134, i64 164, i64 181, i64 182]
@__sancov_gen_cov_switch_values.20 = internal global [11 x i64] [i64 9, i64 32, i64 93, i64 94, i64 118, i64 153, i64 154, i64 169, i64 170, i64 171, i64 172]
@__sancov_gen_cov_switch_values.21 = internal global [13 x i64] [i64 11, i64 32, i64 6, i64 35, i64 112, i64 113, i64 114, i64 115, i64 149, i64 158, i64 165, i64 175, i64 177]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 5, i64 8]
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"bpf_map_lookup_elem_proto\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 38, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [26 x i8] c"bpf_map_update_elem_proto\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 54, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [26 x i8] c"bpf_map_delete_elem_proto\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 71, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant [24 x i8] c"bpf_map_push_elem_proto\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 85, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"bpf_map_pop_elem_proto\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 100, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"bpf_map_peek_elem_proto\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 113, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"bpf_get_prandom_u32_proto\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 121, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant [31 x i8] c"bpf_get_smp_processor_id_proto\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 132, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"bpf_get_numa_node_id_proto\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 143, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"bpf_ktime_get_ns_proto\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 155, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"bpf_ktime_get_boot_ns_proto\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 167, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant [30 x i8] c"bpf_ktime_get_coarse_ns_proto\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 178, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant [31 x i8] c"bpf_get_current_pid_tgid_proto\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 194, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [30 x i8] c"bpf_get_current_uid_gid_proto\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 214, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"bpf_get_current_comm_proto\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 240, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"bpf_spin_lock_proto\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 309, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"bpf_spin_unlock_proto\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 331, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"bpf_jiffies64_proto\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 359, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant [32 x i8] c"bpf_get_current_cgroup_id_proto\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 379, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant [41 x i8] c"bpf_get_current_ancestor_cgroup_id_proto\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 400, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant [28 x i8] c"bpf_get_local_storage_proto\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 432, i32 29 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"bpf_strtol_proto\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 531, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"bpf_strtoul_proto\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 559, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"bpf_strncmp_proto\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 575, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant [34 x i8] c"bpf_get_ns_current_pid_tgid_proto\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 617, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant [28 x i8] c"bpf_event_output_data_proto\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 642, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant [25 x i8] c"bpf_copy_from_user_proto\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 666, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"bpf_per_cpu_ptr_proto\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 683, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"bpf_this_cpu_ptr_proto\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 696, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 860, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"bpf_snprintf_proto\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1023, i32 29 }
@___asan_gen_.116 = private unnamed_addr constant [35 x i8] c"bpf_get_raw_smp_processor_id_proto\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 627, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"bpf_timer_init_proto\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1160, i32 36 }
@___asan_gen_.122 = private unnamed_addr constant [29 x i8] c"bpf_timer_set_callback_proto\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1214, i32 36 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"bpf_timer_start_proto\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1243, i32 36 }
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"bpf_timer_cancel_proto\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1294, i32 36 }
@___asan_gen_.132 = private constant [24 x i8] c"../kernel/bpf/helpers.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 34, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 695, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 481, i32 9 }
@___asan_gen_.147 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 723, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 230, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 214, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 156, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @bpf_map_lookup_elem_proto, ptr @bpf_map_update_elem_proto, ptr @bpf_map_delete_elem_proto, ptr @bpf_map_push_elem_proto, ptr @bpf_map_pop_elem_proto, ptr @bpf_map_peek_elem_proto, ptr @bpf_get_prandom_u32_proto, ptr @bpf_get_smp_processor_id_proto, ptr @bpf_get_numa_node_id_proto, ptr @bpf_ktime_get_ns_proto, ptr @bpf_ktime_get_boot_ns_proto, ptr @bpf_ktime_get_coarse_ns_proto, ptr @bpf_get_current_pid_tgid_proto, ptr @bpf_get_current_uid_gid_proto, ptr @bpf_get_current_comm_proto, ptr @bpf_spin_lock_proto, ptr @bpf_spin_unlock_proto, ptr @bpf_jiffies64_proto, ptr @bpf_get_current_cgroup_id_proto, ptr @bpf_get_current_ancestor_cgroup_id_proto, ptr @bpf_get_local_storage_proto, ptr @bpf_strtol_proto, ptr @bpf_strtoul_proto, ptr @bpf_strncmp_proto, ptr @bpf_get_ns_current_pid_tgid_proto, ptr @bpf_event_output_data_proto, ptr @bpf_copy_from_user_proto, ptr @bpf_per_cpu_ptr_proto, ptr @bpf_this_cpu_ptr_proto, ptr @.str, ptr @bpf_snprintf_proto, ptr @bpf_get_raw_smp_processor_id_proto, ptr @bpf_timer_init_proto, ptr @bpf_timer_set_callback_proto, ptr @bpf_timer_start_proto, ptr @bpf_timer_cancel_proto, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_map_lookup_elem_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_map_update_elem_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_map_delete_elem_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_map_push_elem_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_map_pop_elem_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_map_peek_elem_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_prandom_u32_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_smp_processor_id_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_numa_node_id_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_ktime_get_ns_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_ktime_get_boot_ns_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_ktime_get_coarse_ns_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_current_pid_tgid_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_current_uid_gid_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_current_comm_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_spin_lock_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_spin_unlock_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_jiffies64_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_current_cgroup_id_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_current_ancestor_cgroup_id_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_local_storage_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_strtol_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_strtoul_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_strncmp_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_ns_current_pid_tgid_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_event_output_data_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_copy_from_user_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_per_cpu_ptr_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_this_cpu_ptr_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_snprintf_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_raw_smp_processor_id_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_timer_init_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_timer_set_callback_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_timer_start_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_timer_cancel_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_map_lookup_elem(i64 noundef %map, i64 noundef %key, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.____bpf_map_lookup_elem.exit_crit_edge

entry.____bpf_map_lookup_elem.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_map_lookup_elem.exit

land.rhs.i:                                       ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.rhs6.i, label %land.rhs.i.____bpf_map_lookup_elem.exit_crit_edge

land.rhs.i.____bpf_map_lookup_elem.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_map_lookup_elem.exit

land.rhs6.i:                                      ; preds = %land.rhs.i
  %.b45.i = load i1, ptr @____bpf_map_lookup_elem.__already_done, align 1
  br i1 %.b45.i, label %land.rhs6.i.____bpf_map_lookup_elem.exit_crit_edge, label %if.then.i, !prof !143

land.rhs6.i.____bpf_map_lookup_elem.exit_crit_edge: ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_map_lookup_elem.exit

if.then.i:                                        ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @____bpf_map_lookup_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 34, i32 noundef 9, ptr noundef null) #14
  br label %____bpf_map_lookup_elem.exit

____bpf_map_lookup_elem.exit:                     ; preds = %if.then.i, %land.rhs6.i.____bpf_map_lookup_elem.exit_crit_edge, %land.rhs.i.____bpf_map_lookup_elem.exit_crit_edge, %entry.____bpf_map_lookup_elem.exit_crit_edge
  %conv1 = trunc i64 %key to i32
  %0 = inttoptr i32 %conv1 to ptr
  %conv = trunc i64 %map to i32
  %1 = inttoptr i32 %conv to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %map_lookup_elem.i = getelementptr inbounds %struct.bpf_map_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %map_lookup_elem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_lookup_elem.i, align 4
  %call41.i = tail call ptr %5(ptr noundef %1, ptr noundef %0) #14
  %6 = ptrtoint ptr %call41.i to i32
  %conv.i = zext i32 %6 to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_map_update_elem(i64 noundef %map, i64 noundef %key, i64 noundef %value, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.____bpf_map_update_elem.exit_crit_edge

entry.____bpf_map_update_elem.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_map_update_elem.exit

land.rhs.i:                                       ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.rhs6.i, label %land.rhs.i.____bpf_map_update_elem.exit_crit_edge

land.rhs.i.____bpf_map_update_elem.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_map_update_elem.exit

land.rhs6.i:                                      ; preds = %land.rhs.i
  %.b45.i = load i1, ptr @____bpf_map_update_elem.__already_done, align 1
  br i1 %.b45.i, label %land.rhs6.i.____bpf_map_update_elem.exit_crit_edge, label %if.then.i, !prof !143

land.rhs6.i.____bpf_map_update_elem.exit_crit_edge: ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_map_update_elem.exit

if.then.i:                                        ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @____bpf_map_update_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 50, i32 noundef 9, ptr noundef null) #14
  br label %____bpf_map_update_elem.exit

____bpf_map_update_elem.exit:                     ; preds = %if.then.i, %land.rhs6.i.____bpf_map_update_elem.exit_crit_edge, %land.rhs.i.____bpf_map_update_elem.exit_crit_edge, %entry.____bpf_map_update_elem.exit_crit_edge
  %conv2 = trunc i64 %value to i32
  %0 = inttoptr i32 %conv2 to ptr
  %conv1 = trunc i64 %key to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv = trunc i64 %map to i32
  %2 = inttoptr i32 %conv to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  %map_update_elem.i = getelementptr inbounds %struct.bpf_map_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %map_update_elem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_update_elem.i, align 4
  %call41.i = tail call i32 %6(ptr noundef %2, ptr noundef %1, ptr noundef %0, i64 noundef %flags) #14
  %conv.i = sext i32 %call41.i to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_map_delete_elem(i64 noundef %map, i64 noundef %key, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.____bpf_map_delete_elem.exit_crit_edge

entry.____bpf_map_delete_elem.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_map_delete_elem.exit

land.rhs.i:                                       ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.rhs6.i, label %land.rhs.i.____bpf_map_delete_elem.exit_crit_edge

land.rhs.i.____bpf_map_delete_elem.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_map_delete_elem.exit

land.rhs6.i:                                      ; preds = %land.rhs.i
  %.b45.i = load i1, ptr @____bpf_map_delete_elem.__already_done, align 1
  br i1 %.b45.i, label %land.rhs6.i.____bpf_map_delete_elem.exit_crit_edge, label %if.then.i, !prof !143

land.rhs6.i.____bpf_map_delete_elem.exit_crit_edge: ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_map_delete_elem.exit

if.then.i:                                        ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @____bpf_map_delete_elem.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 9, ptr noundef null) #14
  br label %____bpf_map_delete_elem.exit

____bpf_map_delete_elem.exit:                     ; preds = %if.then.i, %land.rhs6.i.____bpf_map_delete_elem.exit_crit_edge, %land.rhs.i.____bpf_map_delete_elem.exit_crit_edge, %entry.____bpf_map_delete_elem.exit_crit_edge
  %conv1 = trunc i64 %key to i32
  %0 = inttoptr i32 %conv1 to ptr
  %conv = trunc i64 %map to i32
  %1 = inttoptr i32 %conv to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %map_delete_elem.i = getelementptr inbounds %struct.bpf_map_ops, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %map_delete_elem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_delete_elem.i, align 4
  %call41.i = tail call i32 %5(ptr noundef %1, ptr noundef %0) #14
  %conv.i = sext i32 %call41.i to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_map_push_elem(i64 noundef %map, i64 noundef %value, i64 noundef %flags, i64 %__ur_1, i64 %__ur_2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %value to i32
  %1 = inttoptr i32 %conv1 to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 128
  %map_push_elem.i = getelementptr inbounds %struct.bpf_map_ops, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %map_push_elem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_push_elem.i, align 4
  %call.i = tail call i32 %5(ptr noundef %0, ptr noundef %1, i64 noundef %flags) #14
  %conv.i = sext i32 %call.i to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_map_pop_elem(i64 noundef %map, i64 noundef %value, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %value to i32
  %1 = inttoptr i32 %conv1 to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 128
  %map_pop_elem.i = getelementptr inbounds %struct.bpf_map_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %map_pop_elem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_pop_elem.i, align 4
  %call.i = tail call i32 %5(ptr noundef %0, ptr noundef %1) #14
  %conv.i = sext i32 %call.i to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_map_peek_elem(i64 noundef %map, i64 noundef %value, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %value to i32
  %1 = inttoptr i32 %conv1 to ptr
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 128
  %map_peek_elem.i = getelementptr inbounds %struct.bpf_map_ops, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %map_peek_elem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_peek_elem.i, align 4
  %call.i = tail call i32 %5(ptr noundef %0, ptr noundef %1) #14
  %conv.i = sext i32 %call.i to i64
  ret i64 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @bpf_user_rnd_u32(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_get_smp_processor_id(i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4, i64 %__ur_5) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %conv.i = zext i32 %3 to i64
  ret i64 %conv.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_get_numa_node_id(i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4, i64 %__ur_5) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_ktime_get_ns(i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4, i64 %__ur_5) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #14
  ret i64 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_ktime_get_boot_ns(i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4, i64 %__ur_5) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_boot_fast_ns() #14
  ret i64 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_ktime_get_coarse_ns(i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4, i64 %__ur_5) #0 align 64 {
entry:
  %ts.i.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i.i) #14
  %0 = call ptr @memset(ptr %ts.i.i.i, i32 255, i32 16)
  call void @ktime_get_coarse_ts64(ptr noundef nonnull %ts.i.i.i) #14
  %1 = ptrtoint ptr %ts.i.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %.fca.0.load.i.i.i = load i64, ptr %ts.i.i.i, align 8
  %.fca.1.gep.i.i.i = getelementptr inbounds [2 x i64], ptr %ts.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %.fca.1.gep.i.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i64 %.fca.0.load.i.i.i, 9223372035
  %ts.sroa.2.8.extract.shift.i.i.i.i = lshr i64 %.fca.1.load.i.i.i, 32
  %mul.i.i.i.i.i = mul i64 %.fca.0.load.i.i.i, 1000000000
  %add.i.i.i.i.i = add i64 %ts.sroa.2.8.extract.shift.i.i.i.i, %mul.i.i.i.i.i
  %retval.0.i.i.i.i.i = select i1 %cmp.i.i.i.i.i, i64 9223372036854775807, i64 %add.i.i.i.i.i, !prof !144
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i.i) #14
  ret i64 %retval.0.i.i.i.i.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_get_current_pid_tgid(i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4, i64 %__ur_5) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task1.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.____bpf_get_current_pid_tgid.exit_crit_edge, label %if.end.i, !prof !144

entry.____bpf_get_current_pid_tgid.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_get_current_pid_tgid.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tgid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 69
  %4 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tgid.i, align 4
  %conv8.i = zext i32 %5 to i64
  %shl.i = shl nuw i64 %conv8.i, 32
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %6 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid.i, align 8
  %conv5.i = sext i32 %7 to i64
  %or.i = or i64 %shl.i, %conv5.i
  br label %____bpf_get_current_pid_tgid.exit

____bpf_get_current_pid_tgid.exit:                ; preds = %if.end.i, %entry.____bpf_get_current_pid_tgid.exit_crit_edge
  %retval.0.i = phi i64 [ %or.i, %if.end.i ], [ -22, %entry.____bpf_get_current_pid_tgid.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_get_current_uid_gid(i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4, i64 %__ur_5) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task1.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.____bpf_get_current_uid_gid.exit_crit_edge, label %do.body.i, !prof !144

entry.____bpf_get_current_uid_gid.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_get_current_uid_gid.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %uid8.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %uid8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %uid.sroa.0.0.copyload.i = load i32, ptr %uid8.i, align 4
  %gid9.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %gid9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %gid.sroa.0.0.copyload.i = load i32, ptr %gid9.i, align 4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %gid.sroa.0.0.copyload.i, 0
  %call12.i = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert.i) #14
  %conv.i = zext i32 %call12.i to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %.fca.0.insert19.i = insertvalue [1 x i32] poison, i32 %uid.sroa.0.0.copyload.i, 0
  %call14.i = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert19.i) #14
  %conv15.i = zext i32 %call14.i to i64
  %or.i = or i64 %shl.i, %conv15.i
  br label %____bpf_get_current_uid_gid.exit

____bpf_get_current_uid_gid.exit:                 ; preds = %do.body.i, %entry.____bpf_get_current_uid_gid.exit_crit_edge
  %retval.0.i = phi i64 [ %or.i, %do.body.i ], [ -22, %entry.____bpf_get_current_uid_gid.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_get_current_comm(i64 noundef %buf, i64 noundef %size, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %buf to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %size to i32
  %1 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task1.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task1.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %err_clear.i, label %if.end.i, !prof !144

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call5.i = tail call ptr @strncpy(ptr noundef %0, ptr noundef %comm.i, i32 noundef %conv1) #14
  %sub.i = add i32 %conv1, -1
  %arrayidx.i = getelementptr i8, ptr %0, i32 %sub.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  br label %____bpf_get_current_comm.exit

err_clear.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = call ptr @memset(ptr %0, i32 0, i32 %conv1)
  br label %____bpf_get_current_comm.exit

____bpf_get_current_comm.exit:                    ; preds = %err_clear.i, %if.end.i
  %retval.0.i = phi i64 [ -22, %err_clear.i ], [ 0, %if.end.i ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_spin_lock(i64 noundef %lock, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %lock to i32
  %0 = inttoptr i32 %conv to ptr
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %and.i.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.do.body1.i.i.i.preheader_crit_edge

entry.do.body1.i.i.i.preheader_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i.preheader

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.body1.i.i.i.preheader

do.body1.i.i.i.preheader:                         ; preds = %if.then.i.i, %entry.do.body1.i.i.i.preheader_crit_edge
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %for.end.i.i.i.do.body1.i.i.i_crit_edge, %do.body1.i.i.i.preheader
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not20.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not20.i.i.i, label %do.body1.i.i.i.for.end.i.i.i_crit_edge, label %do.body1.i.i.i.do.end9.i.i.i_crit_edge

do.body1.i.i.i.do.end9.i.i.i_crit_edge:           ; preds = %do.body1.i.i.i
  br label %do.end9.i.i.i

do.body1.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

do.end9.i.i.i:                                    ; preds = %do.end9.i.i.i.do.end9.i.i.i_crit_edge, %do.body1.i.i.i.do.end9.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !146
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !147
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %0, align 4
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %do.end9.i.i.i.for.end.i.i.i_crit_edge, label %do.end9.i.i.i.do.end9.i.i.i_crit_edge

do.end9.i.i.i.do.end9.i.i.i_crit_edge:            ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i.i

do.end9.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %do.end9.i.i.i.for.end.i.i.i_crit_edge, %do.body1.i.i.i.for.end.i.i.i_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %0, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %0, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %0) #14, !srcloc !149
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !150
  %tobool16.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %____bpf_spin_lock.exit, label %for.end.i.i.i.do.body1.i.i.i_crit_edge

for.end.i.i.i.do.body1.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i

____bpf_spin_lock.exit:                           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i29.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i29.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, ptrtoint (ptr @irqsave_flags to i32)
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %1, ptr %13, align 4
  ret i64 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_spin_unlock(i64 noundef %lock, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %lock to i32
  %0 = inttoptr i32 %conv to ptr
  %1 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %6, ptrtoint (ptr @irqsave_flags to i32)
  %7 = inttoptr i32 %add.i.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %0, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %0, align 4
  %and.i34.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i34.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.do.body13.i.i_crit_edge

entry.do.body13.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body13.i.i

do.body13.i.i:                                    ; preds = %if.then.i.i, %entry.do.body13.i.i_crit_edge
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool21.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then25.i.i, label %do.body13.i.i.____bpf_spin_unlock.exit_crit_edge, !prof !144

do.body13.i.i.____bpf_spin_unlock.exit_crit_edge: ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_spin_unlock.exit

if.then25.i.i:                                    ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %____bpf_spin_unlock.exit

____bpf_spin_unlock.exit:                         ; preds = %if.then25.i.i, %do.body13.i.i.____bpf_spin_unlock.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #14, !srcloc !153
  ret i64 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @copy_map_value_locked(ptr nocapture noundef readonly %map, ptr noundef %dst, ptr noundef %src, i1 noundef zeroext %lock_src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %spin_lock_off = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %0 = ptrtoint ptr %spin_lock_off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spin_lock_off, align 4
  %src.dst = select i1 %lock_src, ptr %src, ptr %dst
  %add.ptr = getelementptr i8, ptr %src.dst, i32 %1
  %2 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !154
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.body1.i.i.preheader_crit_edge

entry.do.body1.i.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.preheader

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.body1.i.i.preheader

do.body1.i.i.preheader:                           ; preds = %if.then.i, %entry.do.body1.i.i.preheader_crit_edge
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %for.end.i.i.do.body1.i.i_crit_edge, %do.body1.i.i.preheader
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not20.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not20.i.i, label %do.body1.i.i.for.end.i.i_crit_edge, label %do.body1.i.i.do.end9.i.i_crit_edge

do.body1.i.i.do.end9.i.i_crit_edge:               ; preds = %do.body1.i.i
  br label %do.end9.i.i

do.body1.i.i.for.end.i.i_crit_edge:               ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

do.end9.i.i:                                      ; preds = %do.end9.i.i.do.end9.i.i_crit_edge, %do.body1.i.i.do.end9.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !146
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !147
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %add.ptr, align 4
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %do.end9.i.i.for.end.i.i_crit_edge, label %do.end9.i.i.do.end9.i.i_crit_edge

do.end9.i.i.do.end9.i.i_crit_edge:                ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i

do.end9.i.i.for.end.i.i_crit_edge:                ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %do.end9.i.i.for.end.i.i_crit_edge, %do.body1.i.i.for.end.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %add.ptr) #14, !srcloc !149
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !150
  %tobool16.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool16.not.i.i, label %__bpf_spin_lock_irqsave.exit, label %for.end.i.i.do.body1.i.i_crit_edge

for.end.i.i.do.body1.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i

__bpf_spin_lock_irqsave.exit:                     ; preds = %for.end.i.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i29.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i29.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i13 = add i32 %17, ptrtoint (ptr @irqsave_flags to i32)
  %18 = inttoptr i32 %add.i13 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %6, ptr %18, align 4
  %spin_lock_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 9
  %20 = ptrtoint ptr %spin_lock_off.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %spin_lock_off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.i = icmp sgt i32 %21, -1
  %timer_off.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 10
  %22 = ptrtoint ptr %timer_off.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timer_off.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i69.i = icmp sgt i32 %23, -1
  br i1 %cmp.i.i, label %if.end.i, label %if.end.thread.i, !prof !144

if.end.i:                                         ; preds = %__bpf_spin_lock_irqsave.exit
  %24 = lshr i32 %23, 27
  %25 = and i32 %24, 16
  %26 = xor i32 %25, 16
  %spec.select97.i = select i1 %cmp.i69.i, i32 %23, i32 0, !prof !144
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %spec.select97.i)
  %cmp.i.not = icmp ult i32 %21, %spec.select97.i
  br i1 %cmp.i.not, label %if.end.i.do.body.i_crit_edge, label %if.end.i.if.end26.i_crit_edge

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.end.thread.i:                                  ; preds = %__bpf_spin_lock_irqsave.exit
  br i1 %cmp.i69.i, label %if.end.thread.i.do.body.i_crit_edge, label %if.else.i, !prof !144

if.end.thread.i.do.body.i_crit_edge:              ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.thread.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %t_sz.07495.i = phi i32 [ %26, %if.end.i.do.body.i_crit_edge ], [ 16, %if.end.thread.i.do.body.i_crit_edge ]
  %s_sz.08194.i = phi i32 [ 4, %if.end.i.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  %s_off.08393.i = phi i32 [ %21, %if.end.i.do.body.i_crit_edge ], [ 0, %if.end.thread.i.do.body.i_crit_edge ]
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.body.i, %if.end.i.if.end26.i_crit_edge
  %t_off.1.i = phi i32 [ %s_off.08393.i, %do.body.i ], [ %spec.select97.i, %if.end.i.if.end26.i_crit_edge ]
  %t_sz.1.i = phi i32 [ %s_sz.08194.i, %do.body.i ], [ %26, %if.end.i.if.end26.i_crit_edge ]
  %s_sz.1.i = phi i32 [ %t_sz.07495.i, %do.body.i ], [ 4, %if.end.i.if.end26.i_crit_edge ]
  %s_off.1.i = phi i32 [ %23, %do.body.i ], [ %21, %if.end.i.if.end26.i_crit_edge ]
  %27 = call ptr @memcpy(ptr %dst, ptr %src, i32 %t_off.1.i)
  %add.ptr.i = getelementptr i8, ptr %dst, i32 %t_off.1.i
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i, i32 %t_sz.1.i
  %add.ptr28.i = getelementptr i8, ptr %src, i32 %t_off.1.i
  %add.ptr29.i = getelementptr i8, ptr %add.ptr28.i, i32 %t_sz.1.i
  %28 = add i32 %t_sz.1.i, %t_off.1.i
  %sub30.i = sub i32 %s_off.1.i, %28
  %29 = call ptr @memcpy(ptr %add.ptr27.i, ptr %add.ptr29.i, i32 %sub30.i)
  %add.ptr31.i = getelementptr i8, ptr %dst, i32 %s_off.1.i
  %add.ptr32.i = getelementptr i8, ptr %add.ptr31.i, i32 %s_sz.1.i
  %add.ptr33.i = getelementptr i8, ptr %src, i32 %s_off.1.i
  %add.ptr34.i = getelementptr i8, ptr %add.ptr33.i, i32 %s_sz.1.i
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %30 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value_size.i, align 4
  %32 = add i32 %s_off.1.i, %s_sz.1.i
  %sub36.i = sub i32 %31, %32
  %33 = call ptr @memcpy(ptr %add.ptr32.i, ptr %add.ptr34.i, i32 %sub36.i)
  br label %copy_map_value.exit

if.else.i:                                        ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %value_size37.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %34 = ptrtoint ptr %value_size37.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %value_size37.i, align 4
  %36 = call ptr @memcpy(ptr %dst, ptr %src, i32 %35)
  br label %copy_map_value.exit

copy_map_value.exit:                              ; preds = %if.else.i, %if.end26.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i14 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i14 to ptr
  %cpu.i15 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i15, align 4
  %arrayidx.i16 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i16, align 4
  %add.i17 = add i32 %42, ptrtoint (ptr @irqsave_flags to i32)
  %43 = inttoptr i32 %add.i17 to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %call.i.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 0, ptr %add.ptr, align 4
  %and.i34.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i)
  %tobool.not.i19 = icmp eq i32 %and.i34.i, 0
  br i1 %tobool.not.i19, label %if.then.i20, label %copy_map_value.exit.do.body13.i_crit_edge

copy_map_value.exit.do.body13.i_crit_edge:        ; preds = %copy_map_value.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13.i

if.then.i20:                                      ; preds = %copy_map_value.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body13.i

do.body13.i:                                      ; preds = %if.then.i20, %copy_map_value.exit.do.body13.i_crit_edge
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i.i21 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i21)
  %tobool21.not.i = icmp eq i32 %and.i.i.i21, 0
  br i1 %tobool21.not.i, label %if.then25.i, label %do.body13.i.__bpf_spin_unlock_irqrestore.exit_crit_edge, !prof !144

do.body13.i.__bpf_spin_unlock_irqrestore.exit_crit_edge: ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bpf_spin_unlock_irqrestore.exit

if.then25.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %__bpf_spin_unlock_irqrestore.exit

__bpf_spin_unlock_irqrestore.exit:                ; preds = %if.then25.i, %do.body13.i.__bpf_spin_unlock_irqrestore.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #14, !srcloc !153
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !155
  %48 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i11 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i11 to ptr
  %preempt_count.i.i12 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i12, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i12, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_jiffies64(i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4, i64 %__ur_5) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @get_jiffies_64() #14
  ret i64 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_get_current_cgroup_id(i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4, i64 %__ur_5) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !156
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %cgroups.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 164
  %8 = ptrtoint ptr %cgroups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cgroups.i.i.i, align 16
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.task_dfl_cgroup.exit.i_crit_edge

rcu_read_lock.exit.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call.i18.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i18.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false4.i.i.i, label %lor.lhs.false.i.i.i.task_dfl_cgroup.exit.i_crit_edge

lor.lhs.false.i.i.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

lor.lhs.false4.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false6.i.i.i, label %lor.lhs.false4.i.i.i.task_dfl_cgroup.exit.i_crit_edge

lor.lhs.false4.i.i.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %lor.lhs.false4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

lor.lhs.false6.i.i.i:                             ; preds = %lor.lhs.false4.i.i.i
  %call7.i.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false6.i.i.i.task_dfl_cgroup.exit.i_crit_edge

lor.lhs.false6.i.i.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %lor.lhs.false6.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false6.i.i.i
  %call9.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true.i.i.i.task_dfl_cgroup.exit.i_crit_edge, label %land.lhs.true11.i.i.i

land.lhs.true.i.i.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %.b17.i.i.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i.i.i, label %land.lhs.true11.i.i.i.task_dfl_cgroup.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true11.i.i.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 481, ptr noundef nonnull @.str.7) #14
  br label %task_dfl_cgroup.exit.i

task_dfl_cgroup.exit.i:                           ; preds = %if.then.i.i.i, %land.lhs.true11.i.i.i.task_dfl_cgroup.exit.i_crit_edge, %land.lhs.true.i.i.i.task_dfl_cgroup.exit.i_crit_edge, %lor.lhs.false6.i.i.i.task_dfl_cgroup.exit.i_crit_edge, %lor.lhs.false4.i.i.i.task_dfl_cgroup.exit.i_crit_edge, %lor.lhs.false.i.i.i.task_dfl_cgroup.exit.i_crit_edge, %rcu_read_lock.exit.i.task_dfl_cgroup.exit.i_crit_edge
  %dfl_cgrp.i.i = getelementptr inbounds %struct.css_set, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %dfl_cgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dfl_cgrp.i.i, align 4
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %kn.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kn.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %id.i.i, align 8
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3.i, label %task_dfl_cgroup.exit.i.____bpf_get_current_cgroup_id.exit_crit_edge, label %land.lhs.true.i6.i

task_dfl_cgroup.exit.i.____bpf_get_current_cgroup_id.exit_crit_edge: ; preds = %task_dfl_cgroup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_get_current_cgroup_id.exit

land.lhs.true.i6.i:                               ; preds = %task_dfl_cgroup.exit.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.____bpf_get_current_cgroup_id.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.____bpf_get_current_cgroup_id.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_get_current_cgroup_id.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.____bpf_get_current_cgroup_id.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.____bpf_get_current_cgroup_id.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_get_current_cgroup_id.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #14
  br label %____bpf_get_current_cgroup_id.exit

____bpf_get_current_cgroup_id.exit:               ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.____bpf_get_current_cgroup_id.exit_crit_edge, %land.lhs.true.i6.i.____bpf_get_current_cgroup_id.exit_crit_edge, %task_dfl_cgroup.exit.i.____bpf_get_current_cgroup_id.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  %18 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i.i.i10.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i64 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_get_current_ancestor_cgroup_id(i64 noundef %ancestor_level, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ancestor_level to i32
  %0 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !156
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %cgroups.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 164
  %8 = ptrtoint ptr %cgroups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cgroups.i.i.i, align 16
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.task_dfl_cgroup.exit.i_crit_edge

rcu_read_lock.exit.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call.i18.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i18.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false4.i.i.i, label %lor.lhs.false.i.i.i.task_dfl_cgroup.exit.i_crit_edge

lor.lhs.false.i.i.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

lor.lhs.false4.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false6.i.i.i, label %lor.lhs.false4.i.i.i.task_dfl_cgroup.exit.i_crit_edge

lor.lhs.false4.i.i.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %lor.lhs.false4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

lor.lhs.false6.i.i.i:                             ; preds = %lor.lhs.false4.i.i.i
  %call7.i.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false6.i.i.i.task_dfl_cgroup.exit.i_crit_edge

lor.lhs.false6.i.i.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %lor.lhs.false6.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false6.i.i.i
  %call9.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true.i.i.i.task_dfl_cgroup.exit.i_crit_edge, label %land.lhs.true11.i.i.i

land.lhs.true.i.i.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %.b17.i.i.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i.i.i, label %land.lhs.true11.i.i.i.task_dfl_cgroup.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true11.i.i.i.task_dfl_cgroup.exit.i_crit_edge: ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_dfl_cgroup.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 481, ptr noundef nonnull @.str.7) #14
  br label %task_dfl_cgroup.exit.i

task_dfl_cgroup.exit.i:                           ; preds = %if.then.i.i.i, %land.lhs.true11.i.i.i.task_dfl_cgroup.exit.i_crit_edge, %land.lhs.true.i.i.i.task_dfl_cgroup.exit.i_crit_edge, %lor.lhs.false6.i.i.i.task_dfl_cgroup.exit.i_crit_edge, %lor.lhs.false4.i.i.i.task_dfl_cgroup.exit.i_crit_edge, %lor.lhs.false.i.i.i.task_dfl_cgroup.exit.i_crit_edge, %rcu_read_lock.exit.i.task_dfl_cgroup.exit.i_crit_edge
  %dfl_cgrp.i.i = getelementptr inbounds %struct.css_set, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %dfl_cgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dfl_cgrp.i.i, align 4
  %level.i.i = getelementptr inbounds %struct.cgroup, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %level.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv)
  %cmp.i.i = icmp slt i32 %15, %conv
  %tobool.not8.i.i = icmp eq ptr %13, null
  %or.cond.i.i = or i1 %tobool.not8.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %task_dfl_cgroup.exit.i.cond.end.i_crit_edge, label %task_dfl_cgroup.exit.i.land.rhs.i.i_crit_edge

task_dfl_cgroup.exit.i.land.rhs.i.i_crit_edge:    ; preds = %task_dfl_cgroup.exit.i
  br label %land.rhs.i.i

task_dfl_cgroup.exit.i.cond.end.i_crit_edge:      ; preds = %task_dfl_cgroup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %task_dfl_cgroup.exit.i.land.rhs.i.i_crit_edge
  %cgrp.addr.09.i.i = phi ptr [ %19, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %13, %task_dfl_cgroup.exit.i.land.rhs.i.i_crit_edge ]
  %level1.i.i = getelementptr inbounds %struct.cgroup, ptr %cgrp.addr.09.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %level1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %level1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp2.i.i = icmp sgt i32 %17, %conv
  br i1 %cmp2.i.i, label %while.body.i.i, label %cond.true.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %parent.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp.addr.09.i.i, i32 0, i32 12
  %18 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i = icmp eq ptr %19, null
  br i1 %tobool.not.i5.i, label %while.body.i.i.cond.end.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

while.body.i.i.cond.end.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %kn.i.i = getelementptr inbounds %struct.cgroup, ptr %cgrp.addr.09.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %kn.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kn.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.kernfs_node, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %id.i.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %while.body.i.i.cond.end.i_crit_edge, %task_dfl_cgroup.exit.i.cond.end.i_crit_edge
  %cond.i = phi i64 [ %23, %cond.true.i ], [ 0, %task_dfl_cgroup.exit.i.cond.end.i_crit_edge ], [ 0, %while.body.i.i.cond.end.i_crit_edge ]
  %call.i6.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i6.i, label %cond.end.i.____bpf_get_current_ancestor_cgroup_id.exit_crit_edge, label %land.lhs.true.i9.i

cond.end.i.____bpf_get_current_ancestor_cgroup_id.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_get_current_ancestor_cgroup_id.exit

land.lhs.true.i9.i:                               ; preds = %cond.end.i
  %call1.i7.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %tobool.not.i8.i = icmp eq i32 %call1.i7.i, 0
  br i1 %tobool.not.i8.i, label %land.lhs.true.i9.i.____bpf_get_current_ancestor_cgroup_id.exit_crit_edge, label %land.lhs.true2.i11.i

land.lhs.true.i9.i.____bpf_get_current_ancestor_cgroup_id.exit_crit_edge: ; preds = %land.lhs.true.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_get_current_ancestor_cgroup_id.exit

land.lhs.true2.i11.i:                             ; preds = %land.lhs.true.i9.i
  %.b4.i10.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10.i, label %land.lhs.true2.i11.i.____bpf_get_current_ancestor_cgroup_id.exit_crit_edge, label %if.then.i12.i

land.lhs.true2.i11.i.____bpf_get_current_ancestor_cgroup_id.exit_crit_edge: ; preds = %land.lhs.true2.i11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_get_current_ancestor_cgroup_id.exit

if.then.i12.i:                                    ; preds = %land.lhs.true2.i11.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.8) #14
  br label %____bpf_get_current_ancestor_cgroup_id.exit

____bpf_get_current_ancestor_cgroup_id.exit:      ; preds = %if.then.i12.i, %land.lhs.true2.i11.i.____bpf_get_current_ancestor_cgroup_id.exit_crit_edge, %land.lhs.true.i9.i.____bpf_get_current_ancestor_cgroup_id.exit_crit_edge, %cond.end.i.____bpf_get_current_ancestor_cgroup_id.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !157
  %24 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i.i.i13.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i13.i to ptr
  %preempt_count.i.i.i.i14.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i14.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i14.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i64 %cond.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_get_local_storage(i64 noundef %map, i64 %flags, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %map_type.i.i = getelementptr inbounds %struct.bpf_map, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %map_type.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %map_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 21
  %..i.i = zext i1 %cmp.i.i to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %bpf_ctx.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 217
  %7 = ptrtoint ptr %bpf_ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bpf_ctx.i, align 8
  %prog_item.i = getelementptr inbounds %struct.bpf_cg_run_ctx, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prog_item.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prog_item.i, align 4
  %11 = getelementptr inbounds %struct.bpf_prog_array_item, ptr %10, i32 0, i32 1
  %arrayidx.i = getelementptr [2 x ptr], ptr %11, i32 0, i32 %..i.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  br i1 %cmp.i.i, label %do.body4.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 8
  %data.i = getelementptr inbounds %struct.bpf_storage_buffer, ptr %15, i32 0, i32 1
  br label %____bpf_get_local_storage.exit

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 8
  %18 = ptrtoint ptr %17 to i32
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  %arrayidx10.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx10.i, align 4
  %add.i = add i32 %22, %18
  %23 = inttoptr i32 %add.i to ptr
  br label %____bpf_get_local_storage.exit

____bpf_get_local_storage.exit:                   ; preds = %do.body4.i, %do.end.i
  %ptr.0.i = phi ptr [ %data.i, %do.end.i ], [ %23, %do.body4.i ]
  %24 = ptrtoint ptr %ptr.0.i to i32
  %conv.i = zext i32 %24 to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_strtol(i64 noundef %buf, i64 noundef %buf_len, i64 noundef %flags, i64 noundef %res, i64 %__ur_1) #0 align 64 {
entry:
  %_res.i.i = alloca i64, align 8
  %is_negative.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %buf to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %buf_len to i32
  %conv2 = trunc i64 %res to i32
  %1 = inttoptr i32 %conv2 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_res.i.i) #14
  %2 = ptrtoint ptr %_res.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %_res.i.i, align 8, !annotation !158
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_negative.i.i) #14
  %3 = ptrtoint ptr %is_negative.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %is_negative.i.i, align 1, !annotation !158
  %call.i.i = call fastcc i32 @__bpf_strtoull(ptr noundef %0, i32 noundef %conv1, i64 noundef %flags, ptr noundef nonnull %_res.i.i, ptr noundef nonnull %is_negative.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry
  %4 = ptrtoint ptr %is_negative.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_negative.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %_res.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %_res.i.i, align 8
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  %sub.i.i = sub i64 0, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp2.i.i = icmp sgt i64 %sub.i.i, 0
  br i1 %cmp2.i.i, label %if.then1.i.i.if.then.i_crit_edge, label %if.then1.i.i.if.end.i_crit_edge

if.then1.i.i.if.end.i_crit_edge:                  ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then1.i.i.if.then.i_crit_edge:                 ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp6.i.i = icmp slt i64 %7, 0
  br i1 %cmp6.i.i, label %if.else.i.i.if.then.i_crit_edge, label %if.else.i.i.if.end.i_crit_edge

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.else.i.i.if.then.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %if.else.i.i.if.then.i_crit_edge, %if.then1.i.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -34, %if.else.i.i.if.then.i_crit_edge ], [ -34, %if.then1.i.i.if.then.i_crit_edge ], [ %call.i.i, %entry.if.then.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_negative.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_res.i.i) #14
  %conv.i = sext i32 %retval.0.i.ph.i to i64
  br label %____bpf_strtol.exit

if.end.i:                                         ; preds = %if.else.i.i.if.end.i_crit_edge, %if.then1.i.i.if.end.i_crit_edge
  %storemerge.i.i = phi i64 [ %sub.i.i, %if.then1.i.i.if.end.i_crit_edge ], [ %7, %if.else.i.i.if.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_negative.i.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_res.i.i) #14
  %conv1.i = trunc i64 %storemerge.i.i to i32
  %conv2.i = sext i32 %conv1.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %storemerge.i.i, i64 %conv2.i)
  %cmp3.not.i = icmp eq i64 %storemerge.i.i, %conv2.i
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end.i.____bpf_strtol.exit_crit_edge

if.end.i.____bpf_strtol.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_strtol.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv1.i, ptr %1, align 4
  %conv816.i = zext i32 %call.i.i to i64
  br label %____bpf_strtol.exit

____bpf_strtol.exit:                              ; preds = %if.end6.i, %if.end.i.____bpf_strtol.exit_crit_edge, %if.then.i
  %retval.0.i = phi i64 [ %conv.i, %if.then.i ], [ %conv816.i, %if.end6.i ], [ -34, %if.end.i.____bpf_strtol.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_strtoul(i64 noundef %buf, i64 noundef %buf_len, i64 noundef %flags, i64 noundef %res, i64 %__ur_1) #0 align 64 {
entry:
  %_res.i = alloca i64, align 8
  %is_negative.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %buf to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %buf_len to i32
  %conv2 = trunc i64 %res to i32
  %1 = inttoptr i32 %conv2 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_res.i) #14
  %2 = ptrtoint ptr %_res.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %_res.i, align 8, !annotation !158
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_negative.i) #14
  %3 = ptrtoint ptr %is_negative.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %is_negative.i, align 1, !annotation !158
  %call.i = call fastcc i32 @__bpf_strtoull(ptr noundef %0, i32 noundef %conv1, i64 noundef %flags, ptr noundef nonnull %_res.i, ptr noundef nonnull %is_negative.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = sext i32 %call.i to i64
  br label %____bpf_strtoul.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %is_negative.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_negative.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.____bpf_strtoul.exit_crit_edge

if.end.i.____bpf_strtoul.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_strtoul.exit

if.end2.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %_res.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %7)
  %8 = icmp ult i64 %7, 4294967296
  br i1 %8, label %if.end8.i, label %if.end2.i.____bpf_strtoul.exit_crit_edge

if.end2.i.____bpf_strtoul.exit_crit_edge:         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_strtoul.exit

if.end8.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv3.i = trunc i64 %7 to i32
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv3.i, ptr %1, align 4
  %conv1015.i = zext i32 %call.i to i64
  br label %____bpf_strtoul.exit

____bpf_strtoul.exit:                             ; preds = %if.end8.i, %if.end2.i.____bpf_strtoul.exit_crit_edge, %if.end.i.____bpf_strtoul.exit_crit_edge, %if.then.i
  %retval.0.i = phi i64 [ %conv.i, %if.then.i ], [ %conv1015.i, %if.end8.i ], [ -22, %if.end.i.____bpf_strtoul.exit_crit_edge ], [ -34, %if.end2.i.____bpf_strtoul.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_negative.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_res.i) #14
  ret i64 %retval.0.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_strncmp(i64 noundef %s1, i64 noundef %s1_sz, i64 noundef %s2, i64 %__ur_1, i64 %__ur_2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %s1 to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %s1_sz to i32
  %conv2 = trunc i64 %s2 to i32
  %1 = inttoptr i32 %conv2 to ptr
  %call.i = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i32 noundef %conv1) #14
  %conv.i = sext i32 %call.i to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_get_ns_current_pid_tgid(i64 noundef %dev, i64 noundef %ino, i64 noundef %nsdata, i64 noundef %size, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %nsdata to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %size to i32
  %1 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task1.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv1)
  %cmp.not.i = icmp eq i32 %conv1, 8
  br i1 %cmp.not.i, label %if.end.i, label %entry.clear.i_crit_edge, !prof !143

entry.clear.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %clear.i

if.end.i:                                         ; preds = %entry
  %conv.i = trunc i64 %dev to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %dev)
  %5 = icmp ugt i64 %dev, 4294967295
  %tobool14.not.i = icmp eq ptr %4, null
  %or.cond.i = select i1 %5, i1 true, i1 %tobool14.not.i
  br i1 %or.cond.i, label %if.end.i.clear.i_crit_edge, label %if.end24.i, !prof !160

if.end.i.clear.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clear.i

if.end24.i:                                       ; preds = %if.end.i
  %call25.i = tail call ptr @task_active_pid_ns(ptr noundef nonnull %4) #14
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.end24.i.clear.i_crit_edge, label %if.end36.i, !prof !144

if.end24.i.clear.i_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clear.i

if.end36.i:                                       ; preds = %if.end24.i
  %ns.i = getelementptr inbounds %struct.pid_namespace, ptr %call25.i, i32 0, i32 11
  %conv38.i = trunc i64 %ino to i32
  %call39.i = tail call zeroext i1 @ns_match(ptr noundef %ns.i, i32 noundef %conv.i, i32 noundef %conv38.i) #14
  br i1 %call39.i, label %if.end41.i, label %if.end36.i.clear.i_crit_edge

if.end36.i.clear.i_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clear.i

if.end41.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %call25.i) #14
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %0, align 4
  %call.i58.i = tail call i32 @__task_pid_nr_ns(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %call25.i) #14
  %tgid.i = getelementptr inbounds %struct.bpf_pidns_info, ptr %0, i32 0, i32 1
  %7 = ptrtoint ptr %tgid.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i58.i, ptr %tgid.i, align 4
  br label %____bpf_get_ns_current_pid_tgid.exit

clear.i:                                          ; preds = %if.end36.i.clear.i_crit_edge, %if.end24.i.clear.i_crit_edge, %if.end.i.clear.i_crit_edge, %entry.clear.i_crit_edge
  %err.0.i = phi i32 [ -22, %entry.clear.i_crit_edge ], [ -22, %if.end.i.clear.i_crit_edge ], [ -22, %if.end36.i.clear.i_crit_edge ], [ -2, %if.end24.i.clear.i_crit_edge ]
  %8 = call ptr @memset(ptr %0, i32 0, i32 %conv1)
  %conv44.i = sext i32 %err.0.i to i64
  br label %____bpf_get_ns_current_pid_tgid.exit

____bpf_get_ns_current_pid_tgid.exit:             ; preds = %clear.i, %if.end41.i
  %retval.0.i = phi i64 [ %conv44.i, %clear.i ], [ 0, %if.end41.i ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_event_output_data(i64 noundef %ctx, i64 noundef %map, i64 noundef %flags, i64 noundef %data, i64 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %flags)
  %tobool.not.i = icmp ult i64 %flags, 4294967296
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_event_output_data.exit_crit_edge, !prof !143

entry.____bpf_event_output_data.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_event_output_data.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv2 = trunc i64 %data to i32
  %0 = inttoptr i32 %conv2 to ptr
  %conv1 = trunc i64 %map to i32
  %1 = inttoptr i32 %conv1 to ptr
  %call.i = tail call i64 @bpf_event_output(ptr noundef %1, i64 noundef %flags, ptr noundef %0, i64 noundef %size, ptr noundef null, i64 noundef 0, ptr noundef null) #14
  br label %____bpf_event_output_data.exit

____bpf_event_output_data.exit:                   ; preds = %if.end.i, %entry.____bpf_event_output_data.exit_crit_edge
  %retval.0.i = phi i64 [ %call.i, %if.end.i ], [ -22, %entry.____bpf_event_output_data.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_copy_from_user(i64 noundef %dst, i64 noundef %size, i64 noundef %user_ptr, i64 %__ur_1, i64 %__ur_2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %dst to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %size to i32
  %conv2 = trunc i64 %user_ptr to i32
  %1 = inttoptr i32 %conv2 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp9.i.i.i = icmp slt i32 %conv1, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %entry
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.if.then.i_crit_edge, label %if.then27.i.i.i, !prof !143

land.rhs16.i.i.i.if.then.i_crit_edge:             ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %if.then.i

if.then.i.i.i.i:                                  ; preds = %entry
  tail call void @__check_object_size(ptr noundef %0, i32 noundef %conv1, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #14
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %conv1, i32 -1226833920) #17, !srcloc !161
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !143

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %0, i32 noundef %conv1) #14
  %3 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #12, !srcloc !162
  %and.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !164
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef %conv1) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #14, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !164
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %conv1, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %conv1, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.____bpf_copy_from_user.exit_crit_edge, label %if.then11.i.i.i, !prof !143

if.end.i.i.i.____bpf_copy_from_user.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_copy_from_user.exit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = sub i32 %conv1, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %0, i32 %sub.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %if.then.i

if.then.i:                                        ; preds = %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.if.then.i_crit_edge
  %7 = call ptr @memset(ptr %0, i32 0, i32 %conv1)
  br label %____bpf_copy_from_user.exit

____bpf_copy_from_user.exit:                      ; preds = %if.then.i, %if.end.i.i.i.____bpf_copy_from_user.exit_crit_edge
  %ret.0.i = phi i32 [ -14, %if.then.i ], [ 0, %if.end.i.i.i.____bpf_copy_from_user.exit_crit_edge ]
  %conv.i = sext i32 %ret.0.i to i64
  ret i64 %conv.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_per_cpu_ptr(i64 noundef %ptr, i64 noundef %cpu, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = trunc i64 %cpu to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %conv1)
  %cmp.not.i = icmp ugt i32 %0, %conv1
  br i1 %cmp.not.i, label %do.body.i, label %entry.____bpf_per_cpu_ptr.exit_crit_edge

entry.____bpf_per_cpu_ptr.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_per_cpu_ptr.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i64 %ptr to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %conv1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %2, %conv
  %conv.i = zext i32 %add.i to i64
  br label %____bpf_per_cpu_ptr.exit

____bpf_per_cpu_ptr.exit:                         ; preds = %do.body.i, %entry.____bpf_per_cpu_ptr.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %do.body.i ], [ 0, %entry.____bpf_per_cpu_ptr.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_this_cpu_ptr(i64 noundef %percpu_ptr, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %percpu_ptr to i32
  %0 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, %conv
  %conv.i = zext i32 %add.i to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_bprintf_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !165
  %4 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @bpf_bprintf_nest_level to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !166
  %13 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i70 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i70 to ptr
  %preempt_count.i.i71 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i71 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i71, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.if.end69_crit_edge, label %do.body20

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

do.body20:                                        ; preds = %entry
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx40, align 4
  %add41 = add i32 %21, ptrtoint (ptr @bpf_bprintf_nest_level to i32)
  %22 = inttoptr i32 %add41 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add42 = add i32 %24, -1
  store i32 %add42, ptr %22, align 4
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool53.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool53.not, label %if.then57, label %do.body20.do.end59_crit_edge, !prof !144

do.body20.do.end59_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end59

if.then57:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end59

do.end59:                                         ; preds = %if.then57, %do.body20.do.end59_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #14, !srcloc !153
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !167
  %26 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i72 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i72 to ptr
  %preempt_count.i.i73 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i73 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i73, align 4
  %sub.i74 = add i32 %29, -1
  store volatile i32 %sub.i74, ptr %preempt_count.i.i73, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end59, %entry.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_bprintf_prepare(ptr noundef %fmt, i32 noundef %fmt_size, ptr nocapture noundef readonly %raw_args, ptr noundef writeonly %bin_args, i32 noundef %num_args) local_unnamed_addr #0 align 64 {
entry:
  %cur_ip = alloca [16 x i8], align 1
  %ip_spec = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cur_ip) #14
  %0 = call ptr @memset(ptr %cur_ip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %ip_spec) #14
  %1 = call ptr @memcpy(ptr %ip_spec, ptr @__const.bpf_bprintf_prepare.ip_spec, i32 5)
  %call = tail call ptr @strnchr(ptr noundef %fmt, i32 noundef %fmt_size, i32 noundef 0) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %fmt to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool1.not = icmp eq ptr %bin_args, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_args)
  %tobool3.not = icmp eq i32 %num_args, 0
  br i1 %tobool3.not, label %if.then2.if.end7_crit_edge, label %land.lhs.true

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

land.lhs.true:                                    ; preds = %if.then2
  %2 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %7 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, ptrtoint (ptr @bpf_bprintf_nest_level to i32)
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add14.i = add i32 %15, 1
  store i32 %add14.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.do.end28.i_crit_edge, !prof !144

land.lhs.true.do.end28.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end28.i

do.end28.i:                                       ; preds = %if.then.i, %land.lhs.true.do.end28.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #14, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add14.i)
  %cmp33.i = icmp sgt i32 %add14.i, 3
  br i1 %cmp33.i, label %land.rhs.i, label %try_get_fmt_tmp_buf.exit.thread

land.rhs.i:                                       ; preds = %do.end28.i
  %.b165.i = load i1, ptr @try_get_fmt_tmp_buf.__already_done, align 1
  br i1 %.b165.i, label %land.rhs.i.do.body87.i_crit_edge, label %if.then50.i, !prof !143

land.rhs.i.do.body87.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body87.i

if.then50.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @try_get_fmt_tmp_buf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 746, i32 noundef 9, ptr noundef null) #14
  br label %do.body87.i

do.body87.i:                                      ; preds = %if.then50.i, %land.rhs.i.do.body87.i_crit_edge
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx112.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx112.i, align 4
  %add113.i = add i32 %21, ptrtoint (ptr @bpf_bprintf_nest_level to i32)
  %22 = inttoptr i32 %add113.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add114.i = add i32 %24, -1
  store i32 %add114.i, ptr %22, align 4
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i169.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i169.i)
  %tobool125.not.i = icmp eq i32 %and.i.i169.i, 0
  br i1 %tobool125.not.i, label %if.then134.i, label %do.body87.i.try_get_fmt_tmp_buf.exit_crit_edge, !prof !144

do.body87.i.try_get_fmt_tmp_buf.exit_crit_edge:   ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %try_get_fmt_tmp_buf.exit

if.then134.i:                                     ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %try_get_fmt_tmp_buf.exit

try_get_fmt_tmp_buf.exit.thread:                  ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx157.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx157.i, align 4
  %add158.i = add i32 %29, ptrtoint (ptr @bpf_bprintf_bufs to i32)
  %30 = inttoptr i32 %add158.i to ptr
  %arrayidx159.i = getelementptr [3 x [512 x i8]], ptr %30, i32 0, i32 %15
  br label %if.end7

try_get_fmt_tmp_buf.exit:                         ; preds = %if.then134.i, %do.body87.i.try_get_fmt_tmp_buf.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #14, !srcloc !153
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %31 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  br label %cleanup.sink.split

if.end7:                                          ; preds = %try_get_fmt_tmp_buf.exit.thread, %if.then2.if.end7_crit_edge
  %tmp_buf.1 = phi ptr [ null, %if.then2.if.end7_crit_edge ], [ %arrayidx159.i, %try_get_fmt_tmp_buf.exit.thread ]
  %add.ptr = getelementptr i8, ptr %tmp_buf.1, i32 512
  %32 = ptrtoint ptr %bin_args to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tmp_buf.1, ptr %bin_args, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end.if.end8_crit_edge
  %tmp_buf.2 = phi ptr [ null, %if.end.if.end8_crit_edge ], [ %tmp_buf.1, %if.end7 ]
  %tmp_buf_end.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.if.end8_crit_edge ], [ %add.ptr, %if.end7 ]
  %cmp637.not = icmp eq ptr %call, %fmt
  br i1 %cmp637.not, label %if.end8.cleanup_crit_edge, label %for.body.lr.ph

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8
  %sub.ptr.lhs.cast288 = ptrtoint ptr %tmp_buf_end.0 to i32
  %arrayidx237 = getelementptr inbounds [5 x i8], ptr %ip_spec, i32 0, i32 2
  %arrayidx239 = getelementptr inbounds [5 x i8], ptr %ip_spec, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %num_spec.0642 = phi i32 [ 0, %for.body.lr.ph ], [ %num_spec.1, %for.inc.for.body_crit_edge ]
  %i.0641 = phi i32 [ 0, %for.body.lr.ph ], [ %inc384, %for.inc.for.body_crit_edge ]
  %tmp_buf.3638 = phi ptr [ %tmp_buf.2, %for.body.lr.ph ], [ %tmp_buf.6, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %fmt, i32 %i.0641
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %34 to i32
  %arrayidx9 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %35 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx9, align 1
  %37 = and i8 %36, -73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %38 = icmp ne i8 %37, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp23 = icmp sgt i8 %34, -1
  %or.cond633 = select i1 %38, i1 %cmp23, i1 false
  br i1 %or.cond633, label %if.end26, label %for.body.if.then386_crit_edge

for.body.if.then386_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then386

if.end26:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %34)
  %cmp29.not = icmp eq i8 %34, 37
  br i1 %cmp29.not, label %if.end32, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end32:                                         ; preds = %if.end26
  %add = add nuw i32 %i.0641, 1
  %arrayidx33 = getelementptr i8, ptr %fmt, i32 %add
  %39 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %40)
  %cmp35 = icmp eq i8 %40, 37
  br i1 %cmp35, label %if.end32.for.inc_crit_edge, label %if.end38

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_cmp4(i32 %num_spec.0642, i32 %num_args)
  %cmp39.not = icmp ult i32 %num_spec.0642, %num_args
  br i1 %cmp39.not, label %if.end38.while.cond_crit_edge, label %if.end38.if.then386_crit_edge

if.end38.if.then386_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then386

if.end38.while.cond_crit_edge:                    ; preds = %if.end38
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end38.while.cond_crit_edge
  %i.1 = phi i32 [ %inc62, %while.body ], [ %add, %if.end38.while.cond_crit_edge ]
  %arrayidx44 = getelementptr i8, ptr %fmt, i32 %i.1
  %41 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx44, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i8 %42, label %while.end [
    i8 48, label %while.cond.while.body_crit_edge
    i8 43, label %while.cond.while.body_crit_edge661
    i8 45, label %while.cond.while.body_crit_edge662
    i8 32, label %while.cond.while.body_crit_edge663
  ]

while.cond.while.body_crit_edge663:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.while.body_crit_edge662:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.while.body_crit_edge661:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.while.body_crit_edge661, %while.cond.while.body_crit_edge662, %while.cond.while.body_crit_edge663
  %inc62 = add i32 %i.1, 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = add i8 %42, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %44)
  %45 = icmp ult i8 %44, 9
  br i1 %45, label %while.end.while.cond74_crit_edge, label %while.end.if.end86_crit_edge

while.end.if.end86_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

while.end.while.cond74_crit_edge:                 ; preds = %while.end
  br label %while.cond74

while.cond74:                                     ; preds = %while.cond74.while.cond74_crit_edge, %while.end.while.cond74_crit_edge
  %i.2.in = phi i32 [ %i.2, %while.cond74.while.cond74_crit_edge ], [ %i.1, %while.end.while.cond74_crit_edge ]
  %i.2 = add i32 %i.2.in, 1
  %arrayidx75 = getelementptr i8, ptr %fmt, i32 %i.2
  %46 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx75, align 1
  %48 = add i8 %47, -48
  %49 = icmp ult i8 %48, 10
  br i1 %49, label %while.cond74.while.cond74_crit_edge, label %while.cond74.if.end86_crit_edge

while.cond74.if.end86_crit_edge:                  ; preds = %while.cond74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

while.cond74.while.cond74_crit_edge:              ; preds = %while.cond74
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond74

if.end86:                                         ; preds = %while.cond74.if.end86_crit_edge, %while.end.if.end86_crit_edge
  %i.3 = phi i32 [ %i.1, %while.end.if.end86_crit_edge ], [ %i.2, %while.cond74.if.end86_crit_edge ]
  %arrayidx87 = getelementptr i8, ptr %fmt, i32 %i.3
  %50 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx87, align 1
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %51, label %if.end86.if.end324_crit_edge [
    i8 112, label %if.then91
    i8 115, label %if.end86.fmt_str_crit_edge
    i8 99, label %if.then304
    i8 108, label %if.then322
  ]

if.end86.fmt_str_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %fmt_str

if.end86.if.end324_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end324

if.then91:                                        ; preds = %if.end86
  %add92 = add i32 %i.3, 1
  %arrayidx93 = getelementptr i8, ptr %fmt, i32 %add92
  %53 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx93, align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %54, label %if.then91.lor.lhs.false119_crit_edge [
    i8 107, label %if.then91.land.lhs.true103_crit_edge
    i8 117, label %if.then91.land.lhs.true103_crit_edge664
    i8 0, label %if.then91.if.then161_crit_edge
  ]

if.then91.if.then161_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then161

if.then91.land.lhs.true103_crit_edge664:          ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true103

if.then91.land.lhs.true103_crit_edge:             ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true103

if.then91.lor.lhs.false119_crit_edge:             ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false119

land.lhs.true103:                                 ; preds = %if.then91.land.lhs.true103_crit_edge, %if.then91.land.lhs.true103_crit_edge664
  %add104 = add i32 %i.3, 2
  %arrayidx105 = getelementptr i8, ptr %fmt, i32 %add104
  %56 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %57)
  %cmp107 = icmp eq i8 %57, 115
  br i1 %cmp107, label %land.lhs.true103.fmt_str_crit_edge, label %land.lhs.true103.lor.lhs.false119_crit_edge

land.lhs.true103.lor.lhs.false119_crit_edge:      ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false119

land.lhs.true103.fmt_str_crit_edge:               ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #16
  br label %fmt_str

lor.lhs.false119:                                 ; preds = %land.lhs.true103.lor.lhs.false119_crit_edge, %if.then91.lor.lhs.false119_crit_edge
  %conv116 = zext i8 %54 to i32
  %arrayidx123 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv116
  %58 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx123, align 1
  %.fr634 = freeze i8 %59
  %60 = and i8 %.fr634, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %.not = icmp eq i8 %60, 0
  br i1 %.not, label %switch.early.test, label %lor.lhs.false119.if.then161_crit_edge

lor.lhs.false119.if.then161_crit_edge:            ; preds = %lor.lhs.false119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then161

switch.early.test:                                ; preds = %lor.lhs.false119
  %61 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %54, label %switch.early.test.if.then386_crit_edge [
    i8 120, label %switch.early.test.if.then161_crit_edge
    i8 115, label %switch.early.test.if.then161_crit_edge665
    i8 83, label %switch.early.test.if.then161_crit_edge666
    i8 75, label %switch.early.test.if.then161_crit_edge667
    i8 66, label %if.then173
    i8 105, label %switch.early.test.lor.lhs.false199_crit_edge
    i8 73, label %switch.early.test.lor.lhs.false199_crit_edge668
  ]

switch.early.test.lor.lhs.false199_crit_edge668:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false199

switch.early.test.lor.lhs.false199_crit_edge:     ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false199

switch.early.test.if.then161_crit_edge667:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then161

switch.early.test.if.then161_crit_edge666:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then161

switch.early.test.if.then161_crit_edge665:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then161

switch.early.test.if.then161_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then161

switch.early.test.if.then386_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then386

if.then161:                                       ; preds = %switch.early.test.if.then161_crit_edge, %switch.early.test.if.then161_crit_edge665, %switch.early.test.if.then161_crit_edge666, %switch.early.test.if.then161_crit_edge667, %lor.lhs.false119.if.then161_crit_edge, %if.then91.if.then161_crit_edge
  %tobool162.not = icmp eq ptr %tmp_buf.3638, null
  br i1 %tobool162.not, label %if.then161.if.end382_crit_edge, label %if.then363.thread

if.then161.if.end382_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end382

if.then173:                                       ; preds = %switch.early.test
  %tobool174.not = icmp eq ptr %tmp_buf.3638, null
  br i1 %tobool174.not, label %if.then173.if.end184_crit_edge, label %if.then175

if.then173.if.end184_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end184

if.then175:                                       ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #16
  %sub.ptr.rhs.cast177 = ptrtoint ptr %tmp_buf.3638 to i32
  %sub.ptr.sub178 = sub i32 %sub.ptr.lhs.cast288, %sub.ptr.rhs.cast177
  %arrayidx179 = getelementptr i64, ptr %raw_args, i32 %num_spec.0642
  %62 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx179, align 8
  %conv180 = trunc i64 %63 to i32
  %64 = inttoptr i32 %conv180 to ptr
  %call181 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp_buf.3638, i32 noundef %sub.ptr.sub178, ptr noundef nonnull @.str, ptr noundef %64)
  %add182 = add i32 %call181, 1
  %add.ptr183 = getelementptr i8, ptr %tmp_buf.3638, i32 %add182
  br label %if.end184

if.end184:                                        ; preds = %if.then175, %if.then173.if.end184_crit_edge
  %tmp_buf.4 = phi ptr [ null, %if.then173.if.end184_crit_edge ], [ %add.ptr183, %if.then175 ]
  %inc186 = add i32 %num_spec.0642, 1
  br label %for.inc

lor.lhs.false199:                                 ; preds = %switch.early.test.lor.lhs.false199_crit_edge, %switch.early.test.lor.lhs.false199_crit_edge668
  %add200 = add i32 %i.3, 2
  %arrayidx201 = getelementptr i8, ptr %fmt, i32 %add200
  %65 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx201, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %66, label %lor.lhs.false199.if.then386_crit_edge [
    i8 52, label %lor.lhs.false199.if.end212_crit_edge
    i8 54, label %lor.lhs.false199.if.end212_crit_edge669
  ]

lor.lhs.false199.if.end212_crit_edge669:          ; preds = %lor.lhs.false199
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212

lor.lhs.false199.if.end212_crit_edge:             ; preds = %lor.lhs.false199
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212

lor.lhs.false199.if.then386_crit_edge:            ; preds = %lor.lhs.false199
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then386

if.end212:                                        ; preds = %lor.lhs.false199.if.end212_crit_edge, %lor.lhs.false199.if.end212_crit_edge669
  %tobool214.not = icmp eq ptr %tmp_buf.3638, null
  br i1 %tobool214.not, label %if.end212.if.end382_crit_edge, label %if.end216

if.end212.if.end382_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end382

if.end216:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %66)
  %cmp219 = icmp eq i8 %66, 52
  %cond = select i1 %cmp219, i32 4, i32 16
  %sub.ptr.rhs.cast222 = ptrtoint ptr %tmp_buf.3638 to i32
  %sub.ptr.sub223 = sub i32 %sub.ptr.lhs.cast288, %sub.ptr.rhs.cast222
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub223, i32 %cond)
  %cmp224 = icmp ult i32 %sub.ptr.sub223, %cond
  br i1 %cmp224, label %if.end216.if.then386_crit_edge, label %if.end227

if.end216.if.then386_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then386

if.end227:                                        ; preds = %if.end216
  %arrayidx228 = getelementptr i64, ptr %raw_args, i32 %num_spec.0642
  %68 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx228, align 8
  %conv229 = trunc i64 %69 to i32
  %70 = inttoptr i32 %conv229 to ptr
  %call230 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %cur_ip, ptr noundef %70, i32 noundef %cond) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %cmp231 = icmp slt i32 %call230, 0
  br i1 %cmp231, label %if.then233, label %if.end227.if.end235_crit_edge

if.end227.if.end235_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end235

if.then233:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #16
  %71 = call ptr @memset(ptr %cur_ip, i32 0, i32 %cond)
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %if.end227.if.end235_crit_edge
  %72 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx93, align 1
  %74 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx237, align 1
  %75 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx201, align 1
  %77 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx239, align 1
  %call244 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp_buf.3638, i32 noundef %sub.ptr.sub223, ptr noundef nonnull %ip_spec, ptr noundef nonnull %cur_ip)
  %add245 = add i32 %call244, 1
  %add.ptr246 = getelementptr i8, ptr %tmp_buf.3638, i32 %add245
  %inc247 = add i32 %num_spec.0642, 1
  br label %for.inc

fmt_str:                                          ; preds = %land.lhs.true103.fmt_str_crit_edge, %if.end86.fmt_str_crit_edge
  %i.4 = phi i32 [ %i.3, %if.end86.fmt_str_crit_edge ], [ %add104, %land.lhs.true103.fmt_str_crit_edge ]
  %fmt_ptype.0 = phi i8 [ %51, %if.end86.fmt_str_crit_edge ], [ %54, %land.lhs.true103.fmt_str_crit_edge ]
  %add254 = add i32 %i.4, 1
  %arrayidx255 = getelementptr i8, ptr %fmt, i32 %add254
  %78 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx255, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp257.not = icmp eq i8 %79, 0
  br i1 %cmp257.not, label %fmt_str.if.end278_crit_edge, label %land.lhs.true259

fmt_str.if.end278_crit_edge:                      ; preds = %fmt_str
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end278

land.lhs.true259:                                 ; preds = %fmt_str
  %conv256 = zext i8 %79 to i32
  %arrayidx263 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv256
  %80 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx263, align 1
  %82 = and i8 %81, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %land.lhs.true259.if.then386_crit_edge, label %land.lhs.true259.if.end278_crit_edge

land.lhs.true259.if.end278_crit_edge:             ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end278

land.lhs.true259.if.then386_crit_edge:            ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then386

if.end278:                                        ; preds = %land.lhs.true259.if.end278_crit_edge, %fmt_str.if.end278_crit_edge
  %tobool279.not = icmp eq ptr %tmp_buf.3638, null
  br i1 %tobool279.not, label %if.end278.if.end382_crit_edge, label %if.end281

if.end278.if.end382_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end382

if.end281:                                        ; preds = %if.end278
  %cmp282 = icmp eq ptr %tmp_buf_end.0, %tmp_buf.3638
  br i1 %cmp282, label %if.end281.if.then386_crit_edge, label %if.end285

if.end281.if.then386_crit_edge:                   ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then386

if.end285:                                        ; preds = %if.end281
  %arrayidx286 = getelementptr i64, ptr %raw_args, i32 %num_spec.0642
  %84 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx286, align 8
  %conv287 = trunc i64 %85 to i32
  %86 = inttoptr i32 %conv287 to ptr
  %sub.ptr.rhs.cast289 = ptrtoint ptr %tmp_buf.3638 to i32
  %sub.ptr.sub290 = sub i32 %sub.ptr.lhs.cast288, %sub.ptr.rhs.cast289
  %87 = ptrtoint ptr %tmp_buf.3638 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %tmp_buf.3638, align 1
  %88 = zext i8 %fmt_ptype.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %fmt_ptype.0, label %if.end285.if.then294_crit_edge [
    i8 115, label %sw.bb.i
    i8 107, label %if.end285.sw.bb2.i_crit_edge
    i8 117, label %sw.bb4.i
  ]

if.end285.sw.bb2.i_crit_edge:                     ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

if.end285.if.then294_crit_edge:                   ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then294

sw.bb.i:                                          ; preds = %if.end285
  %cmp.i = icmp ult ptr %86, inttoptr (i32 -1226833920 to ptr)
  br i1 %cmp.i, label %if.then.i561, label %sw.bb.i.sw.bb2.i_crit_edge

sw.bb.i.sw.bb2.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2.i

if.then.i561:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = call i32 @strncpy_from_user_nofault(ptr noundef nonnull %tmp_buf.3638, ptr noundef %86, i32 noundef %sub.ptr.sub290) #14
  br label %bpf_trace_copy_string.exit

sw.bb2.i:                                         ; preds = %sw.bb.i.sw.bb2.i_crit_edge, %if.end285.sw.bb2.i_crit_edge
  %call3.i = call i32 @strncpy_from_kernel_nofault(ptr noundef nonnull %tmp_buf.3638, ptr noundef %86, i32 noundef %sub.ptr.sub290) #14
  br label %bpf_trace_copy_string.exit

sw.bb4.i:                                         ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #16
  %call5.i = call i32 @strncpy_from_user_nofault(ptr noundef nonnull %tmp_buf.3638, ptr noundef %86, i32 noundef %sub.ptr.sub290) #14
  br label %bpf_trace_copy_string.exit

bpf_trace_copy_string.exit:                       ; preds = %sw.bb4.i, %sw.bb2.i, %if.then.i561
  %retval.0.i562 = phi i32 [ %call5.i, %sw.bb4.i ], [ %call3.i, %sw.bb2.i ], [ %call.i, %if.then.i561 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i562)
  %cmp292 = icmp slt i32 %retval.0.i562, 0
  br i1 %cmp292, label %bpf_trace_copy_string.exit.if.then294_crit_edge, label %bpf_trace_copy_string.exit.if.end296_crit_edge

bpf_trace_copy_string.exit.if.end296_crit_edge:   ; preds = %bpf_trace_copy_string.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end296

bpf_trace_copy_string.exit.if.then294_crit_edge:  ; preds = %bpf_trace_copy_string.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then294

if.then294:                                       ; preds = %bpf_trace_copy_string.exit.if.then294_crit_edge, %if.end285.if.then294_crit_edge
  %89 = ptrtoint ptr %tmp_buf.3638 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %tmp_buf.3638, align 1
  br label %if.end296

if.end296:                                        ; preds = %if.then294, %bpf_trace_copy_string.exit.if.end296_crit_edge
  %err.0 = phi i32 [ 1, %if.then294 ], [ %retval.0.i562, %bpf_trace_copy_string.exit.if.end296_crit_edge ]
  %add.ptr297 = getelementptr i8, ptr %tmp_buf.3638, i32 %err.0
  %inc298 = add i32 %num_spec.0642, 1
  br label %for.inc

if.then304:                                       ; preds = %if.end86
  %tobool305.not = icmp eq ptr %tmp_buf.3638, null
  br i1 %tobool305.not, label %if.then304.if.end382_crit_edge, label %if.end307

if.then304.if.end382_crit_edge:                   ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end382

if.end307:                                        ; preds = %if.then304
  %cmp308 = icmp eq ptr %tmp_buf_end.0, %tmp_buf.3638
  br i1 %cmp308, label %if.end307.if.then386_crit_edge, label %if.end311

if.end307.if.then386_crit_edge:                   ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then386

if.end311:                                        ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx312 = getelementptr i64, ptr %raw_args, i32 %num_spec.0642
  %90 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx312, align 8
  %conv313 = trunc i64 %91 to i8
  %92 = ptrtoint ptr %tmp_buf.3638 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv313, ptr %tmp_buf.3638, align 1
  %incdec.ptr = getelementptr i8, ptr %tmp_buf.3638, i32 1
  %inc314 = add i32 %num_spec.0642, 1
  br label %for.inc

if.then322:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  %inc323 = add i32 %i.3, 1
  br label %if.end324

if.end324:                                        ; preds = %if.then322, %if.end86.if.end324_crit_edge
  %i.5 = phi i32 [ %inc323, %if.then322 ], [ %i.3, %if.end86.if.end324_crit_edge ]
  %arrayidx325 = getelementptr i8, ptr %fmt, i32 %i.5
  %93 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx325, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %94)
  %cmp327 = icmp eq i8 %94, 108
  %spec.select = select i1 %cmp327, i32 8, i32 4
  %inc330 = zext i1 %cmp327 to i32
  %spec.select560 = add i32 %i.5, %inc330
  %arrayidx332 = getelementptr i8, ptr %fmt, i32 %spec.select560
  %95 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx332, align 1
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %96, label %if.end324.if.then386_crit_edge [
    i8 105, label %if.end324.if.end357_crit_edge
    i8 100, label %if.end324.if.end357_crit_edge670
    i8 117, label %if.end324.if.end357_crit_edge671
    i8 120, label %if.end324.if.end357_crit_edge672
    i8 88, label %if.end324.if.end357_crit_edge673
  ]

if.end324.if.end357_crit_edge673:                 ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end357

if.end324.if.end357_crit_edge672:                 ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end357

if.end324.if.end357_crit_edge671:                 ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end357

if.end324.if.end357_crit_edge670:                 ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end357

if.end324.if.end357_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end357

if.end324.if.then386_crit_edge:                   ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then386

if.end357:                                        ; preds = %if.end324.if.end357_crit_edge, %if.end324.if.end357_crit_edge670, %if.end324.if.end357_crit_edge671, %if.end324.if.end357_crit_edge672, %if.end324.if.end357_crit_edge673
  %tobool358.not = icmp eq ptr %tmp_buf.3638, null
  br i1 %tobool358.not, label %if.end357.if.end382_crit_edge, label %if.then363

if.end357.if.end382_crit_edge:                    ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end382

if.then363:                                       ; preds = %if.end357
  %arrayidx360 = getelementptr i64, ptr %raw_args, i32 %num_spec.0642
  %98 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %arrayidx360, align 8
  %cur_arg.sroa.0.0.extract.shift402 = lshr i64 %99, 32
  %cur_arg.sroa.0.0.extract.trunc403 = trunc i64 %cur_arg.sroa.0.0.extract.shift402 to i32
  %cur_arg.sroa.7.0.extract.trunc405 = trunc i64 %99 to i32
  %100 = ptrtoint ptr %tmp_buf.3638 to i32
  %add364 = add i32 %100, 3
  %and365 = and i32 %add364, -4
  %101 = inttoptr i32 %and365 to ptr
  %sub.ptr.sub368 = sub i32 %sub.ptr.lhs.cast288, %and365
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub368, i32 %spec.select)
  %cmp369 = icmp ult i32 %sub.ptr.sub368, %spec.select
  br i1 %cmp369, label %if.then363.if.then386_crit_edge, label %if.end372

if.then363.if.then386_crit_edge:                  ; preds = %if.then363
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then386

if.then363.thread:                                ; preds = %if.then161
  %arrayidx164 = getelementptr i64, ptr %raw_args, i32 %num_spec.0642
  %102 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %arrayidx164, align 8
  %cur_arg.sroa.7.0.extract.trunc = trunc i64 %103 to i32
  %104 = ptrtoint ptr %tmp_buf.3638 to i32
  %add364609 = add i32 %104, 3
  %and365610 = and i32 %add364609, -4
  %105 = inttoptr i32 %and365610 to ptr
  %sub.ptr.sub368612 = sub i32 %sub.ptr.lhs.cast288, %and365610
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub368612)
  %cmp369613 = icmp ult i32 %sub.ptr.sub368612, 4
  br i1 %cmp369613, label %if.then363.thread.if.then386_crit_edge, label %if.then363.thread.if.else378_crit_edge

if.then363.thread.if.else378_crit_edge:           ; preds = %if.then363.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else378

if.then363.thread.if.then386_crit_edge:           ; preds = %if.then363.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then386

if.end372:                                        ; preds = %if.then363
  br i1 %cmp327, label %if.then375, label %if.end372.if.else378_crit_edge

if.end372.if.else378_crit_edge:                   ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else378

if.then375:                                       ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #16
  %106 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %cur_arg.sroa.0.0.extract.trunc403, ptr %101, align 4
  %add.ptr377 = getelementptr i8, ptr %101, i32 4
  %107 = ptrtoint ptr %add.ptr377 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %cur_arg.sroa.7.0.extract.trunc405, ptr %add.ptr377, align 4
  br label %if.end380

if.else378:                                       ; preds = %if.end372.if.else378_crit_edge, %if.then363.thread.if.else378_crit_edge
  %i.7615626 = phi i32 [ %spec.select560, %if.end372.if.else378_crit_edge ], [ %add92, %if.then363.thread.if.else378_crit_edge ]
  %cur_arg.sroa.7.2616624 = phi i32 [ %cur_arg.sroa.7.0.extract.trunc405, %if.end372.if.else378_crit_edge ], [ %cur_arg.sroa.7.0.extract.trunc, %if.then363.thread.if.else378_crit_edge ]
  %108 = phi ptr [ %101, %if.end372.if.else378_crit_edge ], [ %105, %if.then363.thread.if.else378_crit_edge ]
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %cur_arg.sroa.7.2616624, ptr %108, align 4
  br label %if.end380

if.end380:                                        ; preds = %if.else378, %if.then375
  %sizeof_cur_arg.4614627 = phi i32 [ 4, %if.else378 ], [ 8, %if.then375 ]
  %i.7615625 = phi i32 [ %i.7615626, %if.else378 ], [ %spec.select560, %if.then375 ]
  %110 = phi ptr [ %108, %if.else378 ], [ %101, %if.then375 ]
  %add.ptr381 = getelementptr i8, ptr %110, i32 %sizeof_cur_arg.4614627
  br label %if.end382

if.end382:                                        ; preds = %if.end380, %if.end357.if.end382_crit_edge, %if.then304.if.end382_crit_edge, %if.end278.if.end382_crit_edge, %if.end212.if.end382_crit_edge, %if.then161.if.end382_crit_edge
  %i.7600 = phi i32 [ %i.7615625, %if.end380 ], [ %add92, %if.then161.if.end382_crit_edge ], [ %spec.select560, %if.end357.if.end382_crit_edge ], [ %i.3, %if.then304.if.end382_crit_edge ], [ %i.4, %if.end278.if.end382_crit_edge ], [ %add200, %if.end212.if.end382_crit_edge ]
  %tmp_buf.5 = phi ptr [ %add.ptr381, %if.end380 ], [ null, %if.then161.if.end382_crit_edge ], [ null, %if.end357.if.end382_crit_edge ], [ null, %if.then304.if.end382_crit_edge ], [ null, %if.end278.if.end382_crit_edge ], [ null, %if.end212.if.end382_crit_edge ]
  %inc383 = add i32 %num_spec.0642, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end382, %if.end311, %if.end296, %if.end235, %if.end184, %if.end32.for.inc_crit_edge, %if.end26.for.inc_crit_edge
  %tmp_buf.6 = phi ptr [ %tmp_buf.3638, %if.end32.for.inc_crit_edge ], [ %tmp_buf.5, %if.end382 ], [ %incdec.ptr, %if.end311 ], [ %add.ptr297, %if.end296 ], [ %add.ptr246, %if.end235 ], [ %tmp_buf.4, %if.end184 ], [ %tmp_buf.3638, %if.end26.for.inc_crit_edge ]
  %i.8 = phi i32 [ %add, %if.end32.for.inc_crit_edge ], [ %i.7600, %if.end382 ], [ %i.3, %if.end311 ], [ %i.4, %if.end296 ], [ %add200, %if.end235 ], [ %add92, %if.end184 ], [ %i.0641, %if.end26.for.inc_crit_edge ]
  %num_spec.1 = phi i32 [ %num_spec.0642, %if.end32.for.inc_crit_edge ], [ %inc383, %if.end382 ], [ %inc314, %if.end311 ], [ %inc298, %if.end296 ], [ %inc247, %if.end235 ], [ %inc186, %if.end184 ], [ %num_spec.0642, %if.end26.for.inc_crit_edge ]
  %inc384 = add i32 %i.8, 1
  %cmp = icmp ult i32 %inc384, %sub.ptr.sub
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.then386:                                       ; preds = %if.then363.thread.if.then386_crit_edge, %if.then363.if.then386_crit_edge, %if.end324.if.then386_crit_edge, %if.end307.if.then386_crit_edge, %if.end281.if.then386_crit_edge, %land.lhs.true259.if.then386_crit_edge, %if.end216.if.then386_crit_edge, %lor.lhs.false199.if.then386_crit_edge, %switch.early.test.if.then386_crit_edge, %if.end38.if.then386_crit_edge, %for.body.if.then386_crit_edge
  %err.1630 = phi i32 [ -28, %if.then363.thread.if.then386_crit_edge ], [ -22, %switch.early.test.if.then386_crit_edge ], [ -28, %if.then363.if.then386_crit_edge ], [ -22, %if.end324.if.then386_crit_edge ], [ -28, %if.end307.if.then386_crit_edge ], [ -28, %if.end281.if.then386_crit_edge ], [ -22, %land.lhs.true259.if.then386_crit_edge ], [ -28, %if.end216.if.then386_crit_edge ], [ -22, %lor.lhs.false199.if.then386_crit_edge ], [ -22, %if.end38.if.then386_crit_edge ], [ -22, %for.body.if.then386_crit_edge ]
  %111 = call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i.i563 = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i.i563 to ptr
  %preempt_count.i.i.i564 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %preempt_count.i.i.i564 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %preempt_count.i.i.i564, align 4
  %add.i.i565 = add i32 %114, 1
  store volatile i32 %add.i.i565, ptr %preempt_count.i.i.i564, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !165
  %115 = call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i566 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i566 to ptr
  %cpu.i567 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %cpu.i567 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cpu.i567, align 4
  %arrayidx.i568 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %118
  %119 = ptrtoint ptr %arrayidx.i568 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i568, align 4
  %add.i569 = add i32 %120, ptrtoint (ptr @bpf_bprintf_nest_level to i32)
  %121 = inttoptr i32 %add.i569 to ptr
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %121, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !166
  %124 = call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i70.i = and i32 %124, -16384
  %125 = inttoptr i32 %and.i.i.i70.i to ptr
  %preempt_count.i.i71.i = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %preempt_count.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %preempt_count.i.i71.i, align 4
  %sub.i.i570 = add i32 %127, -1
  store volatile i32 %sub.i.i570, ptr %preempt_count.i.i71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i571 = icmp eq i32 %123, 0
  br i1 %tobool.not.i571, label %if.then386.cleanup_crit_edge, label %do.body20.i

if.then386.cleanup_crit_edge:                     ; preds = %if.then386
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body20.i:                                      ; preds = %if.then386
  %128 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %129 = ptrtoint ptr %cpu.i567 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cpu.i567, align 4
  %arrayidx40.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %130
  %131 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx40.i, align 4
  %add41.i = add i32 %132, ptrtoint (ptr @bpf_bprintf_nest_level to i32)
  %133 = inttoptr i32 %add41.i to ptr
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %add42.i = add i32 %135, -1
  store i32 %add42.i, ptr %133, align 4
  %136 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i.i572 = and i32 %136, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i572)
  %tobool53.not.i = icmp eq i32 %and.i.i.i572, 0
  br i1 %tobool53.not.i, label %if.then57.i, label %do.body20.i.do.end59.i_crit_edge, !prof !144

do.body20.i.do.end59.i_crit_edge:                 ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end59.i

if.then57.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end59.i

do.end59.i:                                       ; preds = %if.then57.i, %do.body20.i.do.end59.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %128) #14, !srcloc !153
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !167
  %137 = call i32 @llvm.read_register.i32(metadata !133) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end59.i, %try_get_fmt_tmp_buf.exit
  %.sink = phi i32 [ %31, %try_get_fmt_tmp_buf.exit ], [ %137, %do.end59.i ]
  %retval.0.ph = phi i32 [ -16, %try_get_fmt_tmp_buf.exit ], [ %err.1630, %do.end59.i ]
  %and.i.i.i167.i = and i32 %.sink, -16384
  %138 = inttoptr i32 %and.i.i.i167.i to ptr
  %preempt_count.i.i168.i = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %preempt_count.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %preempt_count.i.i168.i, align 4
  %sub.i74.i = add i32 %140, -1
  store volatile i32 %sub.i74.i, ptr %preempt_count.i.i168.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then386.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %err.1630, %if.then386.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %ip_spec) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cur_ip) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_snprintf(i64 noundef %str, i64 noundef %str_size, i64 noundef %fmt, i64 noundef %data, i64 noundef %data_len) #0 align 64 {
entry:
  %bin_args.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %str to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %str_size to i32
  %conv2 = trunc i64 %fmt to i32
  %1 = inttoptr i32 %conv2 to ptr
  %conv3 = trunc i64 %data to i32
  %2 = inttoptr i32 %conv3 to ptr
  %conv4 = trunc i64 %data_len to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bin_args.i) #14
  %3 = ptrtoint ptr %bin_args.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bin_args.i, align 4, !annotation !158
  %rem.i = and i32 %conv4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp ne i32 %rem.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %conv4)
  %cmp.i = icmp ugt i32 %conv4, 96
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.____bpf_snprintf.exit_crit_edge, label %lor.lhs.false1.i

entry.____bpf_snprintf.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_snprintf.exit

lor.lhs.false1.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %tobool2.not.i = icmp ne i32 %conv4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %tobool3.not.i = icmp eq i32 %conv3, 0
  %or.cond19.i = and i1 %tobool3.not.i, %tobool2.not.i
  br i1 %or.cond19.i, label %lor.lhs.false1.i.____bpf_snprintf.exit_crit_edge, label %if.end.i

lor.lhs.false1.i.____bpf_snprintf.exit_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_snprintf.exit

if.end.i:                                         ; preds = %lor.lhs.false1.i
  %div18.i = lshr i32 %conv4, 3
  %call.i = call i32 @bpf_bprintf_prepare(ptr noundef %1, i32 noundef -1, ptr noundef %2, ptr noundef nonnull %bin_args.i, i32 noundef %div18.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = sext i32 %call.i to i64
  br label %____bpf_snprintf.exit

if.end6.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %bin_args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bin_args.i, align 4
  %call7.i = call i32 @bstr_printf(ptr noundef %0, i32 noundef %conv1, ptr noundef %1, ptr noundef %5) #14
  %6 = call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !165
  %10 = call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %15, ptrtoint (ptr @bpf_bprintf_nest_level to i32)
  %16 = inttoptr i32 %add.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !166
  %19 = call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i70.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i70.i.i to ptr
  %preempt_count.i.i71.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i71.i.i, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i71.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end6.i.bpf_bprintf_cleanup.exit.i_crit_edge, label %do.body20.i.i

if.end6.i.bpf_bprintf_cleanup.exit.i_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf_bprintf_cleanup.exit.i

do.body20.i.i:                                    ; preds = %if.end6.i
  %23 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %24 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i.i, align 4
  %arrayidx40.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx40.i.i, align 4
  %add41.i.i = add i32 %27, ptrtoint (ptr @bpf_bprintf_nest_level to i32)
  %28 = inttoptr i32 %add41.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add42.i.i = add i32 %30, -1
  store i32 %add42.i.i, ptr %28, align 4
  %31 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool53.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool53.not.i.i, label %if.then57.i.i, label %do.body20.i.i.do.end59.i.i_crit_edge, !prof !144

do.body20.i.i.do.end59.i.i_crit_edge:             ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end59.i.i

if.then57.i.i:                                    ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end59.i.i

do.end59.i.i:                                     ; preds = %if.then57.i.i, %do.body20.i.i.do.end59.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #14, !srcloc !153
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !167
  %32 = call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i72.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i72.i.i to ptr
  %preempt_count.i.i73.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i73.i.i, align 4
  %sub.i74.i.i = add i32 %35, -1
  store volatile i32 %sub.i74.i.i, ptr %preempt_count.i.i73.i.i, align 4
  br label %bpf_bprintf_cleanup.exit.i

bpf_bprintf_cleanup.exit.i:                       ; preds = %do.end59.i.i, %if.end6.i.bpf_bprintf_cleanup.exit.i_crit_edge
  %add.i = add i32 %call7.i, 1
  %conv8.i = sext i32 %add.i to i64
  br label %____bpf_snprintf.exit

____bpf_snprintf.exit:                            ; preds = %bpf_bprintf_cleanup.exit.i, %if.then5.i, %lor.lhs.false1.i.____bpf_snprintf.exit_crit_edge, %entry.____bpf_snprintf.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %if.then5.i ], [ %conv8.i, %bpf_bprintf_cleanup.exit.i ], [ -22, %lor.lhs.false1.i.____bpf_snprintf.exit_crit_edge ], [ -22, %entry.____bpf_snprintf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bin_args.i) #14
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_timer_init(i64 noundef %timer, i64 noundef %map, i64 noundef %flags, i64 %__ur_1, i64 %__ur_2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %timer to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %map to i32
  %1 = inttoptr i32 %conv1 to ptr
  %2 = trunc i64 %flags to i32
  %conv.i = and i32 %2, 15
  %3 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and7.i = and i32 %6, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_timer_init.exit_crit_edge

entry.____bpf_timer_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_timer_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 15, i64 %flags)
  %cmp.i = icmp ugt i64 %flags, 15
  br i1 %cmp.i, label %if.end.i.____bpf_timer_init.exit_crit_edge, label %lor.lhs.false.i

if.end.i.____bpf_timer_init.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_timer_init.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %7 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %conv.i, label %lor.lhs.false.i.____bpf_timer_init.exit_crit_edge [
    i32 1, label %lor.lhs.false.i.if.end17.i_crit_edge
    i32 0, label %lor.lhs.false.i.if.end17.i_crit_edge2
    i32 7, label %lor.lhs.false.i.if.end17.i_crit_edge3
  ]

lor.lhs.false.i.if.end17.i_crit_edge3:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

lor.lhs.false.i.if.end17.i_crit_edge2:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

lor.lhs.false.i.if.end17.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

lor.lhs.false.i.____bpf_timer_init.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_timer_init.exit

if.end17.i:                                       ; preds = %lor.lhs.false.i.if.end17.i_crit_edge, %lor.lhs.false.i.if.end17.i_crit_edge2, %lor.lhs.false.i.if.end17.i_crit_edge3
  %lock.i = getelementptr inbounds %struct.bpf_timer_kern, ptr %0, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %and.i.i99.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i99.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i99.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end17.i.do.body1.i.i.i.preheader_crit_edge

if.end17.i.do.body1.i.i.i.preheader_crit_edge:    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i.preheader

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.body1.i.i.i.preheader

do.body1.i.i.i.preheader:                         ; preds = %if.then.i.i, %if.end17.i.do.body1.i.i.i.preheader_crit_edge
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %for.end.i.i.i.do.body1.i.i.i_crit_edge, %do.body1.i.i.i.preheader
  %9 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %lock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not20.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not20.i.i.i, label %do.body1.i.i.i.for.end.i.i.i_crit_edge, label %do.body1.i.i.i.do.end9.i.i.i_crit_edge

do.body1.i.i.i.do.end9.i.i.i_crit_edge:           ; preds = %do.body1.i.i.i
  br label %do.end9.i.i.i

do.body1.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

do.end9.i.i.i:                                    ; preds = %do.end9.i.i.i.do.end9.i.i.i_crit_edge, %do.body1.i.i.i.do.end9.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !146
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !147
  %11 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %lock.i, align 4
  %tobool.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i, label %do.end9.i.i.i.for.end.i.i.i_crit_edge, label %do.end9.i.i.i.do.end9.i.i.i_crit_edge

do.end9.i.i.i.do.end9.i.i.i_crit_edge:            ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i.i

do.end9.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %do.end9.i.i.i.for.end.i.i.i_crit_edge, %do.body1.i.i.i.for.end.i.i.i_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %lock.i, i32 1, i32 3, i32 1) #14
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %lock.i) #14, !srcloc !149
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !150
  %tobool16.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %__bpf_spin_lock_irqsave.exit.i, label %for.end.i.i.i.do.body1.i.i.i_crit_edge

for.end.i.i.i.do.body1.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i

__bpf_spin_lock_irqsave.exit.i:                   ; preds = %for.end.i.i.i
  %14 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i29.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i29.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %19, ptrtoint (ptr @irqsave_flags to i32)
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %8, ptr %20, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 8
  %tobool19.not.i = icmp eq ptr %23, null
  br i1 %tobool19.not.i, label %if.end21.i, label %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge

__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge:   ; preds = %__bpf_spin_lock_irqsave.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end21.i:                                       ; preds = %__bpf_spin_lock_irqsave.exit.i
  %usercnt.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usercnt.i, i32 noundef 8) #14
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %usercnt.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %tobool23.not.i = icmp eq i64 %call.i.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.out.i_crit_edge, label %if.end25.i

if.end21.i.out.i_crit_edge:                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end25.i:                                       ; preds = %if.end21.i
  %numa_node.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %numa_node.i, align 8
  %call26.i = tail call ptr @bpf_map_kmalloc_node(ptr noundef %1, i32 noundef 64, i32 noundef 2592, i32 noundef %25) #14
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end25.i.out.i_crit_edge, label %if.end29.i

if.end25.i.out.i_crit_edge:                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end29.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  %timer_off.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %timer_off.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %timer_off.i, align 16
  %idx.neg.i = sub i32 0, %27
  %add.ptr.i = getelementptr i8, ptr %0, i32 %idx.neg.i
  %value.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %call26.i, i32 0, i32 4
  %28 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %value.i, align 4
  %map30.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %call26.i, i32 0, i32 1
  %29 = ptrtoint ptr %map30.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %map30.i, align 8
  %prog.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %call26.i, i32 0, i32 2
  %30 = ptrtoint ptr %prog.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %prog.i, align 4
  %callback_fn.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %call26.i, i32 0, i32 3
  %31 = ptrtoint ptr %callback_fn.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr null, ptr %callback_fn.i, align 8
  tail call void @hrtimer_init(ptr noundef nonnull %call26.i, i32 noundef %conv.i, i32 noundef 5) #14
  %function.i = getelementptr inbounds %struct.hrtimer, ptr %call26.i, i32 0, i32 2
  %32 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bpf_timer_cb, ptr %function.i, align 8
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call26.i, ptr %0, align 8
  br label %out.i

out.i:                                            ; preds = %if.end29.i, %if.end25.i.out.i_crit_edge, %if.end21.i.out.i_crit_edge, %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end29.i ], [ -16, %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge ], [ -1, %if.end21.i.out.i_crit_edge ], [ -12, %if.end25.i.out.i_crit_edge ]
  %34 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i100.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i100.i to ptr
  %cpu.i101.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu.i101.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i101.i, align 4
  %arrayidx.i102.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i102.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i102.i, align 4
  %add.i103.i = add i32 %39, ptrtoint (ptr @irqsave_flags to i32)
  %40 = inttoptr i32 %add.i103.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %call.i.i.i.i104.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %43 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %lock.i, align 4
  %and.i34.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i.i)
  %tobool.not.i105.i = icmp eq i32 %and.i34.i.i, 0
  br i1 %tobool.not.i105.i, label %if.then.i106.i, label %out.i.do.body13.i.i_crit_edge

out.i.do.body13.i.i_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13.i.i

if.then.i106.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body13.i.i

do.body13.i.i:                                    ; preds = %if.then.i106.i, %out.i.do.body13.i.i_crit_edge
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i.i.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool21.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then25.i.i, label %do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge, !prof !144

do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge: ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bpf_spin_unlock_irqrestore.exit.i

if.then25.i.i:                                    ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %__bpf_spin_unlock_irqrestore.exit.i

__bpf_spin_unlock_irqrestore.exit.i:              ; preds = %if.then25.i.i, %do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #14, !srcloc !153
  %conv73.i = sext i32 %ret.0.i to i64
  br label %____bpf_timer_init.exit

____bpf_timer_init.exit:                          ; preds = %__bpf_spin_unlock_irqrestore.exit.i, %lor.lhs.false.i.____bpf_timer_init.exit_crit_edge, %if.end.i.____bpf_timer_init.exit_crit_edge, %entry.____bpf_timer_init.exit_crit_edge
  %retval.0.i = phi i64 [ %conv73.i, %__bpf_spin_unlock_irqrestore.exit.i ], [ -95, %entry.____bpf_timer_init.exit_crit_edge ], [ -22, %lor.lhs.false.i.____bpf_timer_init.exit_crit_edge ], [ -22, %if.end.i.____bpf_timer_init.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_timer_set_callback(i64 noundef %timer, i64 noundef %callback_fn, i64 noundef %aux, i64 %__ur_1, i64 %__ur_2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %timer to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %callback_fn to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %aux to i32
  %2 = inttoptr i32 %conv2 to ptr
  %prog1.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %2, i32 0, i32 41
  %3 = ptrtoint ptr %prog1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prog1.i, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %8, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_timer_set_callback.exit_crit_edge

entry.____bpf_timer_set_callback.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_timer_set_callback.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.bpf_timer_kern, ptr %0, i32 0, i32 1
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %and.i.i75.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i75.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i75.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.do.body1.i.i.i.preheader_crit_edge

if.end.i.do.body1.i.i.i.preheader_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i.preheader

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.body1.i.i.i.preheader

do.body1.i.i.i.preheader:                         ; preds = %if.then.i.i, %if.end.i.do.body1.i.i.i.preheader_crit_edge
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %for.end.i.i.i.do.body1.i.i.i_crit_edge, %do.body1.i.i.i.preheader
  %10 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %lock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not20.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not20.i.i.i, label %do.body1.i.i.i.for.end.i.i.i_crit_edge, label %do.body1.i.i.i.do.end9.i.i.i_crit_edge

do.body1.i.i.i.do.end9.i.i.i_crit_edge:           ; preds = %do.body1.i.i.i
  br label %do.end9.i.i.i

do.body1.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

do.end9.i.i.i:                                    ; preds = %do.end9.i.i.i.do.end9.i.i.i_crit_edge, %do.body1.i.i.i.do.end9.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !146
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !147
  %12 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %lock.i, align 4
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %do.end9.i.i.i.for.end.i.i.i_crit_edge, label %do.end9.i.i.i.do.end9.i.i.i_crit_edge

do.end9.i.i.i.do.end9.i.i.i_crit_edge:            ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i.i

do.end9.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %do.end9.i.i.i.for.end.i.i.i_crit_edge, %do.body1.i.i.i.for.end.i.i.i_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %lock.i, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %lock.i) #14, !srcloc !149
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !150
  %tobool16.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %__bpf_spin_lock_irqsave.exit.i, label %for.end.i.i.i.do.body1.i.i.i_crit_edge

for.end.i.i.i.do.body1.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i

__bpf_spin_lock_irqsave.exit.i:                   ; preds = %for.end.i.i.i
  %15 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i29.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i29.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %20, ptrtoint (ptr @irqsave_flags to i32)
  %21 = inttoptr i32 %add.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %9, ptr %21, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %0, align 8
  %tobool3.not.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i, label %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge, label %if.end5.i

__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge:   ; preds = %__bpf_spin_lock_irqsave.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end5.i:                                        ; preds = %__bpf_spin_lock_irqsave.exit.i
  %map.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map.i, align 8
  %usercnt.i = getelementptr inbounds %struct.bpf_map, ptr %26, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usercnt.i, i32 noundef 8) #14
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %usercnt.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %tobool7.not.i = icmp eq i64 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.out.i_crit_edge, label %if.end9.i

if.end5.i.out.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end9.i:                                        ; preds = %if.end5.i
  %prog10.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %prog10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prog10.i, align 4
  %cmp.not.i = icmp eq ptr %28, %4
  br i1 %cmp.not.i, label %if.end9.i.do.body.i_crit_edge, label %if.then11.i

if.end9.i.do.body.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.then11.i:                                      ; preds = %if.end9.i
  %call12.i = tail call ptr @bpf_prog_inc_not_zero(ptr noundef %4) #14
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then14.i, label %if.end16.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %call12.i to i32
  br label %out.i

if.end16.i:                                       ; preds = %if.then11.i
  %tobool17.not.i = icmp eq ptr %28, null
  br i1 %tobool17.not.i, label %if.end16.i.if.end19.i_crit_edge, label %if.then18.i

if.end16.i.if.end19.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bpf_prog_put(ptr noundef nonnull %28) #14
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end19.i_crit_edge
  %30 = ptrtoint ptr %prog10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call12.i, ptr %prog10.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end19.i, %if.end9.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !170
  %callback_fn45.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %24, i32 0, i32 3
  %31 = ptrtoint ptr %callback_fn45.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %1, ptr %callback_fn45.i, align 8
  br label %out.i

out.i:                                            ; preds = %do.body.i, %if.then14.i, %if.end5.i.out.i_crit_edge, %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %29, %if.then14.i ], [ 0, %do.body.i ], [ -22, %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge ], [ -1, %if.end5.i.out.i_crit_edge ]
  %32 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i76.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i76.i to ptr
  %cpu.i77.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i77.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i77.i, align 4
  %arrayidx.i78.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i78.i, align 4
  %add.i79.i = add i32 %37, ptrtoint (ptr @irqsave_flags to i32)
  %38 = inttoptr i32 %add.i79.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %call.i.i.i.i80.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %41 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %lock.i, align 4
  %and.i34.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i.i)
  %tobool.not.i81.i = icmp eq i32 %and.i34.i.i, 0
  br i1 %tobool.not.i81.i, label %if.then.i82.i, label %out.i.do.body13.i.i_crit_edge

out.i.do.body13.i.i_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13.i.i

if.then.i82.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body13.i.i

do.body13.i.i:                                    ; preds = %if.then.i82.i, %out.i.do.body13.i.i_crit_edge
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool21.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then25.i.i, label %do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge, !prof !144

do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge: ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bpf_spin_unlock_irqrestore.exit.i

if.then25.i.i:                                    ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %__bpf_spin_unlock_irqrestore.exit.i

__bpf_spin_unlock_irqrestore.exit.i:              ; preds = %if.then25.i.i, %do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #14, !srcloc !153
  %conv.i = sext i32 %ret.0.i to i64
  br label %____bpf_timer_set_callback.exit

____bpf_timer_set_callback.exit:                  ; preds = %__bpf_spin_unlock_irqrestore.exit.i, %entry.____bpf_timer_set_callback.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %__bpf_spin_unlock_irqrestore.exit.i ], [ -95, %entry.____bpf_timer_set_callback.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_timer_start(i64 noundef %timer, i64 noundef %nsecs, i64 noundef %flags, i64 %__ur_1, i64 %__ur_2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %timer to i32
  %0 = inttoptr i32 %conv to ptr
  %1 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %4, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_timer_start.exit_crit_edge

entry.____bpf_timer_start.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_timer_start.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %tobool1.not.i = icmp eq i64 %flags, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.____bpf_timer_start.exit_crit_edge

if.end.i.____bpf_timer_start.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_timer_start.exit

if.end3.i:                                        ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.bpf_timer_kern, ptr %0, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %and.i.i17.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end3.i.do.body1.i.i.i.preheader_crit_edge

if.end3.i.do.body1.i.i.i.preheader_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i.preheader

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.body1.i.i.i.preheader

do.body1.i.i.i.preheader:                         ; preds = %if.then.i.i, %if.end3.i.do.body1.i.i.i.preheader_crit_edge
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %for.end.i.i.i.do.body1.i.i.i_crit_edge, %do.body1.i.i.i.preheader
  %6 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %lock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not20.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not20.i.i.i, label %do.body1.i.i.i.for.end.i.i.i_crit_edge, label %do.body1.i.i.i.do.end9.i.i.i_crit_edge

do.body1.i.i.i.do.end9.i.i.i_crit_edge:           ; preds = %do.body1.i.i.i
  br label %do.end9.i.i.i

do.body1.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

do.end9.i.i.i:                                    ; preds = %do.end9.i.i.i.do.end9.i.i.i_crit_edge, %do.body1.i.i.i.do.end9.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !146
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !147
  %8 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %lock.i, align 4
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %do.end9.i.i.i.for.end.i.i.i_crit_edge, label %do.end9.i.i.i.do.end9.i.i.i_crit_edge

do.end9.i.i.i.do.end9.i.i.i_crit_edge:            ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i.i

do.end9.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %do.end9.i.i.i.for.end.i.i.i_crit_edge, %do.body1.i.i.i.for.end.i.i.i_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %lock.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %lock.i) #14, !srcloc !149
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !150
  %tobool16.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %__bpf_spin_lock_irqsave.exit.i, label %for.end.i.i.i.do.body1.i.i.i_crit_edge

for.end.i.i.i.do.body1.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i

__bpf_spin_lock_irqsave.exit.i:                   ; preds = %for.end.i.i.i
  %11 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i29.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i29.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %16, ptrtoint (ptr @irqsave_flags to i32)
  %17 = inttoptr i32 %add.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %17, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 8
  %tobool5.not.i = icmp eq ptr %20, null
  br i1 %tobool5.not.i, label %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge, label %lor.lhs.false.i

__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge:   ; preds = %__bpf_spin_lock_irqsave.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

lor.lhs.false.i:                                  ; preds = %__bpf_spin_lock_irqsave.exit.i
  %prog.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prog.i, align 4
  %tobool6.not.i = icmp eq ptr %22, null
  br i1 %tobool6.not.i, label %lor.lhs.false.i.out.i_crit_edge, label %if.end8.i

lor.lhs.false.i.out.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end8.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @hrtimer_start_range_ns(ptr noundef nonnull %20, i64 noundef %nsecs, i64 noundef 0, i32 noundef 5) #14
  br label %out.i

out.i:                                            ; preds = %if.end8.i, %lor.lhs.false.i.out.i_crit_edge, %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end8.i ], [ -22, %lor.lhs.false.i.out.i_crit_edge ], [ -22, %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge ]
  %23 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i18.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i18.i to ptr
  %cpu.i19.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i19.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i19.i, align 4
  %arrayidx.i20.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i20.i, align 4
  %add.i21.i = add i32 %28, ptrtoint (ptr @irqsave_flags to i32)
  %29 = inttoptr i32 %add.i21.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %call.i.i.i.i22.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %32 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %lock.i, align 4
  %and.i34.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i.i)
  %tobool.not.i23.i = icmp eq i32 %and.i34.i.i, 0
  br i1 %tobool.not.i23.i, label %if.then.i24.i, label %out.i.do.body13.i.i_crit_edge

out.i.do.body13.i.i_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13.i.i

if.then.i24.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body13.i.i

do.body13.i.i:                                    ; preds = %if.then.i24.i, %out.i.do.body13.i.i_crit_edge
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool21.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then25.i.i, label %do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge, !prof !144

do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge: ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bpf_spin_unlock_irqrestore.exit.i

if.then25.i.i:                                    ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %__bpf_spin_unlock_irqrestore.exit.i

__bpf_spin_unlock_irqrestore.exit.i:              ; preds = %if.then25.i.i, %do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #14, !srcloc !153
  %conv.i = sext i32 %ret.0.i to i64
  br label %____bpf_timer_start.exit

____bpf_timer_start.exit:                         ; preds = %__bpf_spin_unlock_irqrestore.exit.i, %if.end.i.____bpf_timer_start.exit_crit_edge, %entry.____bpf_timer_start.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %__bpf_spin_unlock_irqrestore.exit.i ], [ -95, %entry.____bpf_timer_start.exit_crit_edge ], [ -22, %if.end.i.____bpf_timer_start.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_timer_cancel(i64 noundef %timer, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3, i64 %__ur_4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %timer to i32
  %0 = inttoptr i32 %conv to ptr
  %1 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %4, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_timer_cancel.exit_crit_edge

entry.____bpf_timer_cancel.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %____bpf_timer_cancel.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.bpf_timer_kern, ptr %0, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %and.i.i39.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i39.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i39.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.do.body1.i.i.i.preheader_crit_edge

if.end.i.do.body1.i.i.i.preheader_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i.preheader

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.body1.i.i.i.preheader

do.body1.i.i.i.preheader:                         ; preds = %if.then.i.i, %if.end.i.do.body1.i.i.i.preheader_crit_edge
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %for.end.i.i.i.do.body1.i.i.i_crit_edge, %do.body1.i.i.i.preheader
  %6 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %lock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not20.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not20.i.i.i, label %do.body1.i.i.i.for.end.i.i.i_crit_edge, label %do.body1.i.i.i.do.end9.i.i.i_crit_edge

do.body1.i.i.i.do.end9.i.i.i_crit_edge:           ; preds = %do.body1.i.i.i
  br label %do.end9.i.i.i

do.body1.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

do.end9.i.i.i:                                    ; preds = %do.end9.i.i.i.do.end9.i.i.i_crit_edge, %do.body1.i.i.i.do.end9.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !146
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !147
  %8 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %lock.i, align 4
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %do.end9.i.i.i.for.end.i.i.i_crit_edge, label %do.end9.i.i.i.do.end9.i.i.i_crit_edge

do.end9.i.i.i.do.end9.i.i.i_crit_edge:            ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i.i

do.end9.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %do.end9.i.i.i.for.end.i.i.i_crit_edge, %do.body1.i.i.i.for.end.i.i.i_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %lock.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %lock.i) #14, !srcloc !149
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !150
  %tobool16.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %__bpf_spin_lock_irqsave.exit.i, label %for.end.i.i.i.do.body1.i.i.i_crit_edge

for.end.i.i.i.do.body1.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.i

__bpf_spin_lock_irqsave.exit.i:                   ; preds = %for.end.i.i.i
  %11 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i29.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i29.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %add.i40.i = add i32 %16, ptrtoint (ptr @irqsave_flags to i32)
  %17 = inttoptr i32 %add.i40.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %5, ptr %17, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 8
  %tobool2.not.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i, label %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge, label %if.end4.i

__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge:   ; preds = %__bpf_spin_lock_irqsave.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end4.i:                                        ; preds = %__bpf_spin_lock_irqsave.exit.i
  %21 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %24, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !171
  %25 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %30, ptrtoint (ptr @hrtimer_running to i32)
  %31 = inttoptr i32 %add.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !172
  %34 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i37.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i37.i to ptr
  %preempt_count.i.i38.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i38.i, align 4
  %sub.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i38.i, align 4
  %cmp.i = icmp eq ptr %33, %20
  br i1 %cmp.i, label %if.end4.i.out.i_crit_edge, label %if.end25.i

if.end4.i.out.i_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end25.i:                                       ; preds = %if.end4.i
  %prog1.i.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %20, i32 0, i32 2
  %38 = ptrtoint ptr %prog1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prog1.i.i, align 4
  %tobool.not.i41.i = icmp eq ptr %39, null
  br i1 %tobool.not.i41.i, label %if.end25.i.out.i_crit_edge, label %if.then.i42.i

if.end25.i.out.i_crit_edge:                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then.i42.i:                                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bpf_prog_put(ptr noundef nonnull %39) #14
  %40 = ptrtoint ptr %prog1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %prog1.i.i, align 4
  %callback_fn.i.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %20, i32 0, i32 3
  %41 = ptrtoint ptr %callback_fn.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr null, ptr %callback_fn.i.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.then.i42.i, %if.end25.i.out.i_crit_edge, %if.end4.i.out.i_crit_edge, %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge
  %tobool27.not.i = phi i1 [ false, %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge ], [ false, %if.end4.i.out.i_crit_edge ], [ true, %if.end25.i.out.i_crit_edge ], [ true, %if.then.i42.i ]
  %ret.0.i = phi i32 [ -22, %__bpf_spin_lock_irqsave.exit.i.out.i_crit_edge ], [ -35, %if.end4.i.out.i_crit_edge ], [ 0, %if.end25.i.out.i_crit_edge ], [ 0, %if.then.i42.i ]
  %42 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i43.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i43.i to ptr
  %cpu.i44.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i44.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i44.i, align 4
  %arrayidx.i45.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i45.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i45.i, align 4
  %add.i46.i = add i32 %47, ptrtoint (ptr @irqsave_flags to i32)
  %48 = inttoptr i32 %add.i46.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %call.i.i.i.i47.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %51 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 0, ptr %lock.i, align 4
  %and.i34.i.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i.i)
  %tobool.not.i48.i = icmp eq i32 %and.i34.i.i, 0
  br i1 %tobool.not.i48.i, label %if.then.i49.i, label %out.i.do.body13.i.i_crit_edge

out.i.do.body13.i.i_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13.i.i

if.then.i49.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body13.i.i

do.body13.i.i:                                    ; preds = %if.then.i49.i, %out.i.do.body13.i.i_crit_edge
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i.i50.i = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i50.i)
  %tobool21.not.i.i = icmp eq i32 %and.i.i.i50.i, 0
  br i1 %tobool21.not.i.i, label %if.then25.i.i, label %do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge, !prof !144

do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge: ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bpf_spin_unlock_irqrestore.exit.i

if.then25.i.i:                                    ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %__bpf_spin_unlock_irqrestore.exit.i

__bpf_spin_unlock_irqrestore.exit.i:              ; preds = %if.then25.i.i, %do.body13.i.i.__bpf_spin_unlock_irqrestore.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #14, !srcloc !153
  br i1 %tobool27.not.i, label %cond.false.i, label %__bpf_spin_unlock_irqrestore.exit.i.cond.end.i_crit_edge

__bpf_spin_unlock_irqrestore.exit.i.cond.end.i_crit_edge: ; preds = %__bpf_spin_unlock_irqrestore.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.false.i:                                     ; preds = %__bpf_spin_unlock_irqrestore.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call29.i = tail call i32 @hrtimer_cancel(ptr noundef %20) #14
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %__bpf_spin_unlock_irqrestore.exit.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call29.i, %cond.false.i ], [ %ret.0.i, %__bpf_spin_unlock_irqrestore.exit.i.cond.end.i_crit_edge ]
  %conv.i = sext i32 %cond.i to i64
  br label %____bpf_timer_cancel.exit

____bpf_timer_cancel.exit:                        ; preds = %cond.end.i, %entry.____bpf_timer_cancel.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %cond.end.i ], [ -95, %entry.____bpf_timer_cancel.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_timer_cancel_and_free(ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %val, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.bpf_timer_kern, ptr %val, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.do.body1.i.i.preheader_crit_edge

if.end.do.body1.i.i.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i.preheader

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.body1.i.i.preheader

do.body1.i.i.preheader:                           ; preds = %if.then.i, %if.end.do.body1.i.i.preheader_crit_edge
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %for.end.i.i.do.body1.i.i_crit_edge, %do.body1.i.i.preheader
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not20.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not20.i.i, label %do.body1.i.i.for.end.i.i_crit_edge, label %do.body1.i.i.do.end9.i.i_crit_edge

do.body1.i.i.do.end9.i.i_crit_edge:               ; preds = %do.body1.i.i
  br label %do.end9.i.i

do.body1.i.i.for.end.i.i_crit_edge:               ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

do.end9.i.i:                                      ; preds = %do.end9.i.i.do.end9.i.i_crit_edge, %do.body1.i.i.do.end9.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !146
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !147
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %lock, align 4
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %do.end9.i.i.for.end.i.i_crit_edge, label %do.end9.i.i.do.end9.i.i_crit_edge

do.end9.i.i.do.end9.i.i_crit_edge:                ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i

do.end9.i.i.for.end.i.i_crit_edge:                ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %do.end9.i.i.for.end.i.i_crit_edge, %do.body1.i.i.for.end.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %lock) #14, !srcloc !149
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !150
  %tobool16.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool16.not.i.i, label %__bpf_spin_lock_irqsave.exit, label %for.end.i.i.do.body1.i.i_crit_edge

for.end.i.i.do.body1.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body1.i.i

__bpf_spin_lock_irqsave.exit:                     ; preds = %for.end.i.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i29.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i29.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i49 = add i32 %13, ptrtoint (ptr @irqsave_flags to i32)
  %14 = inttoptr i32 %add.i49 to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %2, ptr %14, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %val, align 8
  %tobool3.not = icmp eq ptr %17, null
  br i1 %tobool3.not, label %if.then9.critedge, label %if.end5

if.end5:                                          ; preds = %__bpf_spin_lock_irqsave.exit
  %prog1.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %prog1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prog1.i, align 4
  %tobool.not.i50 = icmp eq ptr %19, null
  br i1 %tobool.not.i50, label %if.end5.drop_prog_refcnt.exit_crit_edge, label %if.then.i51

if.end5.drop_prog_refcnt.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop_prog_refcnt.exit

if.then.i51:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bpf_prog_put(ptr noundef nonnull %19) #14
  %20 = ptrtoint ptr %prog1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %prog1.i, align 4
  %callback_fn.i = getelementptr inbounds %struct.bpf_hrtimer, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %callback_fn.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr null, ptr %callback_fn.i, align 8
  br label %drop_prog_refcnt.exit

drop_prog_refcnt.exit:                            ; preds = %if.then.i51, %if.end5.drop_prog_refcnt.exit_crit_edge
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %val, align 8
  %23 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i52 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i52 to ptr
  %cpu.i53 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i53, align 4
  %arrayidx.i54 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i54, align 4
  %add.i55 = add i32 %28, ptrtoint (ptr @irqsave_flags to i32)
  %29 = inttoptr i32 %add.i55 to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %call.i.i.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %32 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %lock, align 4
  %and.i34.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i)
  %tobool.not.i57 = icmp eq i32 %and.i34.i, 0
  br i1 %tobool.not.i57, label %if.then.i58, label %drop_prog_refcnt.exit.do.body13.i_crit_edge

drop_prog_refcnt.exit.do.body13.i_crit_edge:      ; preds = %drop_prog_refcnt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13.i

if.then.i58:                                      ; preds = %drop_prog_refcnt.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body13.i

do.body13.i:                                      ; preds = %if.then.i58, %drop_prog_refcnt.exit.do.body13.i_crit_edge
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i.i59 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i59)
  %tobool21.not.i = icmp eq i32 %and.i.i.i59, 0
  br i1 %tobool21.not.i, label %if.then25.i, label %do.body13.i.__bpf_spin_unlock_irqrestore.exit_crit_edge, !prof !144

do.body13.i.__bpf_spin_unlock_irqrestore.exit_crit_edge: ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bpf_spin_unlock_irqrestore.exit

if.then25.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %__bpf_spin_unlock_irqrestore.exit

__bpf_spin_unlock_irqrestore.exit:                ; preds = %if.then25.i, %do.body13.i.__bpf_spin_unlock_irqrestore.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #14, !srcloc !153
  %34 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %37, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !173
  %38 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %add = add i32 %43, ptrtoint (ptr @hrtimer_running to i32)
  %44 = inttoptr i32 %add to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %44, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !174
  %47 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i.i47 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i47 to ptr
  %preempt_count.i.i48 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i48, align 4
  %sub.i = add i32 %50, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i48, align 4
  %cmp.not = icmp eq ptr %46, %17
  br i1 %cmp.not, label %__bpf_spin_unlock_irqrestore.exit.if.end36_crit_edge, label %if.then33

__bpf_spin_unlock_irqrestore.exit.if.end36_crit_edge: ; preds = %__bpf_spin_unlock_irqrestore.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then9.critedge:                                ; preds = %__bpf_spin_lock_irqsave.exit
  %51 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i.i60 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i60 to ptr
  %cpu.i61 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i61, align 4
  %arrayidx.i62 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i62, align 4
  %add.i63 = add i32 %56, ptrtoint (ptr @irqsave_flags to i32)
  %57 = inttoptr i32 %add.i63 to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %call.i.i.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  %60 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 0, ptr %lock, align 4
  %and.i34.i65 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i65)
  %tobool.not.i66 = icmp eq i32 %and.i34.i65, 0
  br i1 %tobool.not.i66, label %if.then.i67, label %if.then9.critedge.do.body13.i70_crit_edge

if.then9.critedge.do.body13.i70_crit_edge:        ; preds = %if.then9.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body13.i70

if.then.i67:                                      ; preds = %if.then9.critedge
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body13.i70

do.body13.i70:                                    ; preds = %if.then.i67, %if.then9.critedge.do.body13.i70_crit_edge
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i.i68 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i68)
  %tobool21.not.i69 = icmp eq i32 %and.i.i.i68, 0
  br i1 %tobool21.not.i69, label %if.then25.i71, label %do.body13.i70.__bpf_spin_unlock_irqrestore.exit72_crit_edge, !prof !144

do.body13.i70.__bpf_spin_unlock_irqrestore.exit72_crit_edge: ; preds = %do.body13.i70
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bpf_spin_unlock_irqrestore.exit72

if.then25.i71:                                    ; preds = %do.body13.i70
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %__bpf_spin_unlock_irqrestore.exit72

__bpf_spin_unlock_irqrestore.exit72:              ; preds = %if.then25.i71, %do.body13.i70.__bpf_spin_unlock_irqrestore.exit72_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #14, !srcloc !153
  br label %cleanup

if.then33:                                        ; preds = %__bpf_spin_unlock_irqrestore.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call35 = tail call i32 @hrtimer_cancel(ptr noundef nonnull %17) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %__bpf_spin_unlock_irqrestore.exit.if.end36_crit_edge
  tail call void @kfree(ptr noundef nonnull %17) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %__bpf_spin_unlock_irqrestore.exit72, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_base_func_proto(i32 noundef %func_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %func_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %func_id, label %sw.epilog [
    i32 1, label %entry.return_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 87, label %sw.bb3
    i32 88, label %sw.bb4
    i32 89, label %sw.bb5
    i32 7, label %sw.bb6
    i32 8, label %sw.bb7
    i32 42, label %sw.bb8
    i32 12, label %sw.bb9
    i32 5, label %sw.bb10
    i32 125, label %sw.bb11
    i32 130, label %sw.bb12
    i32 131, label %sw.bb13
    i32 132, label %sw.bb14
    i32 133, label %sw.bb15
    i32 134, label %sw.bb16
    i32 164, label %sw.bb17
    i32 181, label %sw.bb18
    i32 182, label %sw.bb19
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.epilog:                                        ; preds = %entry
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #14
  br i1 %call.i, label %sw.epilog.if.end_crit_edge, label %bpf_capable.exit

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

bpf_capable.exit:                                 ; preds = %sw.epilog
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call1.i, label %bpf_capable.exit.if.end_crit_edge, label %bpf_capable.exit.return_crit_edge

bpf_capable.exit.return_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

bpf_capable.exit.if.end_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %bpf_capable.exit.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %1 = zext i32 %func_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %func_id, label %sw.epilog30 [
    i32 93, label %if.end.return_crit_edge
    i32 94, label %sw.bb21
    i32 118, label %sw.bb22
    i32 153, label %sw.bb23
    i32 154, label %sw.bb24
    i32 169, label %sw.bb25
    i32 170, label %sw.bb26
    i32 171, label %sw.bb27
    i32 172, label %sw.bb28
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.epilog30:                                      ; preds = %if.end
  %call31 = tail call fastcc zeroext i1 @perfmon_capable()
  br i1 %call31, label %if.end33, label %sw.epilog30.return_crit_edge

sw.epilog30.return_crit_edge:                     ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end33:                                         ; preds = %sw.epilog30
  %2 = zext i32 %func_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %func_id, label %sw.default51 [
    i32 6, label %sw.bb34
    i32 35, label %if.end33.return_crit_edge
    i32 158, label %sw.bb37
    i32 112, label %sw.bb38
    i32 113, label %sw.bb39
    i32 114, label %sw.bb41
    i32 115, label %sw.bb42
    i32 149, label %sw.bb46
    i32 165, label %sw.bb47
    i32 175, label %sw.bb48
    i32 177, label %sw.bb49
  ]

if.end33.return_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb34:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %call35 = tail call ptr @bpf_get_trace_printk_proto() #14
  br label %return

sw.bb37:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb38:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb39:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %call40 = tail call i32 @security_locked_down(i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp slt i32 %call40, 0
  %cond = select i1 %cmp, ptr null, ptr @bpf_probe_read_kernel_proto
  br label %return

sw.bb41:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb42:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %call43 = tail call i32 @security_locked_down(i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  %cond45 = select i1 %cmp44, ptr null, ptr @bpf_probe_read_kernel_str_proto
  br label %return

sw.bb46:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb47:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb48:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb49:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %call50 = tail call ptr @bpf_get_trace_vprintk_proto() #14
  br label %return

sw.default51:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return:                                           ; preds = %sw.default51, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb42, %sw.bb41, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb34, %if.end33.return_crit_edge, %sw.epilog30.return_crit_edge, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %if.end.return_crit_edge, %bpf_capable.exit.return_crit_edge, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %sw.default51 ], [ %call50, %sw.bb49 ], [ @bpf_task_pt_regs_proto, %sw.bb48 ], [ @bpf_snprintf_proto, %sw.bb47 ], [ @bpf_snprintf_btf_proto, %sw.bb46 ], [ %cond45, %sw.bb42 ], [ @bpf_probe_read_user_str_proto, %sw.bb41 ], [ %cond, %sw.bb39 ], [ @bpf_probe_read_user_proto, %sw.bb38 ], [ @bpf_get_current_task_btf_proto, %sw.bb37 ], [ %call35, %sw.bb34 ], [ @bpf_timer_cancel_proto, %sw.bb28 ], [ @bpf_timer_start_proto, %sw.bb27 ], [ @bpf_timer_set_callback_proto, %sw.bb26 ], [ @bpf_timer_init_proto, %sw.bb25 ], [ @bpf_this_cpu_ptr_proto, %sw.bb24 ], [ @bpf_per_cpu_ptr_proto, %sw.bb23 ], [ @bpf_jiffies64_proto, %sw.bb22 ], [ @bpf_spin_unlock_proto, %sw.bb21 ], [ @bpf_strncmp_proto, %sw.bb19 ], [ @bpf_loop_proto, %sw.bb18 ], [ @bpf_for_each_map_elem_proto, %sw.bb17 ], [ @bpf_ringbuf_query_proto, %sw.bb16 ], [ @bpf_ringbuf_discard_proto, %sw.bb15 ], [ @bpf_ringbuf_submit_proto, %sw.bb14 ], [ @bpf_ringbuf_reserve_proto, %sw.bb13 ], [ @bpf_ringbuf_output_proto, %sw.bb12 ], [ @bpf_ktime_get_boot_ns_proto, %sw.bb11 ], [ @bpf_ktime_get_ns_proto, %sw.bb10 ], [ @bpf_tail_call_proto, %sw.bb9 ], [ @bpf_get_numa_node_id_proto, %sw.bb8 ], [ @bpf_get_raw_smp_processor_id_proto, %sw.bb7 ], [ @bpf_get_prandom_u32_proto, %sw.bb6 ], [ @bpf_map_peek_elem_proto, %sw.bb5 ], [ @bpf_map_pop_elem_proto, %sw.bb4 ], [ @bpf_map_push_elem_proto, %sw.bb3 ], [ @bpf_map_delete_elem_proto, %sw.bb2 ], [ @bpf_map_update_elem_proto, %sw.bb1 ], [ @bpf_map_lookup_elem_proto, %entry.return_crit_edge ], [ null, %bpf_capable.exit.return_crit_edge ], [ @bpf_spin_lock_proto, %if.end.return_crit_edge ], [ null, %sw.epilog30.return_crit_edge ], [ @bpf_get_current_task_proto, %if.end33.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @perfmon_capable() unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call zeroext i1 @capable(i32 noundef 38) #14
  br i1 %call, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %0 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %call1, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_get_trace_printk_proto() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_get_trace_vprintk_proto() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_boot_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bpf_strtoull(ptr noundef %buf, i32 noundef %buf_len, i64 noundef %flags, ptr noundef %res, ptr noundef writeonly %is_negative) unnamed_addr #0 align 64 {
entry:
  %base = alloca i32, align 4
  %str = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #14
  %0 = trunc i64 %flags to i32
  %conv = and i32 %0, 31
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %base, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %str) #14
  %2 = call ptr @memset(ptr %str, i32 255, i32 64)
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool1.not = icmp eq i32 %buf_len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %res, null
  %or.cond98 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %is_negative, null
  %or.cond99 = or i1 %or.cond98, %tobool5.not
  br i1 %or.cond99, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %conv, i32 31)
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end16_crit_edge
    i32 4, label %if.end.if.end16_crit_edge115
    i32 5, label %if.end.if.end16_crit_edge116
    i32 8, label %if.end.if.end16_crit_edge117
  ]

if.end.if.end16_crit_edge117:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end.if.end16_crit_edge116:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end.if.end16_crit_edge115:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end.if.end16_crit_edge, %if.end.if.end16_crit_edge115, %if.end.if.end16_crit_edge116, %if.end.if.end16_crit_edge117
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %flags)
  %tobool18.not = icmp ult i64 %flags, 32
  br i1 %tobool18.not, label %while.cond.preheader, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end16
  %add.ptr = getelementptr i8, ptr %buf, i32 %buf_len
  %cmp21103 = icmp ugt ptr %add.ptr, %buf
  br i1 %cmp21103, label %while.cond.preheader.land.rhs_crit_edge, label %while.cond.preheader.land.end35.thread_crit_edge

while.cond.preheader.land.end35.thread_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end35.thread

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

land.end35.thread:                                ; preds = %while.body.land.end35.thread_crit_edge, %while.cond.preheader.land.end35.thread_crit_edge
  %cur_buf.0.lcssa = phi ptr [ %buf, %while.cond.preheader.land.end35.thread_crit_edge ], [ %add.ptr, %while.body.land.end35.thread_crit_edge ]
  %5 = ptrtoint ptr %is_negative to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_negative, align 1
  br label %12

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %cur_buf.0104 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %buf, %while.cond.preheader.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %cur_buf.0104 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cur_buf.0104, align 1
  %conv23 = zext i8 %7 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv23
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp26.not = icmp eq i8 %10, 0
  br i1 %cmp26.not, label %land.end35, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %cur_buf.0104, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %add.ptr
  br i1 %exitcond.not, label %while.body.land.end35.thread_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

while.body.land.end35.thread_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end35.thread

land.end35:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %7)
  %cmp33 = icmp eq i8 %7, 45
  %frombool = zext i1 %cmp33 to i8
  %11 = ptrtoint ptr %is_negative to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %is_negative, align 1
  %spec.select.idx = zext i1 %cmp33 to i32
  %spec.select = getelementptr i8, ptr %cur_buf.0104, i32 %spec.select.idx
  br label %12

12:                                               ; preds = %land.end35, %land.end35.thread
  %13 = phi ptr [ %cur_buf.0.lcssa, %land.end35.thread ], [ %spec.select, %land.end35 ]
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %buf_len)
  %tobool40.not = icmp eq i32 %sub.ptr.sub, %buf_len
  br i1 %tobool40.not, label %.cleanup_crit_edge, label %if.end42

.cleanup_crit_edge:                               ; preds = %12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end42:                                         ; preds = %12
  %sub = sub i32 %buf_len, %sub.ptr.sub
  %14 = tail call i32 @llvm.umin.i32(i32 %sub, i32 63)
  %15 = call ptr @memcpy(ptr %str, ptr %13, i32 %14)
  %arrayidx45 = getelementptr [64 x i8], ptr %str, i32 0, i32 %14
  %16 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx45, align 1
  %call = call ptr @_parse_integer_fixup_radix(ptr noundef nonnull %str, ptr noundef nonnull %base) #14
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base, align 4
  %call47 = call i32 @_parse_integer(ptr noundef %call, i32 noundef %18, ptr noundef nonnull %res) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call47)
  %tobool49.not = icmp sgt i32 %call47, -1
  br i1 %tobool49.not, label %if.end51, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp52 = icmp eq i32 %call47, 0
  br i1 %cmp52, label %if.end51.cleanup_crit_edge, label %if.end55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr56 = getelementptr i8, ptr %call, i32 %call47
  %sub.ptr.lhs.cast58 = ptrtoint ptr %add.ptr56 to i32
  %sub.ptr.rhs.cast59 = ptrtoint ptr %str to i32
  %sub.ptr.sub60 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast59
  %add = add i32 %sub.ptr.sub60, %sub.ptr.lhs.cast58
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end51.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end55 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %.cleanup_crit_edge ], [ -34, %if.end42.cleanup_crit_edge ], [ -22, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_parse_integer_fixup_radix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_parse_integer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_match(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @bpf_event_output(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bstr_printf(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_kmalloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_timer_cb(ptr noundef %hrtimer) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %map1 = getelementptr inbounds %struct.bpf_hrtimer, ptr %hrtimer, i32 0, i32 1
  %0 = ptrtoint ptr %map1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map1, align 8
  %value2 = getelementptr inbounds %struct.bpf_hrtimer, ptr %hrtimer, i32 0, i32 4
  %2 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #14
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %idx, align 4, !annotation !158
  %callback_fn4 = getelementptr inbounds %struct.bpf_hrtimer, ptr %hrtimer, i32 0, i32 3
  %5 = ptrtoint ptr %callback_fn4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %callback_fn4, align 8
  %call = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

lor.lhs.false:                                    ; preds = %entry
  %call6 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %lor.lhs.false.do.end13_crit_edge

lor.lhs.false.do.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true10

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b140 = load i1, ptr @bpf_timer_cb.__warned, align 1
  br i1 %.b140, label %land.lhs.true10.do.end13_crit_edge, label %if.then

land.lhs.true10.do.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @bpf_timer_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1080, ptr noundef nonnull @.str.7) #14
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %lor.lhs.false.do.end13_crit_edge, %entry.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %do.end13.out_crit_edge, label %do.body19

do.end13.out_crit_edge:                           ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body19:                                        ; preds = %do.end13
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %8 = tail call i32 @llvm.read_register.i32(metadata !133) #14
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, ptrtoint (ptr @hrtimer_running to i32)
  %14 = inttoptr i32 %add to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %hrtimer, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool46.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool46.not, label %if.then50, label %do.body19.do.end53_crit_edge, !prof !144

do.body19.do.end53_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end53

if.then50:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body19.do.end53_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #14, !srcloc !153
  %map_type = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %map_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp60 = icmp eq i32 %18, 2
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #16
  %19 = getelementptr inbounds %struct.bpf_array, ptr %1, i32 0, i32 5
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %elem_size = getelementptr inbounds %struct.bpf_array, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %elem_size, align 128
  %div = udiv i32 %sub.ptr.sub, %21
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div, ptr %idx, align 4
  br label %if.end68

if.else:                                          ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #16
  %key_size = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key_size, align 16
  %notlhs = sub i32 0, %24
  %idx.neg = and i32 %notlhs, -8
  %add.ptr67 = getelementptr i8, ptr %3, i32 %idx.neg
  %.pre = ptrtoint ptr %3 to i32
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then62
  %.pre-phi = phi i32 [ %.pre, %if.else ], [ %sub.ptr.lhs.cast, %if.then62 ]
  %key.0 = phi ptr [ %add.ptr67, %if.else ], [ %idx, %if.then62 ]
  %25 = ptrtoint ptr %1 to i32
  %conv69 = sext i32 %25 to i64
  %26 = ptrtoint ptr %key.0 to i32
  %conv70 = sext i32 %26 to i64
  %conv71 = sext i32 %.pre-phi to i64
  %call72 = call i64 %6(i64 noundef %conv69, i64 noundef %conv70, i64 noundef %conv71, i64 noundef 0, i64 noundef 0) #14
  %27 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !145
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu, align 4
  %arrayidx99 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx99, align 4
  %add100 = add i32 %31, ptrtoint (ptr @hrtimer_running to i32)
  %32 = inttoptr i32 %add100 to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %32, align 4
  %34 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !152
  %and.i.i141 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i141)
  %tobool111.not = icmp eq i32 %and.i.i141, 0
  br i1 %tobool111.not, label %if.then120, label %if.end68.do.end123_crit_edge, !prof !144

if.end68.do.end123_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end123

if.then120:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end123

do.end123:                                        ; preds = %if.then120, %if.end68.do.end123_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #14, !srcloc !153
  br label %out

out:                                              ; preds = %do.end123, %do.end13.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_inc_not_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @bpf_get_raw_cpu_id(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !95, !97, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131}
!llvm.named.register.sp = !{!133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @bpf_map_lookup_elem_proto, !1, !"bpf_map_lookup_elem_proto", i1 false, i1 false}
!1 = !{!"../kernel/bpf/helpers.c", i32 38, i32 29}
!2 = !{ptr @bpf_map_update_elem_proto, !3, !"bpf_map_update_elem_proto", i1 false, i1 false}
!3 = !{!"../kernel/bpf/helpers.c", i32 54, i32 29}
!4 = !{ptr @bpf_map_delete_elem_proto, !5, !"bpf_map_delete_elem_proto", i1 false, i1 false}
!5 = !{!"../kernel/bpf/helpers.c", i32 71, i32 29}
!6 = !{ptr @bpf_map_push_elem_proto, !7, !"bpf_map_push_elem_proto", i1 false, i1 false}
!7 = !{!"../kernel/bpf/helpers.c", i32 85, i32 29}
!8 = !{ptr @bpf_map_pop_elem_proto, !9, !"bpf_map_pop_elem_proto", i1 false, i1 false}
!9 = !{!"../kernel/bpf/helpers.c", i32 100, i32 29}
!10 = !{ptr @bpf_map_peek_elem_proto, !11, !"bpf_map_peek_elem_proto", i1 false, i1 false}
!11 = !{!"../kernel/bpf/helpers.c", i32 113, i32 29}
!12 = !{ptr @bpf_get_prandom_u32_proto, !13, !"bpf_get_prandom_u32_proto", i1 false, i1 false}
!13 = !{!"../kernel/bpf/helpers.c", i32 121, i32 29}
!14 = !{ptr @bpf_get_smp_processor_id_proto, !15, !"bpf_get_smp_processor_id_proto", i1 false, i1 false}
!15 = !{!"../kernel/bpf/helpers.c", i32 132, i32 29}
!16 = !{ptr @bpf_get_numa_node_id_proto, !17, !"bpf_get_numa_node_id_proto", i1 false, i1 false}
!17 = !{!"../kernel/bpf/helpers.c", i32 143, i32 29}
!18 = !{ptr @bpf_ktime_get_ns_proto, !19, !"bpf_ktime_get_ns_proto", i1 false, i1 false}
!19 = !{!"../kernel/bpf/helpers.c", i32 155, i32 29}
!20 = !{ptr @bpf_ktime_get_boot_ns_proto, !21, !"bpf_ktime_get_boot_ns_proto", i1 false, i1 false}
!21 = !{!"../kernel/bpf/helpers.c", i32 167, i32 29}
!22 = !{ptr @bpf_ktime_get_coarse_ns_proto, !23, !"bpf_ktime_get_coarse_ns_proto", i1 false, i1 false}
!23 = !{!"../kernel/bpf/helpers.c", i32 178, i32 29}
!24 = !{ptr @bpf_get_current_pid_tgid_proto, !25, !"bpf_get_current_pid_tgid_proto", i1 false, i1 false}
!25 = !{!"../kernel/bpf/helpers.c", i32 194, i32 29}
!26 = !{ptr @bpf_get_current_uid_gid_proto, !27, !"bpf_get_current_uid_gid_proto", i1 false, i1 false}
!27 = !{!"../kernel/bpf/helpers.c", i32 214, i32 29}
!28 = !{ptr @bpf_get_current_comm_proto, !29, !"bpf_get_current_comm_proto", i1 false, i1 false}
!29 = !{!"../kernel/bpf/helpers.c", i32 240, i32 29}
!30 = !{ptr @bpf_spin_lock_proto, !31, !"bpf_spin_lock_proto", i1 false, i1 false}
!31 = !{!"../kernel/bpf/helpers.c", i32 309, i32 29}
!32 = !{ptr @bpf_spin_unlock_proto, !33, !"bpf_spin_unlock_proto", i1 false, i1 false}
!33 = !{!"../kernel/bpf/helpers.c", i32 331, i32 29}
!34 = !{ptr @bpf_jiffies64_proto, !35, !"bpf_jiffies64_proto", i1 false, i1 false}
!35 = !{!"../kernel/bpf/helpers.c", i32 359, i32 29}
!36 = !{ptr @bpf_get_current_cgroup_id_proto, !37, !"bpf_get_current_cgroup_id_proto", i1 false, i1 false}
!37 = !{!"../kernel/bpf/helpers.c", i32 379, i32 29}
!38 = !{ptr @bpf_get_current_ancestor_cgroup_id_proto, !39, !"bpf_get_current_ancestor_cgroup_id_proto", i1 false, i1 false}
!39 = !{!"../kernel/bpf/helpers.c", i32 400, i32 29}
!40 = !{ptr @bpf_get_local_storage_proto, !41, !"bpf_get_local_storage_proto", i1 false, i1 false}
!41 = !{!"../kernel/bpf/helpers.c", i32 432, i32 29}
!42 = !{ptr @bpf_strtol_proto, !43, !"bpf_strtol_proto", i1 false, i1 false}
!43 = !{!"../kernel/bpf/helpers.c", i32 531, i32 29}
!44 = !{ptr @bpf_strtoul_proto, !45, !"bpf_strtoul_proto", i1 false, i1 false}
!45 = !{!"../kernel/bpf/helpers.c", i32 559, i32 29}
!46 = !{ptr @bpf_strncmp_proto, !47, !"bpf_strncmp_proto", i1 false, i1 false}
!47 = !{!"../kernel/bpf/helpers.c", i32 575, i32 29}
!48 = !{ptr @bpf_get_ns_current_pid_tgid_proto, !49, !"bpf_get_ns_current_pid_tgid_proto", i1 false, i1 false}
!49 = !{!"../kernel/bpf/helpers.c", i32 617, i32 29}
!50 = !{ptr @bpf_event_output_data_proto, !51, !"bpf_event_output_data_proto", i1 false, i1 false}
!51 = !{!"../kernel/bpf/helpers.c", i32 642, i32 29}
!52 = !{ptr @bpf_copy_from_user_proto, !53, !"bpf_copy_from_user_proto", i1 false, i1 false}
!53 = !{!"../kernel/bpf/helpers.c", i32 666, i32 29}
!54 = !{ptr @bpf_per_cpu_ptr_proto, !55, !"bpf_per_cpu_ptr_proto", i1 false, i1 false}
!55 = !{!"../kernel/bpf/helpers.c", i32 683, i32 29}
!56 = !{ptr @bpf_this_cpu_ptr_proto, !57, !"bpf_this_cpu_ptr_proto", i1 false, i1 false}
!57 = !{!"../kernel/bpf/helpers.c", i32 696, i32 29}
!58 = !{ptr @.str, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/bpf/helpers.c", i32 860, i32 14}
!60 = !{ptr @bpf_snprintf_proto, !61, !"bpf_snprintf_proto", i1 false, i1 false}
!61 = !{!"../kernel/bpf/helpers.c", i32 1023, i32 29}
!62 = !{ptr @__pcpu_unique_irqsave_flags, !63, !"__pcpu_unique_irqsave_flags", i1 false, i1 false}
!63 = !{!"../kernel/bpf/helpers.c", i32 292, i32 8}
!64 = !{ptr @irqsave_flags, !63, !"irqsave_flags", i1 false, i1 false}
!65 = !{ptr @__pcpu_unique_bpf_bprintf_bufs, !66, !"__pcpu_unique_bpf_bprintf_bufs", i1 false, i1 false}
!66 = !{!"../kernel/bpf/helpers.c", i32 736, i32 8}
!67 = !{ptr @bpf_bprintf_bufs, !66, !"bpf_bprintf_bufs", i1 false, i1 false}
!68 = !{ptr @__pcpu_unique_bpf_bprintf_nest_level, !69, !"__pcpu_unique_bpf_bprintf_nest_level", i1 false, i1 false}
!69 = !{!"../kernel/bpf/helpers.c", i32 737, i32 8}
!70 = !{ptr @bpf_bprintf_nest_level, !69, !"bpf_bprintf_nest_level", i1 false, i1 false}
!71 = !{ptr @__pcpu_unique_hrtimer_running, !72, !"__pcpu_unique_hrtimer_running", i1 false, i1 false}
!72 = !{!"../kernel/bpf/helpers.c", i32 1068, i32 8}
!73 = !{ptr @hrtimer_running, !72, !"hrtimer_running", i1 false, i1 false}
!74 = !{ptr @bpf_get_current_task_proto, !75, !"bpf_get_current_task_proto", i1 false, i1 false}
!75 = !{!"../kernel/bpf/helpers.c", i32 1348, i32 29}
!76 = !{ptr @bpf_get_current_task_btf_proto, !77, !"bpf_get_current_task_btf_proto", i1 false, i1 false}
!77 = !{!"../kernel/bpf/helpers.c", i32 1349, i32 29}
!78 = !{ptr @bpf_probe_read_user_proto, !79, !"bpf_probe_read_user_proto", i1 false, i1 false}
!79 = !{!"../kernel/bpf/helpers.c", i32 1350, i32 29}
!80 = !{ptr @bpf_probe_read_user_str_proto, !81, !"bpf_probe_read_user_str_proto", i1 false, i1 false}
!81 = !{!"../kernel/bpf/helpers.c", i32 1351, i32 29}
!82 = !{ptr @bpf_probe_read_kernel_proto, !83, !"bpf_probe_read_kernel_proto", i1 false, i1 false}
!83 = !{!"../kernel/bpf/helpers.c", i32 1352, i32 29}
!84 = !{ptr @bpf_probe_read_kernel_str_proto, !85, !"bpf_probe_read_kernel_str_proto", i1 false, i1 false}
!85 = !{!"../kernel/bpf/helpers.c", i32 1353, i32 29}
!86 = !{ptr @bpf_task_pt_regs_proto, !87, !"bpf_task_pt_regs_proto", i1 false, i1 false}
!87 = !{!"../kernel/bpf/helpers.c", i32 1354, i32 29}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../kernel/bpf/helpers.c", i32 34, i32 2}
!90 = !{ptr @.str.1, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../kernel/bpf/helpers.c", i32 50, i32 2}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../kernel/bpf/helpers.c", i32 67, i32 2}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../kernel/bpf/helpers.c", i32 209, i32 2}
!97 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../kernel/bpf/helpers.c", i32 300, i32 2}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../kernel/bpf/helpers.c", i32 320, i32 10}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!103 = !{ptr @.str.4, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.5, !102, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/cgroup.h", i32 481, i32 9}
!107 = !{ptr @.str.6, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.7, !106, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!111 = !{ptr @.str.8, !110, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!114 = !{ptr @.str.9, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.10, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!117 = !{ptr @.str.11, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../kernel/bpf/helpers.c", i32 746, i32 6}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../kernel/bpf/helpers.c", i32 1080, i32 16}
!123 = !{ptr @bpf_get_raw_smp_processor_id_proto, !124, !"bpf_get_raw_smp_processor_id_proto", i1 false, i1 false}
!124 = !{!"../kernel/bpf/helpers.c", i32 627, i32 36}
!125 = !{ptr @bpf_timer_init_proto, !126, !"bpf_timer_init_proto", i1 false, i1 false}
!126 = !{!"../kernel/bpf/helpers.c", i32 1160, i32 36}
!127 = !{ptr @bpf_timer_set_callback_proto, !128, !"bpf_timer_set_callback_proto", i1 false, i1 false}
!128 = !{!"../kernel/bpf/helpers.c", i32 1214, i32 36}
!129 = !{ptr @bpf_timer_start_proto, !130, !"bpf_timer_start_proto", i1 false, i1 false}
!130 = !{!"../kernel/bpf/helpers.c", i32 1243, i32 36}
!131 = !{ptr @bpf_timer_cancel_proto, !132, !"bpf_timer_cancel_proto", i1 false, i1 false}
!132 = !{!"../kernel/bpf/helpers.c", i32 1294, i32 36}
!133 = !{!"sp"}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"branch_weights", i32 2000, i32 1}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{i64 1122578, i64 1122639}
!146 = !{i64 2157161378}
!147 = !{i64 2157161220}
!148 = !{i64 2148982839}
!149 = !{i64 1225646, i64 1225663, i64 1225687, i64 1225713, i64 1225731}
!150 = !{i64 2148983209}
!151 = !{i64 2148800863}
!152 = !{i64 1125310}
!153 = !{i64 1125595}
!154 = !{i64 2157183897}
!155 = !{i64 2157183994}
!156 = !{i64 2149710199}
!157 = !{i64 2149710465}
!158 = !{!"auto-init"}
!159 = !{i8 0, i8 2}
!160 = !{!"branch_weights", i32 4001, i32 4000000}
!161 = !{i64 2153349825, i64 2153349850}
!162 = !{i64 5845380}
!163 = !{i64 5845577}
!164 = !{i64 2153330810}
!165 = !{i64 2157333124}
!166 = !{i64 2157350767}
!167 = !{i64 2157383321}
!168 = !{i64 2157268421}
!169 = !{i64 2157289116}
!170 = !{i64 2157453313}
!171 = !{i64 2157515291}
!172 = !{i64 2157531919}
!173 = !{i64 2157596635}
!174 = !{i64 2157613263}
