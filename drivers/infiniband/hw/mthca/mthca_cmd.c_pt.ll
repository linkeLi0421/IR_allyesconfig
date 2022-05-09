; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_cmd.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.173, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.176, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i64, i64, i64, ptr, ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.176 = type { %struct.anon.178 }
%struct.anon.178 = type { ptr, ptr }
%struct.mthca_cmd = type { ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, i32, %struct.spinlock, i32, ptr, i16, i32, ptr, [8 x i16] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mthca_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.mthca_uar_table = type { %struct.mthca_alloc, i64, i32 }
%struct.mthca_alloc = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mthca_pd_table = type { %struct.mthca_alloc }
%struct.mthca_mr_table = type { %struct.mthca_alloc, %struct.mthca_buddy, ptr, i64, i64, ptr, ptr, %struct.anon.179 }
%struct.mthca_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.anon.179 = type { ptr, ptr, %struct.mthca_buddy }
%struct.mthca_eq_table = type { %struct.mthca_alloc, ptr, i32, i32, [3 x %struct.mthca_eq], i64, ptr, i32, i32, i8 }
%struct.mthca_eq = type { ptr, i32, i32, i32, i16, i16, i32, i32, ptr, %struct.mthca_mr, [64 x i8] }
%struct.mthca_cq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_array = type { ptr }
%struct.mthca_srq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_qp_table = type { %struct.mthca_alloc, i32, i32, i32, %struct.spinlock, %struct.mthca_array, ptr, ptr, ptr }
%struct.mthca_av_table = type { ptr, i32, i64, ptr, %struct.mthca_alloc }
%struct.mthca_mcg_table = type { %struct.mutex, %struct.mthca_alloc, ptr }
%struct.mthca_catas_err = type { i64, ptr, i32, %struct.timer_list, %struct.list_head }
%struct.mthca_uar = type { i32, i32 }
%struct.mthca_pd = type { %struct.ib_pd, i32, %struct.atomic_t, %struct.mthca_mr, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mthca_mr = type { %struct.ib_mr, ptr, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.149, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.149 = type { %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mthca_cmd_context = type { %struct.completion, i32, i32, i64, i16, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.mthca_mailbox = type { i32, ptr }
%struct.mthca_icm_chunk = type { %struct.list_head, i32, i32, [12 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mthca_dev_lim = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.182 }
%union.anon.182 = type { %struct.anon.184 }
%struct.anon.184 = type { i32, i32, i8, i32, i32, i64 }
%struct.mthca_adapter = type { i32, i32, i32, [64 x i8], i8 }
%struct.mthca_init_hca_param = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mthca_init_ib_param = type { i32, i32, i32, i16, i16, i32, i64, i32, i64, i32, i64 }
%struct.mthca_set_ib_param = type { i32, i32, i64, i32 }
%struct.ib_wc = type { %union.anon.155, i32, i32, i32, i32, ptr, %union.anon.156, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.155 = type { i64 }
%union.anon.156 = type { i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
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
%struct.rb_root = type { ptr }
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

@__param_str_fw_cmd_doorbell = internal constant [25 x i8] c"ib_mthca.fw_cmd_doorbell\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fw_cmd_doorbell = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fw_cmd_doorbell = internal constant %struct.kernel_param { ptr @__param_str_fw_cmd_doorbell, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @fw_cmd_doorbell } }, section "__param", align 4
@__UNIQUE_ID_fw_cmd_doorbelltype496 = internal constant [38 x i8] c"ib_mthca.parmtype=fw_cmd_doorbell:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fw_cmd_doorbell497 = internal constant [102 x i8] c"ib_mthca.parm=fw_cmd_doorbell:post FW commands through doorbell page if nonzero (and supported by FW)\00", section ".modinfo", align 1
@mthca_cmd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->cmd.hcr_mutex\00", [44 x i8] zeroinitializer }, align 32
@mthca_cmd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't map command register.\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_cmd_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/infiniband/hw/mthca/mthca_cmd.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_cmd_init._entry_ptr = internal global ptr @mthca_cmd_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mthca_cmd\00", [22 x i8] zeroinitializer }, align 32
@mthca_cmd_use_events.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->cmd.context_lock\00", [41 x i8] zeroinitializer }, align 32
@mthca_SYS_EN._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 647, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"SYS_EN DDR error: syn=%x, sock=%d, sladdr=%d, SPD source=%s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mthca_SYS_EN\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mthca_SYS_EN._entry_ptr = internal global ptr @mthca_SYS_EN._entry, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NVMEM\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DIMM\00", [27 x i8] zeroinitializer }, align 32
@mthca_debug_level = external dso_local local_unnamed_addr global i32, align 4
@mthca_QUERY_FW._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 829, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FW version %012llx, max commands %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_QUERY_FW\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@mthca_QUERY_FW._entry_ptr = internal global ptr @mthca_QUERY_FW._entry, section ".printk_index", align 4
@mthca_QUERY_FW._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.3, i32 835, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Catastrophic error buffer at 0x%llx, size 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@mthca_QUERY_FW._entry_ptr.18 = internal global ptr @mthca_QUERY_FW._entry.16, section ".printk_index", align 4
@mthca_QUERY_FW._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.3, i32 839, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"FW supports commands through doorbells\0A\00", [56 x i8] zeroinitializer }, align 32
@mthca_QUERY_FW._entry_ptr.21 = internal global ptr @mthca_QUERY_FW._entry.19, section ".printk_index", align 4
@mthca_QUERY_FW._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.3, i32 854, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FW size %d KB\0A\00", [17 x i8] zeroinitializer }, align 32
@mthca_QUERY_FW._entry_ptr.24 = internal global ptr @mthca_QUERY_FW._entry.22, section ".printk_index", align 4
@mthca_QUERY_FW._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.14, ptr @.str.3, i32 867, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Clear int @ %llx, EQ arm @ %llx, EQ set CI @ %llx\0A\00", [45 x i8] zeroinitializer }, align 32
@mthca_QUERY_FW._entry_ptr.27 = internal global ptr @mthca_QUERY_FW._entry.25, section ".printk_index", align 4
@mthca_QUERY_FW._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.14, ptr @.str.3, i32 875, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FW size %d KB (start %llx, end %llx)\0A\00", [58 x i8] zeroinitializer }, align 32
@mthca_QUERY_FW._entry_ptr.30 = internal global ptr @mthca_QUERY_FW._entry.28, section ".printk_index", align 4
@mthca_ENABLE_LAM._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 918, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"FW reports that HCA-attached memory is %s hidden; does not match PCI config\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mthca_ENABLE_LAM\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mthca_ENABLE_LAM._entry_ptr = internal global ptr @mthca_ENABLE_LAM._entry, section ".printk_index", align 4
@.str.34 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"not\00", [28 x i8] zeroinitializer }, align 32
@mthca_ENABLE_LAM._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 921, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HCA-attached memory is hidden.\0A\00", [32 x i8] zeroinitializer }, align 32
@mthca_ENABLE_LAM._entry_ptr.38 = internal global ptr @mthca_ENABLE_LAM._entry.36, section ".printk_index", align 4
@mthca_ENABLE_LAM._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 926, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"HCA memory size %d KB (start %llx, end %llx)\0A\00", [50 x i8] zeroinitializer }, align 32
@mthca_ENABLE_LAM._entry_ptr.41 = internal global ptr @mthca_ENABLE_LAM._entry.39, section ".printk_index", align 4
@mthca_QUERY_DDR._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.42, ptr @.str.3, i32 973, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mthca_QUERY_DDR\00", [16 x i8] zeroinitializer }, align 32
@mthca_QUERY_DDR._entry_ptr = internal global ptr @mthca_QUERY_DDR._entry, section ".printk_index", align 4
@mthca_QUERY_DDR._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.42, ptr @.str.3, i32 976, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mthca_QUERY_DDR._entry_ptr.44 = internal global ptr @mthca_QUERY_DDR._entry.43, section ".printk_index", align 4
@mthca_QUERY_DDR._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.42, ptr @.str.3, i32 981, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mthca_QUERY_DDR._entry_ptr.46 = internal global ptr @mthca_QUERY_DDR._entry.45, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1200, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Base MM extensions: yes (flags %d, max PBL %d, rsvd L_Key %08x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mthca_QUERY_DEV_LIM\00", [44 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr = internal global ptr @mthca_QUERY_DEV_LIM._entry, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 1202, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Base MM extensions: no\0A\00", [40 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr.51 = internal global ptr @mthca_QUERY_DEV_LIM._entry.49, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.3, i32 1205, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Max ICM size %lld MB\0A\00", [42 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr.54 = internal global ptr @mthca_QUERY_DEV_LIM._entry.52, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.3, i32 1217, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Max QPs: %d, reserved QPs: %d, entry size: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr.57 = internal global ptr @mthca_QUERY_DEV_LIM._entry.55, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.3, i32 1219, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Max SRQs: %d, reserved SRQs: %d, entry size: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr.60 = internal global ptr @mthca_QUERY_DEV_LIM._entry.58, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.48, ptr @.str.3, i32 1221, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Max CQs: %d, reserved CQs: %d, entry size: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr.63 = internal global ptr @mthca_QUERY_DEV_LIM._entry.61, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.48, ptr @.str.3, i32 1223, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Max EQs: %d, reserved EQs: %d, entry size: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr.66 = internal global ptr @mthca_QUERY_DEV_LIM._entry.64, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.48, ptr @.str.3, i32 1225, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"reserved MPTs: %d, reserved MTTs: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr.69 = internal global ptr @mthca_QUERY_DEV_LIM._entry.67, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.48, ptr @.str.3, i32 1227, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Max PDs: %d, reserved PDs: %d, reserved UARs: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr.72 = internal global ptr @mthca_QUERY_DEV_LIM._entry.70, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.48, ptr @.str.3, i32 1229, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Max QP/MCG: %d, reserved MGMs: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr.75 = internal global ptr @mthca_QUERY_DEV_LIM._entry.73, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.48, ptr @.str.3, i32 1231, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Max CQEs: %d, max WQEs: %d, max SRQ WQEs: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr.78 = internal global ptr @mthca_QUERY_DEV_LIM._entry.76, section ".printk_index", align 4
@mthca_QUERY_DEV_LIM._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.48, ptr @.str.3, i32 1233, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Flags: %08x\0A\00", [19 x i8] zeroinitializer }, align 32
@mthca_QUERY_DEV_LIM._entry_ptr.81 = internal global ptr @mthca_QUERY_DEV_LIM._entry.79, section ".printk_index", align 4
@mthca_MAP_ICM_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 1560, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Mapped page at %llx to %llx for ICM.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mthca_MAP_ICM_page\00", [45 x i8] zeroinitializer }, align 32
@mthca_MAP_ICM_page._entry_ptr = internal global ptr @mthca_MAP_ICM_page._entry, section ".printk_index", align 4
@mthca_UNMAP_ICM._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 1568, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unmapping %d pages at %llx from ICM.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mthca_UNMAP_ICM\00", [16 x i8] zeroinitializer }, align 32
@mthca_UNMAP_ICM._entry_ptr = internal global ptr @mthca_UNMAP_ICM._entry, section ".printk_index", align 4
@mthca_MAP_EQ._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 1634, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s mask %016llx for eqn %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mthca_MAP_EQ\00", [19 x i8] zeroinitializer }, align 32
@mthca_MAP_EQ._entry_ptr = internal global ptr @mthca_MAP_EQ._entry, section ".printk_index", align 4
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Clearing\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Setting\00", [24 x i8] zeroinitializer }, align 32
@mthca_MODIFY_QP.op = internal constant { [7 x [7 x i16]], [62 x i8] } { [7 x [7 x i16]] [[7 x i16] [i16 33, i16 25, i16 0, i16 0, i16 0, i16 0, i16 30], [7 x i16] [i16 33, i16 45, i16 26, i16 0, i16 0, i16 0, i16 30], [7 x i16] [i16 33, i16 0, i16 0, i16 27, i16 0, i16 0, i16 30], [7 x i16] [i16 33, i16 0, i16 0, i16 28, i16 31, i16 0, i16 30], [7 x i16] [i16 33, i16 0, i16 0, i16 32, i16 56, i16 0, i16 30], [7 x i16] [i16 33, i16 0, i16 0, i16 29, i16 0, i16 0, i16 30], [7 x i16] [i16 33, i16 0, i16 0, i16 0, i16 0, i16 0, i16 30]], [62 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mthca_cmd_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 447, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Command %02x completed with status %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_cmd_wait\00", [17 x i8] zeroinitializer }, align 32
@mthca_cmd_wait._entry_ptr = internal global ptr @mthca_cmd_wait._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mthca_status_to_errno.trans_table = internal constant { [65 x i32], [92 x i8] } { [65 x i32] [i32 0, i32 -5, i32 -1, i32 -22, i32 -6, i32 -9, i32 -16, i32 -12, i32 -12, i32 -9, i32 -9, i32 -14, i32 0, i32 0, i32 0, i32 0, i32 -22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -14, i32 -16, i32 -11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -74, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -12], [92 x i8] zeroinitializer }, align 32
@mthca_cmd_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.95, ptr @.str.3, i32 378, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_cmd_poll\00", [17 x i8] zeroinitializer }, align 32
@mthca_cmd_poll._entry_ptr = internal global ptr @mthca_cmd_poll._entry, section ".printk_index", align 4
@mthca_map_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 688, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Got FW area not aligned to %d (%llx/%lx).\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mthca_map_cmd\00", [18 x i8] zeroinitializer }, align 32
@mthca_map_cmd._entry_ptr = internal global ptr @mthca_map_cmd._entry, section ".printk_index", align 4
@mthca_map_cmd._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.3, i32 720, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Mapped %d chunks/%d KB for FW.\0A\00", [32 x i8] zeroinitializer }, align 32
@mthca_map_cmd._entry_ptr.100 = internal global ptr @mthca_map_cmd._entry.98, section ".printk_index", align 4
@mthca_map_cmd._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.97, ptr @.str.3, i32 723, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Mapped %d chunks/%d KB for ICM aux.\0A\00", [59 x i8] zeroinitializer }, align 32
@mthca_map_cmd._entry_ptr.103 = internal global ptr @mthca_map_cmd._entry.101, section ".printk_index", align 4
@mthca_map_cmd._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.97, ptr @.str.3, i32 727, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Mapped %d chunks/%d KB at %llx for ICM.\0A\00", [55 x i8] zeroinitializer }, align 32
@mthca_map_cmd._entry_ptr.106 = internal global ptr @mthca_map_cmd._entry.104, section ".printk_index", align 4
@mthca_setup_cmd_doorbells._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.3, i32 763, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Firmware doorbell region at 0x%016llx, length 0x%x crosses a page boundary\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mthca_setup_cmd_doorbells\00", [38 x i8] zeroinitializer }, align 32
@mthca_setup_cmd_doorbells._entry_ptr = internal global ptr @mthca_setup_cmd_doorbells._entry, section ".printk_index", align 4
@mthca_setup_cmd_doorbells._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.3, i32 774, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Mapped doorbell page for posting FW commands\0A\00", [50 x i8] zeroinitializer }, align 32
@mthca_setup_cmd_doorbells._entry_ptr.111 = internal global ptr @mthca_setup_cmd_doorbells._entry.109, section ".printk_index", align 4
@ib_lid_cpu16.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.mthca_CONF_SPECIAL_QP = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\01\00\00\00\02\03", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 4090, i64 4092, i64 4095]
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"fw_cmd_doorbell\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 187, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 524, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 531, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 535, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 577, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 644, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 828, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 834, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 839, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 854, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 864, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 872, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 915, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 921, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 923, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 970, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 976, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 978, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1196, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1202, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1204, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1216, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1218, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1220, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1222, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1224, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1226, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1228, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1230, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1233, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1559, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1567, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1632, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 1731, i32 19 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 33, i32 31 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 34, i32 28 }
@___asan_gen_.369 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 35, i32 39 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 446, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 87, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [12 x i8] c"trans_table\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 302, i32 19 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 377, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 685, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 720, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 723, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 726, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 761, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.435 = private constant [43 x i8] c"../drivers/infiniband/hw/mthca/mthca_cmd.c\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 774, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 4605, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [35 x i8] c"switch.table.mthca_CONF_SPECIAL_QP\00", align 1
@llvm.compiler.used = appending global [150 x ptr] [ptr @__UNIQUE_ID_fw_cmd_doorbell497, ptr @__UNIQUE_ID_fw_cmd_doorbelltype496, ptr @__param_fw_cmd_doorbell, ptr @mthca_ENABLE_LAM._entry, ptr @mthca_ENABLE_LAM._entry.36, ptr @mthca_ENABLE_LAM._entry.39, ptr @mthca_ENABLE_LAM._entry_ptr, ptr @mthca_ENABLE_LAM._entry_ptr.38, ptr @mthca_ENABLE_LAM._entry_ptr.41, ptr @mthca_MAP_EQ._entry, ptr @mthca_MAP_EQ._entry_ptr, ptr @mthca_MAP_ICM_page._entry, ptr @mthca_MAP_ICM_page._entry_ptr, ptr @mthca_QUERY_DDR._entry, ptr @mthca_QUERY_DDR._entry.43, ptr @mthca_QUERY_DDR._entry.45, ptr @mthca_QUERY_DDR._entry_ptr, ptr @mthca_QUERY_DDR._entry_ptr.44, ptr @mthca_QUERY_DDR._entry_ptr.46, ptr @mthca_QUERY_DEV_LIM._entry, ptr @mthca_QUERY_DEV_LIM._entry.49, ptr @mthca_QUERY_DEV_LIM._entry.52, ptr @mthca_QUERY_DEV_LIM._entry.55, ptr @mthca_QUERY_DEV_LIM._entry.58, ptr @mthca_QUERY_DEV_LIM._entry.61, ptr @mthca_QUERY_DEV_LIM._entry.64, ptr @mthca_QUERY_DEV_LIM._entry.67, ptr @mthca_QUERY_DEV_LIM._entry.70, ptr @mthca_QUERY_DEV_LIM._entry.73, ptr @mthca_QUERY_DEV_LIM._entry.76, ptr @mthca_QUERY_DEV_LIM._entry.79, ptr @mthca_QUERY_DEV_LIM._entry_ptr, ptr @mthca_QUERY_DEV_LIM._entry_ptr.51, ptr @mthca_QUERY_DEV_LIM._entry_ptr.54, ptr @mthca_QUERY_DEV_LIM._entry_ptr.57, ptr @mthca_QUERY_DEV_LIM._entry_ptr.60, ptr @mthca_QUERY_DEV_LIM._entry_ptr.63, ptr @mthca_QUERY_DEV_LIM._entry_ptr.66, ptr @mthca_QUERY_DEV_LIM._entry_ptr.69, ptr @mthca_QUERY_DEV_LIM._entry_ptr.72, ptr @mthca_QUERY_DEV_LIM._entry_ptr.75, ptr @mthca_QUERY_DEV_LIM._entry_ptr.78, ptr @mthca_QUERY_DEV_LIM._entry_ptr.81, ptr @mthca_QUERY_FW._entry, ptr @mthca_QUERY_FW._entry.16, ptr @mthca_QUERY_FW._entry.19, ptr @mthca_QUERY_FW._entry.22, ptr @mthca_QUERY_FW._entry.25, ptr @mthca_QUERY_FW._entry.28, ptr @mthca_QUERY_FW._entry_ptr, ptr @mthca_QUERY_FW._entry_ptr.18, ptr @mthca_QUERY_FW._entry_ptr.21, ptr @mthca_QUERY_FW._entry_ptr.24, ptr @mthca_QUERY_FW._entry_ptr.27, ptr @mthca_QUERY_FW._entry_ptr.30, ptr @mthca_SYS_EN._entry, ptr @mthca_SYS_EN._entry_ptr, ptr @mthca_UNMAP_ICM._entry, ptr @mthca_UNMAP_ICM._entry_ptr, ptr @mthca_cmd_init._entry, ptr @mthca_cmd_init._entry_ptr, ptr @mthca_cmd_poll._entry, ptr @mthca_cmd_poll._entry_ptr, ptr @mthca_cmd_wait._entry, ptr @mthca_cmd_wait._entry_ptr, ptr @mthca_map_cmd._entry, ptr @mthca_map_cmd._entry.101, ptr @mthca_map_cmd._entry.104, ptr @mthca_map_cmd._entry.98, ptr @mthca_map_cmd._entry_ptr, ptr @mthca_map_cmd._entry_ptr.100, ptr @mthca_map_cmd._entry_ptr.103, ptr @mthca_map_cmd._entry_ptr.106, ptr @mthca_setup_cmd_doorbells._entry, ptr @mthca_setup_cmd_doorbells._entry.109, ptr @mthca_setup_cmd_doorbells._entry_ptr, ptr @mthca_setup_cmd_doorbells._entry_ptr.111, ptr @fw_cmd_doorbell, ptr @mthca_cmd_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mthca_cmd_use_events.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @mthca_MODIFY_QP.op, ptr @sema_init.__key, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @init_completion.__key, ptr @.str.94, ptr @mthca_status_to_errno.trans_table, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @switch.table.mthca_CONF_SPECIAL_QP], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_cmd_doorbell to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_cmd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_cmd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_cmd_use_events.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_SYS_EN._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_FW._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_FW._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_FW._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_FW._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_FW._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_FW._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_ENABLE_LAM._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_ENABLE_LAM._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_ENABLE_LAM._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DDR._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DDR._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DDR._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_QUERY_DEV_LIM._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_MAP_ICM_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_UNMAP_ICM._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_MAP_EQ._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_MODIFY_QP.op to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_cmd_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_status_to_errno.trans_table to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_cmd_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_map_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_map_cmd._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_map_cmd._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_map_cmd._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_cmd_doorbells._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_setup_cmd_doorbells._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mthca_CONF_SPECIAL_QP to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cmd_event(ptr nocapture noundef readonly %dev, i16 noundef zeroext %token, i8 noundef zeroext %status, i64 noundef %out_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 7
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %token_mask = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 8
  %2 = ptrtoint ptr %token_mask to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %token_mask, align 4
  %and16 = and i16 %3, %token
  %and = zext i16 %and16 to i32
  %token5 = getelementptr %struct.mthca_cmd_context, ptr %1, i32 %and, i32 4
  %4 = ptrtoint ptr %token5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %token5, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %token)
  %cmp.not = icmp eq i16 %5, %token
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.mthca_cmd_context, ptr %1, i32 %and
  %result = getelementptr %struct.mthca_cmd_context, ptr %1, i32 %and, i32 1
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %result, align 8
  %status8 = getelementptr %struct.mthca_cmd_context, ptr %1, i32 %and, i32 5
  %7 = ptrtoint ptr %status8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %status, ptr %status8, align 2
  %out_param9 = getelementptr %struct.mthca_cmd_context, ptr %1, i32 %and, i32 3
  %8 = ptrtoint ptr %out_param9 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %out_param, ptr %out_param9, align 8
  tail call void @complete(ptr noundef %arrayidx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_cmd_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcr_mutex = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 1
  tail call void @__mutex_init(ptr noundef %hcr_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @mthca_cmd_init.__key) #9
  %poll_sem = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2
  %wait_list1.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2, i32 2
  %0 = ptrtoint ptr %poll_sem to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %poll_sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 3
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 4
  %4 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.90, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 4, i32 5
  %8 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2, i32 1
  %9 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %10 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2, i32 2, i32 1
  %11 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags, align 4
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource, align 8
  %add = add i32 %16, 525952
  %call = tail call ptr @ioremap(i32 noundef %add, i32 noundef 28) #9
  %hcr = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 13
  %17 = ptrtoint ptr %hcr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %hcr, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end5, label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.1) #12
  br label %return

if.end:                                           ; preds = %entry
  %cmd = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call10 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.6, ptr noundef %dev9, i32 noundef 4096, i32 noundef 4096, i32 noundef 0) #9
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call10, ptr %cmd, align 4
  %tobool14.not = icmp eq ptr %call10, null
  br i1 %tobool14.not, label %if.then15, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %hcr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hcr, align 8
  tail call void @iounmap(ptr noundef %24) #9
  br label %return

return:                                           ; preds = %if.then15, %if.end.return_crit_edge, %do.end5
  %retval.0 = phi i32 [ -12, %if.then15 ], [ -12, %do.end5 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cmd_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  tail call void @dma_pool_destroy(ptr noundef %1) #9
  %hcr = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %hcr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcr, align 8
  tail call void @iounmap(ptr noundef %3) #9
  %flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dbell_map = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 10
  %6 = ptrtoint ptr %dbell_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dbell_map, align 4
  tail call void @iounmap(ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_cmd_use_events(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_cmds = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 4
  %0 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_cmds, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 80) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !215

kmalloc_array.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %context67 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 7
  %4 = ptrtoint ptr %context67 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %context67, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #13
  %context = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 7
  %6 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i, ptr %context, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  %7 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp69 = icmp sgt i32 %8, 0
  br i1 %cmp69, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.070 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv = trunc i32 %i.070 to i16
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  %token = getelementptr %struct.mthca_cmd_context, ptr %10, i32 %i.070, i32 4
  %11 = ptrtoint ptr %token to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %token, align 8
  %add = add nuw nsw i32 %i.070, 1
  %12 = load ptr, ptr %context, align 4
  %next = getelementptr %struct.mthca_cmd_context, ptr %12, i32 %i.070, i32 2
  %13 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %next, align 4
  %14 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_cmds, align 4
  %cmp = icmp slt i32 %add, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %8, %for.cond.preheader.for.end_crit_edge ], [ %15, %for.body.for.end_crit_edge ]
  %16 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %context, align 4
  %sub = add i32 %.lcssa, -1
  %next16 = getelementptr %struct.mthca_cmd_context, ptr %17, i32 %sub, i32 2
  %18 = ptrtoint ptr %next16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %next16, align 4
  %free_head = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 6
  %19 = ptrtoint ptr %free_head to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %free_head, align 4
  %event_sem = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3
  %20 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_cmds, align 4
  %wait_list1.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3, i32 2
  %22 = ptrtoint ptr %event_sem to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %event_sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3, i32 0, i32 2
  %24 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3, i32 0, i32 3
  %25 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3, i32 0, i32 4
  %26 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.90, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3, i32 0, i32 4, i32 5
  %30 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3, i32 1
  %31 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %21, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %32 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3, i32 2, i32 1
  %33 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %context_lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %context_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mthca_cmd_use_events.__key, i16 noundef signext 3) #9
  %34 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_cmds, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.cond24.for.cond24_crit_edge, %for.end
  %storemerge = phi i16 [ 1, %for.end ], [ %shl, %for.cond24.for.cond24_crit_edge ]
  %conv27 = zext i16 %storemerge to i32
  %cmp30 = icmp sgt i32 %35, %conv27
  %shl = shl i16 %storemerge, 1
  br i1 %cmp30, label %for.cond24.for.cond24_crit_edge, label %for.end38

for.cond24.for.cond24_crit_edge:                  ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond24

for.end38:                                        ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #11
  %token_mask = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 8
  %dec = add i16 %storemerge, -1
  %36 = ptrtoint ptr %token_mask to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %dec, ptr %token_mask, align 4
  %flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %or = or i32 %38, 1
  store i32 %or, ptr %flags, align 4
  %poll_sem = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2
  tail call void @down(ptr noundef %poll_sem) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end38, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi i32 [ 0, %for.end38 ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cmd_use_polling(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, -2
  store i32 %and, ptr %flags, align 4
  %max_cmds = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 4
  %2 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %event_sem = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @down(ptr noundef %event_sem) #9
  %inc = add nuw nsw i32 %i.011, 1
  %4 = ptrtoint ptr %max_cmds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_cmds, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %context = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 7
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  tail call void @kfree(ptr noundef %7) #9
  %poll_sem = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2
  tail call void @up(ptr noundef %poll_sem) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mthca_alloc_mailbox(ptr nocapture noundef readonly %dev, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i19.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i19.i, label %entry.kmalloc.exit_crit_edge, label %if.end.i20.i, !prof !216

entry.kmalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmalloc.exit

if.end.i20.i:                                     ; preds = %entry
  %and2.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i20.i.kmalloc.exit_crit_edge

if.end.i20.i.kmalloc.exit_crit_edge:              ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i20.i.kmalloc.exit_crit_edge, %entry.kmalloc.exit_crit_edge
  %retval.0.i21.i = phi i32 [ 0, %entry.kmalloc.exit_crit_edge ], [ 3, %if.end.i20.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %gfp_mask, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kmalloc.exit
  %cmd = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %call2 = tail call ptr @dma_pool_alloc(ptr noundef %3, i32 noundef %gfp_mask, ptr noundef nonnull %call7.i) #9
  %buf = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %buf, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %kmalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then5 ], [ %call7.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %kmalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_mailbox(ptr nocapture noundef readonly %dev, ptr noundef %mailbox) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mailbox, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cmd = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %buf = getelementptr inbounds %struct.mthca_mailbox, ptr %mailbox, i32 0, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mailbox, align 4
  tail call void @dma_pool_free(ptr noundef %1, ptr noundef %3, i32 noundef %5) #9
  tail call void @kfree(ptr noundef nonnull %mailbox) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_SYS_EN(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out) #9
  %0 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %out, align 8, !annotation !217
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 1, i32 noundef 6000) #9
  br label %mthca_cmd_imm.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 1, i32 noundef 6000) #9
  br label %mthca_cmd_imm.exit

mthca_cmd_imm.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, -12
  br i1 %cmp, label %do.end, label %mthca_cmd_imm.exit.if.end_crit_edge

mthca_cmd_imm.exit.if.end_crit_edge:              ; preds = %mthca_cmd_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %mthca_cmd_imm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %out, align 8
  %7 = trunc i64 %6 to i32
  %8 = lshr i32 %7, 6
  %and = and i32 %8, 15
  %9 = lshr i32 %7, 4
  %and4 = and i32 %9, 3
  %10 = lshr i32 %7, 1
  %and7 = and i32 %10, 7
  %and912 = and i64 %6, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and912)
  %tobool.not = icmp eq i64 %and912, 0
  %cond = select i1 %tobool.not, ptr @.str.12, ptr @.str.11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %and, i32 noundef %and4, i32 noundef %and7, ptr noundef nonnull %cond) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %mthca_cmd_imm.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out) #9
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_SYS_DIS(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %0 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 2, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 2, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_MAP_FA(ptr noundef %dev, ptr noundef %icm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mthca_map_cmd(ptr noundef %dev, i16 noundef zeroext 4095, ptr noundef %icm, i64 noundef -1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_map_cmd(ptr noundef %dev, i16 noundef zeroext %op, ptr noundef %icm, i64 noundef %virt) unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i159 = alloca i64, align 8
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i188 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i188 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 4096)
  %8 = ptrtoint ptr %icm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %icm, align 4
  %cmp.i.not.i = icmp eq ptr %9, %icm
  %tobool.not.i139.not218229 = icmp eq ptr %9, null
  %tobool.not.i139.not218 = or i1 %cmp.i.not.i, %tobool.not.i139.not218229
  br i1 %tobool.not.i139.not218, label %if.end.if.end51_crit_edge, label %for.body.lr.ph

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

for.body.lr.ph:                                   ; preds = %if.end
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  br label %for.body

for.body:                                         ; preds = %mthca_icm_next.exit.for.body_crit_edge, %for.body.lr.ph
  %tc.0224 = phi i32 [ 0, %for.body.lr.ph ], [ %tc.1.lcssa, %mthca_icm_next.exit.for.body_crit_edge ]
  %ts.0223 = phi i32 [ 0, %for.body.lr.ph ], [ %ts.1.lcssa, %mthca_icm_next.exit.for.body_crit_edge ]
  %nent.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %nent.1.lcssa, %mthca_icm_next.exit.for.body_crit_edge ]
  %virt.addr.0221 = phi i64 [ %virt, %for.body.lr.ph ], [ %virt.addr.1.lcssa, %mthca_icm_next.exit.for.body_crit_edge ]
  %iter.sroa.5.0220 = phi ptr [ %9, %for.body.lr.ph ], [ %iter.sroa.5.1, %mthca_icm_next.exit.for.body_crit_edge ]
  %iter.sroa.17.0219 = phi i32 [ 0, %for.body.lr.ph ], [ %iter.sroa.17.1, %mthca_icm_next.exit.for.body_crit_edge ]
  %dma_address.i = getelementptr %struct.mthca_icm_chunk, ptr %iter.sroa.5.0220, i32 0, i32 3, i32 %iter.sroa.17.0219, i32 3
  %10 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr %struct.mthca_icm_chunk, ptr %iter.sroa.5.0220, i32 0, i32 3, i32 %iter.sroa.17.0219, i32 4
  %12 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length.i, align 4
  %or = or i32 %13, %11
  %14 = call i32 @llvm.cttz.i32(i32 %or, i1 true), !range !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %iszero = icmp eq i32 %or, 0
  %sub = select i1 %iszero, i32 -1, i32 %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub)
  %cmp = icmp slt i32 %sub, 12
  br i1 %cmp, label %do.end, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.body
  %15 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_length.i, align 4
  %shr207 = lshr i32 %16, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr207)
  %cmp14208.not = icmp eq i32 %shr207, 0
  br i1 %cmp14208.not, label %for.cond12.preheader.for.inc44_crit_edge, label %for.body16.lr.ph

for.cond12.preheader.for.inc44_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc44

for.body16.lr.ph:                                 ; preds = %for.cond12.preheader
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %sub24 = add nsw i32 %sub, -12
  %sub30 = add nsw i32 %sub, -10
  %shl31 = shl nuw nsw i32 1, %sub30
  br label %for.body16

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %conv = zext i32 %11 to i64
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.96, i32 noundef 4096, i64 noundef %conv, i32 noundef %13) #12
  br label %mthca_free_mailbox.exit

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.body16.lr.ph
  %tc.1214 = phi i32 [ %tc.0224, %for.body16.lr.ph ], [ %inc, %for.inc.for.body16_crit_edge ]
  %ts.1213 = phi i32 [ %ts.0223, %for.body16.lr.ph ], [ %add32, %for.inc.for.body16_crit_edge ]
  %i.0212 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc43, %for.inc.for.body16_crit_edge ]
  %nent.1210 = phi i32 [ %nent.0222, %for.body16.lr.ph ], [ %nent.2, %for.inc.for.body16_crit_edge ]
  %virt.addr.1209 = phi i64 [ %virt.addr.0221, %for.body16.lr.ph ], [ %virt.addr.2, %for.inc.for.body16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %virt.addr.1209)
  %cmp17.not = icmp eq i64 %virt.addr.1209, -1
  %.pre = shl i32 %nent.1210, 1
  br i1 %cmp17.not, label %for.body16.if.end20_crit_edge, label %if.then19

for.body16.if.end20_crit_edge:                    ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr i64, ptr %6, i32 %.pre
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %virt.addr.1209, ptr %arrayidx, align 8
  %add = add i64 %virt.addr.1209, %shl
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.body16.if.end20_crit_edge
  %virt.addr.2 = phi i64 [ %add, %if.then19 ], [ -1, %for.body16.if.end20_crit_edge ]
  %20 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address.i, align 4
  %shl22 = shl i32 %i.0212, %sub
  %add23 = add i32 %21, %shl22
  %or25 = or i32 %add23, %sub24
  %conv26 = zext i32 %or25 to i64
  %add28 = or i32 %.pre, 1
  %arrayidx29 = getelementptr i64, ptr %6, i32 %add28
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv26, ptr %arrayidx29, align 8
  %add32 = add i32 %ts.1213, %shl31
  %inc = add i32 %tc.1214, 1
  %inc33 = add i32 %nent.1210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc33)
  %cmp34 = icmp eq i32 %inc33, 256
  br i1 %cmp34, label %if.then36, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then36:                                        ; preds = %if.end20
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call7.i.i, align 8
  %conv37 = zext i32 %24 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %25 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv37, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 256, i8 noundef zeroext 0, i16 noundef zeroext %op, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv37, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 256, i8 noundef zeroext 0, i16 noundef zeroext %op, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool39.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool39.not, label %mthca_cmd.exit.for.inc_crit_edge, label %mthca_cmd.exit.mthca_free_mailbox.exit_crit_edge

mthca_cmd.exit.mthca_free_mailbox.exit_crit_edge: ; preds = %mthca_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

mthca_cmd.exit.for.inc_crit_edge:                 ; preds = %mthca_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %mthca_cmd.exit.for.inc_crit_edge, %if.end20.for.inc_crit_edge
  %nent.2 = phi i32 [ %inc33, %if.end20.for.inc_crit_edge ], [ 0, %mthca_cmd.exit.for.inc_crit_edge ]
  %inc43 = add nuw i32 %i.0212, 1
  %28 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_length.i, align 4
  %shr = lshr i32 %29, %sub
  %cmp14 = icmp ult i32 %inc43, %shr
  br i1 %cmp14, label %for.inc.for.body16_crit_edge, label %for.inc.for.inc44_crit_edge

for.inc.for.inc44_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc44

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.inc44:                                        ; preds = %for.inc.for.inc44_crit_edge, %for.cond12.preheader.for.inc44_crit_edge
  %virt.addr.1.lcssa = phi i64 [ %virt.addr.0221, %for.cond12.preheader.for.inc44_crit_edge ], [ %virt.addr.2, %for.inc.for.inc44_crit_edge ]
  %nent.1.lcssa = phi i32 [ %nent.0222, %for.cond12.preheader.for.inc44_crit_edge ], [ %nent.2, %for.inc.for.inc44_crit_edge ]
  %ts.1.lcssa = phi i32 [ %ts.0223, %for.cond12.preheader.for.inc44_crit_edge ], [ %add32, %for.inc.for.inc44_crit_edge ]
  %tc.1.lcssa = phi i32 [ %tc.0224, %for.cond12.preheader.for.inc44_crit_edge ], [ %inc, %for.inc.for.inc44_crit_edge ]
  %inc.i = add i32 %iter.sroa.17.0219, 1
  %nsg.i = getelementptr inbounds %struct.mthca_icm_chunk, ptr %iter.sroa.5.0220, i32 0, i32 2
  %30 = ptrtoint ptr %nsg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nsg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %31)
  %cmp.not.i = icmp slt i32 %inc.i, %31
  br i1 %cmp.not.i, label %for.inc44.mthca_icm_next.exit_crit_edge, label %if.then.i

for.inc44.mthca_icm_next.exit_crit_edge:          ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_icm_next.exit

if.then.i:                                        ; preds = %for.inc44
  %32 = ptrtoint ptr %iter.sroa.5.0220 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iter.sroa.5.0220, align 4
  %cmp2.i = icmp eq ptr %33, %icm
  br i1 %cmp2.i, label %if.then.i.for.end45_crit_edge, label %if.then.i.mthca_icm_next.exit_crit_edge

if.then.i.mthca_icm_next.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_icm_next.exit

if.then.i.for.end45_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end45

mthca_icm_next.exit:                              ; preds = %if.then.i.mthca_icm_next.exit_crit_edge, %for.inc44.mthca_icm_next.exit_crit_edge
  %iter.sroa.17.1 = phi i32 [ %inc.i, %for.inc44.mthca_icm_next.exit_crit_edge ], [ 0, %if.then.i.mthca_icm_next.exit_crit_edge ]
  %iter.sroa.5.1 = phi ptr [ %iter.sroa.5.0220, %for.inc44.mthca_icm_next.exit_crit_edge ], [ %33, %if.then.i.mthca_icm_next.exit_crit_edge ]
  %tobool.not.i139.not = icmp eq ptr %iter.sroa.5.1, null
  br i1 %tobool.not.i139.not, label %mthca_icm_next.exit.for.end45_crit_edge, label %mthca_icm_next.exit.for.body_crit_edge

mthca_icm_next.exit.for.body_crit_edge:           ; preds = %mthca_icm_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

mthca_icm_next.exit.for.end45_crit_edge:          ; preds = %mthca_icm_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end45

for.end45:                                        ; preds = %mthca_icm_next.exit.for.end45_crit_edge, %if.then.i.for.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nent.1.lcssa)
  %tobool46.not = icmp eq i32 %nent.1.lcssa, 0
  br i1 %tobool46.not, label %for.end45.if.end51_crit_edge, label %if.then47

for.end45.if.end51_crit_edge:                     ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then47:                                        ; preds = %for.end45
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call7.i.i, align 8
  %conv49 = zext i32 %35 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i159) #9
  %36 = ptrtoint ptr %out_param.addr.i.i159 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %out_param.addr.i.i159, align 8
  %flags.i.i160 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %37 = ptrtoint ptr %flags.i.i160 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i.i160, align 4
  %and.i.i161 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i161)
  %tobool.not.i.i162 = icmp eq i32 %and.i.i161, 0
  br i1 %tobool.not.i.i162, label %if.else.i.i166, label %if.then.i.i164

if.then.i.i164:                                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i163 = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv49, ptr noundef nonnull %out_param.addr.i.i159, i32 noundef 0, i32 noundef %nent.1.lcssa, i8 noundef zeroext 0, i16 noundef zeroext %op, i32 noundef 6000) #9
  br label %mthca_cmd.exit168

if.else.i.i166:                                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i165 = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv49, ptr noundef nonnull %out_param.addr.i.i159, i32 noundef 0, i32 noundef %nent.1.lcssa, i8 noundef zeroext 0, i16 noundef zeroext %op, i32 noundef 6000) #9
  br label %mthca_cmd.exit168

mthca_cmd.exit168:                                ; preds = %if.else.i.i166, %if.then.i.i164
  %retval.0.i.i167 = phi i32 [ %call.i.i163, %if.then.i.i164 ], [ %call1.i.i165, %if.else.i.i166 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i159) #9
  br label %if.end51

if.end51:                                         ; preds = %mthca_cmd.exit168, %for.end45.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %tc.0.lcssa248 = phi i32 [ %tc.1.lcssa, %mthca_cmd.exit168 ], [ %tc.1.lcssa, %for.end45.if.end51_crit_edge ], [ 0, %if.end.if.end51_crit_edge ]
  %ts.0.lcssa247 = phi i32 [ %ts.1.lcssa, %mthca_cmd.exit168 ], [ %ts.1.lcssa, %for.end45.if.end51_crit_edge ], [ 0, %if.end.if.end51_crit_edge ]
  %virt.addr.0.lcssa246 = phi i64 [ %virt.addr.1.lcssa, %mthca_cmd.exit168 ], [ %virt.addr.1.lcssa, %for.end45.if.end51_crit_edge ], [ %virt, %if.end.if.end51_crit_edge ]
  %err.3 = phi i32 [ %retval.0.i.i167, %mthca_cmd.exit168 ], [ 0, %for.end45.if.end51_crit_edge ], [ 0, %if.end.if.end51_crit_edge ]
  %39 = zext i16 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i16 %op, label %if.end51.mthca_free_mailbox.exit_crit_edge [
    i16 4095, label %do.body53
    i16 4092, label %do.body65
    i16 4090, label %do.body77
  ]

if.end51.mthca_free_mailbox.exit_crit_edge:       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body53:                                        ; preds = %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %40 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not = icmp eq i32 %40, 0
  br i1 %tobool54.not, label %do.body53.mthca_free_mailbox.exit_crit_edge, label %do.end58

do.body53.mthca_free_mailbox.exit_crit_edge:      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end58:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %pdev59 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %41 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev59, align 8
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev60, ptr noundef nonnull @.str.99, i32 noundef %tc.0.lcssa248, i32 noundef %ts.0.lcssa247) #12
  br label %mthca_free_mailbox.exit

do.body65:                                        ; preds = %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %43 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool66.not = icmp eq i32 %43, 0
  br i1 %tobool66.not, label %do.body65.mthca_free_mailbox.exit_crit_edge, label %do.end70

do.body65.mthca_free_mailbox.exit_crit_edge:      ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end70:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %pdev71 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %44 = ptrtoint ptr %pdev71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev71, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev72, ptr noundef nonnull @.str.102, i32 noundef %tc.0.lcssa248, i32 noundef %ts.0.lcssa247) #12
  br label %mthca_free_mailbox.exit

do.body77:                                        ; preds = %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %46 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool78.not = icmp eq i32 %46, 0
  br i1 %tobool78.not, label %do.body77.mthca_free_mailbox.exit_crit_edge, label %do.end82

do.body77.mthca_free_mailbox.exit_crit_edge:      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end82:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  %pdev83 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %47 = ptrtoint ptr %pdev83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev83, align 8
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %shl85 = shl i32 %ts.0.lcssa247, 10
  %conv86 = sext i32 %shl85 to i64
  %sub87 = sub i64 %virt.addr.0.lcssa246, %conv86
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev84, ptr noundef nonnull @.str.105, i32 noundef %tc.0.lcssa248, i32 noundef %ts.0.lcssa247, i64 noundef %sub87) #12
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %do.end82, %do.body77.mthca_free_mailbox.exit_crit_edge, %do.end70, %do.body65.mthca_free_mailbox.exit_crit_edge, %do.end58, %do.body53.mthca_free_mailbox.exit_crit_edge, %if.end51.mthca_free_mailbox.exit_crit_edge, %mthca_cmd.exit.mthca_free_mailbox.exit_crit_edge, %do.end
  %err.4 = phi i32 [ -22, %do.end ], [ %err.3, %if.end51.mthca_free_mailbox.exit_crit_edge ], [ %err.3, %do.end82 ], [ %err.3, %do.body77.mthca_free_mailbox.exit_crit_edge ], [ %err.3, %do.end70 ], [ %err.3, %do.body65.mthca_free_mailbox.exit_crit_edge ], [ %err.3, %do.end58 ], [ %err.3, %do.body53.mthca_free_mailbox.exit_crit_edge ], [ %retval.0.i.i, %mthca_cmd.exit.mthca_free_mailbox.exit_crit_edge ]
  %49 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cmd.i, align 4
  %51 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf.i, align 4
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %50, ptr noundef %52, i32 noundef %54) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_free_mailbox.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %err.4, %mthca_free_mailbox.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_UNMAP_FA(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %0 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4094, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4094, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_RUN_FW(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %0 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4086, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4086, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_QUERY_FW(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i283 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i283 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i.i, align 8
  %conv = zext i32 %8 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %9 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i270 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i270, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i271 = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i271)
  %tobool.not = icmp eq i32 %retval.0.i271, 0
  br i1 %tobool.not, label %do.body, label %mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge

mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge: ; preds = %mthca_cmd_box.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body:                                          ; preds = %mthca_cmd_box.exit
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %6, align 8
  %fw_ver = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 7
  %and = and i64 %13, 281470681743360
  %and9 = lshr i64 %13, 16
  %shr = and i64 %and9, 65535
  %or = or i64 %shr, %and
  %and11 = shl i64 %13, 16
  %shl = and i64 %and11, 4294901760
  %or12 = or i64 %or, %shl
  %14 = ptrtoint ptr %fw_ver to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or12, ptr %fw_ver, align 8
  %add.ptr16 = getelementptr i8, ptr %6, i32 15
  %15 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr16, align 1
  %conv19 = zext i8 %16 to i32
  %shl20 = shl nuw i32 1, %conv19
  %max_cmds = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 4
  %17 = ptrtoint ptr %max_cmds to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl20, ptr %max_cmds, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %18 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %do.body.do.body34_crit_edge, label %do.end26

do.body.do.body34_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body34

do.end26:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev27, ptr noundef nonnull @.str.13, i64 noundef %or12, i32 noundef %shl20) #12
  br label %do.body34

do.body34:                                        ; preds = %do.end26, %do.body.do.body34_crit_edge
  %add.ptr36 = getelementptr i8, ptr %6, i32 48
  %21 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr36, align 8
  %catas_err = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28
  %23 = ptrtoint ptr %catas_err to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %catas_err, align 8
  %add.ptr42 = getelementptr i8, ptr %6, i32 56
  %24 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr42, align 4
  %size = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 28, i32 2
  %26 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %27 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool48.not = icmp eq i32 %27, 0
  br i1 %tobool48.not, label %do.body34.do.body62_crit_edge, label %do.end52

do.body34.do.body62_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body62

do.end52:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %pdev53 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %28 = ptrtoint ptr %pdev53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev53, align 8
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev54, ptr noundef nonnull @.str.17, i64 noundef %22, i32 noundef %25) #12
  br label %do.body62

do.body62:                                        ; preds = %do.end52, %do.body34.do.body62_crit_edge
  %add.ptr64 = getelementptr i8, ptr %6, i32 16
  %30 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr64, align 4
  %and68 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body62.if.end97_crit_edge, label %do.body71

do.body62.if.end97_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

do.body71:                                        ; preds = %do.body62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %32 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool72.not = icmp eq i32 %32, 0
  br i1 %tobool72.not, label %do.body71.do.body82_crit_edge, label %do.end76

do.body71.do.body82_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

do.end76:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  %pdev77 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %33 = ptrtoint ptr %pdev77 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev77, align 8
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev78, ptr noundef nonnull @.str.20) #12
  br label %do.body82

do.body82:                                        ; preds = %do.end76, %do.body71.do.body82_crit_edge
  %add.ptr84 = getelementptr i8, ptr %6, i32 96
  %35 = ptrtoint ptr %add.ptr84 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr84, align 8
  %add.ptr92 = getelementptr i8, ptr %6, i32 80
  %37 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr92, align 2
  %arrayidx = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 0
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx, align 2
  %add.ptr92.1 = getelementptr i8, ptr %6, i32 82
  %40 = ptrtoint ptr %add.ptr92.1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr92.1, align 2
  %arrayidx.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 1
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx.1, align 2
  %add.ptr92.2 = getelementptr i8, ptr %6, i32 84
  %43 = ptrtoint ptr %add.ptr92.2 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr92.2, align 2
  %arrayidx.2 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 2
  %45 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayidx.2, align 2
  %add.ptr92.3 = getelementptr i8, ptr %6, i32 86
  %46 = ptrtoint ptr %add.ptr92.3 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr92.3, align 2
  %arrayidx.3 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 3
  %48 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %arrayidx.3, align 2
  %add.ptr92.4 = getelementptr i8, ptr %6, i32 88
  %49 = ptrtoint ptr %add.ptr92.4 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr92.4, align 2
  %arrayidx.4 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 4
  %51 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %arrayidx.4, align 2
  %add.ptr92.5 = getelementptr i8, ptr %6, i32 90
  %52 = ptrtoint ptr %add.ptr92.5 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr92.5, align 2
  %arrayidx.5 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 5
  %54 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %arrayidx.5, align 2
  %add.ptr92.6 = getelementptr i8, ptr %6, i32 92
  %55 = ptrtoint ptr %add.ptr92.6 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr92.6, align 2
  %arrayidx.6 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 6
  %57 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %arrayidx.6, align 2
  %add.ptr92.7 = getelementptr i8, ptr %6, i32 94
  %58 = ptrtoint ptr %add.ptr92.7 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr92.7, align 2
  %arrayidx.7 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 7
  %60 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %arrayidx.7, align 2
  %61 = call i16 @llvm.umax.i16(i16 %38, i16 %41) #9
  %62 = call i16 @llvm.umax.i16(i16 %61, i16 %44) #9
  %63 = call i16 @llvm.umax.i16(i16 %62, i16 %47) #9
  %64 = call i16 @llvm.umax.i16(i16 %63, i16 %50) #9
  %65 = call i16 @llvm.umax.i16(i16 %64, i16 %53) #9
  %66 = call i16 @llvm.umax.i16(i16 %65, i16 %56) #9
  %67 = call i16 @llvm.umax.i16(i16 %66, i16 %59) #9
  %conv7.i = zext i16 %67 to i64
  %add.i = add i64 %36, %conv7.i
  %68 = xor i64 %add.i, %36
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %68)
  %cmp9.not.i = icmp ult i64 %68, 4096
  %pdev13.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %69 = ptrtoint ptr %pdev13.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev13.i, align 8
  br i1 %cmp9.not.i, label %if.end.i274, label %do.end.i

do.end.i:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %conv12.i = zext i16 %67 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11.i, ptr noundef nonnull @.str.107, i64 noundef %36, i32 noundef %conv12.i) #12
  br label %if.end97

if.end.i274:                                      ; preds = %do.body82
  %arrayidx14.i = getelementptr %struct.pci_dev, ptr %70, i32 0, i32 47, i32 2
  %71 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx14.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %70, i32 0, i32 47, i32 2, i32 1
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp19.i = icmp eq i32 %74, 0
  %sub.i = sub i32 %74, %72
  %spec.select.i = select i1 %cmp19.i, i32 -1, i32 %sub.i
  %75 = trunc i64 %36 to i32
  %76 = and i32 %spec.select.i, %75
  %conv38.i = add i32 %76, %72
  %conv39.i = zext i16 %67 to i32
  %add40.i = add nuw nsw i32 %conv39.i, 4
  %call.i272 = call ptr @ioremap(i32 noundef %conv38.i, i32 noundef %add40.i) #9
  %dbell_map.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 10
  %77 = ptrtoint ptr %dbell_map.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i272, ptr %dbell_map.i, align 4
  %tobool.not.i273 = icmp eq ptr %call.i272, null
  br i1 %tobool.not.i273, label %if.end.i274.if.end97_crit_edge, label %if.end45.i

if.end.i274.if.end97_crit_edge:                   ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.end45.i:                                       ; preds = %if.end.i274
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %79, 2
  store i32 %or.i, ptr %flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %80 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool48.not.i = icmp eq i32 %80, 0
  br i1 %tobool48.not.i, label %if.end45.i.if.end97_crit_edge, label %do.end52.i

if.end45.i.if.end97_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

do.end52.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %pdev13.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev13.i, align 8
  %dev54.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev54.i, ptr noundef nonnull @.str.110) #12
  br label %if.end97

if.end97:                                         ; preds = %do.end52.i, %if.end45.i.if.end97_crit_edge, %if.end.i274.if.end97_crit_edge, %do.end.i, %do.body62.if.end97_crit_edge
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %83 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mthca_flags.i, align 8
  %and.i276 = and i32 %84, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i276)
  %tobool99.not = icmp eq i32 %and.i276, 0
  br i1 %tobool99.not, label %do.body169, label %do.body101

do.body101:                                       ; preds = %if.end97
  %85 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %6, align 2
  %fw = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 8
  %fw_pages = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 8, i32 0, i32 5
  %87 = ptrtoint ptr %fw_pages to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %fw_pages, align 8
  %add.ptr109 = getelementptr i8, ptr %6, i32 32
  %88 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %add.ptr109, align 8
  %90 = ptrtoint ptr %fw to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %fw, align 8
  %add.ptr116 = getelementptr i8, ptr %6, i32 64
  %91 = ptrtoint ptr %add.ptr116 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %add.ptr116, align 8
  %eq_arm_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 8, i32 0, i32 1
  %93 = ptrtoint ptr %eq_arm_base to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %eq_arm_base, align 8
  %add.ptr123 = getelementptr i8, ptr %6, i32 72
  %94 = ptrtoint ptr %add.ptr123 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %add.ptr123, align 8
  %eq_set_ci_base = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 8, i32 0, i32 2
  %96 = ptrtoint ptr %eq_set_ci_base to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %eq_set_ci_base, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %97 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool129.not = icmp eq i32 %97, 0
  br i1 %tobool129.not, label %do.body101.mthca_free_mailbox.exit_crit_edge, label %do.end142

do.body101.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end142:                                        ; preds = %do.body101
  %pdev134 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %98 = ptrtoint ptr %pdev134 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev134, align 8
  %dev135 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  %conv138 = zext i16 %86 to i32
  %shl139 = shl nuw nsw i32 %conv138, 2
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev135, ptr noundef nonnull @.str.23, i32 noundef %shl139) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool153.not = icmp eq i32 %.pr, 0
  br i1 %tobool153.not, label %do.end142.mthca_free_mailbox.exit_crit_edge, label %do.end157

do.end142.mthca_free_mailbox.exit_crit_edge:      ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end157:                                        ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %pdev134 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev134, align 8
  %dev159 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %102 = ptrtoint ptr %fw to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %fw, align 8
  %104 = ptrtoint ptr %eq_arm_base to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %eq_arm_base, align 8
  %106 = ptrtoint ptr %eq_set_ci_base to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %eq_set_ci_base, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev159, ptr noundef nonnull @.str.26, i64 noundef %103, i64 noundef %105, i64 noundef %107) #12
  br label %mthca_free_mailbox.exit

do.body169:                                       ; preds = %if.end97
  %add.ptr171 = getelementptr i8, ptr %6, i32 32
  %108 = ptrtoint ptr %add.ptr171 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %add.ptr171, align 8
  %fw173 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 8
  %110 = ptrtoint ptr %fw173 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %fw173, align 8
  %add.ptr178 = getelementptr i8, ptr %6, i32 40
  %111 = ptrtoint ptr %add.ptr178 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %add.ptr178, align 8
  %fw_end = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 8, i32 0, i32 1
  %113 = ptrtoint ptr %fw_end to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %fw_end, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %114 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool184.not = icmp eq i32 %114, 0
  br i1 %tobool184.not, label %do.body169.mthca_free_mailbox.exit_crit_edge, label %do.end188

do.body169.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end188:                                        ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #11
  %pdev189 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %115 = ptrtoint ptr %pdev189 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdev189, align 8
  %dev190 = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44
  %sub = sub i64 %112, %109
  %shr195 = lshr i64 %sub, 10
  %conv196 = trunc i64 %shr195 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev190, ptr noundef nonnull @.str.29, i32 noundef %conv196, i64 noundef %109, i64 noundef %112) #12
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %do.end188, %do.body169.mthca_free_mailbox.exit_crit_edge, %do.end157, %do.end142.mthca_free_mailbox.exit_crit_edge, %do.body101.mthca_free_mailbox.exit_crit_edge, %mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge
  %117 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cmd.i, align 4
  %119 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %buf.i, align 4
  %121 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %118, ptr noundef %120, i32 noundef %122) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_free_mailbox.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i271, %mthca_free_mailbox.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_ENABLE_LAM(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i101 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i101 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i.i, align 8
  %conv = zext i32 %8 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %9 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i93 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i93, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4088, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4088, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i94 = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i94)
  %tobool.not = icmp eq i32 %retval.0.i94, 0
  br i1 %tobool.not, label %do.body, label %mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge

mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge: ; preds = %mthca_cmd_box.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body:                                          ; preds = %mthca_cmd_box.exit
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %6, align 8
  %ddr_start = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 9
  %14 = ptrtoint ptr %ddr_start to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %ddr_start, align 8
  %add.ptr9 = getelementptr i8, ptr %6, i32 8
  %15 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr9, align 8
  %ddr_end = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 10
  %17 = ptrtoint ptr %ddr_end to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %ddr_end, align 8
  %add.ptr15 = getelementptr i8, ptr %6, i32 19
  %18 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr15, align 1
  %20 = and i8 %19, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool19.not = icmp eq i8 %20, 0
  %.lobit = lshr exact i8 %20, 4
  %21 = zext i8 %.lobit to i32
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mthca_flags, align 8
  %and21 = lshr i32 %23, 1
  %and21.lobit = and i32 %and21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and21.lobit, i32 %21)
  %cmp.not = icmp eq i32 %and21.lobit, %21
  br i1 %cmp.not, label %do.body.if.end36_crit_edge, label %do.end31

do.body.if.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end31:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %cond = select i1 %tobool19.not, ptr @.str.35, ptr @.str.34
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end31, %do.body.if.end36_crit_edge
  br i1 %tobool19.not, label %if.end36.do.body53_crit_edge, label %do.body41

if.end36.do.body53_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

do.body41:                                        ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %26 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool42.not = icmp eq i32 %26, 0
  br i1 %tobool42.not, label %do.body41.mthca_free_mailbox.exit_crit_edge, label %do.end46

do.body41.mthca_free_mailbox.exit_crit_edge:      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end46:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %pdev47 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %27 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev47, align 8
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev48, ptr noundef nonnull @.str.37) #12
  br label %do.body53

do.body53:                                        ; preds = %do.end46, %if.end36.do.body53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool54.not = icmp eq i32 %.pr, 0
  br i1 %tobool54.not, label %do.body53.mthca_free_mailbox.exit_crit_edge, label %do.end58

do.body53.mthca_free_mailbox.exit_crit_edge:      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end58:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %pdev59 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %29 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev59, align 8
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %ddr_end to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ddr_end, align 8
  %33 = ptrtoint ptr %ddr_start to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ddr_start, align 8
  %sub = sub i64 %32, %34
  %shr = lshr i64 %sub, 10
  %conv63 = trunc i64 %shr to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev60, ptr noundef nonnull @.str.40, i32 noundef %conv63, i64 noundef %34, i64 noundef %32) #12
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %do.end58, %do.body53.mthca_free_mailbox.exit_crit_edge, %do.body41.mthca_free_mailbox.exit_crit_edge, %mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge
  %35 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd.i, align 4
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf.i, align 4
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %36, ptr noundef %38, i32 noundef %40) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_free_mailbox.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i94, %mthca_free_mailbox.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_DISABLE_LAM(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %0 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 2, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 2, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_QUERY_DDR(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i101 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i101 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i.i, align 8
  %conv = zext i32 %8 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %9 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i93 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i93, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 5, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 5, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i94 = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i94)
  %tobool.not = icmp eq i32 %retval.0.i94, 0
  br i1 %tobool.not, label %do.body, label %mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge

mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge: ; preds = %mthca_cmd_box.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body:                                          ; preds = %mthca_cmd_box.exit
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %6, align 8
  %ddr_start = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 9
  %14 = ptrtoint ptr %ddr_start to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %ddr_start, align 8
  %add.ptr9 = getelementptr i8, ptr %6, i32 8
  %15 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr9, align 8
  %ddr_end = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 10
  %17 = ptrtoint ptr %ddr_end to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %ddr_end, align 8
  %add.ptr15 = getelementptr i8, ptr %6, i32 19
  %18 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr15, align 1
  %20 = and i8 %19, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool19.not = icmp eq i8 %20, 0
  %.lobit = lshr exact i8 %20, 4
  %21 = zext i8 %.lobit to i32
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mthca_flags, align 8
  %and21 = lshr i32 %23, 1
  %and21.lobit = and i32 %and21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and21.lobit, i32 %21)
  %cmp.not = icmp eq i32 %and21.lobit, %21
  br i1 %cmp.not, label %do.body.if.end36_crit_edge, label %do.end31

do.body.if.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end31:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %cond = select i1 %tobool19.not, ptr @.str.35, ptr @.str.34
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end31, %do.body.if.end36_crit_edge
  br i1 %tobool19.not, label %if.end36.do.body53_crit_edge, label %do.body41

if.end36.do.body53_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

do.body41:                                        ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %26 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool42.not = icmp eq i32 %26, 0
  br i1 %tobool42.not, label %do.body41.mthca_free_mailbox.exit_crit_edge, label %do.end46

do.body41.mthca_free_mailbox.exit_crit_edge:      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end46:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %pdev47 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %27 = ptrtoint ptr %pdev47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev47, align 8
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev48, ptr noundef nonnull @.str.37) #12
  br label %do.body53

do.body53:                                        ; preds = %do.end46, %if.end36.do.body53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool54.not = icmp eq i32 %.pr, 0
  br i1 %tobool54.not, label %do.body53.mthca_free_mailbox.exit_crit_edge, label %do.end58

do.body53.mthca_free_mailbox.exit_crit_edge:      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end58:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %pdev59 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %29 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev59, align 8
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %ddr_end to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ddr_end, align 8
  %33 = ptrtoint ptr %ddr_start to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ddr_start, align 8
  %sub = sub i64 %32, %34
  %shr = lshr i64 %sub, 10
  %conv63 = trunc i64 %shr to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev60, ptr noundef nonnull @.str.40, i32 noundef %conv63, i64 noundef %34, i64 noundef %32) #12
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %do.end58, %do.body53.mthca_free_mailbox.exit_crit_edge, %do.body41.mthca_free_mailbox.exit_crit_edge, %mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge
  %35 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd.i, align 4
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf.i, align 4
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %36, ptr noundef %38, i32 noundef %40) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_free_mailbox.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i94, %mthca_free_mailbox.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_QUERY_DEV_LIM(ptr noundef %dev, ptr noundef %dev_lim) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i907 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i907 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i.i, align 8
  %conv = zext i32 %8 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %9 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i896 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i896, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 3, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 3, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i897 = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i897)
  %tobool.not = icmp eq i32 %retval.0.i897, 0
  br i1 %tobool.not, label %do.body, label %mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge

mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge: ; preds = %mthca_cmd_box.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body:                                          ; preds = %mthca_cmd_box.exit
  %add.ptr = getelementptr i8, ptr %6, i32 18
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr, align 1
  %14 = and i8 %13, 15
  %and = zext i8 %14 to i32
  %shl = shl nuw nsw i32 1, %and
  %reserved_qps = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 2
  %15 = ptrtoint ptr %reserved_qps to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl, ptr %reserved_qps, align 8
  %add.ptr9 = getelementptr i8, ptr %6, i32 19
  %16 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr9, align 1
  %18 = and i8 %17, 31
  %and13 = zext i8 %18 to i32
  %shl14 = shl nuw i32 1, %and13
  %max_qps = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 3
  %19 = ptrtoint ptr %max_qps to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl14, ptr %max_qps, align 4
  %add.ptr17 = getelementptr i8, ptr %6, i32 20
  %20 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr17, align 1
  %22 = lshr i8 %21, 4
  %23 = zext i8 %22 to i32
  %shl21 = shl nuw nsw i32 1, %23
  %reserved_srqs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 4
  %24 = ptrtoint ptr %reserved_srqs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl21, ptr %reserved_srqs, align 8
  %add.ptr24 = getelementptr i8, ptr %6, i32 21
  %25 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr24, align 1
  %27 = and i8 %26, 31
  %and28 = zext i8 %27 to i32
  %shl29 = shl nuw i32 1, %and28
  %max_srqs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 5
  %28 = ptrtoint ptr %max_srqs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl29, ptr %max_srqs, align 4
  %add.ptr32 = getelementptr i8, ptr %6, i32 22
  %29 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr32, align 1
  %31 = and i8 %30, 15
  %and36 = zext i8 %31 to i32
  %shl37 = shl nuw nsw i32 1, %and36
  %reserved_eecs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 6
  %32 = ptrtoint ptr %reserved_eecs to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl37, ptr %reserved_eecs, align 8
  %add.ptr40 = getelementptr i8, ptr %6, i32 23
  %33 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr40, align 1
  %35 = and i8 %34, 31
  %and44 = zext i8 %35 to i32
  %shl45 = shl nuw i32 1, %and44
  %max_eecs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 7
  %36 = ptrtoint ptr %max_eecs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl45, ptr %max_eecs, align 4
  %add.ptr48 = getelementptr i8, ptr %6, i32 25
  %37 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr48, align 1
  %conv51 = zext i8 %38 to i32
  %shl52 = shl nuw i32 1, %conv51
  %max_cq_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 8
  %39 = ptrtoint ptr %max_cq_sz to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shl52, ptr %max_cq_sz, align 8
  %add.ptr55 = getelementptr i8, ptr %6, i32 26
  %40 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr55, align 1
  %42 = and i8 %41, 15
  %and59 = zext i8 %42 to i32
  %shl60 = shl nuw nsw i32 1, %and59
  %reserved_cqs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 9
  %43 = ptrtoint ptr %reserved_cqs to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shl60, ptr %reserved_cqs, align 4
  %add.ptr63 = getelementptr i8, ptr %6, i32 27
  %44 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr63, align 1
  %46 = and i8 %45, 31
  %and67 = zext i8 %46 to i32
  %shl68 = shl nuw i32 1, %and67
  %max_cqs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 10
  %47 = ptrtoint ptr %max_cqs to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl68, ptr %max_cqs, align 8
  %add.ptr71 = getelementptr i8, ptr %6, i32 29
  %48 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr71, align 1
  %50 = and i8 %49, 63
  %and75 = zext i8 %50 to i32
  %shl76 = shl nuw i32 1, %and75
  %max_mpts = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 11
  %51 = ptrtoint ptr %max_mpts to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shl76, ptr %max_mpts, align 4
  %add.ptr79 = getelementptr i8, ptr %6, i32 30
  %52 = ptrtoint ptr %add.ptr79 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr79, align 1
  %54 = and i8 %53, 15
  %and83 = zext i8 %54 to i32
  %shl84 = shl nuw nsw i32 1, %and83
  %reserved_eqs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 12
  %55 = ptrtoint ptr %reserved_eqs to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shl84, ptr %reserved_eqs, align 8
  %add.ptr87 = getelementptr i8, ptr %6, i32 31
  %56 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr87, align 1
  %58 = and i8 %57, 7
  %and91 = zext i8 %58 to i32
  %shl92 = shl nuw nsw i32 1, %and91
  %max_eqs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 13
  %59 = ptrtoint ptr %max_eqs to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %shl92, ptr %max_eqs, align 4
  %add.ptr95 = getelementptr i8, ptr %6, i32 32
  %60 = ptrtoint ptr %add.ptr95 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr95, align 1
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %62 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mthca_flags.i, align 8
  %and.i898 = and i32 %63, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i898)
  %tobool99.not = icmp eq i32 %and.i898, 0
  %64 = lshr i8 %61, 4
  %65 = zext i8 %64 to i32
  br i1 %tobool99.not, label %if.else, label %if.then100

if.then100:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl nuw nsw i32 8, %65
  %mtt_seg_size = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 26
  %66 = ptrtoint ptr %mtt_seg_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mtt_seg_size, align 8
  %sub = add nsw i32 %mul, -1
  %add = add i32 %sub, %67
  %neg = sub i32 0, %67
  %and107 = and i32 %add, %neg
  %div = udiv i32 %and107, %67
  br label %do.body115

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %shl112 = shl nuw nsw i32 1, %65
  br label %do.body115

do.body115:                                       ; preds = %if.else, %if.then100
  %div.sink = phi i32 [ %shl112, %if.else ], [ %div, %if.then100 ]
  %68 = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 14
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div.sink, ptr %68, align 8
  %add.ptr117 = getelementptr i8, ptr %6, i32 33
  %70 = ptrtoint ptr %add.ptr117 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr117, align 1
  %conv120 = zext i8 %71 to i32
  %shl121 = shl nuw i32 1, %conv120
  %max_mrw_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 15
  %72 = ptrtoint ptr %max_mrw_sz to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shl121, ptr %max_mrw_sz, align 4
  %add.ptr124 = getelementptr i8, ptr %6, i32 34
  %73 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %add.ptr124, align 1
  %75 = and i8 %74, 15
  %and128 = zext i8 %75 to i32
  %shl129 = shl nuw nsw i32 1, %and128
  %reserved_mrws = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 16
  %76 = ptrtoint ptr %reserved_mrws to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shl129, ptr %reserved_mrws, align 8
  %add.ptr132 = getelementptr i8, ptr %6, i32 35
  %77 = ptrtoint ptr %add.ptr132 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %add.ptr132, align 1
  %79 = and i8 %78, 63
  %and136 = zext i8 %79 to i32
  %shl137 = shl nuw i32 1, %and136
  %max_mtt_seg = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 17
  %80 = ptrtoint ptr %max_mtt_seg to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %shl137, ptr %max_mtt_seg, align 4
  %add.ptr140 = getelementptr i8, ptr %6, i32 41
  %81 = ptrtoint ptr %add.ptr140 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr140, align 1
  %83 = and i8 %82, 63
  %and144 = zext i8 %83 to i32
  %shl145 = shl nuw i32 1, %and144
  %max_requester_per_qp = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 18
  %84 = ptrtoint ptr %max_requester_per_qp to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %shl145, ptr %max_requester_per_qp, align 8
  %add.ptr148 = getelementptr i8, ptr %6, i32 43
  %85 = ptrtoint ptr %add.ptr148 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %add.ptr148, align 1
  %87 = and i8 %86, 63
  %and152 = zext i8 %87 to i32
  %shl153 = shl nuw i32 1, %and152
  %max_responder_per_qp = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 19
  %88 = ptrtoint ptr %max_responder_per_qp to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shl153, ptr %max_responder_per_qp, align 4
  %add.ptr156 = getelementptr i8, ptr %6, i32 47
  %89 = ptrtoint ptr %add.ptr156 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %add.ptr156, align 1
  %91 = and i8 %90, 63
  %and160 = zext i8 %91 to i32
  %shl161 = shl nuw i32 1, %and160
  %max_rdma_global = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 20
  %92 = ptrtoint ptr %max_rdma_global to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %shl161, ptr %max_rdma_global, align 8
  %add.ptr164 = getelementptr i8, ptr %6, i32 53
  %93 = ptrtoint ptr %add.ptr164 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %add.ptr164, align 1
  %95 = and i8 %94, 31
  %and168 = zext i8 %95 to i32
  %local_ca_ack_delay = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 21
  %96 = ptrtoint ptr %local_ca_ack_delay to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and168, ptr %local_ca_ack_delay, align 4
  %add.ptr171 = getelementptr i8, ptr %6, i32 54
  %97 = ptrtoint ptr %add.ptr171 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %add.ptr171, align 1
  %conv174 = zext i8 %98 to i32
  %99 = lshr i32 %conv174, 4
  %max_mtu = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 22
  %100 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %max_mtu, align 8
  %and177 = and i32 %conv174, 15
  %max_port_width = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 23
  %101 = ptrtoint ptr %max_port_width to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and177, ptr %max_port_width, align 4
  %add.ptr180 = getelementptr i8, ptr %6, i32 55
  %102 = ptrtoint ptr %add.ptr180 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %add.ptr180, align 1
  %conv183 = zext i8 %103 to i32
  %104 = lshr i32 %conv183, 4
  %max_vl = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 24
  %105 = ptrtoint ptr %max_vl to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %max_vl, align 8
  %and186 = and i32 %conv183, 15
  %num_ports = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 25
  %106 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %and186, ptr %num_ports, align 4
  %add.ptr189 = getelementptr i8, ptr %6, i32 59
  %107 = ptrtoint ptr %add.ptr189 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %add.ptr189, align 1
  %109 = and i8 %108, 15
  %and193 = zext i8 %109 to i32
  %shl194 = shl nuw nsw i32 1, %and193
  %max_gids = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 26
  %110 = ptrtoint ptr %max_gids to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %shl194, ptr %max_gids, align 8
  %add.ptr197 = getelementptr i8, ptr %6, i32 60
  %111 = ptrtoint ptr %add.ptr197 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr197, align 2
  %stat_rate_support = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 27
  %113 = ptrtoint ptr %stat_rate_support to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %stat_rate_support, align 4
  %add.ptr203 = getelementptr i8, ptr %6, i32 63
  %114 = ptrtoint ptr %add.ptr203 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %add.ptr203, align 1
  %116 = and i8 %115, 15
  %and207 = zext i8 %116 to i32
  %shl208 = shl nuw nsw i32 1, %and207
  %max_pkeys = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 28
  %117 = ptrtoint ptr %max_pkeys to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %shl208, ptr %max_pkeys, align 8
  %add.ptr211 = getelementptr i8, ptr %6, i32 68
  %118 = ptrtoint ptr %add.ptr211 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr211, align 4
  %flags = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 29
  %120 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %flags, align 4
  %add.ptr217 = getelementptr i8, ptr %6, i32 72
  %121 = ptrtoint ptr %add.ptr217 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %add.ptr217, align 1
  %123 = lshr i8 %122, 4
  %124 = zext i8 %123 to i32
  %reserved_uars = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 30
  %125 = ptrtoint ptr %reserved_uars to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %reserved_uars, align 8
  %add.ptr224 = getelementptr i8, ptr %6, i32 73
  %126 = ptrtoint ptr %add.ptr224 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %add.ptr224, align 1
  %128 = and i8 %127, 63
  %narrow = add nuw nsw i8 %128, 20
  %add229 = zext i8 %narrow to i32
  %shl230 = shl nuw i32 1, %add229
  %uar_size = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 31
  %129 = ptrtoint ptr %uar_size to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %shl230, ptr %uar_size, align 4
  %add.ptr233 = getelementptr i8, ptr %6, i32 75
  %130 = ptrtoint ptr %add.ptr233 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %add.ptr233, align 1
  %conv236 = zext i8 %131 to i32
  %shl237 = shl nuw i32 1, %conv236
  %min_page_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 32
  %132 = ptrtoint ptr %min_page_sz to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %shl237, ptr %min_page_sz, align 8
  %add.ptr240 = getelementptr i8, ptr %6, i32 81
  %133 = ptrtoint ptr %add.ptr240 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %add.ptr240, align 1
  %conv243 = zext i8 %134 to i32
  %max_sg = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 33
  %135 = ptrtoint ptr %max_sg to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv243, ptr %max_sg, align 4
  %add.ptr246 = getelementptr i8, ptr %6, i32 82
  %136 = ptrtoint ptr %add.ptr246 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %add.ptr246, align 2
  %conv250 = zext i16 %137 to i32
  %max_desc_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 34
  %138 = ptrtoint ptr %max_desc_sz to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv250, ptr %max_desc_sz, align 8
  %add.ptr253 = getelementptr i8, ptr %6, i32 97
  %139 = ptrtoint ptr %add.ptr253 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %add.ptr253, align 1
  %conv256 = zext i8 %140 to i32
  %shl257 = shl nuw i32 1, %conv256
  %max_qp_per_mcg = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 35
  %141 = ptrtoint ptr %max_qp_per_mcg to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %shl257, ptr %max_qp_per_mcg, align 4
  %add.ptr260 = getelementptr i8, ptr %6, i32 98
  %142 = ptrtoint ptr %add.ptr260 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %add.ptr260, align 1
  %144 = and i8 %143, 15
  %and264 = zext i8 %144 to i32
  %reserved_mgms = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 36
  %145 = ptrtoint ptr %reserved_mgms to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %and264, ptr %reserved_mgms, align 8
  %add.ptr267 = getelementptr i8, ptr %6, i32 99
  %146 = ptrtoint ptr %add.ptr267 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %add.ptr267, align 1
  %conv270 = zext i8 %147 to i32
  %shl271 = shl nuw i32 1, %conv270
  %max_mcgs = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 37
  %148 = ptrtoint ptr %max_mcgs to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %shl271, ptr %max_mcgs, align 4
  %add.ptr274 = getelementptr i8, ptr %6, i32 100
  %149 = ptrtoint ptr %add.ptr274 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %add.ptr274, align 1
  %151 = lshr i8 %150, 4
  %152 = zext i8 %151 to i32
  %reserved_pds = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 38
  %153 = ptrtoint ptr %reserved_pds to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %reserved_pds, align 8
  %add.ptr281 = getelementptr i8, ptr %6, i32 101
  %154 = ptrtoint ptr %add.ptr281 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %add.ptr281, align 1
  %156 = and i8 %155, 63
  %and285 = zext i8 %156 to i32
  %shl286 = shl nuw i32 1, %and285
  %max_pds = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 39
  %157 = ptrtoint ptr %max_pds to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %shl286, ptr %max_pds, align 4
  %add.ptr289 = getelementptr i8, ptr %6, i32 102
  %158 = ptrtoint ptr %add.ptr289 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %add.ptr289, align 1
  %160 = lshr i8 %159, 4
  %161 = zext i8 %160 to i32
  %reserved_rdds = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 40
  %162 = ptrtoint ptr %reserved_rdds to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %reserved_rdds, align 8
  %add.ptr296 = getelementptr i8, ptr %6, i32 103
  %163 = ptrtoint ptr %add.ptr296 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %add.ptr296, align 1
  %165 = and i8 %164, 63
  %and300 = zext i8 %165 to i32
  %shl301 = shl nuw i32 1, %and300
  %max_rdds = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 41
  %166 = ptrtoint ptr %max_rdds to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %shl301, ptr %max_rdds, align 4
  %add.ptr304 = getelementptr i8, ptr %6, i32 128
  %167 = ptrtoint ptr %add.ptr304 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %add.ptr304, align 2
  %conv308 = zext i16 %168 to i32
  %eec_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 42
  %169 = ptrtoint ptr %eec_entry_sz to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %conv308, ptr %eec_entry_sz, align 8
  %add.ptr311 = getelementptr i8, ptr %6, i32 130
  %170 = ptrtoint ptr %add.ptr311 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %add.ptr311, align 2
  %conv315 = zext i16 %171 to i32
  %qpc_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 43
  %172 = ptrtoint ptr %qpc_entry_sz to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %conv315, ptr %qpc_entry_sz, align 4
  %add.ptr318 = getelementptr i8, ptr %6, i32 132
  %173 = ptrtoint ptr %add.ptr318 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %add.ptr318, align 2
  %conv322 = zext i16 %174 to i32
  %eeec_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 44
  %175 = ptrtoint ptr %eeec_entry_sz to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %conv322, ptr %eeec_entry_sz, align 8
  %add.ptr325 = getelementptr i8, ptr %6, i32 134
  %176 = ptrtoint ptr %add.ptr325 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %add.ptr325, align 2
  %conv329 = zext i16 %177 to i32
  %eqpc_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 45
  %178 = ptrtoint ptr %eqpc_entry_sz to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %conv329, ptr %eqpc_entry_sz, align 4
  %add.ptr332 = getelementptr i8, ptr %6, i32 136
  %179 = ptrtoint ptr %add.ptr332 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %add.ptr332, align 2
  %conv336 = zext i16 %180 to i32
  %eqc_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 46
  %181 = ptrtoint ptr %eqc_entry_sz to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %conv336, ptr %eqc_entry_sz, align 8
  %add.ptr339 = getelementptr i8, ptr %6, i32 138
  %182 = ptrtoint ptr %add.ptr339 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %add.ptr339, align 2
  %conv343 = zext i16 %183 to i32
  %cqc_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 47
  %184 = ptrtoint ptr %cqc_entry_sz to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %conv343, ptr %cqc_entry_sz, align 4
  %add.ptr346 = getelementptr i8, ptr %6, i32 140
  %185 = ptrtoint ptr %add.ptr346 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %add.ptr346, align 2
  %conv350 = zext i16 %186 to i32
  %srq_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 48
  %187 = ptrtoint ptr %srq_entry_sz to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %conv350, ptr %srq_entry_sz, align 8
  %add.ptr353 = getelementptr i8, ptr %6, i32 142
  %188 = ptrtoint ptr %add.ptr353 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %add.ptr353, align 2
  %conv357 = zext i16 %189 to i32
  %uar_scratch_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 49
  %190 = ptrtoint ptr %uar_scratch_entry_sz to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %conv357, ptr %uar_scratch_entry_sz, align 4
  %191 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %mthca_flags.i, align 8
  %and.i900 = and i32 %192, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i900)
  %tobool359.not = icmp eq i32 %and.i900, 0
  %add.ptr504 = getelementptr i8, ptr %6, i32 16
  %193 = ptrtoint ptr %add.ptr504 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %add.ptr504, align 1
  %conv507 = zext i8 %194 to i32
  br i1 %tobool359.not, label %do.body502, label %do.body361

do.body361:                                       ; preds = %do.body115
  %shl367 = shl nuw i32 1, %conv507
  %195 = ptrtoint ptr %dev_lim to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %shl367, ptr %dev_lim, align 8
  %add.ptr370 = getelementptr i8, ptr %6, i32 17
  %196 = ptrtoint ptr %add.ptr370 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %add.ptr370, align 1
  %conv373 = zext i8 %197 to i32
  %shl374 = shl nuw i32 1, %conv373
  %max_qp_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 1
  %198 = ptrtoint ptr %max_qp_sz to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %shl374, ptr %max_qp_sz, align 4
  %add.ptr377 = getelementptr i8, ptr %6, i32 51
  %199 = ptrtoint ptr %add.ptr377 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %add.ptr377, align 1
  %201 = and i8 %200, 1
  %and381 = zext i8 %201 to i32
  %hca = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 51
  %202 = ptrtoint ptr %hca to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %and381, ptr %hca, align 8
  %add.ptr384 = getelementptr i8, ptr %6, i32 85
  %203 = ptrtoint ptr %add.ptr384 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %add.ptr384, align 1
  %205 = call i8 @llvm.umin.i8(i8 %134, i8 %204)
  %206 = zext i8 %205 to i32
  %207 = ptrtoint ptr %max_sg to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %max_sg, align 4
  %add.ptr393 = getelementptr i8, ptr %6, i32 86
  %208 = ptrtoint ptr %add.ptr393 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %add.ptr393, align 2
  %210 = call i16 @llvm.umin.i16(i16 %137, i16 %209)
  %211 = zext i16 %210 to i32
  %212 = ptrtoint ptr %max_desc_sz to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %max_desc_sz, align 8
  %add.ptr409 = getelementptr i8, ptr %6, i32 146
  %213 = ptrtoint ptr %add.ptr409 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %add.ptr409, align 2
  %conv413 = zext i16 %214 to i32
  %mpt_entry_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 50
  %215 = ptrtoint ptr %mpt_entry_sz to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %conv413, ptr %mpt_entry_sz, align 8
  %add.ptr416 = getelementptr i8, ptr %6, i32 150
  %216 = ptrtoint ptr %add.ptr416 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %add.ptr416, align 1
  %218 = and i8 %217, 63
  %and420 = zext i8 %218 to i32
  %shl421 = shl nuw i32 1, %and420
  %max_pbl_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 51, i32 0, i32 1
  %219 = ptrtoint ptr %max_pbl_sz to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %shl421, ptr %max_pbl_sz, align 4
  %add.ptr425 = getelementptr i8, ptr %6, i32 151
  %220 = ptrtoint ptr %add.ptr425 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %add.ptr425, align 1
  %bmme_flags = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 51, i32 0, i32 2
  %222 = ptrtoint ptr %bmme_flags to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %bmme_flags, align 8
  %add.ptr431 = getelementptr i8, ptr %6, i32 152
  %223 = ptrtoint ptr %add.ptr431 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %add.ptr431, align 4
  %reserved_lkey = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 51, i32 0, i32 3
  %225 = ptrtoint ptr %reserved_lkey to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %224, ptr %reserved_lkey, align 4
  %add.ptr438 = getelementptr i8, ptr %6, i32 159
  %226 = ptrtoint ptr %add.ptr438 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %add.ptr438, align 1
  %228 = and i8 %227, 1
  %and442 = zext i8 %228 to i32
  %lam_required = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 51, i32 0, i32 4
  %229 = ptrtoint ptr %lam_required to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %and442, ptr %lam_required, align 8
  %add.ptr446 = getelementptr i8, ptr %6, i32 160
  %230 = ptrtoint ptr %add.ptr446 to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %add.ptr446, align 8
  %max_icm_sz = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 51, i32 0, i32 5
  %232 = ptrtoint ptr %max_icm_sz to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 %231, ptr %max_icm_sz, align 8
  %conv453 = zext i8 %221 to i32
  %and454 = and i32 %conv453, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and454)
  %tobool455.not = icmp eq i32 %and454, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %233 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool476.not = icmp eq i32 %233, 0
  br i1 %tobool455.not, label %do.body475, label %do.body457

do.body457:                                       ; preds = %do.body361
  br i1 %tobool476.not, label %do.body457.mthca_free_mailbox.exit_crit_edge, label %do.end462

do.body457.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end462:                                        ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %234 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pdev, align 8
  %dev463 = getelementptr inbounds %struct.pci_dev, ptr %235, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev463, ptr noundef nonnull @.str.47, i32 noundef %conv453, i32 noundef %shl421, i32 noundef %224) #12
  br label %do.body487

do.body475:                                       ; preds = %do.body361
  br i1 %tobool476.not, label %do.body475.mthca_free_mailbox.exit_crit_edge, label %do.end480

do.body475.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body475
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end480:                                        ; preds = %do.body475
  call void @__sanitizer_cov_trace_pc() #11
  %pdev481 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %236 = ptrtoint ptr %pdev481 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pdev481, align 8
  %dev482 = getelementptr inbounds %struct.pci_dev, ptr %237, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev482, ptr noundef nonnull @.str.50) #12
  br label %do.body487

do.body487:                                       ; preds = %do.end480, %do.end462
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool488.not = icmp eq i32 %.pr, 0
  br i1 %tobool488.not, label %do.body487.mthca_free_mailbox.exit_crit_edge, label %do.end492

do.body487.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body487
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end492:                                        ; preds = %do.body487
  call void @__sanitizer_cov_trace_pc() #11
  %pdev493 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %238 = ptrtoint ptr %pdev493 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %pdev493, align 8
  %dev494 = getelementptr inbounds %struct.pci_dev, ptr %239, i32 0, i32 44
  %240 = ptrtoint ptr %max_icm_sz to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %max_icm_sz, align 8
  %shr497 = lshr i64 %241, 20
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev494, ptr noundef nonnull @.str.53, i64 noundef %shr497) #12
  br label %do.body531

do.body502:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #11
  %notmask = shl nsw i32 -1, %conv507
  %sub509 = xor i32 %notmask, -1
  %242 = ptrtoint ptr %dev_lim to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %sub509, ptr %dev_lim, align 8
  %add.ptr513 = getelementptr i8, ptr %6, i32 17
  %243 = ptrtoint ptr %add.ptr513 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %add.ptr513, align 1
  %conv516 = zext i8 %244 to i32
  %notmask895 = shl nsw i32 -1, %conv516
  %sub518 = xor i32 %notmask895, -1
  %max_qp_sz519 = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 1
  %245 = ptrtoint ptr %max_qp_sz519 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %sub518, ptr %max_qp_sz519, align 4
  %add.ptr522 = getelementptr i8, ptr %6, i32 39
  %246 = ptrtoint ptr %add.ptr522 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %add.ptr522, align 1
  %248 = and i8 %247, 63
  %and526 = zext i8 %248 to i32
  %shl527 = shl nuw i32 1, %and526
  %hca528 = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 51
  %249 = ptrtoint ptr %hca528 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %shl527, ptr %hca528, align 8
  %mpt_entry_sz529 = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 50
  %250 = ptrtoint ptr %mpt_entry_sz529 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 64, ptr %mpt_entry_sz529, align 8
  br label %do.body531

do.body531:                                       ; preds = %do.body502, %do.end492
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr909.pr = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr909.pr)
  %tobool532.not = icmp eq i32 %.pr909.pr, 0
  br i1 %tobool532.not, label %do.body531.mthca_free_mailbox.exit_crit_edge, label %do.body545

do.body531.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body531
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body545:                                       ; preds = %do.body531
  %pdev537 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %251 = ptrtoint ptr %pdev537 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %pdev537, align 8
  %dev538 = getelementptr inbounds %struct.pci_dev, ptr %252, i32 0, i32 44
  %253 = ptrtoint ptr %max_qps to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %max_qps, align 4
  %255 = ptrtoint ptr %reserved_qps to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %reserved_qps, align 8
  %257 = ptrtoint ptr %qpc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %qpc_entry_sz, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev538, ptr noundef nonnull @.str.56, i32 noundef %254, i32 noundef %256, i32 noundef %258) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr911 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr911)
  %tobool546.not = icmp eq i32 %.pr911, 0
  br i1 %tobool546.not, label %do.body545.mthca_free_mailbox.exit_crit_edge, label %do.body559

do.body545.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body545
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body559:                                       ; preds = %do.body545
  %259 = ptrtoint ptr %pdev537 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %pdev537, align 8
  %dev552 = getelementptr inbounds %struct.pci_dev, ptr %260, i32 0, i32 44
  %261 = ptrtoint ptr %max_srqs to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %max_srqs, align 4
  %263 = ptrtoint ptr %reserved_srqs to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %reserved_srqs, align 8
  %265 = ptrtoint ptr %srq_entry_sz to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %srq_entry_sz, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev552, ptr noundef nonnull @.str.59, i32 noundef %262, i32 noundef %264, i32 noundef %266) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr913.pr.pr = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr913.pr.pr)
  %tobool560.not = icmp eq i32 %.pr913.pr.pr, 0
  br i1 %tobool560.not, label %do.body559.mthca_free_mailbox.exit_crit_edge, label %do.body573

do.body559.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body559
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body573:                                       ; preds = %do.body559
  %267 = ptrtoint ptr %pdev537 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %pdev537, align 8
  %dev566 = getelementptr inbounds %struct.pci_dev, ptr %268, i32 0, i32 44
  %269 = ptrtoint ptr %max_cqs to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %max_cqs, align 8
  %271 = ptrtoint ptr %reserved_cqs to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %reserved_cqs, align 4
  %273 = ptrtoint ptr %cqc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %cqc_entry_sz, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev566, ptr noundef nonnull @.str.62, i32 noundef %270, i32 noundef %272, i32 noundef %274) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr915 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr915)
  %tobool574.not = icmp eq i32 %.pr915, 0
  br i1 %tobool574.not, label %do.body573.mthca_free_mailbox.exit_crit_edge, label %do.body587

do.body573.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body573
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body587:                                       ; preds = %do.body573
  %275 = ptrtoint ptr %pdev537 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %pdev537, align 8
  %dev580 = getelementptr inbounds %struct.pci_dev, ptr %276, i32 0, i32 44
  %277 = ptrtoint ptr %max_eqs to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %max_eqs, align 4
  %279 = ptrtoint ptr %reserved_eqs to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %reserved_eqs, align 8
  %281 = ptrtoint ptr %eqc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %eqc_entry_sz, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev580, ptr noundef nonnull @.str.65, i32 noundef %278, i32 noundef %280, i32 noundef %282) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr917.pr.pr = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr917.pr.pr)
  %tobool588.not = icmp eq i32 %.pr917.pr.pr, 0
  br i1 %tobool588.not, label %do.body587.mthca_free_mailbox.exit_crit_edge, label %do.body600

do.body587.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body587
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body600:                                       ; preds = %do.body587
  %283 = ptrtoint ptr %pdev537 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %pdev537, align 8
  %dev594 = getelementptr inbounds %struct.pci_dev, ptr %284, i32 0, i32 44
  %285 = ptrtoint ptr %reserved_mrws to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %reserved_mrws, align 8
  %287 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %68, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev594, ptr noundef nonnull @.str.68, i32 noundef %286, i32 noundef %288) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr919 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr919)
  %tobool601.not = icmp eq i32 %.pr919, 0
  br i1 %tobool601.not, label %do.body600.mthca_free_mailbox.exit_crit_edge, label %do.body614

do.body600.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body600
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body614:                                       ; preds = %do.body600
  %289 = ptrtoint ptr %pdev537 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %pdev537, align 8
  %dev607 = getelementptr inbounds %struct.pci_dev, ptr %290, i32 0, i32 44
  %291 = ptrtoint ptr %max_pds to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %max_pds, align 4
  %293 = ptrtoint ptr %reserved_pds to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %reserved_pds, align 8
  %295 = ptrtoint ptr %reserved_uars to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %reserved_uars, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev607, ptr noundef nonnull @.str.71, i32 noundef %292, i32 noundef %294, i32 noundef %296) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr921.pr.pr.pr = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr921.pr.pr.pr)
  %tobool615.not = icmp eq i32 %.pr921.pr.pr.pr, 0
  br i1 %tobool615.not, label %do.body614.mthca_free_mailbox.exit_crit_edge, label %do.body627

do.body614.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body614
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body627:                                       ; preds = %do.body614
  %297 = ptrtoint ptr %pdev537 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %pdev537, align 8
  %dev621 = getelementptr inbounds %struct.pci_dev, ptr %298, i32 0, i32 44
  %299 = ptrtoint ptr %max_pds to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %max_pds, align 4
  %301 = ptrtoint ptr %reserved_mgms to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %reserved_mgms, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev621, ptr noundef nonnull @.str.74, i32 noundef %300, i32 noundef %302) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr923 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr923)
  %tobool628.not = icmp eq i32 %.pr923, 0
  br i1 %tobool628.not, label %do.body627.mthca_free_mailbox.exit_crit_edge, label %do.body641

do.body627.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body627
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.body641:                                       ; preds = %do.body627
  %303 = ptrtoint ptr %pdev537 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %pdev537, align 8
  %dev634 = getelementptr inbounds %struct.pci_dev, ptr %304, i32 0, i32 44
  %305 = ptrtoint ptr %max_cq_sz to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %max_cq_sz, align 8
  %max_qp_sz636 = getelementptr inbounds %struct.mthca_dev_lim, ptr %dev_lim, i32 0, i32 1
  %307 = ptrtoint ptr %max_qp_sz636 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %max_qp_sz636, align 4
  %309 = ptrtoint ptr %dev_lim to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %dev_lim, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev634, ptr noundef nonnull @.str.77, i32 noundef %306, i32 noundef %308, i32 noundef %310) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr925.pr.pr.pr = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr925.pr.pr.pr)
  %tobool642.not = icmp eq i32 %.pr925.pr.pr.pr, 0
  br i1 %tobool642.not, label %do.body641.mthca_free_mailbox.exit_crit_edge, label %do.end646

do.body641.mthca_free_mailbox.exit_crit_edge:     ; preds = %do.body641
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

do.end646:                                        ; preds = %do.body641
  call void @__sanitizer_cov_trace_pc() #11
  %311 = ptrtoint ptr %pdev537 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %pdev537, align 8
  %dev648 = getelementptr inbounds %struct.pci_dev, ptr %312, i32 0, i32 44
  %313 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %flags, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev648, ptr noundef nonnull @.str.80, i32 noundef %314) #12
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %do.end646, %do.body641.mthca_free_mailbox.exit_crit_edge, %do.body627.mthca_free_mailbox.exit_crit_edge, %do.body614.mthca_free_mailbox.exit_crit_edge, %do.body600.mthca_free_mailbox.exit_crit_edge, %do.body587.mthca_free_mailbox.exit_crit_edge, %do.body573.mthca_free_mailbox.exit_crit_edge, %do.body559.mthca_free_mailbox.exit_crit_edge, %do.body545.mthca_free_mailbox.exit_crit_edge, %do.body531.mthca_free_mailbox.exit_crit_edge, %do.body487.mthca_free_mailbox.exit_crit_edge, %do.body475.mthca_free_mailbox.exit_crit_edge, %do.body457.mthca_free_mailbox.exit_crit_edge, %mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge
  %315 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %cmd.i, align 4
  %317 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %buf.i, align 4
  %319 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %316, ptr noundef %318, i32 noundef %320) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_free_mailbox.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i897, %mthca_free_mailbox.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_QUERY_ADAPTER(ptr noundef %dev, ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i60 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i60 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i.i, align 8
  %conv = zext i32 %8 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %9 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i47 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i47, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 6, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 6, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i48 = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i48)
  %tobool.not = icmp eq i32 %retval.0.i48, 0
  br i1 %tobool.not, label %if.end5, label %mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge

mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge: ; preds = %mthca_cmd_box.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

if.end5:                                          ; preds = %mthca_cmd_box.exit
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mthca_flags.i, align 8
  %and.i49 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool7.not = icmp eq i32 %and.i49, 0
  br i1 %tobool7.not, label %do.body, label %if.end5.do.body23_crit_edge

if.end5.do.body23_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %adapter, align 4
  %add.ptr12 = getelementptr i8, ptr %6, i32 4
  %17 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr12, align 4
  %device_id = getelementptr inbounds %struct.mthca_adapter, ptr %adapter, i32 0, i32 1
  %19 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %device_id, align 4
  %add.ptr18 = getelementptr i8, ptr %6, i32 8
  %20 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr18, align 4
  %revision_id = getelementptr inbounds %struct.mthca_adapter, ptr %adapter, i32 0, i32 2
  %22 = ptrtoint ptr %revision_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %revision_id, align 4
  br label %do.body23

do.body23:                                        ; preds = %do.body, %if.end5.do.body23_crit_edge
  %add.ptr25 = getelementptr i8, ptr %6, i32 16
  %23 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr25, align 1
  %inta_pin = getelementptr inbounds %struct.mthca_adapter, ptr %adapter, i32 0, i32 4
  %25 = ptrtoint ptr %inta_pin to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %inta_pin, align 4
  %add.ptr28 = getelementptr i32, ptr %6, i32 8
  %board_id = getelementptr inbounds %struct.mthca_adapter, ptr %adapter, i32 0, i32 3
  %26 = call ptr @memset(ptr %board_id, i32 0, i32 64)
  %27 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1453, i16 %28)
  %cmp.i50 = icmp eq i16 %28, 1453
  br i1 %cmp.i50, label %land.lhs.true.i, label %do.body23.if.else.i52_crit_edge

do.body23.if.else.i52_crit_edge:                  ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i52

land.lhs.true.i:                                  ; preds = %do.body23
  %add.ptr2.i = getelementptr i8, ptr %add.ptr28, i32 222
  %29 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1453, i16 %30)
  %cmp5.i = icmp eq i16 %30, 1453
  br i1 %cmp5.i, label %if.then.i51, label %land.lhs.true.i.if.else.i52_crit_edge

land.lhs.true.i.if.else.i52_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i52

if.then.i51:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr7.i = getelementptr i32, ptr %6, i32 16
  %call8.i = call i32 @strlcpy(ptr noundef %board_id, ptr noundef %add.ptr7.i, i32 noundef 64) #9
  br label %mthca_free_mailbox.exit

if.else.i52:                                      ; preds = %land.lhs.true.i.if.else.i52_crit_edge, %do.body23.if.else.i52_crit_edge
  %add.ptr11.i = getelementptr i32, ptr %6, i32 60
  %31 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr11.i, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = ptrtoint ptr %board_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %board_id, align 4
  %add.ptr12.1.i = getelementptr i32, ptr %6, i32 61
  %35 = ptrtoint ptr %add.ptr12.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr12.1.i, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #9
  %arrayidx.1.i = getelementptr %struct.mthca_adapter, ptr %adapter, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx.1.i, align 4
  %add.ptr12.2.i = getelementptr i32, ptr %6, i32 62
  %39 = ptrtoint ptr %add.ptr12.2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr12.2.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #9
  %arrayidx.2.i = getelementptr %struct.mthca_adapter, ptr %adapter, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx.2.i, align 4
  %add.ptr12.3.i = getelementptr i32, ptr %6, i32 63
  %43 = ptrtoint ptr %add.ptr12.3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr12.3.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #9
  %arrayidx.3.i = getelementptr %struct.mthca_adapter, ptr %adapter, i32 0, i32 3, i32 12
  %46 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx.3.i, align 4
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %if.else.i52, %if.then.i51, %mthca_cmd_box.exit.mthca_free_mailbox.exit_crit_edge
  %47 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cmd.i, align 4
  %49 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf.i, align 4
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %48, ptr noundef %50, i32 noundef %52) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_free_mailbox.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i48, %mthca_free_mailbox.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_INIT_HCA(ptr noundef %dev, ptr noundef readonly %param) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i227 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i227 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 512)
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mthca_flags, align 8
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %do.body

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %6, i32 12
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %add.ptr, align 4
  br label %if.end4

if.end4:                                          ; preds = %do.body, %if.end.if.end4_crit_edge
  %add.ptr5 = getelementptr i32, ptr %6, i32 5
  %11 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr5, align 4
  %or7 = or i32 %12, 3
  store i32 %or7, ptr %add.ptr5, align 4
  %device_cap_flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %device_cap_flags, align 4
  %and8 = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end4.do.body14_crit_edge, label %if.then10

if.end4.do.body14_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %or12 = or i32 %12, 59
  %15 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or12, ptr %add.ptr5, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.then10, %if.end4.do.body14_crit_edge
  %add.ptr16 = getelementptr i8, ptr %6, i32 48
  %16 = ptrtoint ptr %param to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %param, align 8
  %18 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %add.ptr16, align 8
  %add.ptr21 = getelementptr i8, ptr %6, i32 55
  %log_num_qps = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 15
  %19 = ptrtoint ptr %log_num_qps to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %log_num_qps, align 4
  %21 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %add.ptr21, align 1
  %add.ptr26 = getelementptr i8, ptr %6, i32 64
  %eec_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 1
  %22 = ptrtoint ptr %eec_base to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %eec_base, align 8
  %24 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %add.ptr26, align 8
  %add.ptr31 = getelementptr i8, ptr %6, i32 71
  %log_num_eecs = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 16
  %25 = ptrtoint ptr %log_num_eecs to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %log_num_eecs, align 1
  %27 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %add.ptr31, align 1
  %add.ptr36 = getelementptr i8, ptr %6, i32 72
  %srqc_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 2
  %28 = ptrtoint ptr %srqc_base to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %srqc_base, align 8
  %30 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %add.ptr36, align 8
  %add.ptr41 = getelementptr i8, ptr %6, i32 79
  %log_num_srqs = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 17
  %31 = ptrtoint ptr %log_num_srqs to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %log_num_srqs, align 2
  %33 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %add.ptr41, align 1
  %add.ptr46 = getelementptr i8, ptr %6, i32 80
  %cqc_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 3
  %34 = ptrtoint ptr %cqc_base to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %cqc_base, align 8
  %36 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %add.ptr46, align 8
  %add.ptr51 = getelementptr i8, ptr %6, i32 87
  %log_num_cqs = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 18
  %37 = ptrtoint ptr %log_num_cqs to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %log_num_cqs, align 1
  %39 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %add.ptr51, align 1
  %add.ptr56 = getelementptr i8, ptr %6, i32 96
  %eqpc_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 4
  %40 = ptrtoint ptr %eqpc_base to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %eqpc_base, align 8
  %42 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %add.ptr56, align 8
  %add.ptr61 = getelementptr i8, ptr %6, i32 112
  %eeec_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 5
  %43 = ptrtoint ptr %eeec_base to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %eeec_base, align 8
  %45 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %add.ptr61, align 8
  %add.ptr66 = getelementptr i8, ptr %6, i32 128
  %eqc_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 6
  %46 = ptrtoint ptr %eqc_base to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %eqc_base, align 8
  %48 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %add.ptr66, align 8
  %add.ptr71 = getelementptr i8, ptr %6, i32 135
  %log_num_eqs = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 19
  %49 = ptrtoint ptr %log_num_eqs to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %log_num_eqs, align 8
  %51 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %add.ptr71, align 1
  %add.ptr76 = getelementptr i8, ptr %6, i32 144
  %rdb_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 7
  %52 = ptrtoint ptr %rdb_base to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rdb_base, align 8
  %54 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %add.ptr76, align 8
  %add.ptr81 = getelementptr i8, ptr %6, i32 192
  %mc_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 8
  %55 = ptrtoint ptr %mc_base to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %mc_base, align 8
  %57 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %add.ptr81, align 8
  %add.ptr86 = getelementptr i8, ptr %6, i32 210
  %log_mc_entry_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 13
  %58 = ptrtoint ptr %log_mc_entry_sz to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %log_mc_entry_sz, align 8
  %60 = ptrtoint ptr %add.ptr86 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %add.ptr86, align 2
  %add.ptr91 = getelementptr i8, ptr %6, i32 214
  %mc_hash_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 14
  %61 = ptrtoint ptr %mc_hash_sz to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %mc_hash_sz, align 2
  %63 = ptrtoint ptr %add.ptr91 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %add.ptr91, align 2
  %add.ptr96 = getelementptr i8, ptr %6, i32 219
  %log_mc_table_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 20
  %64 = ptrtoint ptr %log_mc_table_sz to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %log_mc_table_sz, align 1
  %66 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %add.ptr96, align 1
  %add.ptr101 = getelementptr i8, ptr %6, i32 240
  %mpt_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 9
  %67 = ptrtoint ptr %mpt_base to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %mpt_base, align 8
  %69 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %add.ptr101, align 8
  %70 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mthca_flags, align 8
  %and.i = and i32 %71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool105.not = icmp eq i32 %and.i, 0
  br i1 %tobool105.not, label %do.body107, label %do.body14.do.body113_crit_edge

do.body14.do.body113_crit_edge:                   ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body113

do.body107:                                       ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr109 = getelementptr i8, ptr %6, i32 249
  %mtt_seg_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 21
  %72 = ptrtoint ptr %mtt_seg_sz to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mtt_seg_sz, align 2
  %74 = ptrtoint ptr %add.ptr109 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %add.ptr109, align 1
  br label %do.body113

do.body113:                                       ; preds = %do.body107, %do.body14.do.body113_crit_edge
  %add.ptr115 = getelementptr i8, ptr %6, i32 251
  %log_mpt_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 22
  %75 = ptrtoint ptr %log_mpt_sz to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %log_mpt_sz, align 1
  %77 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %add.ptr115, align 1
  %add.ptr120 = getelementptr i8, ptr %6, i32 256
  %mtt_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 10
  %78 = ptrtoint ptr %mtt_base to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %mtt_base, align 8
  %80 = ptrtoint ptr %add.ptr120 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %add.ptr120, align 8
  %add.ptr125 = getelementptr i8, ptr %6, i32 299
  %81 = ptrtoint ptr %add.ptr125 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %add.ptr125, align 1
  %add.ptr130 = getelementptr i8, ptr %6, i32 304
  %uar_scratch_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 11
  %82 = ptrtoint ptr %uar_scratch_base to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %uar_scratch_base, align 8
  %84 = ptrtoint ptr %add.ptr130 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %add.ptr130, align 8
  %85 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mthca_flags, align 8
  %and.i220 = and i32 %86, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i220)
  %tobool134.not = icmp eq i32 %and.i220, 0
  br i1 %tobool134.not, label %do.body113.if.end151_crit_edge, label %do.body136

do.body113.if.end151_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

do.body136:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr138 = getelementptr i8, ptr %6, i32 297
  %log_uarc_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 24
  %87 = ptrtoint ptr %log_uarc_sz to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %log_uarc_sz, align 1
  %89 = ptrtoint ptr %add.ptr138 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %add.ptr138, align 1
  %add.ptr143 = getelementptr i8, ptr %6, i32 298
  %log_uar_sz = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 23
  %90 = ptrtoint ptr %log_uar_sz to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %log_uar_sz, align 4
  %92 = ptrtoint ptr %add.ptr143 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %add.ptr143, align 1
  %add.ptr148 = getelementptr i8, ptr %6, i32 312
  %uarc_base = getelementptr inbounds %struct.mthca_init_hca_param, ptr %param, i32 0, i32 12
  %93 = ptrtoint ptr %uarc_base to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %uarc_base, align 8
  %95 = ptrtoint ptr %add.ptr148 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %add.ptr148, align 8
  br label %if.end151

if.end151:                                        ; preds = %do.body136, %do.body113.if.end151_crit_edge
  %96 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %call7.i.i, align 8
  %conv = zext i32 %97 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %98 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %99 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 7, i32 noundef 6000) #9
  br label %mthca_free_mailbox.exit

if.else.i.i:                                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 7, i32 noundef 6000) #9
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %101 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cmd.i, align 4
  %103 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %buf.i, align 4
  %105 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %102, ptr noundef %104, i32 noundef %106) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_free_mailbox.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i.i, %mthca_free_mailbox.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_INIT_IB(ptr noundef %dev, ptr nocapture noundef readonly %param, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i77 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i77 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 56)
  %set_guid0 = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param, i32 0, i32 5
  %8 = ptrtoint ptr %set_guid0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %set_guid0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool.not, i32 0, i32 65536
  %set_node_guid = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param, i32 0, i32 7
  %10 = ptrtoint ptr %set_node_guid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %set_node_guid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  %cond4 = select i1 %tobool3.not, i32 0, i32 131072
  %or5 = or i32 %cond4, %cond
  %set_si_guid = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param, i32 0, i32 9
  %12 = ptrtoint ptr %set_si_guid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set_si_guid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  %cond7 = select i1 %tobool6.not, i32 0, i32 262144
  %or8 = or i32 %or5, %cond7
  %vl_cap = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param, i32 0, i32 1
  %14 = ptrtoint ptr %vl_cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vl_cap, align 4
  %shl = shl i32 %15, 4
  %or9 = or i32 %or8, %shl
  %16 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %param, align 8
  %shl10 = shl i32 %17, 8
  %or11 = or i32 %or9, %shl10
  %mtu_cap = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param, i32 0, i32 2
  %18 = ptrtoint ptr %mtu_cap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mtu_cap, align 8
  %shl12 = shl i32 %19, 12
  %or13 = or i32 %or11, %shl12
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or13, ptr %6, align 4
  %add.ptr16 = getelementptr i8, ptr %6, i32 6
  %gid_cap = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param, i32 0, i32 3
  %21 = ptrtoint ptr %gid_cap to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %gid_cap, align 4
  %23 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %add.ptr16, align 2
  %add.ptr21 = getelementptr i8, ptr %6, i32 10
  %pkey_cap = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param, i32 0, i32 4
  %24 = ptrtoint ptr %pkey_cap to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pkey_cap, align 2
  %26 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %add.ptr21, align 2
  %add.ptr26 = getelementptr i8, ptr %6, i32 16
  %guid0 = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param, i32 0, i32 6
  %27 = ptrtoint ptr %guid0 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %guid0, align 8
  %29 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %add.ptr26, align 8
  %add.ptr31 = getelementptr i8, ptr %6, i32 24
  %node_guid = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param, i32 0, i32 8
  %30 = ptrtoint ptr %node_guid to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %node_guid, align 8
  %32 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %add.ptr31, align 8
  %add.ptr36 = getelementptr i8, ptr %6, i32 32
  %si_guid = getelementptr inbounds %struct.mthca_init_ib_param, ptr %param, i32 0, i32 10
  %33 = ptrtoint ptr %si_guid to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %si_guid, align 8
  %35 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %add.ptr36, align 8
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i.i, align 8
  %conv = zext i32 %37 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %38 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %port, i8 noundef zeroext 0, i16 noundef zeroext 9, i32 noundef 6000) #9
  br label %mthca_free_mailbox.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %port, i8 noundef zeroext 0, i16 noundef zeroext 9, i32 noundef 6000) #9
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %41 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cmd.i, align 4
  %43 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf.i, align 4
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %42, ptr noundef %44, i32 noundef %46) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_free_mailbox.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i.i, %mthca_free_mailbox.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_CLOSE_IB(ptr noundef %dev, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %0 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %port, i8 noundef zeroext 0, i16 noundef zeroext 10, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %port, i8 noundef zeroext 0, i16 noundef zeroext 10, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_CLOSE_HCA(ptr noundef %dev, i32 noundef %panic) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %panic to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %0 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %conv, i16 noundef zeroext 8, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %conv, i16 noundef zeroext 8, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_SET_IB(ptr noundef %dev, ptr nocapture noundef readonly %param, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i40 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i40 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 64)
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %param, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool.not, i32 0, i32 262144
  %reset_qkey_viol = getelementptr inbounds %struct.mthca_set_ib_param, ptr %param, i32 0, i32 1
  %10 = ptrtoint ptr %reset_qkey_viol to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reset_qkey_viol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp ne i32 %11, 0
  %cond4 = zext i1 %tobool3.not to i32
  %or5 = or i32 %cond, %cond4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or5, ptr %6, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 4
  %cap_mask = getelementptr inbounds %struct.mthca_set_ib_param, ptr %param, i32 0, i32 3
  %13 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cap_mask, align 8
  %15 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr8, align 4
  %add.ptr13 = getelementptr i8, ptr %6, i32 8
  %si_guid = getelementptr inbounds %struct.mthca_set_ib_param, ptr %param, i32 0, i32 2
  %16 = ptrtoint ptr %si_guid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %si_guid, align 8
  %18 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %add.ptr13, align 8
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call7.i.i, align 8
  %conv = zext i32 %20 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %21 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %port, i8 noundef zeroext 0, i16 noundef zeroext 12, i32 noundef 6000) #9
  br label %mthca_free_mailbox.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %port, i8 noundef zeroext 0, i16 noundef zeroext 12, i32 noundef 6000) #9
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %24 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd.i, align 4
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf.i, align 4
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %25, ptr noundef %27, i32 noundef %29) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_free_mailbox.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i.i, %mthca_free_mailbox.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_MAP_ICM(ptr noundef %dev, ptr noundef %icm, i64 noundef %virt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mthca_map_cmd(ptr noundef %dev, i16 noundef zeroext 4090, ptr noundef %icm, i64 noundef %virt)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_MAP_ICM_page(ptr noundef %dev, i64 noundef %dma_addr, i64 noundef %virt) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i33 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i33 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %virt, ptr %6, align 8
  %arrayidx3 = getelementptr i64, ptr %6, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %dma_addr, ptr %arrayidx3, align 8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call7.i.i, align 8
  %conv = zext i32 %10 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %11 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 0, i16 noundef zeroext 4090, i32 noundef 6000) #9
  br label %mthca_free_mailbox.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 0, i16 noundef zeroext 4090, i32 noundef 6000) #9
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %14 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd.i, align 4
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf.i, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %15, ptr noundef %17, i32 noundef %19) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not, label %do.body, label %mthca_free_mailbox.exit.cleanup_crit_edge

mthca_free_mailbox.exit.cleanup_crit_edge:        ; preds = %mthca_free_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %mthca_free_mailbox.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %20 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not = icmp eq i32 %20, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev9, ptr noundef nonnull @.str.82, i64 noundef %dma_addr, i64 noundef %virt) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %mthca_free_mailbox.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end ], [ %retval.0.i.i, %mthca_free_mailbox.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_UNMAP_ICM(ptr noundef %dev, i64 noundef %virt, i32 noundef %page_count) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %0 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev2, ptr noundef nonnull @.str.84, i32 noundef %page_count, i64 noundef %virt) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %3 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %virt, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %page_count, i8 noundef zeroext 0, i16 noundef zeroext 4089, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %virt, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %page_count, i8 noundef zeroext 0, i16 noundef zeroext 4089, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_MAP_ICM_AUX(ptr noundef %dev, ptr noundef %icm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mthca_map_cmd(ptr noundef %dev, i16 noundef zeroext 4092, ptr noundef %icm, i64 noundef -1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_UNMAP_ICM_AUX(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %0 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4091, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4091, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_SET_ICM_SIZE(ptr noundef %dev, i64 noundef %icm_size, ptr noundef %aux_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %icm_size, ptr noundef %aux_pages, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4093, i32 noundef 6000) #9
  br label %mthca_cmd_imm.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %icm_size, ptr noundef %aux_pages, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 4093, i32 noundef 6000) #9
  br label %mthca_cmd_imm.exit

mthca_cmd_imm.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_SW2HW_MPT(ptr noundef %dev, ptr nocapture noundef readonly %mailbox, i32 noundef %mpt_index) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %2 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %mpt_index, i8 noundef zeroext 0, i16 noundef zeroext 13, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %mpt_index, i8 noundef zeroext 0, i16 noundef zeroext 13, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_HW2SW_MPT(ptr noundef %dev, ptr noundef readonly %mailbox, i32 noundef %mpt_index) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mailbox, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %conv = zext i32 %cond to i64
  %conv2 = zext i1 %tobool.not to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %2 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %mpt_index, i8 noundef zeroext %conv2, i16 noundef zeroext 15, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %mpt_index, i8 noundef zeroext %conv2, i16 noundef zeroext 15, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_WRITE_MTT(ptr noundef %dev, ptr nocapture noundef readonly %mailbox, i32 noundef %num_mtt) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %2 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %num_mtt, i8 noundef zeroext 0, i16 noundef zeroext 17, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %num_mtt, i8 noundef zeroext 0, i16 noundef zeroext 17, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_SYNC_TPT(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %0 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 47, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 47, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_MAP_EQ(ptr noundef %dev, i64 noundef %event_mask, i32 noundef %unmap, i32 noundef %eq_num) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %0 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unmap)
  %tobool3.not = icmp eq i32 %unmap, 0
  %cond = select i1 %tobool3.not, ptr @.str.89, ptr @.str.88
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev2, ptr noundef nonnull @.str.86, ptr noundef nonnull %cond, i64 noundef %event_mask, i32 noundef %eq_num) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %shl = shl i32 %unmap, 31
  %or = or i32 %shl, %eq_num
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %3 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %event_mask, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %or, i8 noundef zeroext 0, i16 noundef zeroext 18, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %event_mask, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %or, i8 noundef zeroext 0, i16 noundef zeroext 18, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_SW2HW_EQ(ptr noundef %dev, ptr nocapture noundef readonly %mailbox, i32 noundef %eq_num) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %2 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %eq_num, i8 noundef zeroext 0, i16 noundef zeroext 19, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %eq_num, i8 noundef zeroext 0, i16 noundef zeroext 19, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_HW2SW_EQ(ptr noundef %dev, ptr nocapture noundef readonly %mailbox, i32 noundef %eq_num) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %2 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %eq_num, i8 noundef zeroext 0, i16 noundef zeroext 20, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %eq_num, i8 noundef zeroext 0, i16 noundef zeroext 20, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_SW2HW_CQ(ptr noundef %dev, ptr nocapture noundef readonly %mailbox, i32 noundef %cq_num) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %2 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %cq_num, i8 noundef zeroext 0, i16 noundef zeroext 22, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %cq_num, i8 noundef zeroext 0, i16 noundef zeroext 22, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_HW2SW_CQ(ptr noundef %dev, ptr nocapture noundef readonly %mailbox, i32 noundef %cq_num) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %2 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %cq_num, i8 noundef zeroext 0, i16 noundef zeroext 23, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %cq_num, i8 noundef zeroext 0, i16 noundef zeroext 23, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_RESIZE_CQ(ptr noundef %dev, i32 noundef %cq_num, i32 noundef %lkey, i8 noundef zeroext %log_size) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i25 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i25 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 64)
  %add.ptr = getelementptr i8, ptr %6, i32 12
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %log_size, ptr %add.ptr, align 1
  %add.ptr5 = getelementptr i8, ptr %6, i32 28
  %9 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %lkey, ptr %add.ptr5, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call7.i.i, align 8
  %conv = zext i32 %11 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %12 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %cq_num, i8 noundef zeroext 1, i16 noundef zeroext 44, i32 noundef 6000) #9
  br label %mthca_free_mailbox.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %cq_num, i8 noundef zeroext 1, i16 noundef zeroext 44, i32 noundef 6000) #9
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd.i, align 4
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf.i, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %16, ptr noundef %18, i32 noundef %20) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_free_mailbox.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i.i, %mthca_free_mailbox.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_SW2HW_SRQ(ptr noundef %dev, ptr nocapture noundef readonly %mailbox, i32 noundef %srq_num) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %2 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %srq_num, i8 noundef zeroext 0, i16 noundef zeroext 53, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %srq_num, i8 noundef zeroext 0, i16 noundef zeroext 53, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_HW2SW_SRQ(ptr noundef %dev, ptr nocapture noundef readonly %mailbox, i32 noundef %srq_num) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %2 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %srq_num, i8 noundef zeroext 0, i16 noundef zeroext 54, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %srq_num, i8 noundef zeroext 0, i16 noundef zeroext 54, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_QUERY_SRQ(ptr noundef %dev, i32 noundef %num, ptr nocapture noundef readonly %mailbox) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %2 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %num, i8 noundef zeroext 0, i16 noundef zeroext 55, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %num, i8 noundef zeroext 0, i16 noundef zeroext 55, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_ARM_SRQ(ptr noundef %dev, i32 noundef %srq_num, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %limit to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %0 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %srq_num, i8 noundef zeroext 0, i16 noundef zeroext 64, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %srq_num, i8 noundef zeroext 0, i16 noundef zeroext 64, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_MODIFY_QP(ptr noundef %dev, i32 noundef %cur, i32 noundef %next, i32 noundef %num, i32 noundef %is_ee, ptr noundef %mailbox, i32 noundef %optmask) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1 = getelementptr [7 x [7 x i16]], ptr @mthca_MODIFY_QP.op, i32 0, i32 %cur, i32 %next
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %1)
  %cmp = icmp eq i16 %1, 33
  br i1 %cmp, label %if.then, label %if.else17

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %mailbox, null
  br i1 %tobool.not, label %if.then3, label %if.then.cond.true_crit_edge

if.then.cond.true_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

if.then3:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then3.cond.end_crit_edge, label %if.end.i

if.then3.cond.end_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i:                                         ; preds = %if.then3
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %4, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cond.end

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.cond.end_crit_edge, label %mthca_alloc_mailbox.exit.cond.true_crit_edge

mthca_alloc_mailbox.exit.cond.true_crit_edge:     ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

mthca_alloc_mailbox.exit.cond.end_crit_edge:      ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %mthca_alloc_mailbox.exit.cond.true_crit_edge, %if.then.cond.true_crit_edge
  %op_mod.068 = phi i8 [ 2, %mthca_alloc_mailbox.exit.cond.true_crit_edge ], [ 3, %if.then.cond.true_crit_edge ]
  %mailbox.addr.067 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.cond.true_crit_edge ], [ %mailbox, %if.then.cond.true_crit_edge ]
  %6 = xor i1 %tobool.not, true
  %7 = ptrtoint ptr %mailbox.addr.067 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mailbox.addr.067, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %mthca_alloc_mailbox.exit.cond.end_crit_edge, %if.then5.i, %if.then3.cond.end_crit_edge
  %tobool7.not61 = phi i1 [ false, %cond.true ], [ true, %mthca_alloc_mailbox.exit.cond.end_crit_edge ], [ true, %if.then5.i ], [ true, %if.then3.cond.end_crit_edge ]
  %tobool14.not60 = phi i1 [ %6, %cond.true ], [ true, %mthca_alloc_mailbox.exit.cond.end_crit_edge ], [ true, %if.then5.i ], [ true, %if.then3.cond.end_crit_edge ]
  %op_mod.059 = phi i8 [ %op_mod.068, %cond.true ], [ 3, %mthca_alloc_mailbox.exit.cond.end_crit_edge ], [ 3, %if.then5.i ], [ 3, %if.then3.cond.end_crit_edge ]
  %mailbox.addr.058 = phi ptr [ %mailbox.addr.067, %cond.true ], [ null, %mthca_alloc_mailbox.exit.cond.end_crit_edge ], [ null, %if.then5.i ], [ null, %if.then3.cond.end_crit_edge ]
  %cond = phi i32 [ %8, %cond.true ], [ 0, %mthca_alloc_mailbox.exit.cond.end_crit_edge ], [ 0, %if.then5.i ], [ 0, %if.then3.cond.end_crit_edge ]
  %conv8 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_ee)
  %tobool9.not = icmp eq i32 %is_ee, 0
  %shl = select i1 %tobool9.not, i32 0, i32 16777216
  %or = or i32 %shl, %num
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %9 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv8, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i48 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i48, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %or, i8 noundef zeroext %op_mod.059, i16 noundef zeroext 33, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %or, i8 noundef zeroext %op_mod.059, i16 noundef zeroext 33, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i49 = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  %brmerge = or i1 %tobool7.not61, %tobool14.not60
  br i1 %brmerge, label %mthca_cmd_box.exit.if.end31_crit_edge, label %if.end.i53

mthca_cmd_box.exit.if.end31_crit_edge:            ; preds = %mthca_cmd_box.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end.i53:                                       ; preds = %mthca_cmd_box.exit
  call void @__sanitizer_cov_trace_pc() #11
  %cmd.i51 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %cmd.i51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd.i51, align 4
  %buf.i52 = getelementptr inbounds %struct.mthca_mailbox, ptr %mailbox.addr.058, i32 0, i32 1
  %14 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf.i52, align 4
  %16 = ptrtoint ptr %mailbox.addr.058 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mailbox.addr.058, align 4
  call void @dma_pool_free(ptr noundef %13, ptr noundef %15, i32 noundef %17) #9
  call void @kfree(ptr noundef nonnull %mailbox.addr.058) #9
  br label %if.end31

if.else17:                                        ; preds = %entry
  %18 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mailbox, align 4
  %conv19 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_ee)
  %tobool20.not = icmp eq i32 %is_ee, 0
  %shl25 = select i1 %tobool20.not, i32 0, i32 16777216
  %or26 = or i32 %optmask, %num
  %or27 = or i32 %or26, %shl25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %20 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv19, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %or27, i8 noundef zeroext 0, i16 noundef zeroext %1, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv19, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %or27, i8 noundef zeroext 0, i16 noundef zeroext %1, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  br label %if.end31

if.end31:                                         ; preds = %mthca_cmd.exit, %if.end.i53, %mthca_cmd_box.exit.if.end31_crit_edge
  %err.0 = phi i32 [ %retval.0.i49, %mthca_cmd_box.exit.if.end31_crit_edge ], [ %retval.0.i.i, %mthca_cmd.exit ], [ %retval.0.i49, %if.end.i53 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_QUERY_QP(ptr noundef %dev, i32 noundef %num, i32 noundef %is_ee, ptr nocapture noundef readonly %mailbox) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_ee)
  %tobool.not = icmp eq i32 %is_ee, 0
  %shl = select i1 %tobool.not, i32 0, i32 16777216
  %or = or i32 %shl, %num
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %2 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %or, i8 noundef zeroext 0, i16 noundef zeroext 34, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %or, i8 noundef zeroext 0, i16 noundef zeroext 34, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_CONF_SPECIAL_QP(ptr noundef %dev, i32 noundef %type, i32 noundef %qpn) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %0 = icmp ult i32 %type, 7
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %type to i8
  %switch.shifted = lshr i8 99, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.mthca_CONF_SPECIAL_QP, i32 0, i32 %type
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %3 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %qpn, i8 noundef zeroext %switch.load, i16 noundef zeroext 35, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %qpn, i8 noundef zeroext %switch.load, i16 noundef zeroext 35, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_cmd.exit, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %mthca_cmd.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_MAD_IFC(ptr noundef %dev, i32 noundef %ignore_mkey, i32 noundef %ignore_bkey, i32 noundef %port, ptr noundef readonly %in_wc, ptr noundef readonly %in_grh, ptr nocapture noundef readonly %in_mad, ptr nocapture noundef writeonly %response_mad) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd.i, align 4
  %call2.i = tail call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3264, ptr noundef nonnull %call7.i.i) #9
  %buf.i = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %buf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %mthca_alloc_mailbox.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then

mthca_alloc_mailbox.exit:                         ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mthca_alloc_mailbox.exit.if.then_crit_edge, label %if.end

mthca_alloc_mailbox.exit.if.then_crit_edge:       ; preds = %mthca_alloc_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mthca_alloc_mailbox.exit.if.then_crit_edge, %if.then5.i, %entry.if.then_crit_edge
  %retval.0.i158 = phi ptr [ %call7.i.i, %mthca_alloc_mailbox.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i158 to i32
  br label %cleanup

if.end:                                           ; preds = %mthca_alloc_mailbox.exit
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i121 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i122 = icmp eq ptr %call7.i.i121, null
  br i1 %tobool.not.i122, label %if.end.mthca_free_mailbox.exit_crit_edge, label %if.end.i127

if.end.mthca_free_mailbox.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

if.end.i127:                                      ; preds = %if.end
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd.i, align 4
  %call2.i124 = tail call ptr @dma_pool_alloc(ptr noundef %9, i32 noundef 3264, ptr noundef nonnull %call7.i.i121) #9
  %buf.i125 = getelementptr inbounds %struct.mthca_mailbox, ptr %call7.i.i121, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i125 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2.i124, ptr %buf.i125, align 4
  %tobool4.not.i126 = icmp eq ptr %call2.i124, null
  br i1 %tobool4.not.i126, label %if.then5.i128, label %mthca_alloc_mailbox.exit130

if.then5.i128:                                    ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i121) #9
  br label %mthca_free_mailbox.exit

mthca_alloc_mailbox.exit130:                      ; preds = %if.end.i127
  %cmp.i131 = icmp ugt ptr %call7.i.i121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %mthca_alloc_mailbox.exit130.mthca_free_mailbox.exit_crit_edge, label %if.end7

mthca_alloc_mailbox.exit130.mthca_free_mailbox.exit_crit_edge: ; preds = %mthca_alloc_mailbox.exit130
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit

mthca_free_mailbox.exit:                          ; preds = %mthca_alloc_mailbox.exit130.mthca_free_mailbox.exit_crit_edge, %if.then5.i128, %if.end.mthca_free_mailbox.exit_crit_edge
  %retval.0.i129161 = phi ptr [ %call7.i.i121, %mthca_alloc_mailbox.exit130.mthca_free_mailbox.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then5.i128 ], [ inttoptr (i32 -12 to ptr), %if.end.mthca_free_mailbox.exit_crit_edge ]
  %11 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd.i, align 4
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf.i, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call7.i.i, align 8
  tail call void @dma_pool_free(ptr noundef %12, ptr noundef %14, i32 noundef %16) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %17 = ptrtoint ptr %retval.0.i129161 to i32
  br label %cleanup

if.end7:                                          ; preds = %mthca_alloc_mailbox.exit130
  %18 = call ptr @memcpy(ptr %6, ptr %in_mad, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ignore_mkey)
  %tobool.not = icmp ne i32 %ignore_mkey, 0
  %tobool8.not = icmp eq ptr %in_wc, null
  %or.cond = or i1 %tobool.not, %tobool8.not
  %op_modifier.0 = zext i1 %or.cond to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ignore_bkey)
  %tobool12.not = icmp ne i32 %ignore_bkey, 0
  %or.cond120 = or i1 %tobool12.not, %tobool8.not
  %19 = or i8 %op_modifier.0, 2
  %op_modifier.1 = select i1 %or.cond120, i8 %19, i8 %op_modifier.0
  br i1 %tobool8.not, label %if.end7.if.end67_crit_edge, label %if.then21

if.end7.if.end67_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then21:                                        ; preds = %if.end7
  %add.ptr = getelementptr i8, ptr %6, i32 256
  %20 = call ptr @memset(ptr %add.ptr, i32 0, i32 256)
  %qp = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 5
  %21 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qp, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qp_num, align 4
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %add.ptr, align 4
  %add.ptr25 = getelementptr i8, ptr %6, i32 264
  %src_qp = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 7
  %26 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_qp, align 8
  %28 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr25, align 4
  %sl = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 11
  %29 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sl, align 2
  %shl = shl i8 %30, 4
  %add.ptr32 = getelementptr i8, ptr %6, i32 268
  %31 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %shl, ptr %add.ptr32, align 1
  %dlid_path_bits = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 12
  %32 = ptrtoint ptr %dlid_path_bits to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dlid_path_bits, align 1
  %wc_flags = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 9
  %34 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wc_flags, align 8
  %.tr = trunc i32 %35 to i8
  %36 = shl i8 %.tr, 7
  %conv38 = or i8 %36, %33
  %add.ptr41 = getelementptr i8, ptr %6, i32 269
  %37 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv38, ptr %add.ptr41, align 1
  %add.ptr46 = getelementptr i8, ptr %6, i32 270
  %slid = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 8
  %38 = ptrtoint ptr %slid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %39)
  %tobool.not.i136 = icmp ult i32 %39, 65536
  br i1 %tobool.not.i136, label %if.then21.ib_lid_cpu16.exit_crit_edge, label %land.rhs.i

if.then21.ib_lid_cpu16.exit_crit_edge:            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_lid_cpu16.exit

land.rhs.i:                                       ; preds = %if.then21
  %.b39.i = load i1, ptr @ib_lid_cpu16.__already_done, align 1
  br i1 %.b39.i, label %land.rhs.i.ib_lid_cpu16.exit_crit_edge, label %if.then.i, !prof !216

land.rhs.i.ib_lid_cpu16.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_lid_cpu16.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_lid_cpu16.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.112, i32 noundef 4605, i32 noundef 9, ptr noundef null) #9
  br label %ib_lid_cpu16.exit

ib_lid_cpu16.exit:                                ; preds = %if.then.i, %land.rhs.i.ib_lid_cpu16.exit_crit_edge, %if.then21.ib_lid_cpu16.exit_crit_edge
  %conv.i = trunc i32 %39 to i16
  %40 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %add.ptr46, align 2
  %add.ptr52 = getelementptr i8, ptr %6, i32 274
  %pkey_index = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 10
  %41 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pkey_index, align 4
  %43 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %add.ptr52, align 2
  %tobool55.not = icmp eq ptr %in_grh, null
  br i1 %tobool55.not, label %ib_lid_cpu16.exit.if.end58_crit_edge, label %if.then56

ib_lid_cpu16.exit.if.end58_crit_edge:             ; preds = %ib_lid_cpu16.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then56:                                        ; preds = %ib_lid_cpu16.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr57 = getelementptr i8, ptr %6, i32 320
  %44 = call ptr @memcpy(ptr %add.ptr57, ptr %in_grh, i32 40)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %ib_lid_cpu16.exit.if.end58_crit_edge
  %45 = or i8 %op_modifier.1, 4
  %46 = ptrtoint ptr %slid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %slid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %47)
  %tobool.not.i137 = icmp ult i32 %47, 65536
  br i1 %tobool.not.i137, label %if.end58.ib_lid_cpu16.exit142_crit_edge, label %land.rhs.i139

if.end58.ib_lid_cpu16.exit142_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_lid_cpu16.exit142

land.rhs.i139:                                    ; preds = %if.end58
  %.b39.i138 = load i1, ptr @ib_lid_cpu16.__already_done, align 1
  br i1 %.b39.i138, label %land.rhs.i139.ib_lid_cpu16.exit142_crit_edge, label %if.then.i140, !prof !216

land.rhs.i139.ib_lid_cpu16.exit142_crit_edge:     ; preds = %land.rhs.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_lid_cpu16.exit142

if.then.i140:                                     ; preds = %land.rhs.i139
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_lid_cpu16.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.112, i32 noundef 4605, i32 noundef 9, ptr noundef null) #9
  br label %ib_lid_cpu16.exit142

ib_lid_cpu16.exit142:                             ; preds = %if.then.i140, %land.rhs.i139.ib_lid_cpu16.exit142_crit_edge, %if.end58.ib_lid_cpu16.exit142_crit_edge
  %conv64 = shl i32 %47, 16
  %or66 = or i32 %conv64, %port
  br label %if.end67

if.end67:                                         ; preds = %ib_lid_cpu16.exit142, %if.end7.if.end67_crit_edge
  %op_modifier.2 = phi i8 [ %45, %ib_lid_cpu16.exit142 ], [ %19, %if.end7.if.end67_crit_edge ]
  %in_modifier.0 = phi i32 [ %or66, %ib_lid_cpu16.exit142 ], [ %port, %if.end7.if.end67_crit_edge ]
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call7.i.i, align 8
  %conv68 = zext i32 %49 to i64
  %50 = ptrtoint ptr %call7.i.i121 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call7.i.i121, align 8
  %conv70 = zext i32 %51 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %52 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv70, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i143 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i143, label %if.else.i, label %if.then.i144

if.then.i144:                                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv68, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %in_modifier.0, i8 noundef zeroext %op_modifier.2, i16 noundef zeroext 36, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv68, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %in_modifier.0, i8 noundef zeroext %op_modifier.2, i16 noundef zeroext 36, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i144
  %retval.0.i145 = phi i32 [ %call.i, %if.then.i144 ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i145)
  %tobool72.not = icmp eq i32 %retval.0.i145, 0
  br i1 %tobool72.not, label %if.then73, label %mthca_cmd_box.exit.mthca_free_mailbox.exit155_crit_edge

mthca_cmd_box.exit.mthca_free_mailbox.exit155_crit_edge: ; preds = %mthca_cmd_box.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_free_mailbox.exit155

if.then73:                                        ; preds = %mthca_cmd_box.exit
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %buf.i125 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buf.i125, align 4
  %57 = call ptr @memcpy(ptr %response_mad, ptr %56, i32 256)
  br label %mthca_free_mailbox.exit155

mthca_free_mailbox.exit155:                       ; preds = %if.then73, %mthca_cmd_box.exit.mthca_free_mailbox.exit155_crit_edge
  %58 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmd.i, align 4
  %60 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf.i, align 4
  %62 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %call7.i.i, align 8
  call void @dma_pool_free(ptr noundef %59, ptr noundef %61, i32 noundef %63) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %64 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cmd.i, align 4
  %66 = ptrtoint ptr %buf.i125 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf.i125, align 4
  %68 = ptrtoint ptr %call7.i.i121 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call7.i.i121, align 8
  call void @dma_pool_free(ptr noundef %65, ptr noundef %67, i32 noundef %69) #9
  call void @kfree(ptr noundef nonnull %call7.i.i121) #9
  br label %cleanup

cleanup:                                          ; preds = %mthca_free_mailbox.exit155, %mthca_free_mailbox.exit, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %17, %mthca_free_mailbox.exit ], [ %retval.0.i145, %mthca_free_mailbox.exit155 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_READ_MGM(ptr noundef %dev, i32 noundef %index, ptr nocapture noundef readonly %mailbox) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i)
  %2 = ptrtoint ptr %out_param.addr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %out_param.addr.i, align 8
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %index, i8 noundef zeroext 0, i16 noundef zeroext 37, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i, i32 noundef 0, i32 noundef %index, i8 noundef zeroext 0, i16 noundef zeroext 37, i32 noundef 6000) #9
  br label %mthca_cmd_box.exit

mthca_cmd_box.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_WRITE_MGM(ptr noundef %dev, i32 noundef %index, ptr nocapture noundef readonly %mailbox) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %2 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %index, i8 noundef zeroext 0, i16 noundef zeroext 38, i32 noundef 6000) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %index, i8 noundef zeroext 0, i16 noundef zeroext 38, i32 noundef 6000) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_MGID_HASH(ptr noundef %dev, ptr nocapture noundef readonly %mailbox, ptr nocapture noundef writeonly %hash) local_unnamed_addr #0 align 64 {
entry:
  %imm = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %imm) #9
  %0 = ptrtoint ptr %imm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %imm, align 8, !annotation !217
  %1 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mailbox, align 4
  %conv = zext i32 %2 to i64
  %flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %imm, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 39, i32 noundef 6000) #9
  br label %mthca_cmd_imm.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %conv, ptr noundef nonnull %imm, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 39, i32 noundef 6000) #9
  br label %mthca_cmd_imm.exit

mthca_cmd_imm.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  %5 = ptrtoint ptr %imm to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %imm, align 8
  %conv1 = trunc i64 %6 to i16
  %7 = ptrtoint ptr %hash to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1, ptr %hash, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %imm) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_NOP(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  %0 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %out_param.addr.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 31, i8 noundef zeroext 0, i16 noundef zeroext 49, i32 noundef 10) #9
  br label %mthca_cmd.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef 31, i8 noundef zeroext 0, i16 noundef zeroext 49, i32 noundef 10) #9
  br label %mthca_cmd.exit

mthca_cmd.exit:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #9
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_cmd_wait(ptr noundef %dev, i64 noundef %in_param, ptr noundef %out_param, i32 noundef %out_is_imm, i32 noundef %in_modifier, i8 noundef zeroext %op_modifier, i16 noundef zeroext %op, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %event_sem = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 3
  tail call void @down(ptr noundef %event_sem) #9
  %context_lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 5
  tail call void @_raw_spin_lock(ptr noundef %context_lock) #9
  %free_head = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 6
  %0 = ptrtoint ptr %free_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %do.body4, label %do.end9, !prof !215

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/hw/mthca/mthca_cmd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 421, 0\0A.popsection", ""() #9, !srcloc !219
  unreachable

do.end9:                                          ; preds = %entry
  %context11 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 7
  %2 = ptrtoint ptr %context11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context11, align 4
  %arrayidx = getelementptr %struct.mthca_cmd_context, ptr %3, i32 %1
  %token_mask = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 8
  %4 = ptrtoint ptr %token_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %token_mask, align 4
  %add = add i16 %5, 1
  %token = getelementptr %struct.mthca_cmd_context, ptr %3, i32 %1, i32 4
  %6 = ptrtoint ptr %token to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %token, align 8
  %add16 = add i16 %add, %7
  store i16 %add16, ptr %token, align 8
  %next = getelementptr %struct.mthca_cmd_context, ptr %3, i32 %1, i32 2
  %8 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next, align 4
  %10 = ptrtoint ptr %free_head to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %free_head, align 4
  tail call void @_raw_spin_unlock(ptr noundef %context_lock) #9
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %arrayidx, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @init_completion.__key) #9
  %tobool22.not = icmp eq ptr %out_param, null
  br i1 %tobool22.not, label %do.end9.cond.end_crit_edge, label %cond.true

do.end9.cond.end_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %out_param to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %out_param, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end9.cond.end_crit_edge
  %cond = phi i64 [ %13, %cond.true ], [ 0, %do.end9.cond.end_crit_edge ]
  %14 = ptrtoint ptr %token to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %token, align 8
  %call = tail call fastcc i32 @mthca_cmd_post(ptr noundef %dev, i64 noundef %in_param, i64 noundef %cond, i32 noundef %in_modifier, i8 noundef zeroext %op_modifier, i16 noundef zeroext %op, i16 noundef zeroext %15, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.end26, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end26:                                         ; preds = %cond.end
  %call28 = tail call i32 @wait_for_completion_timeout(ptr noundef %arrayidx, i32 noundef %timeout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.out_crit_edge, label %if.end31

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end31:                                         ; preds = %if.end26
  %result = getelementptr %struct.mthca_cmd_context, ptr %3, i32 %1, i32 1
  %16 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %result, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool32.not = icmp eq i32 %17, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end34:                                         ; preds = %if.end31
  %status = getelementptr %struct.mthca_cmd_context, ptr %3, i32 %1, i32 5
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool35.not = icmp eq i8 %19, 0
  br i1 %tobool35.not, label %if.end34.if.end52_crit_edge, label %do.body37

if.end34.if.end52_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body37:                                        ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %20 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool38.not = icmp eq i32 %20, 0
  br i1 %tobool38.not, label %do.body37.do.end49_crit_edge, label %do.end42

do.body37.do.end49_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

do.end42:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %conv44 = zext i16 %op to i32
  %conv46 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev43, ptr noundef nonnull @.str.92, i32 noundef %conv44, i32 noundef %conv46) #12
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %23)
  %.pr = load i8, ptr %status, align 2
  br label %do.end49

do.end49:                                         ; preds = %do.end42, %do.body37.do.end49_crit_edge
  %24 = phi i8 [ %.pr, %do.end42 ], [ %19, %do.body37.do.end49_crit_edge ]
  %conv.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %24)
  %cmp.i = icmp ugt i8 %24, 64
  br i1 %cmp.i, label %do.end49.if.end52_crit_edge, label %lor.lhs.false.i

do.end49.if.end52_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

lor.lhs.false.i:                                  ; preds = %do.end49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp3.not.i = icmp eq i8 %24, 0
  br i1 %cmp3.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr [65 x i32], ptr @mthca_status_to_errno.trans_table, i32 0, i32 %conv.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp5.i = icmp eq i32 %26, 0
  br i1 %cmp5.i, label %land.lhs.true.i.if.end52_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.if.end52_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %arrayidx8.i = getelementptr [65 x i32], ptr @mthca_status_to_errno.trans_table, i32 0, i32 %conv.i
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8.i, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end.i, %land.lhs.true.i.if.end52_crit_edge, %do.end49.if.end52_crit_edge, %if.end34.if.end52_crit_edge
  %err.0 = phi i32 [ 0, %if.end34.if.end52_crit_edge ], [ %28, %if.end.i ], [ -22, %land.lhs.true.i.if.end52_crit_edge ], [ -22, %do.end49.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_is_imm)
  %tobool53.not = icmp eq i32 %out_is_imm, 0
  %brmerge = or i1 %tobool22.not, %tobool53.not
  br i1 %brmerge, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %out_param56 = getelementptr %struct.mthca_cmd_context, ptr %3, i32 %1, i32 3
  %29 = ptrtoint ptr %out_param56 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %out_param56, align 8
  %31 = ptrtoint ptr %out_param to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %out_param, align 8
  br label %out

if.else:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select = select i1 %tobool53.not, i32 %err.0, i32 -22
  br label %out

out:                                              ; preds = %if.else, %if.then55, %if.end31.out_crit_edge, %if.end26.out_crit_edge, %cond.end.out_crit_edge
  %err.1 = phi i32 [ %call, %cond.end.out_crit_edge ], [ %17, %if.end31.out_crit_edge ], [ %err.0, %if.then55 ], [ -16, %if.end26.out_crit_edge ], [ %spec.select, %if.else ]
  tail call void @_raw_spin_lock(ptr noundef %context_lock) #9
  %32 = ptrtoint ptr %free_head to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %free_head, align 4
  %34 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %next, align 4
  %35 = ptrtoint ptr %context11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %context11, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 80
  store i32 %sub.ptr.div, ptr %free_head, align 4
  tail call void @_raw_spin_unlock(ptr noundef %context_lock) #9
  tail call void @up(ptr noundef %event_sem) #9
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_cmd_poll(ptr noundef %dev, i64 noundef %in_param, ptr noundef %out_param, i32 noundef %out_is_imm, i32 noundef %in_modifier, i8 noundef zeroext %op_modifier, i16 noundef zeroext %op, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_sem = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 2
  tail call void @down(ptr noundef %poll_sem) #9
  %tobool.not = icmp eq ptr %out_param, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %out_param to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %out_param, align 8
  %extract.t = trunc i64 %1 to i32
  %extract = lshr i64 %1, 32
  %extract.t134 = trunc i64 %extract to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond.off0 = phi i32 [ %extract.t, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %cond.off32 = phi i32 [ %extract.t134, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %hcr_mutex.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 1
  tail call void @mutex_lock_nested(ptr noundef %hcr_mutex.i, i32 noundef 0) #9
  %hcr.i112.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr.i113.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.i) #9, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  %5 = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool68.not.i = icmp eq i32 %5, 0
  br i1 %tobool68.not.i, label %if.end, label %mthca_cmd_post_hcr.exit

mthca_cmd_post_hcr.exit:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %hcr_mutex.i) #9
  br label %out

if.end:                                           ; preds = %cond.end
  %shr.i = lshr i64 %in_param, 32
  %conv.i130 = trunc i64 %shr.i to i32
  %6 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcr.i112.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %conv.i130) #9, !srcloc !222
  %conv71.i = trunc i64 %in_param to i32
  %8 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr73.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 %conv71.i) #9, !srcloc !222
  %10 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr75.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i, i32 %in_modifier) #9, !srcloc !222
  %12 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr79.i = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 %cond.off32) #9, !srcloc !222
  %14 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr83.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.i, i32 %cond.off0) #9, !srcloc !222
  %16 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr86.i = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86.i, i32 -65536) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %conv91.i = zext i8 %op_modifier to i32
  %shl92.i = shl nuw nsw i32 %conv91.i, 12
  %conv94.i = zext i16 %op to i32
  %or93.i = or i32 %shl92.i, %conv94.i
  %or95.i = or i32 %or93.i, 8388608
  %18 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr97.i = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97.i, i32 %or95.i) #9, !srcloc !222
  tail call void @mutex_unlock(ptr noundef %hcr_mutex.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %21 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr.i135 = getelementptr i8, ptr %22, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #9, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  %24 = and i32 %23, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool3.not136 = icmp eq i32 %24, 0
  br i1 %tobool3.not136, label %if.end.while.end_crit_edge, label %land.rhs.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end
  %25 = add i32 %20, %timeout
  br label %land.rhs

land.rhs:                                         ; preds = %__here.land.rhs_crit_edge, %land.rhs.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %26, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %__here, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

__here:                                           ; preds = %land.rhs
  %27 = tail call i32 @llvm.read_register.i32(metadata !205) #9
  %and.i126 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i126 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 212
  %31 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 ptrtoint (ptr blockaddress(@mthca_cmd_poll, %__here) to i32), ptr %task_state_change, align 4
  %32 = load ptr, ptr %task, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %32, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @schedule() #9
  %34 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr.i = getelementptr i8, ptr %35, i32 24
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  %37 = and i32 %36, 8388608
  %tobool3.not = icmp eq i32 %37, 0
  br i1 %tobool3.not, label %__here.while.end_crit_edge, label %__here.land.rhs_crit_edge

__here.land.rhs_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %__here.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end.while.end_crit_edge
  %38 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr.i128 = getelementptr i8, ptr %39, i32 24
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #9, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  %41 = and i32 %40, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool70.not = icmp eq i32 %41, 0
  br i1 %tobool70.not, label %if.end72, label %while.end.out_crit_edge

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end72:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_is_imm)
  %tobool73.not = icmp eq i32 %out_is_imm, 0
  %brmerge = or i1 %tobool.not, %tobool73.not
  br i1 %brmerge, label %if.else, label %if.then75

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr = getelementptr i8, ptr %43, i32 12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !220
  %conv = zext i32 %44 to i64
  %shl = shl nuw i64 %conv, 32
  %45 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr79 = getelementptr i8, ptr %46, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #9, !srcloc !220
  %conv81 = zext i32 %47 to i64
  %or = or i64 %shl, %conv81
  %48 = ptrtoint ptr %out_param to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %or, ptr %out_param, align 8
  br label %if.end85

if.else:                                          ; preds = %if.end72
  br i1 %tobool73.not, label %if.else.if.end85_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else.if.end85_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85:                                         ; preds = %if.else.if.end85_crit_edge, %if.then75
  %49 = ptrtoint ptr %hcr.i112.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hcr.i112.i, align 8
  %add.ptr87 = getelementptr i8, ptr %50, i32 24
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #9, !srcloc !220
  %shr = lshr i32 %51, 24
  %conv89 = trunc i32 %shr to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv89)
  %tobool90.not = icmp eq i8 %conv89, 0
  br i1 %tobool90.not, label %if.end85.out_crit_edge, label %do.body92

if.end85.out_crit_edge:                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body92:                                        ; preds = %if.end85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %52 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool93.not = icmp eq i32 %52, 0
  br i1 %tobool93.not, label %do.body92.do.end103_crit_edge, label %do.end97

do.body92.do.end103_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end103

do.end97:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %53 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev, align 8
  %dev98 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %dev98, ptr noundef nonnull @.str.92, i32 noundef %conv94.i, i32 noundef %shr) #12
  br label %do.end103

do.end103:                                        ; preds = %do.end97, %do.body92.do.end103_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv89)
  %cmp.i = icmp ugt i8 %conv89, 64
  br i1 %cmp.i, label %do.end103.out_crit_edge, label %land.lhs.true.i

do.end103.out_crit_edge:                          ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true.i:                                  ; preds = %do.end103
  %arrayidx.i = getelementptr [65 x i32], ptr @mthca_status_to_errno.trans_table, i32 0, i32 %shr
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp5.i = icmp eq i32 %56, 0
  br i1 %cmp5.i, label %land.lhs.true.i.out_crit_edge, label %if.end.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i, align 4
  br label %out

out:                                              ; preds = %if.end.i, %land.lhs.true.i.out_crit_edge, %do.end103.out_crit_edge, %if.end85.out_crit_edge, %if.else.out_crit_edge, %while.end.out_crit_edge, %mthca_cmd_post_hcr.exit
  %err.0 = phi i32 [ -11, %mthca_cmd_post_hcr.exit ], [ 0, %if.end85.out_crit_edge ], [ -16, %while.end.out_crit_edge ], [ -22, %if.else.out_crit_edge ], [ %58, %if.end.i ], [ -22, %land.lhs.true.i.out_crit_edge ], [ -22, %do.end103.out_crit_edge ]
  tail call void @up(ptr noundef %poll_sem) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_cmd_post(ptr noundef %dev, i64 noundef %in_param, i64 noundef %out_param, i32 noundef %in_modifier, i8 noundef zeroext %op_modifier, i16 noundef zeroext %op, i16 noundef zeroext %token, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hcr_mutex = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 1
  tail call void @mutex_lock_nested(ptr noundef %hcr_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool.not = icmp eq i32 %event, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr @fw_cmd_doorbell, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.else_crit_edge, label %if.then

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  %dbell_map.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 10
  %3 = ptrtoint ptr %dbell_map.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbell_map.i, align 4
  %dbell_offsets.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11
  %shr.i = lshr i64 %in_param, 32
  %conv.i = trunc i64 %shr.i to i32
  %5 = ptrtoint ptr %dbell_offsets.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dbell_offsets.i, align 2
  %conv2.i = zext i16 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv.i) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %conv3.i = trunc i64 %in_param to i32
  %arrayidx4.i = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 1
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx4.i, align 2
  %conv5.i = zext i16 %8 to i32
  %add.ptr6.i = getelementptr i8, ptr %4, i32 %conv5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %conv3.i) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  tail call void @arm_heavy_mb() #9
  %arrayidx10.i = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 2
  %9 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx10.i, align 2
  %conv11.i = zext i16 %10 to i32
  %add.ptr12.i = getelementptr i8, ptr %4, i32 %conv11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %in_modifier) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %shr16.i = lshr i64 %out_param, 32
  %conv17.i = trunc i64 %shr16.i to i32
  %arrayidx18.i = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 3
  %11 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx18.i, align 2
  %conv19.i = zext i16 %12 to i32
  %add.ptr20.i = getelementptr i8, ptr %4, i32 %conv19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %conv17.i) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  tail call void @arm_heavy_mb() #9
  %conv25.i = trunc i64 %out_param to i32
  %arrayidx26.i = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 4
  %13 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx26.i, align 2
  %conv27.i = zext i16 %14 to i32
  %add.ptr28.i = getelementptr i8, ptr %4, i32 %conv27.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %conv25.i) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !229
  tail call void @arm_heavy_mb() #9
  %conv32.i = zext i16 %token to i32
  %shl.i = shl nuw i32 %conv32.i, 16
  %arrayidx33.i = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 5
  %15 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx33.i, align 2
  %conv34.i = zext i16 %16 to i32
  %add.ptr35.i = getelementptr i8, ptr %4, i32 %conv34.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %shl.i) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @arm_heavy_mb() #9
  %conv39.i = zext i8 %op_modifier to i32
  %shl40.i = shl nuw nsw i32 %conv39.i, 12
  %conv41.i = zext i16 %op to i32
  %or.i = or i32 %shl40.i, %conv41.i
  %or42.i = or i32 %or.i, 12582912
  %arrayidx43.i = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 6
  %17 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx43.i, align 2
  %conv44.i = zext i16 %18 to i32
  %add.ptr45.i = getelementptr i8, ptr %4, i32 %conv44.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %or42.i) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  tail call void @arm_heavy_mb() #9
  %arrayidx49.i = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 17, i32 11, i32 7
  %19 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx49.i, align 2
  %conv50.i = zext i16 %20 to i32
  %add.ptr51.i = getelementptr i8, ptr %4, i32 %conv50.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 0) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call = tail call fastcc i32 @mthca_cmd_post_hcr(ptr noundef %dev, i64 noundef %in_param, i64 noundef %out_param, i32 noundef %in_modifier, i8 noundef zeroext %op_modifier, i16 noundef zeroext %op, i16 noundef zeroext %token, i32 noundef %event)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ 0, %if.then ], [ %call, %if.else ]
  tail call void @mutex_unlock(ptr noundef %hcr_mutex) #9
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_cmd_post_hcr(ptr nocapture noundef readonly %dev, i64 noundef %in_param, i64 noundef %out_param, i32 noundef %in_modifier, i8 noundef zeroext %op_modifier, i16 noundef zeroext %op, i16 noundef zeroext %token, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool.not = icmp eq i32 %event, 0
  br i1 %tobool.not, label %entry.if.end66_crit_edge, label %if.then

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %hcr.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 13
  %1 = ptrtoint ptr %hcr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hcr.i, align 8
  %add.ptr.i115 = getelementptr i8, ptr %2, i32 24
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #9, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  %4 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not116 = icmp eq i32 %4, 0
  br i1 %tobool1.not116, label %if.then.if.end66_crit_edge, label %land.rhs.lr.ph

if.then.if.end66_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.rhs.lr.ph:                                   ; preds = %if.then
  %add.neg = sub i32 -1000, %0
  br label %land.rhs

land.rhs:                                         ; preds = %__here.land.rhs_crit_edge, %land.rhs.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %__here, label %land.rhs.if.end66_crit_edge

land.rhs.if.end66_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

__here:                                           ; preds = %land.rhs
  %6 = tail call i32 @llvm.read_register.i32(metadata !205) #9
  %and.i111 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i111 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 212
  %10 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 ptrtoint (ptr blockaddress(@mthca_cmd_post_hcr, %__here) to i32), ptr %task_state_change, align 4
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %11, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !233
  tail call void @schedule() #9
  %13 = ptrtoint ptr %hcr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hcr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  %16 = and i32 %15, 8388608
  %tobool1.not = icmp eq i32 %16, 0
  br i1 %tobool1.not, label %__here.if.end66_crit_edge, label %__here.land.rhs_crit_edge

__here.land.rhs_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

__here.if.end66_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end66:                                         ; preds = %__here.if.end66_crit_edge, %land.rhs.if.end66_crit_edge, %if.then.if.end66_crit_edge, %entry.if.end66_crit_edge
  %hcr.i112 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 13
  %17 = ptrtoint ptr %hcr.i112 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hcr.i112, align 8
  %add.ptr.i113 = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #9, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  %20 = and i32 %19, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool68.not = icmp eq i32 %20, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.return_crit_edge

if.end66.return_crit_edge:                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i64 %in_param, 32
  %conv = trunc i64 %shr to i32
  %21 = ptrtoint ptr %hcr.i112 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hcr.i112, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %conv) #9, !srcloc !222
  %conv71 = trunc i64 %in_param to i32
  %23 = ptrtoint ptr %hcr.i112 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hcr.i112, align 8
  %add.ptr73 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %conv71) #9, !srcloc !222
  %25 = ptrtoint ptr %hcr.i112 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hcr.i112, align 8
  %add.ptr75 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %in_modifier) #9, !srcloc !222
  %shr76 = lshr i64 %out_param, 32
  %conv77 = trunc i64 %shr76 to i32
  %27 = ptrtoint ptr %hcr.i112 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hcr.i112, align 8
  %add.ptr79 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %conv77) #9, !srcloc !222
  %conv81 = trunc i64 %out_param to i32
  %29 = ptrtoint ptr %hcr.i112 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hcr.i112, align 8
  %add.ptr83 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %conv81) #9, !srcloc !222
  %conv84 = zext i16 %token to i32
  %shl = shl nuw i32 %conv84, 16
  %31 = ptrtoint ptr %hcr.i112 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hcr.i112, align 8
  %add.ptr86 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %shl) #9, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %or = select i1 %tobool.not, i32 8388608, i32 12582912
  %conv91 = zext i8 %op_modifier to i32
  %shl92 = shl nuw nsw i32 %conv91, 12
  %or93 = or i32 %or, %shl92
  %conv94 = zext i16 %op to i32
  %or95 = or i32 %or93, %conv94
  %33 = ptrtoint ptr %hcr.i112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hcr.i112, align 8
  %add.ptr97 = getelementptr i8, ptr %34, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %or95) #9, !srcloc !222
  br label %return

return:                                           ; preds = %if.end70, %if.end66.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end70 ], [ -11, %if.end66.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !149, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166, !168, !170, !172, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204}
!llvm.named.register.sp = !{!205}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !{ptr @__param_fw_cmd_doorbell, !1, !"__param_fw_cmd_doorbell", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 188, i32 1}
!2 = !{ptr @__UNIQUE_ID_fw_cmd_doorbelltype496, !1, !"__UNIQUE_ID_fw_cmd_doorbelltype496", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fw_cmd_doorbell497, !4, !"__UNIQUE_ID_fw_cmd_doorbell497", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 189, i32 1}
!5 = !{ptr @mthca_cmd_init.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 524, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 531, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mthca_cmd_init._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @mthca_cmd_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 535, i32 34}
!18 = !{ptr @mthca_cmd_use_events.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 577, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 644, i32 3}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mthca_SYS_EN._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @mthca_SYS_EN._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 828, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mthca_QUERY_FW._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @mthca_QUERY_FW._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 834, i32 2}
!37 = !{ptr @mthca_QUERY_FW._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mthca_QUERY_FW._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 839, i32 3}
!41 = !{ptr @mthca_QUERY_FW._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mthca_QUERY_FW._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 854, i32 3}
!45 = !{ptr @mthca_QUERY_FW._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mthca_QUERY_FW._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 864, i32 3}
!49 = !{ptr @mthca_QUERY_FW._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mthca_QUERY_FW._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 872, i32 3}
!53 = !{ptr @mthca_QUERY_FW._entry.28, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mthca_QUERY_FW._entry_ptr.30, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 915, i32 3}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mthca_ENABLE_LAM._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @mthca_ENABLE_LAM._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 921, i32 3}
!65 = !{ptr @mthca_ENABLE_LAM._entry.36, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mthca_ENABLE_LAM._entry_ptr.38, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 923, i32 2}
!69 = !{ptr @mthca_ENABLE_LAM._entry.39, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mthca_ENABLE_LAM._entry_ptr.41, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 970, i32 3}
!73 = !{ptr @mthca_QUERY_DDR._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mthca_QUERY_DDR._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @mthca_QUERY_DDR._entry.43, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 976, i32 3}
!77 = !{ptr @mthca_QUERY_DDR._entry_ptr.44, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @mthca_QUERY_DDR._entry.45, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 978, i32 2}
!80 = !{ptr @mthca_QUERY_DDR._entry_ptr.46, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1196, i32 4}
!83 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mthca_QUERY_DEV_LIM._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1202, i32 4}
!88 = !{ptr @mthca_QUERY_DEV_LIM._entry.49, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr.51, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1204, i32 3}
!92 = !{ptr @mthca_QUERY_DEV_LIM._entry.52, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr.54, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1216, i32 2}
!96 = !{ptr @mthca_QUERY_DEV_LIM._entry.55, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr.57, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.59, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1218, i32 2}
!100 = !{ptr @mthca_QUERY_DEV_LIM._entry.58, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr.60, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.62, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1220, i32 2}
!104 = !{ptr @mthca_QUERY_DEV_LIM._entry.61, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr.63, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.65, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1222, i32 2}
!108 = !{ptr @mthca_QUERY_DEV_LIM._entry.64, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr.66, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.68, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1224, i32 2}
!112 = !{ptr @mthca_QUERY_DEV_LIM._entry.67, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr.69, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1226, i32 2}
!116 = !{ptr @mthca_QUERY_DEV_LIM._entry.70, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr.72, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1228, i32 2}
!120 = !{ptr @mthca_QUERY_DEV_LIM._entry.73, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr.75, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.77, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1230, i32 2}
!124 = !{ptr @mthca_QUERY_DEV_LIM._entry.76, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr.78, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.80, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1233, i32 2}
!128 = !{ptr @mthca_QUERY_DEV_LIM._entry.79, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mthca_QUERY_DEV_LIM._entry_ptr.81, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.82, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1559, i32 3}
!132 = !{ptr @.str.83, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @mthca_MAP_ICM_page._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @mthca_MAP_ICM_page._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.84, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1567, i32 2}
!137 = !{ptr @.str.85, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mthca_UNMAP_ICM._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @mthca_UNMAP_ICM._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.86, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1632, i32 2}
!142 = !{ptr @.str.87, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @mthca_MAP_EQ._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @mthca_MAP_EQ._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.88, !141, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.89, !141, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mthca_MODIFY_QP.op, !148, !"op", i1 false, i1 false}
!148 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 1731, i32 19}
!149 = !{ptr @__param_str_fw_cmd_doorbell, !1, !"__param_str_fw_cmd_doorbell", i1 false, i1 false}
!150 = !{ptr @fw_cmd_doorbell, !151, !"fw_cmd_doorbell", i1 false, i1 false}
!151 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 187, i32 12}
!152 = !{ptr @sema_init.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!154 = !{ptr @.str.90, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!156 = !{ptr @.str.91, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!158 = !{ptr @.str.92, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 446, i32 3}
!160 = !{ptr @.str.93, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @mthca_cmd_wait._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @mthca_cmd_wait._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @init_completion.__key, !164, !"__key", i1 false, i1 false}
!164 = !{!"../include/linux/completion.h", i32 87, i32 2}
!165 = !{ptr @.str.94, !164, !"<string literal>", i1 false, i1 false}
!166 = distinct !{null, !167, !"__already_done", i1 false, i1 false}
!167 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 243, i32 4}
!168 = !{ptr @mthca_status_to_errno.trans_table, !169, !"trans_table", i1 false, i1 false}
!169 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 302, i32 19}
!170 = distinct !{null, !171, !"__already_done", i1 false, i1 false}
!171 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 355, i32 3}
!172 = !{ptr @.str.95, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 377, i32 3}
!174 = !{ptr @mthca_cmd_poll._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @mthca_cmd_poll._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.96, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 685, i32 4}
!178 = !{ptr @.str.97, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @mthca_map_cmd._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @mthca_map_cmd._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.99, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 720, i32 3}
!183 = !{ptr @mthca_map_cmd._entry.98, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @mthca_map_cmd._entry_ptr.100, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.102, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 723, i32 3}
!187 = !{ptr @mthca_map_cmd._entry.101, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @mthca_map_cmd._entry_ptr.103, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.105, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 726, i32 3}
!191 = !{ptr @mthca_map_cmd._entry.104, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @mthca_map_cmd._entry_ptr.106, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.107, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 761, i32 3}
!195 = !{ptr @.str.108, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @mthca_setup_cmd_doorbells._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @mthca_setup_cmd_doorbells._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.110, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/infiniband/hw/mthca/mthca_cmd.c", i32 774, i32 2}
!200 = !{ptr @mthca_setup_cmd_doorbells._entry.109, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @mthca_setup_cmd_doorbells._entry_ptr.111, !199, !"_entry_ptr", i1 false, i1 false}
!202 = distinct !{null, !203, !"__already_done", i1 false, i1 false}
!203 = !{!"../include/rdma/ib_verbs.h", i32 4605, i32 2}
!204 = !{ptr @.str.112, !203, !"<string literal>", i1 false, i1 false}
!205 = !{!"sp"}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!215 = !{!"branch_weights", i32 1, i32 2000}
!216 = !{!"branch_weights", i32 2000, i32 1}
!217 = !{!"auto-init"}
!218 = !{i32 0, i32 33}
!219 = !{i64 2158240473, i64 2158240977, i64 2158240510, i64 2158240566, i64 2158240600, i64 2158240624, i64 2158240665, i64 2158240686, i64 2158240714, i64 2158240748}
!220 = !{i64 5036969}
!221 = !{i64 2158220489}
!222 = !{i64 5036551}
!223 = !{i64 2158228079}
!224 = !{i64 2158237925}
!225 = !{i64 2158220770}
!226 = !{i64 2158220998}
!227 = !{i64 2158221214}
!228 = !{i64 2158221434}
!229 = !{i64 2158221663}
!230 = !{i64 2158221879}
!231 = !{i64 2158222221}
!232 = !{i64 2158222382}
!233 = !{i64 2158227488}
