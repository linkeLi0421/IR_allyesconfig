; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx4/mr.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx4/mr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%struct.atomic_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_ib_dev = type { %struct.ib_device, ptr, i32, ptr, %struct.mlx4_uar, i32, %struct.spinlock, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x %struct.atomic64_t], %struct.mlx4_ib_sriov, %struct.mutex, i8, %struct.mlx4_ib_iboe, [2 x %struct.mlx4_ib_counters], ptr, ptr, ptr, [128 x ptr], [2 x %struct.mlx4_ib_iov_port], %struct.pkey_mgt, ptr, i32, i32, i32, [2 x ptr], [2 x %struct.mutex], i8, %struct.spinlock, %struct.list_head, [2 x %struct.mlx4_ib_diag_counters] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.170, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.170 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.161 }
%struct.anon.161 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.mlx4_ib_sriov = type { [2 x %struct.mlx4_ib_demux_ctx], [2 x ptr], %struct.spinlock, i32, %struct.mlx4_sriov_alias_guid, %struct.xarray, i32, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.xarray }
%struct.mlx4_ib_demux_ctx = type { ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.atomic64_t, [128 x i64], ptr, %struct.mutex, %struct.rb_root, %struct.list_head, ptr, ptr, %struct.atomic_t, i32 }
%struct.mlx4_sriov_alias_guid = type { [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], %struct.spinlock, ptr }
%struct.mlx4_sriov_alias_guid_port_rec_det = type { [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr, %struct.delayed_work, i32, i32, ptr, %struct.list_head }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { [64 x i8], i64, i32, [8 x i32], i64 }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx4_ib_iboe = type { %struct.spinlock, [2 x ptr], [2 x %struct.atomic64_t], %struct.notifier_block, [2 x %struct.mlx4_port_gid_table], [2 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_port_gid_table = type { [128 x %struct.gid_entry] }
%struct.gid_entry = type { %union.ib_gid, i32, ptr, i16 }
%union.ib_gid = type { %struct.anon.157 }
%struct.anon.157 = type { i64, i64 }
%struct.mlx4_ib_counters = type { %struct.list_head, %struct.mutex, i32 }
%struct.mlx4_ib_iov_port = type { [100 x i8], i8, ptr, %struct.list_head, ptr, %struct.ib_port_attr, ptr, ptr, ptr, ptr, ptr, %struct.mlx4_ib_iov_sysfs_attr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.mlx4_ib_iov_sysfs_attr = type { ptr, ptr, i32, i32, [15 x i8], %struct.device_attribute, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pkey_mgt = type { [128 x [2 x [128 x i8]]], [2 x [128 x i16]], [128 x %struct.list_head], [128 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mlx4_ib_diag_counters = type { ptr, ptr, i32 }
%struct.mlx4_ib_pd = type { %struct.ib_pd, i32 }
%struct.mlx4_ib_mr = type { %struct.ib_mr, ptr, i32, i32, i32, %struct.mlx4_mr, ptr, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.171, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.171 = type { %struct.list_head }
%struct.mlx4_mr = type { %struct.mlx4_mtt, i64, i64, i32, i32, i32, i32 }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.ib_mw = type { ptr, ptr, ptr, i32, i32 }
%struct.mlx4_ib_mw = type { %struct.ib_mw, %struct.mlx4_mw }
%struct.mlx4_mw = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }

@mlx4_ib_umem_calc_optimal_mtt_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014<mlx4_ib> %s: misaligned total length detected (%llu, %llu)!\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlx4_ib_umem_calc_optimal_mtt_size\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/infiniband/hw/mlx4/mr.c\00", [32 x i8] zeroinitializer }, align 32
@mlx4_ib_umem_calc_optimal_mtt_size._entry_ptr = internal global ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry, section ".printk_index", align 4
@mlx4_ib_umem_calc_optimal_mtt_size._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014<mlx4_ib> %s: umem_calc_optimal_mtt_size - unexpected shift %lld\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx4_ib_umem_calc_optimal_mtt_size._entry_ptr.5 = internal global ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx4_ib_umem_write_mtt_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014<mlx4_ib> %s: write_block: len %llx is not aligned to mtt_size %llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx4_ib_umem_write_mtt_block\00", [35 x i8] zeroinitializer }, align 32
@mlx4_ib_umem_write_mtt_block._entry_ptr = internal global ptr @mlx4_ib_umem_write_mtt_block._entry, section ".printk_index", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 355, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 365, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private constant [35 x i8] c"../drivers/infiniband/hw/mlx4/mr.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 110, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 326, i32 6 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry, ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry.3, ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry_ptr, ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry_ptr.5, ptr @mlx4_ib_umem_write_mtt_block._entry, ptr @mlx4_ib_umem_write_mtt_block._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_umem_write_mtt_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx4_ib_get_dma_mr(ptr nocapture noundef readonly %pd, i32 noundef %acc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %pdn = getelementptr inbounds %struct.mlx4_ib_pd, ptr %pd, i32 0, i32 1
  %5 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdn, align 4
  %and.i = shl i32 %acc, 11
  %7 = and i32 %and.i, 16384
  %and1.i = shl i32 %acc, 12
  %8 = and i32 %and1.i, 8192
  %and4.i = shl i32 %acc, 10
  %9 = and i32 %and4.i, 4096
  %10 = and i32 %and.i, 2048
  %11 = and i32 %and.i, 32768
  %or.i = or i32 %7, %8
  %or7.i = or i32 %or.i, %9
  %or11.i = or i32 %or7.i, %10
  %or15.i = or i32 %or11.i, %11
  %or16.i = or i32 %or15.i, 1024
  %mmr = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 5
  %call5 = tail call i32 @mlx4_mr_alloc(ptr noundef %4, i32 noundef %6, i64 noundef 0, i64 noundef -1, i32 noundef %or16.i, i32 noundef 0, i32 noundef 0, ptr noundef %mmr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.err_free_crit_edge

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end8:                                          ; preds = %if.end
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %dev11 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev11, align 8
  %call13 = tail call i32 @mlx4_mr_enable(ptr noundef %15, ptr noundef %mmr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %err_mr

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %key = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key, align 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %lkey, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %rkey, align 4
  %umem = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %umem, align 8
  br label %cleanup

err_mr:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev22 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev22, align 8
  %call24 = tail call i32 @mlx4_mr_free(ptr noundef %24, ptr noundef %mmr) #8
  br label %err_free

err_free:                                         ; preds = %err_mr, %if.end.err_free_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.err_free_crit_edge ], [ %call13, %err_mr ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %25 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %25, %err_free ], [ %call7.i.i, %if.end16 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mr_alloc(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mr_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mr_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_umem_write_mtt(ptr nocapture noundef readonly %dev, ptr noundef %mtt, ptr nocapture noundef readonly %umem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %0 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_shift = getelementptr inbounds %struct.mlx4_mtt, ptr %mtt, i32 0, i32 2
  %1 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %page_shift, align 4
  %conv = sext i32 %2 to i64
  %shl = shl nuw i64 1, %conv
  %nents = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7, i32 0, i32 1
  %3 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp137.not = icmp eq i32 %4, 0
  br i1 %cmp137.not, label %if.end.out_crit_edge, label %for.body.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %if.end
  %sgt_append = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7
  %5 = ptrtoint ptr %sgt_append to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sgt_append, align 8
  %sub.i = add i64 %shl, -1
  %neg.i = sub i64 0, %shl
  %dev17.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg.0142 = phi ptr [ %6, %for.body.lr.ph ], [ %call19, %for.inc.for.body_crit_edge ]
  %cur_start_addr.0141 = phi i64 [ 0, %for.body.lr.ph ], [ %cur_start_addr.1, %for.inc.for.body_crit_edge ]
  %len.0140 = phi i64 [ 0, %for.body.lr.ph ], [ %len.1, %for.inc.for.body_crit_edge ]
  %npages.0139 = phi i32 [ 0, %for.body.lr.ph ], [ %npages.4, %for.inc.for.body_crit_edge ]
  %start_index.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %start_index.4, %for.inc.for.body_crit_edge ]
  %add = add i64 %cur_start_addr.0141, %len.0140
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0142, i32 0, i32 3
  %7 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_address, align 4
  %conv4 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv4)
  %cmp5 = icmp eq i64 %add, %conv4
  br i1 %cmp5, label %if.then7, label %if.end10

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0142, i32 0, i32 4
  %9 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_length, align 4
  %conv8 = zext i32 %10 to i64
  %add9 = add i64 %len.0140, %conv8
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %and.i = and i64 %cur_start_addr.0141, %sub.i
  %sub2.i = add i64 %add, -1
  %or.i = or i64 %sub2.i, %sub.i
  %add4.i = add i64 %len.0140, 1
  %sub5.i = add i64 %add4.i, %and.i
  %add1.i = sub i64 %sub5.i, %add
  %add6.i = add i64 %add1.i, %or.i
  %and8.i = and i64 %add6.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i)
  %tobool.not.i = icmp eq i64 %and8.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i64 noundef %add6.i, i64 noundef %shl) #12
  br label %out

if.end.i:                                         ; preds = %if.end10
  %shr.i = lshr i64 %add6.i, %conv
  %and10.i = and i64 %cur_start_addr.0141, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i)
  %cmp53.not.i = icmp eq i64 %shr.i, 0
  br i1 %cmp53.not.i, label %if.end.i.if.end14_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %start_index.1 = phi i32 [ %start_index.2, %for.inc.i.for.body.i_crit_edge ], [ %start_index.0138, %if.end.i.for.body.i_crit_edge ]
  %npages.1 = phi i32 [ %npages.2, %for.inc.i.for.body.i_crit_edge ], [ %npages.0139, %if.end.i.for.body.i_crit_edge ]
  %conv55.i = phi i64 [ %conv.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %indvars.i = trunc i64 %conv55.i to i32
  %mul.i = shl i64 %conv55.i, %conv
  %add13.i = add i64 %mul.i, %and10.i
  %arrayidx.i = getelementptr i64, ptr %0, i32 %npages.1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add13.i, ptr %arrayidx.i, align 8
  %inc.i = add i32 %npages.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc.i)
  %cmp14.i = icmp eq i32 %inc.i, 512
  br i1 %cmp14.i, label %if.then16.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then16.i:                                      ; preds = %for.body.i
  %12 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17.i, align 8
  %call18.i = tail call i32 @mlx4_write_mtt(ptr noundef %13, ptr noundef %mtt, i32 noundef %start_index.1, i32 noundef 512, ptr noundef nonnull %0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.then16.i.out_crit_edge

if.then16.i.out_crit_edge:                        ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end21.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  %add22.i = add i32 %start_index.1, 512
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end21.i, %for.body.i.for.inc.i_crit_edge
  %start_index.2 = phi i32 [ %add22.i, %if.end21.i ], [ %start_index.1, %for.body.i.for.inc.i_crit_edge ]
  %npages.2 = phi i32 [ 0, %if.end21.i ], [ %inc.i, %for.body.i.for.inc.i_crit_edge ]
  %inc24.i = add i32 %indvars.i, 1
  %conv.i = sext i32 %inc24.i to i64
  %cmp.i = icmp ugt i64 %shr.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end14_crit_edge

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end14:                                         ; preds = %for.inc.i.if.end14_crit_edge, %if.end.i.if.end14_crit_edge
  %start_index.3.ph = phi i32 [ %start_index.0138, %if.end.i.if.end14_crit_edge ], [ %start_index.2, %for.inc.i.if.end14_crit_edge ]
  %npages.3.ph = phi i32 [ %npages.0139, %if.end.i.if.end14_crit_edge ], [ %npages.2, %for.inc.i.if.end14_crit_edge ]
  %14 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_address, align 4
  %conv16 = zext i32 %15 to i64
  %dma_length17 = getelementptr inbounds %struct.scatterlist, ptr %sg.0142, i32 0, i32 4
  %16 = ptrtoint ptr %dma_length17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_length17, align 4
  %conv18 = zext i32 %17 to i64
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.then7
  %start_index.4 = phi i32 [ %start_index.0138, %if.then7 ], [ %start_index.3.ph, %if.end14 ]
  %npages.4 = phi i32 [ %npages.0139, %if.then7 ], [ %npages.3.ph, %if.end14 ]
  %len.1 = phi i64 [ %add9, %if.then7 ], [ %conv18, %if.end14 ]
  %cur_start_addr.1 = phi i64 [ %cur_start_addr.0141, %if.then7 ], [ %conv16, %if.end14 ]
  %inc = add nuw i32 %i.0144, 1
  %call19 = tail call ptr @sg_next(ptr noundef %sg.0142) #8
  %18 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len.1)
  %cmp20.not = icmp eq i64 %len.1, 0
  br i1 %cmp20.not, label %for.end.if.end27_crit_edge, label %if.then22

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then22:                                        ; preds = %for.end
  %add.i69 = add i64 %cur_start_addr.1, %len.1
  %sub.i70 = add i64 %shl, -1
  %and.i71 = and i64 %cur_start_addr.1, %sub.i70
  %sub2.i72 = add i64 %add.i69, -1
  %or.i73 = or i64 %sub2.i72, %sub.i70
  %add4.i74 = add i64 %len.1, 1
  %sub5.i75 = add i64 %add4.i74, %and.i71
  %add1.i76 = sub i64 %sub5.i75, %add.i69
  %add6.i77 = add i64 %add1.i76, %or.i73
  %and8.i78 = and i64 %add6.i77, %sub.i70
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i78)
  %tobool.not.i79 = icmp eq i64 %and8.i78, 0
  br i1 %tobool.not.i79, label %if.end.i87, label %do.end.i81

do.end.i81:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %call.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i64 noundef %add6.i77, i64 noundef %shl) #12
  br label %out

if.end.i87:                                       ; preds = %if.then22
  %shr.i82 = lshr i64 %add6.i77, %conv
  %neg.i83 = sub i64 0, %shl
  %and10.i84 = and i64 %cur_start_addr.1, %neg.i83
  %dev17.i85 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i82)
  %cmp53.not.i86 = icmp eq i64 %shr.i82, 0
  br i1 %cmp53.not.i86, label %if.end.i87.if.end27_crit_edge, label %if.end.i87.for.body.i95_crit_edge

if.end.i87.for.body.i95_crit_edge:                ; preds = %if.end.i87
  br label %for.body.i95

if.end.i87.if.end27_crit_edge:                    ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

for.body.i95:                                     ; preds = %for.inc.i104.for.body.i95_crit_edge, %if.end.i87.for.body.i95_crit_edge
  %start_index.5 = phi i32 [ %start_index.6, %for.inc.i104.for.body.i95_crit_edge ], [ %start_index.4, %if.end.i87.for.body.i95_crit_edge ]
  %npages.5 = phi i32 [ %npages.6, %for.inc.i104.for.body.i95_crit_edge ], [ %npages.4, %if.end.i87.for.body.i95_crit_edge ]
  %conv55.i88 = phi i64 [ %conv.i102, %for.inc.i104.for.body.i95_crit_edge ], [ 0, %if.end.i87.for.body.i95_crit_edge ]
  %indvars.i89 = trunc i64 %conv55.i88 to i32
  %mul.i90 = shl i64 %conv55.i88, %conv
  %add13.i91 = add i64 %mul.i90, %and10.i84
  %arrayidx.i92 = getelementptr i64, ptr %0, i32 %npages.5
  %20 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add13.i91, ptr %arrayidx.i92, align 8
  %inc.i93 = add i32 %npages.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc.i93)
  %cmp14.i94 = icmp eq i32 %inc.i93, 512
  br i1 %cmp14.i94, label %if.then16.i98, label %for.body.i95.for.inc.i104_crit_edge

for.body.i95.for.inc.i104_crit_edge:              ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i104

if.then16.i98:                                    ; preds = %for.body.i95
  %21 = ptrtoint ptr %dev17.i85 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev17.i85, align 8
  %call18.i96 = tail call i32 @mlx4_write_mtt(ptr noundef %22, ptr noundef %mtt, i32 noundef %start_index.5, i32 noundef 512, ptr noundef nonnull %0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i96)
  %tobool19.not.i97 = icmp eq i32 %call18.i96, 0
  br i1 %tobool19.not.i97, label %if.end21.i100, label %if.then16.i98.out_crit_edge

if.then16.i98.out_crit_edge:                      ; preds = %if.then16.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end21.i100:                                    ; preds = %if.then16.i98
  call void @__sanitizer_cov_trace_pc() #10
  %add22.i99 = add i32 %start_index.5, 512
  br label %for.inc.i104

for.inc.i104:                                     ; preds = %if.end21.i100, %for.body.i95.for.inc.i104_crit_edge
  %start_index.6 = phi i32 [ %add22.i99, %if.end21.i100 ], [ %start_index.5, %for.body.i95.for.inc.i104_crit_edge ]
  %npages.6 = phi i32 [ 0, %if.end21.i100 ], [ %inc.i93, %for.body.i95.for.inc.i104_crit_edge ]
  %inc24.i101 = add i32 %indvars.i89, 1
  %conv.i102 = sext i32 %inc24.i101 to i64
  %cmp.i103 = icmp ugt i64 %shr.i82, %conv.i102
  br i1 %cmp.i103, label %for.inc.i104.for.body.i95_crit_edge, label %for.inc.i104.if.end27_crit_edge

for.inc.i104.if.end27_crit_edge:                  ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

for.inc.i104.for.body.i95_crit_edge:              ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i95

if.end27:                                         ; preds = %for.inc.i104.if.end27_crit_edge, %if.end.i87.if.end27_crit_edge, %for.end.if.end27_crit_edge
  %start_index.8 = phi i32 [ %start_index.4, %for.end.if.end27_crit_edge ], [ %start_index.4, %if.end.i87.if.end27_crit_edge ], [ %start_index.6, %for.inc.i104.if.end27_crit_edge ]
  %npages.8 = phi i32 [ %npages.4, %for.end.if.end27_crit_edge ], [ %npages.4, %if.end.i87.if.end27_crit_edge ], [ %npages.6, %for.inc.i104.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages.8)
  %tobool28.not = icmp eq i32 %npages.8, 0
  br i1 %tobool28.not, label %if.end27.out_crit_edge, label %if.then29

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %dev30 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev30, align 8
  %call31 = tail call i32 @mlx4_write_mtt(ptr noundef %24, ptr noundef %mtt, i32 noundef %start_index.8, i32 noundef %npages.8, ptr noundef nonnull %0) #8
  br label %out

out:                                              ; preds = %if.then29, %if.end27.out_crit_edge, %if.then16.i98.out_crit_edge, %do.end.i81, %if.then16.i.out_crit_edge, %do.end.i, %if.end.out_crit_edge
  %err.3 = phi i32 [ %call31, %if.then29 ], [ 0, %if.end27.out_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end.i81 ], [ 0, %if.end.out_crit_edge ], [ %call18.i96, %if.then16.i98.out_crit_edge ], [ %call18.i, %if.then16.i.out_crit_edge ]
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_write_mtt(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_umem_calc_optimal_mtt_size(ptr nocapture noundef readonly %umem, i64 noundef %start_va, ptr nocapture noundef writeonly %num_of_mtts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 2
  %0 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 3
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %3 to i64
  %add.i = add i64 %1, 4095
  %add2.i = add i64 %add.i, %conv.i
  %and.i = and i64 %add2.i, 4294963200
  %and15.i = and i64 %1, 4294963200
  %sub16.i = sub nsw i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div1.i = lshr exact i32 %conv17.i, 12
  %4 = ptrtoint ptr %num_of_mtts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div1.i, ptr %num_of_mtts, align 4
  %nents = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7, i32 0, i32 1
  %5 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp115.not = icmp eq i32 %6, 0
  br i1 %cmp115.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sgt_append = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7
  %7 = ptrtoint ptr %sgt_append to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sgt_append, align 8
  %and = and i64 %start_va, -4096
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %block_shift.0123 = phi i64 [ 31, %for.body.lr.ph ], [ %block_shift.2, %for.inc.for.body_crit_edge ]
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %total_len.0121 = phi i64 [ 0, %for.body.lr.ph ], [ %total_len.1, %for.inc.for.body_crit_edge ]
  %sg.0119 = phi ptr [ %8, %for.body.lr.ph ], [ %call25, %for.inc.for.body_crit_edge ]
  %current_block_len.0118 = phi i64 [ 0, %for.body.lr.ph ], [ %current_block_len.1, %for.inc.for.body_crit_edge ]
  %first_block_start.0117 = phi i64 [ 0, %for.body.lr.ph ], [ %first_block_start.1, %for.inc.for.body_crit_edge ]
  %current_block_start.0116 = phi i64 [ 0, %for.body.lr.ph ], [ %current_block_start.2, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %current_block_len.0118)
  %cmp3 = icmp eq i64 %current_block_len.0118, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %current_block_start.0116)
  %cmp4 = icmp eq i64 %current_block_start.0116, 0
  %or.cond = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0119, i32 0, i32 3
  %9 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %10 to i64
  %xor = xor i64 %and, %conv
  %neg.i = sub i64 0, %xor
  %and.i95 = and i64 %xor, %neg.i
  %shr.i.i.i = lshr i64 %and.i95, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #8, !range !29
  %add.i.i.i = sub nuw nsw i32 64, %11
  br label %alignment_of.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i.i = trunc i64 %and.i95 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %conv1.i.i.i, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #8, !range !29
  %sub.i6.i.i.i = sub nuw nsw i32 32, %12
  %cond.i7.i.i.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.i
  br label %alignment_of.exit

alignment_of.exit:                                ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %cond.i7.i.i.i, %if.end.i.i.i ]
  %sub.i.i = add nsw i32 %retval.0.i.i.i, -1
  %conv.i96 = sext i32 %sub.i.i to i64
  %13 = tail call i64 @llvm.umin.i64(i64 %block_shift.0123, i64 %conv.i96)
  br label %if.end

if.end:                                           ; preds = %alignment_of.exit, %for.body.if.end_crit_edge
  %current_block_start.1 = phi i64 [ %conv, %alignment_of.exit ], [ %current_block_start.0116, %for.body.if.end_crit_edge ]
  %first_block_start.1 = phi i64 [ %conv, %alignment_of.exit ], [ %first_block_start.0117, %for.body.if.end_crit_edge ]
  %block_shift.1 = phi i64 [ %13, %alignment_of.exit ], [ %block_shift.0123, %for.body.if.end_crit_edge ]
  %dma_address8 = getelementptr inbounds %struct.scatterlist, ptr %sg.0119, i32 0, i32 3
  %14 = ptrtoint ptr %dma_address8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_address8, align 4
  %conv9 = zext i32 %15 to i64
  %add = add i64 %current_block_start.1, %current_block_len.0118
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv9)
  %cmp10.not = icmp eq i64 %add, %conv9
  br i1 %cmp10.not, label %if.end21, label %if.then12

if.then12:                                        ; preds = %if.end
  %notmask.i = shl nsw i64 -1, %block_shift.1
  %sub.i = xor i64 %notmask.i, -1
  %and.i97 = and i64 %conv9, %sub.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i97)
  %cmp.not.i = icmp eq i64 %and.i97, 0
  %extract.t39.i = trunc i64 %block_shift.1 to i32
  br i1 %cmp.not.i, label %if.then12.if.end.i_crit_edge, label %alignment_of.exit.i

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

alignment_of.exit.i:                              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i.i = sub i32 0, %15
  %and.i.i = and i32 %15, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %and.i.i, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %and.i.i, i1 true) #8, !range !29
  %sub.i6.i.i.i.i.op = xor i32 %16, 31
  %sub.i.i.i = select i1 %tobool.not.i5.i.i.i.i, i32 -1, i32 %sub.i6.i.i.i.i.op
  %conv.i40.i = zext i32 %sub.i.i.i to i64
  %.pre.i = shl nsw i64 -1, %conv.i40.i
  %.pre38.i = xor i64 %.pre.i, -1
  br label %if.end.i

if.end.i:                                         ; preds = %alignment_of.exit.i, %if.then12.if.end.i_crit_edge
  %sub2.pre-phi.i = phi i64 [ %.pre38.i, %alignment_of.exit.i ], [ %sub.i, %if.then12.if.end.i_crit_edge ]
  %block_shift.addr.0.off0.i = phi i32 [ %sub.i.i.i, %alignment_of.exit.i ], [ %extract.t39.i, %if.then12.if.end.i_crit_edge ]
  %and3.i = and i64 %sub2.pre-phi.i, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %cmp4.not.i = icmp eq i64 %and3.i, 0
  br i1 %cmp4.not.i, label %if.end.i.mlx4_ib_umem_calc_block_mtt.exit_crit_edge, label %if.then5.i

if.end.i.mlx4_ib_umem_calc_block_mtt.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx4_ib_umem_calc_block_mtt.exit

if.then5.i:                                       ; preds = %if.end.i
  %neg.i14.i = sub i64 0, %add
  %and.i15.i = and i64 %add, %neg.i14.i
  %shr.i.i.i21.i = lshr i64 %and.i15.i, 32
  %conv.i.i.i22.i = trunc i64 %shr.i.i.i21.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i22.i)
  %tobool.not.i.i.i23.i = icmp eq i32 %conv.i.i.i22.i, 0
  br i1 %tobool.not.i.i.i23.i, label %if.end.i.i.i31.i, label %if.then.i.i.i26.i

if.then.i.i.i26.i:                                ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i22.i, i1 true) #8, !range !29
  %add.i.i.i25.i = sub nuw nsw i32 64, %17
  br label %__ilog2_u64.exit.i34.i

if.end.i.i.i31.i:                                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i.i27.i = trunc i64 %and.i15.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i27.i)
  %tobool.not.i5.i.i.i28.i = icmp eq i32 %conv1.i.i.i27.i, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i27.i, i1 true) #8, !range !29
  %sub.i6.i.i.i29.i = sub nuw nsw i32 32, %18
  %cond.i7.i.i.i30.i = select i1 %tobool.not.i5.i.i.i28.i, i32 0, i32 %sub.i6.i.i.i29.i
  br label %__ilog2_u64.exit.i34.i

__ilog2_u64.exit.i34.i:                           ; preds = %if.end.i.i.i31.i, %if.then.i.i.i26.i
  %retval.0.i.i.i32.i = phi i32 [ %add.i.i.i25.i, %if.then.i.i.i26.i ], [ %cond.i7.i.i.i30.i, %if.end.i.i.i31.i ]
  %sub.i.i33.i = add nsw i32 %retval.0.i.i.i32.i, -1
  br label %mlx4_ib_umem_calc_block_mtt.exit

mlx4_ib_umem_calc_block_mtt.exit:                 ; preds = %__ilog2_u64.exit.i34.i, %if.end.i.mlx4_ib_umem_calc_block_mtt.exit_crit_edge
  %block_shift.addr.1.off0.i = phi i32 [ %block_shift.addr.0.off0.i, %if.end.i.mlx4_ib_umem_calc_block_mtt.exit_crit_edge ], [ %sub.i.i33.i, %__ilog2_u64.exit.i34.i ]
  %conv14 = sext i32 %block_shift.addr.1.off0.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %block_shift.addr.1.off0.i)
  %cmp15 = icmp ult i32 %block_shift.addr.1.off0.i, 13
  br i1 %cmp15, label %mlx4_ib_umem_calc_block_mtt.exit.end_crit_edge, label %if.end18

mlx4_ib_umem_calc_block_mtt.exit.end_crit_edge:   ; preds = %mlx4_ib_umem_calc_block_mtt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end18:                                         ; preds = %mlx4_ib_umem_calc_block_mtt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add19 = add i64 %total_len.0121, %current_block_len.0118
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0119, i32 0, i32 4
  %19 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_length, align 4
  %conv20 = zext i32 %20 to i64
  br label %for.inc

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dma_length22 = getelementptr inbounds %struct.scatterlist, ptr %sg.0119, i32 0, i32 4
  %21 = ptrtoint ptr %dma_length22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_length22, align 4
  %conv23 = zext i32 %22 to i64
  %add24 = add i64 %current_block_len.0118, %conv23
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.end18
  %current_block_start.2 = phi i64 [ %conv9, %if.end18 ], [ %current_block_start.1, %if.end21 ]
  %current_block_len.1 = phi i64 [ %conv20, %if.end18 ], [ %add24, %if.end21 ]
  %total_len.1 = phi i64 [ %add19, %if.end18 ], [ %total_len.0121, %if.end21 ]
  %block_shift.2 = phi i64 [ %conv14, %if.end18 ], [ %block_shift.1, %if.end21 ]
  %inc = add nuw i32 %i.0122, 1
  %call25 = tail call ptr @sg_next(ptr noundef %sg.0119) #8
  %23 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %current_block_start.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %current_block_start.2, %for.inc.for.end_crit_edge ]
  %first_block_start.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %first_block_start.1, %for.inc.for.end_crit_edge ]
  %current_block_len.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %current_block_len.1, %for.inc.for.end_crit_edge ]
  %total_len.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %total_len.1, %for.inc.for.end_crit_edge ]
  %block_shift.0.lcssa = phi i64 [ 31, %entry.for.end_crit_edge ], [ %block_shift.2, %for.inc.for.end_crit_edge ]
  %notmask = shl nsw i64 -1, %block_shift.0.lcssa
  %sub = xor i64 %notmask, -1
  %and27 = and i64 %first_block_start.0.lcssa, %sub
  %add29 = add i64 %current_block_len.0.lcssa, %current_block_start.0.lcssa
  %sub30 = add i64 %add29, -1
  %or = or i64 %sub30, %sub
  %add33 = add i64 %total_len.0.lcssa, %current_block_len.0.lcssa
  %sub34 = add i64 %add33, 1
  %add26 = sub i64 %sub34, %add29
  %add28 = add i64 %add26, %and27
  %add35 = add i64 %add28, %or
  %and38 = and i64 %add35, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38)
  %tobool.not = icmp eq i64 %and38, 0
  br i1 %tobool.not, label %for.end.if.end42_crit_edge, label %do.end

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %add35, i64 noundef %block_shift.0.lcssa) #12
  br label %if.end42

if.end42:                                         ; preds = %do.end, %for.end.if.end42_crit_edge
  %shr = lshr i64 %add35, %block_shift.0.lcssa
  %conv43 = trunc i64 %shr to i32
  %25 = ptrtoint ptr %num_of_mtts to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv43, ptr %num_of_mtts, align 4
  br label %end

end:                                              ; preds = %if.end42, %mlx4_ib_umem_calc_block_mtt.exit.end_crit_edge
  %block_shift.3 = phi i64 [ %block_shift.0.lcssa, %if.end42 ], [ %conv14, %mlx4_ib_umem_calc_block_mtt.exit.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 12, i64 %block_shift.3)
  %cmp44 = icmp ult i64 %block_shift.3, 12
  %extract.t = trunc i64 %block_shift.3 to i32
  br i1 %cmp44, label %do.end49, label %end.if.end52_crit_edge

end.if.end52_crit_edge:                           ; preds = %end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.end49:                                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i64 noundef %block_shift.3) #12
  br label %if.end52

if.end52:                                         ; preds = %do.end49, %end.if.end52_crit_edge
  %block_shift.4.off0 = phi i32 [ 12, %do.end49 ], [ %extract.t, %end.if.end52_crit_edge ]
  ret i32 %block_shift.4.off0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx4_ib_reg_user_mr(ptr nocapture noundef readonly %pd, i64 noundef %start, i64 noundef %length, i64 noundef %virt_addr, i32 noundef %access_flags, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  %2 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %n, align 4, !annotation !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 216) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %call4 = tail call fastcc ptr @mlx4_get_umem_mr(ptr noundef %5, i64 noundef %start, i64 noundef %length, i32 noundef %access_flags)
  %umem = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %umem, align 8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call4 to i32
  br label %err_free

if.end10:                                         ; preds = %if.end
  %call12 = call i32 @mlx4_ib_umem_calc_optimal_mtt_size(ptr noundef %call4, i64 noundef %start, ptr noundef nonnull %n)
  %dev13 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev13, align 8
  %pdn = getelementptr inbounds %struct.mlx4_ib_pd, ptr %pd, i32 0, i32 1
  %10 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pdn, align 4
  %and.i = shl i32 %access_flags, 11
  %12 = and i32 %and.i, 16384
  %and1.i = shl i32 %access_flags, 12
  %13 = and i32 %and1.i, 8192
  %and4.i = shl i32 %access_flags, 10
  %14 = and i32 %and4.i, 4096
  %15 = and i32 %and.i, 2048
  %16 = and i32 %and.i, 32768
  %or.i = or i32 %12, %13
  %or7.i = or i32 %or.i, %14
  %or11.i = or i32 %or7.i, %15
  %or15.i = or i32 %or11.i, %16
  %or16.i = or i32 %or15.i, 1024
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n, align 4
  %mmr = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 5
  %call16 = tail call i32 @mlx4_mr_alloc(ptr noundef %9, i32 noundef %11, i64 noundef %virt_addr, i64 noundef %length, i32 noundef %or16.i, i32 noundef %18, i32 noundef %call12, ptr noundef %mmr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end10.err_umem_crit_edge

if.end10.err_umem_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_umem

if.end19:                                         ; preds = %if.end10
  %19 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %umem, align 8
  %call22 = tail call i32 @mlx4_ib_umem_write_mtt(ptr noundef %1, ptr noundef %mmr, ptr noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.err_mr_crit_edge

if.end19.err_mr_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mr

if.end25:                                         ; preds = %if.end19
  %21 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev13, align 8
  %call28 = tail call i32 @mlx4_mr_enable(ptr noundef %22, ptr noundef %mmr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.err_mr_crit_edge

if.end25.err_mr_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mr

if.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %key = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key, align 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %lkey, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %rkey, align 4
  %length35 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %length35 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %length, ptr %length35, align 8
  %shl = shl nuw i32 1, %call12
  %page_size = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl, ptr %page_size, align 8
  br label %cleanup

err_mr:                                           ; preds = %if.end25.err_mr_crit_edge, %if.end19.err_mr_crit_edge
  %err.0 = phi i32 [ %call22, %if.end19.err_mr_crit_edge ], [ %call28, %if.end25.err_mr_crit_edge ]
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  %dev40 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev40, align 8
  %call42 = tail call i32 @mlx4_mr_free(ptr noundef %32, ptr noundef %mmr) #8
  br label %err_umem

err_umem:                                         ; preds = %err_mr, %if.end10.err_umem_crit_edge
  %err.1 = phi i32 [ %call16, %if.end10.err_umem_crit_edge ], [ %err.0, %err_mr ]
  %33 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %umem, align 8
  tail call void @ib_umem_release(ptr noundef %34) #8
  br label %err_free

err_free:                                         ; preds = %err_umem, %if.then7
  %err.2 = phi i32 [ %7, %if.then7 ], [ %err.1, %err_umem ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %35 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %35, %err_free ], [ %call7.i.i, %if.end31 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx4_get_umem_mr(ptr noundef %device, i64 noundef %start, i64 noundef %length, i32 noundef %access_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %access_flags, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %conv = trunc i64 %start to i32
  br i1 %tobool.i.not, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !19) #8
  %and.i34 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i34 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@mlx4_get_umem_mr, %if.then.i.i)) #8
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !31

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #8
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@mlx4_get_umem_mr, %if.then.i3.i)) #8
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !31

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #8
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %mm4 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm4, align 8
  %call5 = tail call ptr @find_vma(ptr noundef %9, i32 noundef %conv) #8
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %mmap_read_lock.exit.if.else_crit_edge, label %land.lhs.true

mmap_read_lock.exit.if.else_crit_edge:            ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %mmap_read_lock.exit
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call5, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  %conv6 = zext i32 %11 to i64
  %conv7 = and i64 %start, 4294967295
  %add = add i64 %conv7, %length
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv6)
  %cmp.not = icmp ugt i64 %add, %conv6
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true9

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true9:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp10.not = icmp ugt i32 %13, %conv
  br i1 %cmp10.not, label %land.lhs.true9.if.else_crit_edge, label %if.then12

land.lhs.true9.if.else_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call5, i32 0, i32 8
  %14 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_flags, align 4
  %and = lshr i32 %15, 1
  %16 = and i32 %and, 1
  %17 = or i32 %16, %access_flags
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true9.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %mmap_read_lock.exit.if.else_crit_edge
  %or15 = or i32 %access_flags, 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %access_flags.addr.0 = phi i32 [ %or15, %if.else ], [ %17, %if.then12 ]
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %mm19 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 53
  %20 = ptrtoint ptr %mm19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mm19, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mlx4_get_umem_mr, %if.then.i.i35)) #8
          to label %mmap_read_unlock.exit [label %if.then.i.i35], !srcloc !31

if.then.i.i35:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_released(ptr noundef %21, i1 noundef zeroext false) #8
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i35, %if.end16
  %mmap_lock.i36 = getelementptr inbounds %struct.anon.10, ptr %21, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i36) #8
  br label %if.end20

if.end20:                                         ; preds = %mmap_read_unlock.exit, %entry.if.end20_crit_edge
  %access_flags.addr.1 = phi i32 [ %access_flags.addr.0, %mmap_read_unlock.exit ], [ %access_flags, %entry.if.end20_crit_edge ]
  %conv22 = trunc i64 %length to i32
  %call23 = tail call ptr @ib_umem_get(ptr noundef %device, i32 noundef %conv, i32 noundef %conv22, i32 noundef %access_flags.addr.1) #8
  ret ptr %call23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx4_ib_rereg_user_mr(ptr noundef %mr, i32 noundef %flags, i64 noundef %start, i64 noundef %length, i64 noundef %virt_addr, i32 noundef %mr_access_flags, ptr nocapture noundef readonly %pd, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  %mpt_entry = alloca ptr, align 4
  %pmpt_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mpt_entry) #8
  %2 = ptrtoint ptr %mpt_entry to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %mpt_entry, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmpt_entry) #8
  %3 = ptrtoint ptr %pmpt_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mpt_entry, ptr %pmpt_entry, align 4
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  %mmr3 = getelementptr inbounds %struct.mlx4_ib_mr, ptr %mr, i32 0, i32 5
  %call4 = call i32 @mlx4_mr_hw_get_mpt(ptr noundef %5, ptr noundef %mmr3, ptr noundef nonnull %pmpt_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup82_crit_edge

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.if.end14_crit_edge, label %if.then7

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then7:                                         ; preds = %if.end
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 8
  %8 = ptrtoint ptr %pmpt_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmpt_entry, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %pdn = getelementptr inbounds %struct.mlx4_ib_pd, ptr %pd, i32 0, i32 1
  %12 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdn, align 4
  %call10 = call i32 @mlx4_mr_hw_change_pd(ptr noundef %7, ptr noundef %11, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.if.end14_crit_edge, label %if.then7.release_mpt_entry_crit_edge

if.then7.release_mpt_entry_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_mpt_entry

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %and15 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end28_crit_edge, label %if.then17

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then17:                                        ; preds = %if.end14
  %and.i = and i32 %mr_access_flags, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then17.if.end21_crit_edge, label %land.lhs.true

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then17
  %umem = getelementptr inbounds %struct.mlx4_ib_mr, ptr %mr, i32 0, i32 6
  %14 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %umem, align 8
  %writable = getelementptr inbounds %struct.ib_umem, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %writable to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %writable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool19.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool19.not, label %land.lhs.true.release_mpt_entry_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true.release_mpt_entry_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_mpt_entry

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.then17.if.end21_crit_edge
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev2, align 8
  %19 = ptrtoint ptr %pmpt_entry to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pmpt_entry, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %and.i133 = shl i32 %mr_access_flags, 11
  %23 = and i32 %and.i133, 16384
  %and1.i = shl i32 %mr_access_flags, 12
  %24 = and i32 %and1.i, 8192
  %and4.i = shl i32 %mr_access_flags, 10
  %25 = and i32 %and4.i, 4096
  %26 = and i32 %and.i133, 2048
  %27 = and i32 %and.i133, 32768
  %or.i = or i32 %23, %24
  %or7.i = or i32 %or.i, %25
  %or11.i = or i32 %or7.i, %26
  %or15.i = or i32 %or11.i, %27
  %or16.i = or i32 %or15.i, 1024
  %call24 = call i32 @mlx4_mr_hw_change_access(ptr noundef %18, ptr noundef %22, i32 noundef %or16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end21.if.end28_crit_edge, label %if.end21.release_mpt_entry_crit_edge

if.end21.release_mpt_entry_crit_edge:             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_mpt_entry

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %if.end21.if.end28_crit_edge, %if.end14.if.end28_crit_edge
  %and29 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end66_crit_edge, label %if.then31

if.end28.if.end66_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then31:                                        ; preds = %if.end28
  %28 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev2, align 8
  call void @mlx4_mr_rereg_mem_cleanup(ptr noundef %29, ptr noundef %mmr3) #8
  %umem34 = getelementptr inbounds %struct.mlx4_ib_mr, ptr %mr, i32 0, i32 6
  %30 = ptrtoint ptr %umem34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %umem34, align 8
  call void @ib_umem_release(ptr noundef %31) #8
  %32 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mr, align 8
  %call36 = call fastcc ptr @mlx4_get_umem_mr(ptr noundef %33, i64 noundef %start, i64 noundef %length, i32 noundef %mr_access_flags)
  %34 = ptrtoint ptr %umem34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call36, ptr %umem34, align 8
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call36 to i32
  %36 = ptrtoint ptr %umem34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %umem34, align 8
  br label %release_mpt_entry

if.end44:                                         ; preds = %if.then31
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %call36, i32 0, i32 2
  %37 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %iova.i, align 8
  %length.i = getelementptr inbounds %struct.ib_umem, ptr %call36, i32 0, i32 3
  %39 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length.i, align 8
  %conv.i = zext i32 %40 to i64
  %add.i = add i64 %38, 4095
  %add2.i = add i64 %add.i, %conv.i
  %and.i134 = and i64 %add2.i, 4294963200
  %and15.i = and i64 %38, 4294963200
  %sub16.i = sub nsw i64 %and.i134, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div1.i = lshr exact i32 %conv17.i, 12
  %41 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev2, align 8
  %43 = ptrtoint ptr %pmpt_entry to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pmpt_entry, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call49 = call i32 @mlx4_mr_rereg_mem_write(ptr noundef %42, ptr noundef %mmr3, i64 noundef %virt_addr, i64 noundef %length, i32 noundef %div1.i, i32 noundef 12, ptr noundef %46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %umem34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %umem34, align 8
  call void @ib_umem_release(ptr noundef %48) #8
  br label %release_mpt_entry

if.end53:                                         ; preds = %if.end44
  %iova = getelementptr inbounds %struct.mlx4_ib_mr, ptr %mr, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %virt_addr, ptr %iova, align 8
  %size = getelementptr inbounds %struct.mlx4_ib_mr, ptr %mr, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %length, ptr %size, align 8
  %51 = ptrtoint ptr %umem34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %umem34, align 8
  %call58 = call i32 @mlx4_ib_umem_write_mtt(ptr noundef %1, ptr noundef %mmr3, ptr noundef %52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end53.if.end66_crit_edge, label %if.then60

if.end53.if.end66_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev2, align 8
  call void @mlx4_mr_rereg_mem_cleanup(ptr noundef %54, ptr noundef %mmr3) #8
  %55 = ptrtoint ptr %umem34 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %umem34, align 8
  call void @ib_umem_release(ptr noundef %56) #8
  br label %release_mpt_entry

if.end66:                                         ; preds = %if.end53.if.end66_crit_edge, %if.end28.if.end66_crit_edge
  %57 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev2, align 8
  %59 = ptrtoint ptr %pmpt_entry to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pmpt_entry, align 4
  %call69 = call i32 @mlx4_mr_hw_write_mpt(ptr noundef %58, ptr noundef %mmr3, ptr noundef %60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp ne i32 %call69, 0
  %brmerge = or i1 %tobool16.not, %tobool70.not
  br i1 %brmerge, label %if.end66.release_mpt_entry_crit_edge, label %if.then74

if.end66.release_mpt_entry_crit_edge:             ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_mpt_entry

if.then74:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %access = getelementptr inbounds %struct.mlx4_ib_mr, ptr %mr, i32 0, i32 5, i32 5
  %61 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mr_access_flags, ptr %access, align 8
  br label %release_mpt_entry

release_mpt_entry:                                ; preds = %if.then74, %if.end66.release_mpt_entry_crit_edge, %if.then60, %if.then51, %if.then40, %if.end21.release_mpt_entry_crit_edge, %land.lhs.true.release_mpt_entry_crit_edge, %if.then7.release_mpt_entry_crit_edge
  %err.1 = phi i32 [ %call10, %if.then7.release_mpt_entry_crit_edge ], [ %call24, %if.end21.release_mpt_entry_crit_edge ], [ %call69, %if.end66.release_mpt_entry_crit_edge ], [ 0, %if.then74 ], [ -1, %land.lhs.true.release_mpt_entry_crit_edge ], [ %call58, %if.then60 ], [ %call49, %if.then51 ], [ %35, %if.then40 ]
  %62 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev2, align 8
  %64 = ptrtoint ptr %pmpt_entry to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pmpt_entry, align 4
  call void @mlx4_mr_hw_put_mpt(ptr noundef %63, ptr noundef %65) #8
  br label %cleanup82

cleanup82:                                        ; preds = %release_mpt_entry, %entry.cleanup82_crit_edge
  %retval.0.in = phi i32 [ %err.1, %release_mpt_entry ], [ %call4, %entry.cleanup82_crit_edge ]
  %retval.0 = inttoptr i32 %retval.0.in to ptr
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmpt_entry) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mpt_entry) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mr_hw_get_mpt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mr_hw_change_pd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mr_hw_change_access(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_mr_rereg_mem_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mr_rereg_mem_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mr_hw_write_mpt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_mr_hw_put_mpt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_dereg_mr(ptr noundef %ibmr, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pages.i = getelementptr inbounds %struct.mlx4_ib_mr, ptr %ibmr, i32 0, i32 1
  %0 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mlx4_free_priv_pages.exit_crit_edge, label %if.then.i

entry.mlx4_free_priv_pages.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx4_free_priv_pages.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibmr, align 8
  %parent.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %page_map.i = getelementptr inbounds %struct.mlx4_ib_mr, ptr %ibmr, i32 0, i32 2
  %6 = ptrtoint ptr %page_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_map.i, align 4
  %page_map_size.i = getelementptr inbounds %struct.mlx4_ib_mr, ptr %ibmr, i32 0, i32 7
  %8 = ptrtoint ptr %page_map_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_map_size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef 1, i32 noundef 0) #8
  %10 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages.i, align 8
  %12 = ptrtoint ptr %11 to i32
  tail call void @free_pages(i32 noundef %12, i32 noundef 0) #8
  %13 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pages.i, align 8
  br label %mlx4_free_priv_pages.exit

mlx4_free_priv_pages.exit:                        ; preds = %if.then.i, %entry.mlx4_free_priv_pages.exit_crit_edge
  %14 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ibmr, align 8
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %mmr = getelementptr inbounds %struct.mlx4_ib_mr, ptr %ibmr, i32 0, i32 5
  %call2 = tail call i32 @mlx4_mr_free(ptr noundef %17, ptr noundef %mmr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %mlx4_free_priv_pages.exit.cleanup_crit_edge

mlx4_free_priv_pages.exit.cleanup_crit_edge:      ; preds = %mlx4_free_priv_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mlx4_free_priv_pages.exit
  %umem = getelementptr inbounds %struct.mlx4_ib_mr, ptr %ibmr, i32 0, i32 6
  %18 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %umem, align 8
  %tobool3.not = icmp eq ptr %19, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ib_umem_release(ptr noundef nonnull %19) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  tail call void @kfree(ptr noundef %ibmr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %mlx4_free_priv_pages.exit.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_alloc_mw(ptr noundef %ibmw, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibmw, align 4
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %pd = getelementptr inbounds %struct.ib_mw, ptr %ibmw, i32 0, i32 1
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 4
  %pdn = getelementptr inbounds %struct.mlx4_ib_pd, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pdn, align 4
  %type = getelementptr inbounds %struct.ib_mw, ptr %ibmw, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch.selectcmp.i = icmp eq i32 %9, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %switch.selectcmp2.i = icmp eq i32 %9, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i
  %mmw = getelementptr inbounds %struct.mlx4_ib_mw, ptr %ibmw, i32 0, i32 1
  %call5 = tail call i32 @mlx4_mw_alloc(ptr noundef %3, i32 noundef %7, i32 noundef %switch.select3.i, ptr noundef %mmw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 8
  %call8 = tail call i32 @mlx4_mw_enable(ptr noundef %11, ptr noundef %mmw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %err_mw

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %mmw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mmw, align 4
  %rkey = getelementptr inbounds %struct.ib_mw, ptr %ibmw, i32 0, i32 3
  %14 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rkey, align 4
  br label %cleanup

err_mw:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 8
  tail call void @mlx4_mw_free(ptr noundef %16, ptr noundef %mmw) #8
  br label %cleanup

cleanup:                                          ; preds = %err_mw, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %err_mw ], [ 0, %if.end11 ], [ %call5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mw_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_mw_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_mw_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_dealloc_mw(ptr noundef %ibmw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibmw, align 4
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %mmw = getelementptr inbounds %struct.mlx4_ib_mw, ptr %ibmw, i32 0, i32 1
  tail call void @mlx4_mw_free(ptr noundef %3, ptr noundef %mmw) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx4_ib_alloc_mr(ptr nocapture noundef readonly %pd, i32 noundef %mr_type, i32 noundef %max_num_sg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mr_type)
  %cmp.not = icmp ne i32 %mr_type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %max_num_sg)
  %cmp1 = icmp ugt i32 %max_num_sg, 511
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 216) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev7, align 8
  %pdn = getelementptr inbounds %struct.mlx4_ib_pd, ptr %pd, i32 0, i32 1
  %5 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdn, align 4
  %mmr = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 5
  %call9 = tail call i32 @mlx4_mr_alloc(ptr noundef %4, i32 noundef %6, i64 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef %max_num_sg, i32 noundef 0, ptr noundef %mmr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.err_free_crit_edge

if.end6.err_free_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end12:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %mul.i = shl nuw nsw i32 %max_num_sg, 3
  %add.i = add nuw nsw i32 %mul.i, 63
  %div23.i = and i32 %add.i, -64
  %page_map_size.i = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %page_map_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div23.i, ptr %page_map_size.i, align 4
  %call.i = tail call i32 @get_zeroed_page(i32 noundef 3264) #8
  %10 = inttoptr i32 %call.i to ptr
  %pages.i = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %pages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12.err_free_mr_crit_edge, label %if.end.i

if.end12.err_free_mr_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mr

if.end.i:                                         ; preds = %if.end12
  %parent.i = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 13, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 8
  %14 = ptrtoint ptr %page_map_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_map_size.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %10) #8
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !32

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %13) #8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %19, %if.end.i.i.i ], [ %17, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %13, ptr noundef nonnull %10, i32 noundef %15) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %call.i, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %20, i32 %shr.i.i
  %and.i.i = and i32 %call.i, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %15, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %page_map.i = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %page_map.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i.i, ptr %page_map.i, align 4
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then10.i, label %if.end17

if.then10.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages.i, align 8
  %26 = ptrtoint ptr %25 to i32
  tail call void @free_pages(i32 noundef %26, i32 noundef 0) #8
  br label %err_free_mr

if.end17:                                         ; preds = %dma_map_single_attrs.exit.i
  %max_pages = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %max_pages to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %max_num_sg, ptr %max_pages, align 4
  %28 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev7, align 8
  %call20 = tail call i32 @mlx4_mr_enable(ptr noundef %29, ptr noundef %mmr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %err_free_pl

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %key = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key, align 8
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lkey, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %rkey, align 4
  %umem = getelementptr inbounds %struct.mlx4_ib_mr, ptr %call7.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %umem, align 8
  br label %cleanup

err_free_pl:                                      ; preds = %if.end17
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 4
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %call7.i.i, align 8
  %38 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pages.i, align 8
  %tobool.not.i61 = icmp eq ptr %39, null
  br i1 %tobool.not.i61, label %err_free_pl.err_free_mr_crit_edge, label %if.then.i

err_free_pl.err_free_mr_crit_edge:                ; preds = %err_free_pl
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mr

if.then.i:                                        ; preds = %err_free_pl
  call void @__sanitizer_cov_trace_pc() #10
  %parent.i62 = getelementptr inbounds %struct.ib_device, ptr %36, i32 0, i32 13, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %parent.i62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent.i62, align 8
  %42 = ptrtoint ptr %page_map.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %page_map.i, align 4
  %44 = ptrtoint ptr %page_map_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %page_map_size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef 1, i32 noundef 0) #8
  %46 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pages.i, align 8
  %48 = ptrtoint ptr %47 to i32
  tail call void @free_pages(i32 noundef %48, i32 noundef 0) #8
  %49 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %pages.i, align 8
  br label %err_free_mr

err_free_mr:                                      ; preds = %if.then.i, %err_free_pl.err_free_mr_crit_edge, %if.then10.i, %if.end12.err_free_mr_crit_edge
  %err.0 = phi i32 [ %call20, %err_free_pl.err_free_mr_crit_edge ], [ %call20, %if.then.i ], [ -12, %if.then10.i ], [ -12, %if.end12.err_free_mr_crit_edge ]
  %50 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev7, align 8
  %call32 = tail call i32 @mlx4_mr_free(ptr noundef %51, ptr noundef %mmr) #8
  br label %err_free

err_free:                                         ; preds = %err_free_mr, %if.end6.err_free_crit_edge
  %err.1 = phi i32 [ %call9, %if.end6.err_free_crit_edge ], [ %err.0, %err_free_mr ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %52 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %52, %err_free ], [ %call7.i.i, %if.end23 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_map_mr_sg(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %npages = getelementptr inbounds %struct.mlx4_ib_mr, ptr %ibmr, i32 0, i32 3
  %0 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %npages, align 8
  %1 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ibmr, align 8
  %page_map = getelementptr inbounds %struct.mlx4_ib_mr, ptr %ibmr, i32 0, i32 2
  %3 = ptrtoint ptr %page_map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %page_map, align 4
  %page_map_size = getelementptr inbounds %struct.mlx4_ib_mr, ptr %ibmr, i32 0, i32 7
  %5 = ptrtoint ptr %page_map_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %page_map_size, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %8, i32 noundef %4, i32 noundef %6, i32 noundef 1) #8
  %call1 = tail call i32 @ib_sg_to_pages(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset, ptr noundef nonnull @mlx4_set_page) #8
  %9 = ptrtoint ptr %ibmr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ibmr, align 8
  %11 = ptrtoint ptr %page_map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_map, align 4
  %13 = ptrtoint ptr %page_map_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_map_size, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %16, i32 noundef %12, i32 noundef %14, i32 noundef 1) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_sg_to_pages(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_set_page(ptr nocapture noundef %ibmr, i64 noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %npages = getelementptr inbounds %struct.mlx4_ib_mr, ptr %ibmr, i32 0, i32 3
  %0 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npages, align 8
  %max_pages = getelementptr inbounds %struct.mlx4_ib_mr, ptr %ibmr, i32 0, i32 4
  %2 = ptrtoint ptr %max_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !33

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i64 %addr, 1
  %pages = getelementptr inbounds %struct.mlx4_ib_mr, ptr %ibmr, i32 0, i32 1
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 8
  %inc = add i32 %1, 1
  %6 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %npages, align 8
  %arrayidx = getelementptr i64, ptr %5, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %or, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx4/mr.c", i32 355, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/mlx4/mr.c", i32 365, i32 3}
!8 = !{ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mlx4_ib_umem_calc_optimal_mtt_size._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/mlx4/mr.c", i32 110, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mlx4_ib_umem_write_mtt_block._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mlx4_ib_umem_write_mtt_block._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i32 0, i32 33}
!30 = !{!"auto-init"}
!31 = !{i64 2148218423, i64 2148218428, i64 2148218441, i64 2148218485, i64 2148218519, i64 2148218540}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{!"branch_weights", i32 1, i32 2000}
