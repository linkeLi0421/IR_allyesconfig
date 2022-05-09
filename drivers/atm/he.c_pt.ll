; ModuleID = '/llk/IR_all_yes/drivers/atm/he.c_pt.bc'
source_filename = "../drivers/atm/he.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.145, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.145 = type { ptr }
%struct.he_dev = type { i32, i32, ptr, [30 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x %struct.he_cs_stper], i32, i32, ptr, ptr, ptr, ptr, i32, %struct.tasklet_struct, ptr, %struct.list_head, i32, ptr, ptr, ptr, %struct.spinlock, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.list_head, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.he_cs_stper = type { i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.153, i32 }
%union.anon.153 = type { ptr }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.atmphy_ops = type { ptr, ptr, ptr, ptr }
%struct.he_irq = type { i32 }
%struct.he_buff = type { %struct.list_head, i32, i32, [0 x i8] }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.146, i8, %union.anon.148 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i8, i8 }
%union.anon.148 = type { %struct.anon.151 }
%struct.anon.151 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.152 }
%struct.anon.152 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.he_vcc = type { %struct.list_head, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.108 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.he_tpd = type { i32, i32, [3 x %struct.anon.154], ptr, ptr, %struct.list_head }
%struct.anon.154 = type { i32, i32 }
%struct.he_ioctl_reg = type { i32, i32, i8 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.he_tpdrq = type { i32, i32 }
%struct.he_hsp_entry = type { i32, [15 x i32], i32, [15 x i32] }
%struct.he_rbrq = type { i32, i32 }
%struct.he_rbp = type { i32, i32 }
%struct.he_tbrq = type { i32 }

@__UNIQUE_ID_file463 = internal constant [23 x i8] c"he.file=drivers/atm/he\00", section ".modinfo", align 1
@__UNIQUE_ID_license464 = internal constant [15 x i8] c"he.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author465 = internal constant [48 x i8] c"he.author=chas williams <chas@cmf.nrl.navy.mil>\00", section ".modinfo", align 1
@__UNIQUE_ID_description466 = internal constant [47 x i8] c"he.description=ForeRunnerHE ATM Adapter driver\00", section ".modinfo", align 1
@__param_str_disable64 = internal constant [13 x i8] c"he.disable64\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable64 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable64 = internal constant %struct.kernel_param { ptr @__param_str_disable64, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @disable64 } }, section "__param", align 4
@__UNIQUE_ID_disable64type467 = internal constant [27 x i8] c"he.parmtype=disable64:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable64468 = internal constant [51 x i8] c"he.parm=disable64:disable 64-bit pci bus transfers\00", section ".modinfo", align 1
@__param_str_nvpibits = internal constant [12 x i8] c"he.nvpibits\00", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@nvpibits = internal global { i16, [30 x i8] } { i16 -1, [30 x i8] zeroinitializer }, align 32
@__param_nvpibits = internal constant %struct.kernel_param { ptr @__param_str_nvpibits, ptr null, ptr @param_ops_short, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @nvpibits } }, section "__param", align 4
@__UNIQUE_ID_nvpibitstype469 = internal constant [27 x i8] c"he.parmtype=nvpibits:short\00", section ".modinfo", align 1
@__UNIQUE_ID_nvpibits470 = internal constant [53 x i8] c"he.parm=nvpibits:numbers of bits for vpi (default 0)\00", section ".modinfo", align 1
@__param_str_nvcibits = internal constant [12 x i8] c"he.nvcibits\00", align 1
@nvcibits = internal global { i16, [30 x i8] } { i16 -1, [30 x i8] zeroinitializer }, align 32
@__param_nvcibits = internal constant %struct.kernel_param { ptr @__param_str_nvcibits, ptr null, ptr @param_ops_short, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @nvcibits } }, section "__param", align 4
@__UNIQUE_ID_nvcibitstype471 = internal constant [27 x i8] c"he.parmtype=nvcibits:short\00", section ".modinfo", align 1
@__UNIQUE_ID_nvcibits472 = internal constant [54 x i8] c"he.parm=nvcibits:numbers of bits for vci (default 12)\00", section ".modinfo", align 1
@__param_str_rx_skb_reserve = internal constant [18 x i8] c"he.rx_skb_reserve\00", align 1
@rx_skb_reserve = internal global { i16, [30 x i8] } { i16 16, [30 x i8] zeroinitializer }, align 32
@__param_rx_skb_reserve = internal constant %struct.kernel_param { ptr @__param_str_rx_skb_reserve, ptr null, ptr @param_ops_short, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @rx_skb_reserve } }, section "__param", align 4
@__UNIQUE_ID_rx_skb_reservetype473 = internal constant [33 x i8] c"he.parmtype=rx_skb_reserve:short\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_skb_reserve474 = internal constant [60 x i8] c"he.parm=rx_skb_reserve:padding for receive skb (default 16)\00", section ".modinfo", align 1
@__param_str_irq_coalesce = internal constant [16 x i8] c"he.irq_coalesce\00", align 1
@irq_coalesce = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_irq_coalesce = internal constant %struct.kernel_param { ptr @__param_str_irq_coalesce, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @irq_coalesce } }, section "__param", align 4
@__UNIQUE_ID_irq_coalescetype475 = internal constant [30 x i8] c"he.parmtype=irq_coalesce:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_coalesce476 = internal constant [58 x i8] c"he.parm=irq_coalesce:use interrupt coalescing (default 1)\00", section ".modinfo", align 1
@__param_str_sdh = internal constant [7 x i8] c"he.sdh\00", align 1
@sdh = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_sdh = internal constant %struct.kernel_param { ptr @__param_str_sdh, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @sdh } }, section "__param", align 4
@__UNIQUE_ID_sdhtype477 = internal constant [21 x i8] c"he.parmtype=sdh:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_sdh478 = internal constant [40 x i8] c"he.parm=sdh:use SDH framing (default 0)\00", section ".modinfo", align 1
@__initcall__kmod_he__479_2866_he_driver_init6 = internal global ptr @he_driver_init, section ".initcall6.init", align 4
@he_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @he_pci_tbl, ptr @he_init_one, ptr @he_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_he_driver_exit = internal global ptr @he_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"he\00", [29 x i8] zeroinitializer }, align 32
@he_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4391, i32 1024, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@he_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016ATM he driver\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"he_init_one\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drivers/atm/he.c\00", [47 x i8] zeroinitializer }, align 32
@he_init_one._entry_ptr = internal global ptr @he_init_one._entry, section ".printk_index", align 4
@he_init_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014he: no suitable dma available\0A\00", [63 x i8] zeroinitializer }, align 32
@he_init_one._entry_ptr.6 = internal global ptr @he_init_one._entry.4, section ".printk_index", align 4
@he_ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr null, ptr @he_open, ptr @he_close, ptr @he_ioctl, ptr @he_send, ptr null, ptr null, ptr @he_phy_put, ptr @he_phy_get, ptr null, ptr @he_proc_read, ptr null }, [48 x i8] zeroinitializer }, align 32
@he_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&he_dev->global_lock\00", [43 x i8] zeroinitializer }, align 32
@he_devs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@he_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 2139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013he%d: unable to allocate he_vcc during open\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"he_open\00", [24 x i8] zeroinitializer }, align 32
@he_open._entry_ptr = internal global ptr @he_open._entry, section ".printk_index", align 4
@he_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&he_vcc->rx_waitq\00", [46 x i8] zeroinitializer }, align 32
@he_open.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&he_vcc->tx_waitq\00", [46 x i8] zeroinitializer }, align 32
@he_open._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 2182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013he%d: cid 0x%x not idle (tsr0 = 0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@he_open._entry_ptr.15 = internal global ptr @he_open._entry.13, section ".printk_index", align 4
@he_open._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.3, i32 2292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013he%d: cid 0x%x not idle (rsr0 = 0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@he_open._entry_ptr.18 = internal global ptr @he_open._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@he_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 2376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013he%d: close rx timeout cid 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"he_close\00", [23 x i8] zeroinitializer }, align 32
@he_close._entry_ptr = internal global ptr @he_close._entry, section ".printk_index", align 4
@he_close._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 2407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013he%d: close tx cid 0x%x tx_inuse = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@he_close._entry_ptr.24 = internal global ptr @he_close._entry.22, section ".printk_index", align 4
@he_close._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 2429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013he%d: close tx he_alloc_tpd failed cid 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@he_close._entry_ptr.27 = internal global ptr @he_close._entry.25, section ".printk_index", align 4
@he_close._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.3, i32 2450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013he%d: close tx timeout cid 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@he_close._entry_ptr.32 = internal global ptr @he_close._entry.30, section ".printk_index", align 4
@he_close._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.21, ptr @.str.3, i32 2472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013he%d: cs_stper[%d].inuse = 0!\0A\00", [63 x i8] zeroinitializer }, align 32
@he_close._entry_ptr.35 = internal global ptr @he_close._entry.33, section ".printk_index", align 4
@__enqueue_tpd._entry = internal constant %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 2079, ptr null, ptr null }, align 1
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013he%d: tpdrq full (cid 0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__enqueue_tpd\00", [18 x i8] zeroinitializer }, align 32
@__enqueue_tpd._entry_ptr = internal global ptr @__enqueue_tpd._entry, section ".printk_index", align 4
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@he_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 2505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013he%d: buffer too large (or small) -- %d bytes\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"he_send\00", [24 x i8] zeroinitializer }, align 32
@he_send._entry_ptr = internal global ptr @he_send._entry, section ".printk_index", align 4
@he_send._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 2516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013he%d: no scatter/gather support\0A\00", [61 x i8] zeroinitializer }, align 32
@he_send._entry_ptr.45 = internal global ptr @he_send._entry.43, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@he_proc_read.mcc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@he_proc_read.oec = internal global { i32, [28 x i8] } zeroinitializer, align 32
@he_proc_read.dcc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@he_proc_read.cec = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ATM he driver\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%s\0A\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SM\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MM\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Mismatched Cells  VPI/VCI Not Open  Dropped Cells  RCM Dropped Cells\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%16ld  %16ld  %13ld  %17ld\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"irq_size = %d  inuse = ?  peak = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tpdrq_size = %d  inuse = ?\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rbrq_size = %d  inuse = ?  peak = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tbrq_size = %d  peak = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"rate controller periods (cbr)\0A                 pcr  #vc\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cs_stper%-2d  %8ld  %3d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"total bw (cbr): %d  (limit %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@he_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 1976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013he%d: parity error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"he_tasklet\00", [21 x i8] zeroinitializer }, align 32
@he_tasklet._entry_ptr = internal global ptr @he_tasklet._entry, section ".printk_index", align 4
@he_tasklet._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013he%d: abort 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@he_tasklet._entry_ptr.65 = internal global ptr @he_tasklet._entry.63, section ".printk_index", align 4
@he_tasklet._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 1993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013he%d: bad isw 0x%x?\0A\00", [41 x i8] zeroinitializer }, align 32
@he_tasklet._entry_ptr.68 = internal global ptr @he_tasklet._entry.66, section ".printk_index", align 4
@vcc_sklist_lock = external dso_local global %struct.rwlock_t, align 4
@he_service_rbrq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013he%d: vcc/he_vcc == NULL  (cid 0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"he_service_rbrq\00", [16 x i8] zeroinitializer }, align 32
@he_service_rbrq._entry_ptr = internal global ptr @he_service_rbrq._entry, section ".printk_index", align 4
@he_service_rbrq._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.3, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013he%d: HBUF_ERR!  (cid 0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@he_service_rbrq._entry_ptr.73 = internal global ptr @he_service_rbrq._entry.71, section ".printk_index", align 4
@vcc_hash = external dso_local local_unnamed_addr global [32 x %struct.hlist_head], align 4
@he_service_tbrq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013he%d: unable to locate tpd for dma buffer %x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"he_service_tbrq\00", [16 x i8] zeroinitializer }, align 32
@he_service_tbrq._entry_ptr = internal global ptr @he_service_tbrq._entry, section ".printk_index", align 4
@he_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013he%d: can't read GEN_CNTL_0\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"he_start\00", [23 x i8] zeroinitializer }, align 32
@he_start._entry_ptr = internal global ptr @he_start._entry, section ".printk_index", align 4
@he_start._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.3, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013he%d: can't write GEN_CNTL_0.\0A\00", [63 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.80 = internal global ptr @he_start._entry.78, section ".printk_index", align 4
@he_start._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.3, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013he%d: can't read PCI_COMMAND.\0A\00", [63 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.83 = internal global ptr @he_start._entry.81, section ".printk_index", align 4
@he_start._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.3, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013he%d: can't enable memory.\0A\00", [34 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.86 = internal global ptr @he_start._entry.84, section ".printk_index", align 4
@he_start._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.77, ptr @.str.3, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013he%d: can't read cache line size?\0A\00", [59 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.89 = internal global ptr @he_start._entry.87, section ".printk_index", align 4
@he_start._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.77, ptr @.str.3, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013he%d: can't set cache line size to %d\0A\00", [55 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.92 = internal global ptr @he_start._entry.90, section ".printk_index", align 4
@he_start._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.77, ptr @.str.3, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013he%d: can't read latency timer?\0A\00", [61 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.95 = internal global ptr @he_start._entry.93, section ".printk_index", align 4
@he_start._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.77, ptr @.str.3, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013he%d: can't set latency timer to %d\0A\00", [57 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.98 = internal global ptr @he_start._entry.96, section ".printk_index", align 4
@he_start._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.77, ptr @.str.3, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013he%d: can't set up page mapping\0A\00", [61 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.101 = internal global ptr @he_start._entry.99, section ".printk_index", align 4
@he_start._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.77, ptr @.str.3, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013he%d: reset failed\0A\00", [42 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.104 = internal global ptr @he_start._entry.102, section ".printk_index", align 4
@he_start._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.77, ptr @.str.3, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013he%d: disabling 64-bit pci bus transfers\0A\00", [52 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.107 = internal global ptr @he_start._entry.105, section ".printk_index", align 4
@he_start._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.77, ptr @.str.3, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013he%d: 64-bit transfers enabled\0A\00", [62 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.110 = internal global ptr @he_start._entry.108, section ".printk_index", align 4
@he_start._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.77, ptr @.str.3, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013he%d: %s%s, %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.113 = internal global ptr @he_start._entry.111, section ".printk_index", align 4
@he_start._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.77, ptr @.str.3, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013he%d: nvpibits + nvcibits != %d\0A\00", [61 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.116 = internal global ptr @he_start._entry.114, section ".printk_index", align 4
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tpd\00", [28 x i8] zeroinitializer }, align 32
@he_start._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.77, ptr @.str.3, i32 1429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013he%d: unable to create tpd dma_pool\0A\00", [57 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.120 = internal global ptr @he_start._entry.118, section ".printk_index", align 4
@he_start._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.77, ptr @.str.3, i32 1470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013he%d: failed to allocate host status page\0A\00", [51 x i8] zeroinitializer }, align 32
@he_start._entry_ptr.123 = internal global ptr @he_start._entry.121, section ".printk_index", align 4
@readtab = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 4352, i32 0, i32 256, i32 0, i32 256, i32 0, i32 256, i32 0, i32 256, i32 0, i32 256, i32 0, i32 256, i32 512, i32 768, i32 512, i32 768], [60 x i8] zeroinitializer }, align 32
@clocktab = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 256, i32 0, i32 256, i32 0, i32 256, i32 0, i32 256, i32 0, i32 256, i32 0, i32 256, i32 0, i32 256, i32 0, i32 256, i32 0], [60 x i8] zeroinitializer }, align 32
@he_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.3, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013he%d: failed to allocate irq\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"he_init_irq\00", [20 x i8] zeroinitializer }, align 32
@he_init_irq._entry_ptr = internal global ptr @he_init_irq._entry, section ".printk_index", align 4
@he_init_irq._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.3, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013he%d: irq %d already in use\0A\00", [33 x i8] zeroinitializer }, align 32
@he_init_irq._entry_ptr.128 = internal global ptr @he_init_irq._entry.126, section ".printk_index", align 4
@he_init_tpdrq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.3, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013he%d: failed to alloc tpdrq\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"he_init_tpdrq\00", [18 x i8] zeroinitializer }, align 32
@he_init_tpdrq._entry_ptr = internal global ptr @he_init_tpdrq._entry, section ".printk_index", align 4
@he_init_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013he%d: unable to allocate rbpl bitmap table\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"he_init_group\00", [18 x i8] zeroinitializer }, align 32
@he_init_group._entry_ptr = internal global ptr @he_init_group._entry, section ".printk_index", align 4
@he_init_group._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.3, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013he%d: unable to allocate rbpl virt table\0A\00", [52 x i8] zeroinitializer }, align 32
@he_init_group._entry_ptr.135 = internal global ptr @he_init_group._entry.133, section ".printk_index", align 4
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rbpl\00", [27 x i8] zeroinitializer }, align 32
@he_init_group._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.132, ptr @.str.3, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013he%d: unable to create rbpl pool\0A\00", [60 x i8] zeroinitializer }, align 32
@he_init_group._entry_ptr.139 = internal global ptr @he_init_group._entry.137, section ".printk_index", align 4
@he_init_group._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.132, ptr @.str.3, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013he%d: failed to alloc rbpl_base\0A\00", [61 x i8] zeroinitializer }, align 32
@he_init_group._entry_ptr.142 = internal global ptr @he_init_group._entry.140, section ".printk_index", align 4
@he_init_group._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.132, ptr @.str.3, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013he%d: failed to allocate rbrq\0A\00", [63 x i8] zeroinitializer }, align 32
@he_init_group._entry_ptr.145 = internal global ptr @he_init_group._entry.143, section ".printk_index", align 4
@he_init_group._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.132, ptr @.str.3, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013he%d: coalescing interrupts\0A\00", [33 x i8] zeroinitializer }, align 32
@he_init_group._entry_ptr.148 = internal global ptr @he_init_group._entry.146, section ".printk_index", align 4
@he_init_group._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.132, ptr @.str.3, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013he%d: failed to allocate tbrq\0A\00", [63 x i8] zeroinitializer }, align 32
@he_init_group._entry_ptr.151 = internal global ptr @he_init_group._entry.149, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 128, i64 248]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 2]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.157 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.159 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@___asan_gen_.161 = private unnamed_addr constant [10 x i8] c"disable64\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 115, i32 13 }
@___asan_gen_.164 = private unnamed_addr constant [9 x i8] c"nvpibits\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 116, i32 14 }
@___asan_gen_.167 = private unnamed_addr constant [9 x i8] c"nvcibits\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 117, i32 14 }
@___asan_gen_.170 = private unnamed_addr constant [15 x i8] c"rx_skb_reserve\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 118, i32 14 }
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"irq_coalesce\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 119, i32 13 }
@___asan_gen_.176 = private unnamed_addr constant [4 x i8] c"sdh\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 120, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant [10 x i8] c"he_driver\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2859, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2866, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant [11 x i8] c"he_pci_tbl\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2852, i32 35 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 358, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 363, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"he_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 164, i32 32 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 387, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [8 x i8] c"he_devs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 114, i32 23 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2139, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2147, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2148, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2182, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2292, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2376, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2407, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2429, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2450, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2472, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2079, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 156, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2505, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2516, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 326, i32 6 }
@___asan_gen_.314 = private unnamed_addr constant [4 x i8] c"mcc\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2713, i32 14 }
@___asan_gen_.317 = private unnamed_addr constant [4 x i8] c"oec\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2713, i32 23 }
@___asan_gen_.320 = private unnamed_addr constant [4 x i8] c"dcc\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2713, i32 32 }
@___asan_gen_.323 = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2713, i32 41 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2718, i32 24 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2721, i32 24 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2722, i32 44 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2722, i32 51 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2725, i32 24 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2735, i32 24 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2739, i32 24 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2743, i32 24 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2747, i32 24 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2751, i32 24 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2770, i32 24 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2774, i32 25 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 2779, i32 24 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1976, i32 7 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1979, i32 7 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1993, i32 5 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1681, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1692, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1831, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 999, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1004, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1009, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1015, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1020, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1027, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1031, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1048, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1052, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1063, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1075, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1080, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1093, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1170, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1426, i32 37 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1429, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 1470, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant [8 x i8] c"readtab\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 123, i32 21 }
@___asan_gen_.515 = private unnamed_addr constant [9 x i8] c"clocktab\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 144, i32 21 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 921, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 964, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 541, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 787, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 797, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 802, i32 38 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 805, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 813, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 852, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 863, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.588 = private constant [20 x i8] c"../drivers/atm/he.c\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.588, i32 876, i32 3 }
@llvm.compiler.used = appending global [214 x ptr] [ptr @__UNIQUE_ID_author465, ptr @__UNIQUE_ID_description466, ptr @__UNIQUE_ID_disable64468, ptr @__UNIQUE_ID_disable64type467, ptr @__UNIQUE_ID_file463, ptr @__UNIQUE_ID_irq_coalesce476, ptr @__UNIQUE_ID_irq_coalescetype475, ptr @__UNIQUE_ID_license464, ptr @__UNIQUE_ID_nvcibits472, ptr @__UNIQUE_ID_nvcibitstype471, ptr @__UNIQUE_ID_nvpibits470, ptr @__UNIQUE_ID_nvpibitstype469, ptr @__UNIQUE_ID_rx_skb_reserve474, ptr @__UNIQUE_ID_rx_skb_reservetype473, ptr @__UNIQUE_ID_sdh478, ptr @__UNIQUE_ID_sdhtype477, ptr @__enqueue_tpd._entry, ptr @__enqueue_tpd._entry_ptr, ptr @__exitcall_he_driver_exit, ptr @__initcall__kmod_he__479_2866_he_driver_init6, ptr @__param_disable64, ptr @__param_irq_coalesce, ptr @__param_nvcibits, ptr @__param_nvpibits, ptr @__param_rx_skb_reserve, ptr @__param_sdh, ptr @he_close._entry, ptr @he_close._entry.22, ptr @he_close._entry.25, ptr @he_close._entry.30, ptr @he_close._entry.33, ptr @he_close._entry_ptr, ptr @he_close._entry_ptr.24, ptr @he_close._entry_ptr.27, ptr @he_close._entry_ptr.32, ptr @he_close._entry_ptr.35, ptr @he_driver_exit, ptr @he_init_group._entry, ptr @he_init_group._entry.133, ptr @he_init_group._entry.137, ptr @he_init_group._entry.140, ptr @he_init_group._entry.143, ptr @he_init_group._entry.146, ptr @he_init_group._entry.149, ptr @he_init_group._entry_ptr, ptr @he_init_group._entry_ptr.135, ptr @he_init_group._entry_ptr.139, ptr @he_init_group._entry_ptr.142, ptr @he_init_group._entry_ptr.145, ptr @he_init_group._entry_ptr.148, ptr @he_init_group._entry_ptr.151, ptr @he_init_irq._entry, ptr @he_init_irq._entry.126, ptr @he_init_irq._entry_ptr, ptr @he_init_irq._entry_ptr.128, ptr @he_init_one._entry, ptr @he_init_one._entry.4, ptr @he_init_one._entry_ptr, ptr @he_init_one._entry_ptr.6, ptr @he_init_tpdrq._entry, ptr @he_init_tpdrq._entry_ptr, ptr @he_open._entry, ptr @he_open._entry.13, ptr @he_open._entry.16, ptr @he_open._entry_ptr, ptr @he_open._entry_ptr.15, ptr @he_open._entry_ptr.18, ptr @he_send._entry, ptr @he_send._entry.43, ptr @he_send._entry_ptr, ptr @he_send._entry_ptr.45, ptr @he_service_rbrq._entry, ptr @he_service_rbrq._entry.71, ptr @he_service_rbrq._entry_ptr, ptr @he_service_rbrq._entry_ptr.73, ptr @he_service_tbrq._entry, ptr @he_service_tbrq._entry_ptr, ptr @he_start._entry, ptr @he_start._entry.102, ptr @he_start._entry.105, ptr @he_start._entry.108, ptr @he_start._entry.111, ptr @he_start._entry.114, ptr @he_start._entry.118, ptr @he_start._entry.121, ptr @he_start._entry.78, ptr @he_start._entry.81, ptr @he_start._entry.84, ptr @he_start._entry.87, ptr @he_start._entry.90, ptr @he_start._entry.93, ptr @he_start._entry.96, ptr @he_start._entry.99, ptr @he_start._entry_ptr, ptr @he_start._entry_ptr.101, ptr @he_start._entry_ptr.104, ptr @he_start._entry_ptr.107, ptr @he_start._entry_ptr.110, ptr @he_start._entry_ptr.113, ptr @he_start._entry_ptr.116, ptr @he_start._entry_ptr.120, ptr @he_start._entry_ptr.123, ptr @he_start._entry_ptr.80, ptr @he_start._entry_ptr.83, ptr @he_start._entry_ptr.86, ptr @he_start._entry_ptr.89, ptr @he_start._entry_ptr.92, ptr @he_start._entry_ptr.95, ptr @he_start._entry_ptr.98, ptr @he_tasklet._entry, ptr @he_tasklet._entry.63, ptr @he_tasklet._entry.66, ptr @he_tasklet._entry_ptr, ptr @he_tasklet._entry_ptr.65, ptr @he_tasklet._entry_ptr.68, ptr @disable64, ptr @nvpibits, ptr @nvcibits, ptr @rx_skb_reserve, ptr @irq_coalesce, ptr @sdh, ptr @he_driver, ptr @.str, ptr @he_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @he_ops, ptr @he_init_one.__key, ptr @.str.7, ptr @he_devs, ptr @.str.8, ptr @.str.9, ptr @he_open.__key, ptr @.str.10, ptr @he_open.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @he_proc_read.mcc, ptr @he_proc_read.oec, ptr @he_proc_read.dcc, ptr @he_proc_read.cec, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @readtab, ptr @clocktab, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable64 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvpibits to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvcibits to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_skb_reserve to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_coalesce to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdh to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_open.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_open._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_open._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_close._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_close._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_close._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_close._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_send._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_proc_read.mcc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_proc_read.oec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_proc_read.dcc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_proc_read.cec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_tasklet._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_tasklet._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_service_rbrq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_service_rbrq._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_service_tbrq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_start._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readtab to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocktab to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_irq._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_tpdrq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_group._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_group._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_group._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_group._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_group._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @he_init_group._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @he_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @he_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @he_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @he_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @he_init_one(ptr noundef %pci_dev, ptr nocapture noundef readnone %pci_ent) #2 align 64 {
entry:
  %command.i = alloca i16, align 2
  %gen_cntl_0.i = alloca i32, align 4
  %cache_size.i = alloca i8, align 1
  %timer.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %if.end38

if.end9:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  %call11 = tail call ptr @atm_dev_register(ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull @he_ops, i32 noundef -1, ptr noundef null) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.if.end38_crit_edge, label %if.end14

if.end9.if.end38_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end14:                                         ; preds = %if.end9
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call11, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 460) #15
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.if.then37_crit_edge, label %if.end18

if.end14.if.then37_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.end18:                                         ; preds = %if.end14
  %pci_dev19 = getelementptr inbounds %struct.he_dev, ptr %call7.i.i, i32 0, i32 57
  %2 = ptrtoint ptr %pci_dev19 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pci_dev, ptr %pci_dev19, align 8
  %atm_dev20 = getelementptr inbounds %struct.he_dev, ptr %call7.i.i, i32 0, i32 58
  %3 = ptrtoint ptr %atm_dev20 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %atm_dev20, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %call11, i32 0, i32 4
  %4 = ptrtoint ptr %dev_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %dev_data, align 8
  %number = getelementptr inbounds %struct.atm_dev, ptr %call11, i32 0, i32 3
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %call7.i.i, align 8
  %tasklet = getelementptr inbounds %struct.he_dev, ptr %call7.i.i, i32 0, i32 30
  %8 = ptrtoint ptr %call7.i.i to i32
  tail call void @tasklet_init(ptr noundef %tasklet, ptr noundef nonnull @he_tasklet, i32 noundef %8) #11
  %global_lock = getelementptr inbounds %struct.he_dev, ptr %call7.i.i, i32 0, i32 37
  tail call void @__raw_spin_lock_init(ptr noundef %global_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @he_init_one.__key, i16 noundef signext 3) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.i) #11
  %9 = ptrtoint ptr %command.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %command.i, align 2, !annotation !340
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gen_cntl_0.i) #11
  %10 = ptrtoint ptr %gen_cntl_0.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %gen_cntl_0.i, align 4, !annotation !340
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cache_size.i) #11
  %11 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %cache_size.i, align 1, !annotation !340
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %timer.i) #11
  %12 = ptrtoint ptr %timer.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %timer.i, align 1, !annotation !340
  %13 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_data, align 8
  %pci_dev1.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 57
  %15 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev1.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 47
  %17 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resource.i, align 8
  %call.i67 = call i32 @pci_read_config_dword(ptr noundef %16, i32 noundef 64, ptr noundef nonnull %gen_cntl_0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.not.i = icmp eq i32 %call.i67, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end18.init_one_failure.thread85_crit_edge

if.end18.init_one_failure.thread85_crit_edge:     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_one_failure.thread85

if.end.i:                                         ; preds = %if.end18
  %19 = ptrtoint ptr %gen_cntl_0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gen_cntl_0.i, align 4
  %or.i = or i32 %20, 50
  store i32 %or.i, ptr %gen_cntl_0.i, align 4
  %call6.i = call i32 @pci_write_config_dword(ptr noundef %16, i32 noundef 64, i32 noundef %or.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.not.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.not.i, label %if.end15.i, label %if.end.i.init_one_failure.thread85_crit_edge

if.end.i.init_one_failure.thread85_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_one_failure.thread85

if.end15.i:                                       ; preds = %if.end.i
  %call16.i = call i32 @pci_read_config_word(ptr noundef %16, i32 noundef 4, ptr noundef nonnull %command.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.not.i, label %if.end25.i, label %if.end15.i.init_one_failure.thread85_crit_edge

if.end15.i.init_one_failure.thread85_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_one_failure.thread85

if.end25.i:                                       ; preds = %if.end15.i
  %21 = ptrtoint ptr %command.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %command.i, align 2
  %23 = or i16 %22, 22
  store i16 %23, ptr %command.i, align 2
  %call28.i = call i32 @pci_write_config_word(ptr noundef %16, i32 noundef 4, i16 noundef zeroext %23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.not.i = icmp eq i32 %call28.i, 0
  br i1 %cmp29.not.i, label %if.end38.i, label %if.end25.i.init_one_failure.thread85_crit_edge

if.end25.i.init_one_failure.thread85_crit_edge:   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_one_failure.thread85

if.end38.i:                                       ; preds = %if.end25.i
  %call39.i = call i32 @pci_read_config_byte(ptr noundef %16, i32 noundef 12, ptr noundef nonnull %cache_size.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool.not.i, label %if.end47.i, label %if.end38.i.init_one_failure.thread85_crit_edge

if.end38.i.init_one_failure.thread85_crit_edge:   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_one_failure.thread85

if.end47.i:                                       ; preds = %if.end38.i
  %24 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cache_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %25)
  %cmp49.i = icmp ult i8 %25, 16
  br i1 %cmp49.i, label %if.then51.i, label %if.end47.i.if.end63.i_crit_edge

if.end47.i.if.end63.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63.i

if.then51.i:                                      ; preds = %if.end47.i
  %26 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %cache_size.i, align 1
  %call52.i = call i32 @pci_write_config_byte(ptr noundef %16, i32 noundef 12, i8 noundef zeroext 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.then51.i.if.end63.i_crit_edge, label %do.end57.i

if.then51.i.if.end63.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63.i

do.end57.i:                                       ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %14, align 4
  %29 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cache_size.i, align 1
  %conv60.i = zext i8 %30 to i32
  %call61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %28, i32 noundef %conv60.i) #14
  br label %if.end63.i

if.end63.i:                                       ; preds = %do.end57.i, %if.then51.i.if.end63.i_crit_edge, %if.end47.i.if.end63.i_crit_edge
  %call64.i = call i32 @pci_read_config_byte(ptr noundef %16, i32 noundef 13, ptr noundef nonnull %timer.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.end73.i, label %if.end63.i.init_one_failure.thread85_crit_edge

if.end63.i.init_one_failure.thread85_crit_edge:   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_one_failure.thread85

if.end73.i:                                       ; preds = %if.end63.i
  %31 = ptrtoint ptr %timer.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %timer.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %32)
  %cmp75.i = icmp ult i8 %32, -47
  br i1 %cmp75.i, label %do.end80.i, label %if.end73.i.if.end92.i_crit_edge

if.end73.i.if.end92.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i

do.end80.i:                                       ; preds = %if.end73.i
  %33 = ptrtoint ptr %timer.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -47, ptr %timer.i, align 1
  %call81.i = call i32 @pci_write_config_byte(ptr noundef %16, i32 noundef 13, i8 noundef zeroext -47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %do.end80.i.if.end92.i_crit_edge, label %do.end86.i

do.end80.i.if.end92.i_crit_edge:                  ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i

do.end86.i:                                       ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %14, align 4
  %36 = ptrtoint ptr %timer.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %timer.i, align 1
  %conv89.i = zext i8 %37 to i32
  %call90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %35, i32 noundef %conv89.i) #14
  br label %if.end92.i

if.end92.i:                                       ; preds = %do.end86.i, %do.end80.i.if.end92.i_crit_edge, %if.end73.i.if.end92.i_crit_edge
  %call93.i = call ptr @ioremap(i32 noundef %18, i32 noundef 1048576) #11
  %membase94.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 2
  %38 = ptrtoint ptr %membase94.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call93.i, ptr %membase94.i, align 4
  %tobool95.not.i = icmp eq ptr %call93.i, null
  br i1 %tobool95.not.i, label %if.end92.i.init_one_failure.thread85_crit_edge, label %do.body105.i

if.end92.i.init_one_failure.thread85_crit_edge:   ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_one_failure.thread85

do.body105.i:                                     ; preds = %if.end92.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase94.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 524288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase94.i, align 4
  %add.ptr119.i = getelementptr i8, ptr %42, i32 524288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119.i, i32 -16777216) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  call void @arm_heavy_mb() #11
  call void @msleep(i32 noundef 16) #11
  %43 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase94.i, align 4
  %add.ptr126.i = getelementptr i8, ptr %44, i32 524288
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  %46 = and i32 %45, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp130.i = icmp eq i32 %46, 0
  br i1 %cmp130.i, label %do.body105.i.init_one_failure.thread85_crit_edge, label %if.end139.i

do.body105.i.init_one_failure.thread85_crit_edge: ; preds = %do.body105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_one_failure.thread85

if.end139.i:                                      ; preds = %do.body105.i
  %47 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase94.i, align 4
  %add.ptr143.i = getelementptr i8, ptr %48, i32 524292
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143.i) #11, !srcloc !346
  %50 = call i32 @llvm.bswap.i32(i32 %49) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !348
  %51 = ptrtoint ptr %gen_cntl_0.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %gen_cntl_0.i, align 4
  %and151.i = and i32 %52, -2
  %and147.i = lshr i32 %50, 27
  %and147.lobit.i = and i32 %and147.i, 1
  %storemerge.i = or i32 %and151.i, %and147.lobit.i
  store i32 %storemerge.i, ptr %gen_cntl_0.i, align 4
  %53 = load i8, ptr @disable64, align 1, !range !349
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool153.not.i = icmp eq i8 %53, 0
  br i1 %tobool153.not.i, label %if.end139.i.if.end165.i_crit_edge, label %do.end160.i

if.end139.i.if.end165.i_crit_edge:                ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165.i

do.end160.i:                                      ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %14, align 4
  %call163.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %55) #14
  %56 = ptrtoint ptr %gen_cntl_0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %gen_cntl_0.i, align 4
  %and164.i = and i32 %57, -2
  store i32 %and164.i, ptr %gen_cntl_0.i, align 4
  br label %if.end165.i

if.end165.i:                                      ; preds = %do.end160.i, %if.end139.i.if.end165.i_crit_edge
  %58 = ptrtoint ptr %gen_cntl_0.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gen_cntl_0.i, align 4
  %and166.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166.i)
  %tobool167.not.i = icmp eq i32 %and166.i, 0
  br i1 %tobool167.not.i, label %if.end165.i.if.end175.i_crit_edge, label %do.end171.i

if.end165.i.if.end175.i_crit_edge:                ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end175.i

do.end171.i:                                      ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %14, align 4
  %call174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %61) #14
  br label %if.end175.i

if.end175.i:                                      ; preds = %do.end171.i, %if.end165.i.if.end175.i_crit_edge
  %62 = ptrtoint ptr %gen_cntl_0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gen_cntl_0.i, align 4
  %call176.i = call i32 @pci_write_config_dword(ptr noundef %16, i32 noundef 64, i32 noundef %63) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end175.i
  %i.01734.i = phi i32 [ 0, %if.end175.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.01734.i, 8
  %call179.i = call fastcc zeroext i8 @read_prom_byte(ptr noundef %14, i32 noundef %add.i) #11
  %arrayidx180.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 3, i32 %i.01734.i
  %64 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %call179.i, ptr %arrayidx180.i, align 1
  %inc.i = add nuw nsw i32 %i.01734.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %call181.i = call fastcc zeroext i8 @read_prom_byte(ptr noundef %14, i32 noundef 62) #11
  %conv182.i = zext i8 %call181.i to i32
  %media.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 5
  %65 = ptrtoint ptr %media.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv182.i, ptr %media.i, align 4
  %call188.i = call fastcc zeroext i8 @read_prom_byte(ptr noundef %14, i32 noundef 66) #11
  %arrayidx189.i = getelementptr %struct.atm_dev, ptr %call11, i32 0, i32 9, i32 0
  %66 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %call188.i, ptr %arrayidx189.i, align 1
  %call188.1.i = call fastcc zeroext i8 @read_prom_byte(ptr noundef %14, i32 noundef 67) #11
  %arrayidx189.1.i = getelementptr %struct.atm_dev, ptr %call11, i32 0, i32 9, i32 1
  %67 = ptrtoint ptr %arrayidx189.1.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %call188.1.i, ptr %arrayidx189.1.i, align 1
  %call188.2.i = call fastcc zeroext i8 @read_prom_byte(ptr noundef %14, i32 noundef 68) #11
  %arrayidx189.2.i = getelementptr %struct.atm_dev, ptr %call11, i32 0, i32 9, i32 2
  %68 = ptrtoint ptr %arrayidx189.2.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %call188.2.i, ptr %arrayidx189.2.i, align 1
  %call188.3.i = call fastcc zeroext i8 @read_prom_byte(ptr noundef %14, i32 noundef 69) #11
  %arrayidx189.3.i = getelementptr %struct.atm_dev, ptr %call11, i32 0, i32 9, i32 3
  %69 = ptrtoint ptr %arrayidx189.3.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %call188.3.i, ptr %arrayidx189.3.i, align 1
  %call188.4.i = call fastcc zeroext i8 @read_prom_byte(ptr noundef %14, i32 noundef 70) #11
  %arrayidx189.4.i = getelementptr %struct.atm_dev, ptr %call11, i32 0, i32 9, i32 4
  %70 = ptrtoint ptr %arrayidx189.4.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %call188.4.i, ptr %arrayidx189.4.i, align 1
  %call188.5.i = call fastcc zeroext i8 @read_prom_byte(ptr noundef %14, i32 noundef 71) #11
  %arrayidx189.5.i = getelementptr %struct.atm_dev, ptr %call11, i32 0, i32 9, i32 5
  %71 = ptrtoint ptr %arrayidx189.5.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %call188.5.i, ptr %arrayidx189.5.i, align 1
  %72 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %14, align 4
  %prod_id198.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 3
  %74 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %media.i, align 4
  %and200.i = and i32 %75, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200.i)
  %tobool201.not.i = icmp eq i32 %and200.i, 0
  %cond.i = select i1 %tobool201.not.i, ptr @.str.51, ptr @.str.50
  %call204.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %73, ptr noundef %prod_id198.i, ptr noundef nonnull %cond.i, ptr noundef %arrayidx189.i) #14
  %76 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %media.i, align 4
  %and206.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206.i)
  %tobool207.not.i = icmp eq i32 %and206.i, 0
  %cond208.i = select i1 %tobool207.not.i, i32 353207, i32 1412830
  %atm_dev.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 58
  %78 = ptrtoint ptr %atm_dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %atm_dev.i, align 4
  %link_rate.i = getelementptr inbounds %struct.atm_dev, ptr %79, i32 0, i32 13
  %80 = ptrtoint ptr %link_rate.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %cond208.i, ptr %link_rate.i, align 4
  %81 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase94.i, align 4
  %add.ptr212.i = getelementptr i8, ptr %82, i32 524296
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr212.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !350
  %84 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %media.i, align 4
  %86 = and i32 %83, 2147483647
  %87 = call i32 @llvm.bswap.i32(i32 %86) #11
  %and217.i = shl i32 %85, 7
  %88 = and i32 %and217.i, 128
  %89 = or i32 %88, %87
  %lb_swap.0.i = xor i32 %89, 128
  %or224.i = or i32 %lb_swap.0.i, 212992
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  call void @arm_heavy_mb() #11
  %90 = call i32 @llvm.bswap.i32(i32 %or224.i) #11
  %91 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %membase94.i, align 4
  %add.ptr230.i = getelementptr i8, ptr %92, i32 524296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr230.i, i32 %90) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !352
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  call void @arm_heavy_mb() #11
  %93 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %media.i, align 4
  %and241.i = shl i32 %94, 27
  %95 = and i32 %and241.i, 134217728
  %96 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase94.i, align 4
  %add.ptr245.i = getelementptr i8, ptr %97, i32 524312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr245.i, i32 %95) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !354
  call void @arm_heavy_mb() #11
  %or251.i = or i32 %lb_swap.0.i, 2013478912
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !355
  call void @arm_heavy_mb() #11
  %98 = call i32 @llvm.bswap.i32(i32 %or251.i) #11
  %99 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase94.i, align 4
  %add.ptr257.i = getelementptr i8, ptr %100, i32 524296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr257.i, i32 %98) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !356
  call void @arm_heavy_mb() #11
  %call263.i = call fastcc i32 @he_init_irq(ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263.i)
  %cmp264.not.i = icmp eq i32 %call263.i, 0
  br i1 %cmp264.not.i, label %if.end267.i, label %for.end.i.init_one_failure_crit_edge

for.end.i.init_one_failure_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_one_failure

if.end267.i:                                      ; preds = %for.end.i
  %or268.i = or i32 %50, 244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !357
  call void @arm_heavy_mb() #11
  %101 = call i32 @llvm.bswap.i32(i32 %or268.i) #11
  %102 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %membase94.i, align 4
  %add.ptr274.i = getelementptr i8, ptr %103, i32 524292
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr274.i, i32 %101) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !358
  call void @arm_heavy_mb() #11
  %104 = ptrtoint ptr %gen_cntl_0.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %gen_cntl_0.i, align 4
  %or280.i = or i32 %105, 33554436
  store i32 %or280.i, ptr %gen_cntl_0.i, align 4
  %call281.i = call i32 @pci_write_config_dword(ptr noundef %16, i32 noundef 64, i32 noundef %or280.i) #11
  %vcibits.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 6
  %106 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 12, ptr %vcibits.i, align 4
  %vpibits.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 7
  %107 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %vpibits.i, align 4
  %108 = load i16, ptr @nvpibits, align 2
  %conv282.i = sext i16 %108 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %108)
  %cmp283.not.i = icmp eq i16 %108, -1
  br i1 %cmp283.not.i, label %if.end267.i.if.end310.i_crit_edge, label %land.lhs.true.i

if.end267.i.if.end310.i_crit_edge:                ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end310.i

land.lhs.true.i:                                  ; preds = %if.end267.i
  %109 = load i16, ptr @nvcibits, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %109)
  %cmp286.not.i = icmp eq i16 %109, -1
  %conv285.i = sext i16 %109 to i32
  %add291.i = add nsw i32 %conv285.i, %conv282.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %add291.i)
  %cmp292.not.i = icmp eq i32 %add291.i, 12
  %or.cond.i = select i1 %cmp286.not.i, i1 true, i1 %cmp292.not.i
  br i1 %or.cond.i, label %if.then305.i, label %do.end297.i

do.end297.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %14, align 4
  %call300.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %111, i32 noundef 12) #14
  br label %init_one_failure

if.then305.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %conv282.i, ptr %vpibits.i, align 4
  %sub.i = sub nsw i32 12, %conv282.i
  %113 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %sub.i, ptr %vcibits.i, align 4
  br label %if.end310.i

if.end310.i:                                      ; preds = %if.then305.i, %if.end267.i.if.end310.i_crit_edge
  %114 = load i16, ptr @nvcibits, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %114)
  %cmp312.not.i = icmp eq i16 %114, -1
  br i1 %cmp312.not.i, label %if.end310.i.if.end320.i_crit_edge, label %if.then314.i

if.end310.i.if.end320.i_crit_edge:                ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end320.i

if.then314.i:                                     ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv311.i = sext i16 %114 to i32
  %115 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv311.i, ptr %vcibits.i, align 4
  %sub318.i = sub nsw i32 12, %conv311.i
  %116 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub318.i, ptr %vpibits.i, align 4
  br label %if.end320.i

if.end320.i:                                      ; preds = %if.then314.i, %if.end310.i.if.end320.i_crit_edge
  %117 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %media.i, align 4
  %and322.i = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and322.i)
  %tobool323.not.i = icmp eq i32 %and322.i, 0
  br i1 %tobool323.not.i, label %if.else325.i, label %if.end320.i.if.end334.i_crit_edge

if.end320.i.if.end334.i_crit_edge:                ; preds = %if.end320.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end334.i

if.else325.i:                                     ; preds = %if.end320.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end334.i

if.end334.i:                                      ; preds = %if.else325.i, %if.end320.i.if.end334.i_crit_edge
  %.sink1751.i = phi i32 [ 20, %if.else325.i ], [ 40, %if.end320.i.if.end334.i_crit_edge ]
  %.sink1750.i = phi i32 [ 1024, %if.else325.i ], [ 2048, %if.end320.i.if.end334.i_crit_edge ]
  %.sink1749.i = phi i32 [ 512, %if.else325.i ], [ 256, %if.end320.i.if.end334.i_crit_edge ]
  %.sink1748.i = phi i32 [ 1018, %if.else325.i ], [ 512, %if.end320.i.if.end334.i_crit_edge ]
  %.sink1746.i = phi i32 [ 6, %if.else325.i ], [ 0, %if.end320.i.if.end334.i_crit_edge ]
  %.sink1745.i = phi i32 [ 518, %if.else325.i ], [ 256, %if.end320.i.if.end334.i_crit_edge ]
  %.sink.i = phi i32 [ 1536, %if.else325.i ], [ 768, %if.end320.i.if.end334.i_crit_edge ]
  %119 = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.sink1751.i, ptr %119, align 4
  %121 = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 9
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %.sink1750.i, ptr %121, align 4
  %123 = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 11
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %.sink1749.i, ptr %123, align 4
  %125 = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 17
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %.sink1748.i, ptr %125, align 4
  %127 = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 14
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %.sink1749.i, ptr %127, align 4
  %129 = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 12
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %.sink1746.i, ptr %129, align 4
  %131 = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 18
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %.sink1745.i, ptr %131, align 4
  %133 = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 15
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %.sink.i, ptr %133, align 4
  %cells_per_lbuf.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 10
  %135 = ptrtoint ptr %cells_per_lbuf.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 4, ptr %cells_per_lbuf.i, align 4
  %buffer_limit.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 20
  %136 = ptrtoint ptr %buffer_limit.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 4, ptr %buffer_limit.i, align 4
  %mul.i = mul nuw nsw i32 %.sink1749.i, %.sink1751.i
  %div1731.i = lshr exact i32 %mul.i, 2
  %r0_numbuffs.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 13
  %137 = call i32 @llvm.umin.i32(i32 %div1731.i, i32 2560) #11
  %138 = ptrtoint ptr %r0_numbuffs.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %r0_numbuffs.i, align 4
  %r1_numbuffs.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 16
  %139 = ptrtoint ptr %r1_numbuffs.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %137, ptr %r1_numbuffs.i, align 4
  %mul357.i = mul nuw nsw i32 %.sink1748.i, %.sink1751.i
  %div3591733.i = lshr exact i32 %mul357.i, 2
  %tx_numbuffs.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 19
  %140 = call i32 @llvm.umin.i32(i32 %div3591733.i, i32 5120) #11
  %141 = ptrtoint ptr %tx_numbuffs.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %tx_numbuffs.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !359
  call void @arm_heavy_mb() #11
  %142 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %media.i, align 4
  %and371.i = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371.i)
  %tobool372.not.i = icmp eq i32 %and371.i, 0
  %or379.i = select i1 %tobool372.not.i, i32 670877324, i32 670869584
  %144 = call i32 @llvm.bswap.i32(i32 %or379.i) #11
  %145 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %membase94.i, align 4
  %add.ptr381.i = getelementptr i8, ptr %146, i32 526080
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr381.i, i32 %144) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  call void @arm_heavy_mb() #11
  %147 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %media.i, align 4
  %and392.i = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and392.i)
  %tobool393.not.i = icmp eq i32 %and392.i, 0
  %or395.i = select i1 %tobool393.not.i, i32 16720, i32 25476
  %149 = call i32 @llvm.bswap.i32(i32 %or395.i) #11
  %150 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %membase94.i, align 4
  %add.ptr397.i = getelementptr i8, ptr %151, i32 526084
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr397.i, i32 %149) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !362
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !363
  call void @arm_heavy_mb() #11
  %152 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %media.i, align 4
  %and408.i = shl i32 %153, 30
  %154 = and i32 %and408.i, 1073741824
  %or411.i = or i32 %154, 67108864
  %155 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %membase94.i, align 4
  %add.ptr413.i = getelementptr i8, ptr %156, i32 526208
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr413.i, i32 %or411.i) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !364
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !365
  call void @arm_heavy_mb() #11
  %157 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %media.i, align 4
  %and424.i = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and424.i)
  %tobool425.not.i = icmp eq i32 %and424.i, 0
  %or427.i = select i1 %tobool425.not.i, i32 1140850688, i32 -2080374784
  %159 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %membase94.i, align 4
  %add.ptr429.i = getelementptr i8, ptr %160, i32 526144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr429.i, i32 %or427.i) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !366
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !367
  call void @arm_heavy_mb() #11
  %161 = ptrtoint ptr %cells_per_lbuf.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cells_per_lbuf.i, align 4
  %mul440.i = mul i32 %162, 48
  %163 = call i32 @llvm.bswap.i32(i32 %mul440.i) #11
  %164 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %membase94.i, align 4
  %add.ptr442.i = getelementptr i8, ptr %165, i32 526324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr442.i, i32 %163) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !368
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !369
  call void @arm_heavy_mb() #11
  %166 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %media.i, align 4
  %and453.i = and i32 %167, 1
  %168 = mul nuw nsw i32 %and453.i, 16896
  %or460.i = xor i32 %168, 512
  %169 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %vpibits.i, align 4
  %shl.i = shl i32 %170, 4
  %171 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %vcibits.i, align 4
  %or462.i = or i32 %172, %shl.i
  %or464.i = or i32 %or462.i, %or460.i
  %173 = call i32 @llvm.bswap.i32(i32 %or464.i) #11
  %174 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %membase94.i, align 4
  %add.ptr466.i = getelementptr i8, ptr %175, i32 526272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr466.i, i32 %173) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  call void @arm_heavy_mb() #11
  %176 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %media.i, align 4
  %and477.i = shl i32 %177, 21
  %178 = and i32 %and477.i, 2097152
  %or480.i = xor i32 %178, 136314880
  %179 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %vcibits.i, align 4
  %shl482.i = shl i32 %180, 17
  %181 = ptrtoint ptr %tx_numbuffs.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %tx_numbuffs.i, align 4
  %or483.i = or i32 %182, %shl482.i
  %or485.i = or i32 %or483.i, %or480.i
  %183 = call i32 @llvm.bswap.i32(i32 %or485.i) #11
  %184 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %membase94.i, align 4
  %add.ptr487.i = getelementptr i8, ptr %185, i32 526176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr487.i, i32 %183) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !372
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !373
  call void @arm_heavy_mb() #11
  %186 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %membase94.i, align 4
  %add.ptr498.i = getelementptr i8, ptr %187, i32 526180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr498.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !374
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  call void @arm_heavy_mb() #11
  %188 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %media.i, align 4
  %and509.i = and i32 %189, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and509.i)
  %tobool510.not.i = icmp eq i32 %and509.i, 0
  %or512.i = select i1 %tobool510.not.i, i32 1073, i32 1090
  %190 = call i32 @llvm.bswap.i32(i32 %or512.i) #11
  %191 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %membase94.i, align 4
  %add.ptr514.i = getelementptr i8, ptr %192, i32 525760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr514.i, i32 %190) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !376
  call void @arm_heavy_mb() #11
  br label %for.body523.i

for.body523.i:                                    ; preds = %he_writel_internal.exit.i.for.body523.i_crit_edge, %if.end334.i
  %i.21736.i = phi i32 [ 0, %if.end334.i ], [ %inc525.i, %he_writel_internal.exit.i.for.body523.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  call void @arm_heavy_mb() #11
  %193 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %membase94.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %194, i32 526328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  call void @arm_heavy_mb() #11
  %195 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %membase94.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %196, i32 526328
  %197 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  call void @arm_heavy_mb() #11
  %or11.i.i = or i32 %i.21736.i, 1610612736
  %198 = call i32 @llvm.bswap.i32(i32 %or11.i.i) #11
  %199 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %membase94.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %200, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %198) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  call void @arm_heavy_mb() #11
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.body523.i
  %201 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %membase94.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %202, i32 526332
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %204 = and i32 %203, 16
  %tobool.not.i.i = icmp eq i32 %204, 0
  br i1 %tobool.not.i.i, label %he_writel_internal.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

he_writel_internal.exit.i:                        ; preds = %while.cond.i.i
  %inc525.i = add nuw nsw i32 %i.21736.i, 1
  %exitcond1741.not.i = icmp eq i32 %inc525.i, 131072
  br i1 %exitcond1741.not.i, label %he_writel_internal.exit.i.for.body530.i_crit_edge, label %he_writel_internal.exit.i.for.body523.i_crit_edge

he_writel_internal.exit.i.for.body523.i_crit_edge: ; preds = %he_writel_internal.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body523.i

he_writel_internal.exit.i.for.body530.i_crit_edge: ; preds = %he_writel_internal.exit.i
  br label %for.body530.i

for.body530.i:                                    ; preds = %he_writel_internal.exit1730.i.for.body530.i_crit_edge, %he_writel_internal.exit.i.for.body530.i_crit_edge
  %i.31737.i = phi i32 [ %inc532.i, %he_writel_internal.exit1730.i.for.body530.i_crit_edge ], [ 0, %he_writel_internal.exit.i.for.body530.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  call void @arm_heavy_mb() #11
  %205 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %membase94.i, align 4
  %add.ptr.i1723.i = getelementptr i8, ptr %206, i32 526328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1723.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  call void @arm_heavy_mb() #11
  %207 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %membase94.i, align 4
  %add.ptr6.i1724.i = getelementptr i8, ptr %208, i32 526328
  %209 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i1724.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  call void @arm_heavy_mb() #11
  %or11.i1725.i = or i32 %i.31737.i, 536870912
  %210 = call i32 @llvm.bswap.i32(i32 %or11.i1725.i) #11
  %211 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %membase94.i, align 4
  %add.ptr13.i1726.i = getelementptr i8, ptr %212, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i1726.i, i32 %210) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  call void @arm_heavy_mb() #11
  br label %while.cond.i1729.i

while.cond.i1729.i:                               ; preds = %while.cond.i1729.i.while.cond.i1729.i_crit_edge, %for.body530.i
  %213 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %membase94.i, align 4
  %add.ptr20.i1727.i = getelementptr i8, ptr %214, i32 526332
  %215 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i1727.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %216 = and i32 %215, 16
  %tobool.not.i1728.i = icmp eq i32 %216, 0
  br i1 %tobool.not.i1728.i, label %he_writel_internal.exit1730.i, label %while.cond.i1729.i.while.cond.i1729.i_crit_edge

while.cond.i1729.i.while.cond.i1729.i_crit_edge:  ; preds = %while.cond.i1729.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i1729.i

he_writel_internal.exit1730.i:                    ; preds = %while.cond.i1729.i
  %inc532.i = add nuw nsw i32 %i.31737.i, 1
  %exitcond1742.not.i = icmp eq i32 %inc532.i, 65536
  br i1 %exitcond1742.not.i, label %do.body535.i, label %he_writel_internal.exit1730.i.for.body530.i_crit_edge

he_writel_internal.exit1730.i.for.body530.i_crit_edge: ; preds = %he_writel_internal.exit1730.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body530.i

do.body535.i:                                     ; preds = %he_writel_internal.exit1730.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !383
  call void @arm_heavy_mb() #11
  %217 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %membase94.i, align 4
  %add.ptr539.i = getelementptr i8, ptr %218, i32 526148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr539.i, i32 8388608) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !384
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !385
  call void @arm_heavy_mb() #11
  %219 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %membase94.i, align 4
  %add.ptr550.i = getelementptr i8, ptr %220, i32 526152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr550.i, i32 12582912) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !386
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !387
  call void @arm_heavy_mb() #11
  %221 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %membase94.i, align 4
  %add.ptr561.i = getelementptr i8, ptr %222, i32 526168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr561.i, i32 14680064) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !388
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !389
  call void @arm_heavy_mb() #11
  %223 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %membase94.i, align 4
  %add.ptr572.i = getelementptr i8, ptr %224, i32 526156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr572.i, i32 15728640) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !390
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !391
  call void @arm_heavy_mb() #11
  %225 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %membase94.i, align 4
  %add.ptr583.i = getelementptr i8, ptr %226, i32 526160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr583.i, i32 256) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !392
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !393
  call void @arm_heavy_mb() #11
  %227 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %membase94.i, align 4
  %add.ptr594.i = getelementptr i8, ptr %228, i32 526216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr594.i, i32 8388608) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !394
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !395
  call void @arm_heavy_mb() #11
  %229 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %membase94.i, align 4
  %add.ptr605.i = getelementptr i8, ptr %230, i32 526212
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr605.i, i32 14680064) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !396
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !397
  call void @arm_heavy_mb() #11
  %231 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %membase94.i, align 4
  %add.ptr616.i = getelementptr i8, ptr %232, i32 526220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr616.i, i32 14155776) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !398
  call void @arm_heavy_mb() #11
  call fastcc void @he_init_rx_lbfp0(ptr noundef %14) #11
  call fastcc void @he_init_rx_lbfp1(ptr noundef %14) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !399
  call void @arm_heavy_mb() #11
  %233 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %membase94.i, align 4
  %add.ptr627.i = getelementptr i8, ptr %234, i32 526032
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr627.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !400
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !401
  call void @arm_heavy_mb() #11
  %235 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %membase94.i, align 4
  %add.ptr638.i = getelementptr i8, ptr %236, i32 526036
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr638.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !402
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !403
  call void @arm_heavy_mb() #11
  %237 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %membase94.i, align 4
  %add.ptr649.i = getelementptr i8, ptr %238, i32 526040
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr649.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !404
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !405
  call void @arm_heavy_mb() #11
  %239 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %membase94.i, align 4
  %add.ptr660.i = getelementptr i8, ptr %240, i32 526064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr660.i, i32 131072) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !406
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  call void @arm_heavy_mb() #11
  %241 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %membase94.i, align 4
  %add.ptr671.i = getelementptr i8, ptr %242, i32 526068
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr671.i, i32 65536) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  call void @arm_heavy_mb() #11
  call fastcc void @he_init_tx_lbfp(ptr noundef %14) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !409
  call void @arm_heavy_mb() #11
  %243 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %media.i, align 4
  %and682.i = and i32 %244, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and682.i)
  %tobool683.not.i = icmp eq i32 %and682.i, 0
  %cond684.i = select i1 %tobool683.not.i, i32 2048, i32 1066880
  %245 = call i32 @llvm.bswap.i32(i32 %cond684.i) #11
  %246 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %membase94.i, align 4
  %add.ptr686.i = getelementptr i8, ptr %247, i32 525964
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr686.i, i32 %245) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !410
  call void @arm_heavy_mb() #11
  %248 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %media.i, align 4
  %and693.i = and i32 %249, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and693.i)
  %tobool694.not.i = icmp eq i32 %and693.i, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  call void @arm_heavy_mb() #11
  %250 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %membase94.i, align 4
  %add.ptr878.i = getelementptr i8, ptr %251, i32 525696
  br i1 %tobool694.not.i, label %do.body874.i, label %do.body697.i

do.body697.i:                                     ; preds = %do.body535.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr878.i, i32 251658240) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !411
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !412
  call void @arm_heavy_mb() #11
  %252 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %membase94.i, align 4
  %add.ptr712.i = getelementptr i8, ptr %253, i32 525700
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr712.i, i32 253755392) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !413
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !414
  call void @arm_heavy_mb() #11
  %254 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %membase94.i, align 4
  %add.ptr723.i = getelementptr i8, ptr %255, i32 525704
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr723.i, i32 520093696) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  call void @arm_heavy_mb() #11
  %256 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %membase94.i, align 4
  %add.ptr734.i = getelementptr i8, ptr %257, i32 525708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr734.i, i32 522190848) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  call void @arm_heavy_mb() #11
  %258 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %membase94.i, align 4
  %add.ptr745.i = getelementptr i8, ptr %259, i32 525712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr745.i, i32 788529152) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !419
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !420
  call void @arm_heavy_mb() #11
  %260 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %membase94.i, align 4
  %add.ptr756.i = getelementptr i8, ptr %261, i32 525716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr756.i, i32 790626304) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !421
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  call void @arm_heavy_mb() #11
  %262 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %membase94.i, align 4
  %add.ptr767.i = getelementptr i8, ptr %263, i32 525720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr767.i, i32 1056964608) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  call void @arm_heavy_mb() #11
  %264 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %membase94.i, align 4
  %add.ptr778.i = getelementptr i8, ptr %265, i32 525724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr778.i, i32 1059061760) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !425
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !426
  call void @arm_heavy_mb() #11
  %266 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %membase94.i, align 4
  %add.ptr789.i = getelementptr i8, ptr %267, i32 525728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr789.i, i32 1325400064) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !427
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !428
  call void @arm_heavy_mb() #11
  %268 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %membase94.i, align 4
  %add.ptr800.i = getelementptr i8, ptr %269, i32 525732
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr800.i, i32 1327497216) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !429
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !430
  call void @arm_heavy_mb() #11
  %270 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %membase94.i, align 4
  %add.ptr811.i = getelementptr i8, ptr %271, i32 525736
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr811.i, i32 1593835520) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !431
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !432
  call void @arm_heavy_mb() #11
  %272 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %membase94.i, align 4
  %add.ptr822.i = getelementptr i8, ptr %273, i32 525740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr822.i, i32 1595932672) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !433
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !434
  call void @arm_heavy_mb() #11
  %274 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %membase94.i, align 4
  %add.ptr833.i = getelementptr i8, ptr %275, i32 525744
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr833.i, i32 1862270976) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !435
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !436
  call void @arm_heavy_mb() #11
  %276 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %membase94.i, align 4
  %add.ptr844.i = getelementptr i8, ptr %277, i32 525748
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr844.i, i32 1864368128) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !437
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !438
  call void @arm_heavy_mb() #11
  %278 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %membase94.i, align 4
  %add.ptr855.i = getelementptr i8, ptr %279, i32 525752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr855.i, i32 2130706432) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !439
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !440
  call void @arm_heavy_mb() #11
  %280 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %membase94.i, align 4
  %add.ptr866.i = getelementptr i8, ptr %281, i32 525756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr866.i, i32 2132803584) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !441
  br label %do.body1051.i

do.body874.i:                                     ; preds = %do.body535.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr878.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !442
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !443
  call void @arm_heavy_mb() #11
  %282 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %membase94.i, align 4
  %add.ptr889.i = getelementptr i8, ptr %283, i32 525700
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr889.i, i32 134217728) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !444
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !445
  call void @arm_heavy_mb() #11
  %284 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %membase94.i, align 4
  %add.ptr900.i = getelementptr i8, ptr %285, i32 525704
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr900.i, i32 16777216) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !446
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !447
  call void @arm_heavy_mb() #11
  %286 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %membase94.i, align 4
  %add.ptr911.i = getelementptr i8, ptr %287, i32 525708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr911.i, i32 150994944) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !448
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !449
  call void @arm_heavy_mb() #11
  %288 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %membase94.i, align 4
  %add.ptr922.i = getelementptr i8, ptr %289, i32 525712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr922.i, i32 33554432) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !450
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !451
  call void @arm_heavy_mb() #11
  %290 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %membase94.i, align 4
  %add.ptr933.i = getelementptr i8, ptr %291, i32 525716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr933.i, i32 167772160) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !452
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !453
  call void @arm_heavy_mb() #11
  %292 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %membase94.i, align 4
  %add.ptr944.i = getelementptr i8, ptr %293, i32 525720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr944.i, i32 50331648) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !454
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !455
  call void @arm_heavy_mb() #11
  %294 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %membase94.i, align 4
  %add.ptr955.i = getelementptr i8, ptr %295, i32 525724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr955.i, i32 184549376) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !456
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !457
  call void @arm_heavy_mb() #11
  %296 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %membase94.i, align 4
  %add.ptr966.i = getelementptr i8, ptr %297, i32 525728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr966.i, i32 67108864) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !458
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !459
  call void @arm_heavy_mb() #11
  %298 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %membase94.i, align 4
  %add.ptr977.i = getelementptr i8, ptr %299, i32 525732
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr977.i, i32 201326592) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !460
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !461
  call void @arm_heavy_mb() #11
  %300 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %membase94.i, align 4
  %add.ptr988.i = getelementptr i8, ptr %301, i32 525736
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr988.i, i32 83886080) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !462
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !463
  call void @arm_heavy_mb() #11
  %302 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %membase94.i, align 4
  %add.ptr999.i = getelementptr i8, ptr %303, i32 525740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr999.i, i32 218103808) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !464
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !465
  call void @arm_heavy_mb() #11
  %304 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %membase94.i, align 4
  %add.ptr1010.i = getelementptr i8, ptr %305, i32 525744
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1010.i, i32 100663296) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !466
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !467
  call void @arm_heavy_mb() #11
  %306 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %membase94.i, align 4
  %add.ptr1021.i = getelementptr i8, ptr %307, i32 525748
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1021.i, i32 234881024) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !468
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !469
  call void @arm_heavy_mb() #11
  %308 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %membase94.i, align 4
  %add.ptr1032.i = getelementptr i8, ptr %309, i32 525752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1032.i, i32 117440512) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !470
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !471
  call void @arm_heavy_mb() #11
  %310 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %membase94.i, align 4
  %add.ptr1043.i = getelementptr i8, ptr %311, i32 525756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1043.i, i32 251658240) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !472
  br label %do.body1051.i

do.body1051.i:                                    ; preds = %do.body874.i, %do.body697.i
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !473
  call void @arm_heavy_mb() #11
  %312 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %membase94.i, align 4
  %add.ptr1055.i = getelementptr i8, ptr %313, i32 526276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1055.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !474
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !475
  call void @arm_heavy_mb() #11
  %314 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %membase94.i, align 4
  %add.ptr1066.i = getelementptr i8, ptr %315, i32 526280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1066.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !476
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !477
  call void @arm_heavy_mb() #11
  %316 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %membase94.i, align 4
  %add.ptr1077.i = getelementptr i8, ptr %317, i32 526284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1077.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !478
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !479
  call void @arm_heavy_mb() #11
  %318 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %membase94.i, align 4
  %add.ptr1088.i = getelementptr i8, ptr %319, i32 526288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1088.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !480
  call void @arm_heavy_mb() #11
  call fastcc void @he_init_cs_block(ptr noundef %14) #11
  %call1094.i = call fastcc i32 @he_init_cs_block_rcm(ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1094.i)
  %cmp1095.i = icmp slt i32 %call1094.i, 0
  br i1 %cmp1095.i, label %do.body1051.i.init_one_failure_crit_edge, label %if.end1098.i

do.body1051.i.init_one_failure_crit_edge:         ; preds = %do.body1051.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_one_failure

if.end1098.i:                                     ; preds = %do.body1051.i
  call fastcc void @he_init_tpdrq(ptr noundef %14) #11
  %320 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %pci_dev1.i, align 4
  %dev1101.i = getelementptr inbounds %struct.pci_dev, ptr %321, i32 0, i32 44
  %call1102.i = call ptr @dma_pool_create(ptr noundef nonnull @.str.117, ptr noundef %dev1101.i, i32 noundef 48, i32 noundef 64, i32 noundef 0) #11
  %tpd_pool.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 31
  %322 = ptrtoint ptr %tpd_pool.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %call1102.i, ptr %tpd_pool.i, align 4
  %cmp1104.i = icmp eq ptr %call1102.i, null
  br i1 %cmp1104.i, label %do.end1109.i, label %if.end1113.i

do.end1109.i:                                     ; preds = %if.end1098.i
  call void @__sanitizer_cov_trace_pc() #13
  %323 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %14, align 4
  %call1112.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %324) #14
  br label %init_one_failure

if.end1113.i:                                     ; preds = %if.end1098.i
  %outstanding_tpds.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 32
  %325 = ptrtoint ptr %outstanding_tpds.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store volatile ptr %outstanding_tpds.i, ptr %outstanding_tpds.i, align 4
  %prev.i.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 32, i32 1
  %326 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %outstanding_tpds.i, ptr %prev.i.i, align 4
  %call1114.i = call fastcc i32 @he_init_group(ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1114.i)
  %cmp1115.not.i = icmp eq i32 %call1114.i, 0
  br i1 %cmp1115.not.i, label %if.end1113.i.do.body1124.i_crit_edge, label %if.end1113.i.init_one_failure_crit_edge

if.end1113.i.init_one_failure_crit_edge:          ; preds = %if.end1113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_one_failure

if.end1113.i.do.body1124.i_crit_edge:             ; preds = %if.end1113.i
  br label %do.body1124.i

do.body1124.i:                                    ; preds = %do.body1124.i.do.body1124.i_crit_edge, %if.end1113.i.do.body1124.i_crit_edge
  %group.01738.i = phi i32 [ %inc1332.i, %do.body1124.i.do.body1124.i_crit_edge ], [ 1, %if.end1113.i.do.body1124.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !481
  call void @arm_heavy_mb() #11
  %327 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %membase94.i, align 4
  %mul1128.i = shl i32 %group.01738.i, 5
  %add1129.i = add nuw nsw i32 %mul1128.i, 525312
  %add.ptr1130.i = getelementptr i8, ptr %328, i32 %add1129.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1130.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !482
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !483
  call void @arm_heavy_mb() #11
  %329 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %membase94.i, align 4
  %add1142.i = add nuw nsw i32 %mul1128.i, 525316
  %add.ptr1143.i = getelementptr i8, ptr %330, i32 %add1142.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1143.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !484
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !485
  call void @arm_heavy_mb() #11
  %331 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %membase94.i, align 4
  %add1155.i = add nuw nsw i32 %mul1128.i, 525320
  %add.ptr1156.i = getelementptr i8, ptr %332, i32 %add1155.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1156.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !486
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !487
  call void @arm_heavy_mb() #11
  %333 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %membase94.i, align 4
  %add1168.i = add nuw nsw i32 %mul1128.i, 525324
  %add.ptr1169.i = getelementptr i8, ptr %334, i32 %add1168.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1169.i, i32 16777216) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !488
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !489
  call void @arm_heavy_mb() #11
  %335 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %membase94.i, align 4
  %add1181.i = add nuw nsw i32 %mul1128.i, 525328
  %add.ptr1182.i = getelementptr i8, ptr %336, i32 %add1181.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1182.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !490
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !491
  call void @arm_heavy_mb() #11
  %337 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %membase94.i, align 4
  %add1194.i = add nuw nsw i32 %mul1128.i, 525332
  %add.ptr1195.i = getelementptr i8, ptr %338, i32 %add1194.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1195.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !492
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !493
  call void @arm_heavy_mb() #11
  %339 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %membase94.i, align 4
  %add1207.i = add nuw nsw i32 %mul1128.i, 525336
  %add.ptr1208.i = getelementptr i8, ptr %340, i32 %add1207.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1208.i, i32 16777216) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !494
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !495
  call void @arm_heavy_mb() #11
  %341 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %membase94.i, align 4
  %add1220.i = add nuw nsw i32 %mul1128.i, 525340
  %add.ptr1221.i = getelementptr i8, ptr %342, i32 %add1220.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1221.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !496
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !497
  call void @arm_heavy_mb() #11
  %343 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %membase94.i, align 4
  %mul1232.i = shl i32 %group.01738.i, 4
  %add1233.i = add nuw nsw i32 %mul1232.i, 525568
  %add.ptr1234.i = getelementptr i8, ptr %344, i32 %add1233.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1234.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !498
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !499
  call void @arm_heavy_mb() #11
  %345 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %membase94.i, align 4
  %add1246.i = add nuw nsw i32 %mul1232.i, 525572
  %add.ptr1247.i = getelementptr i8, ptr %346, i32 %add1246.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1247.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !500
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !501
  call void @arm_heavy_mb() #11
  %347 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %membase94.i, align 4
  %add1259.i = add nuw nsw i32 %mul1232.i, 525576
  %add.ptr1260.i = getelementptr i8, ptr %348, i32 %add1259.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1260.i, i32 2097152) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !502
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !503
  call void @arm_heavy_mb() #11
  %349 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %membase94.i, align 4
  %add1272.i = add nuw nsw i32 %mul1232.i, 525580
  %add.ptr1273.i = getelementptr i8, ptr %350, i32 %add1272.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1273.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !504
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !505
  call void @arm_heavy_mb() #11
  %351 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %membase94.i, align 4
  %add1285.i = add nuw nsw i32 %mul1232.i, 525824
  %add.ptr1286.i = getelementptr i8, ptr %352, i32 %add1285.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1286.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !506
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !507
  call void @arm_heavy_mb() #11
  %353 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %membase94.i, align 4
  %add1298.i = add nuw nsw i32 %mul1232.i, 525828
  %add.ptr1299.i = getelementptr i8, ptr %354, i32 %add1298.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1299.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !508
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !509
  call void @arm_heavy_mb() #11
  %355 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %membase94.i, align 4
  %add1311.i = add nuw nsw i32 %mul1232.i, 525836
  %add.ptr1312.i = getelementptr i8, ptr %356, i32 %add1311.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1312.i, i32 16777216) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !510
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !511
  call void @arm_heavy_mb() #11
  %357 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %membase94.i, align 4
  %add1324.i = add nuw nsw i32 %mul1232.i, 525832
  %add.ptr1325.i = getelementptr i8, ptr %358, i32 %add1324.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1325.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !512
  call void @arm_heavy_mb() #11
  %inc1332.i = add nuw nsw i32 %group.01738.i, 1
  %exitcond1743.not.i = icmp eq i32 %inc1332.i, 8
  br i1 %exitcond1743.not.i, label %for.end1333.i, label %do.body1124.i.do.body1124.i_crit_edge

do.body1124.i.do.body1124.i_crit_edge:            ; preds = %do.body1124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1124.i

for.end1333.i:                                    ; preds = %do.body1124.i
  %359 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %pci_dev1.i, align 4
  %dev1335.i = getelementptr inbounds %struct.pci_dev, ptr %360, i32 0, i32 44
  %hsp_phys.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 55
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1335.i, i32 noundef 1024, ptr noundef %hsp_phys.i, i32 noundef 3264, i32 noundef 0) #11
  %hsp.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 56
  %361 = ptrtoint ptr %hsp.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %call.i.i, ptr %hsp.i, align 4
  %cmp1338.i = icmp eq ptr %call.i.i, null
  br i1 %cmp1338.i, label %do.end1343.i, label %do.body1349.i

do.end1343.i:                                     ; preds = %for.end1333.i
  call void @__sanitizer_cov_trace_pc() #13
  %362 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %14, align 4
  %call1346.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %363) #14
  br label %init_one_failure

do.body1349.i:                                    ; preds = %for.end1333.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !513
  call void @arm_heavy_mb() #11
  %364 = ptrtoint ptr %hsp_phys.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %hsp_phys.i, align 4
  %366 = call i32 @llvm.bswap.i32(i32 %365) #11
  %367 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %membase94.i, align 4
  %add.ptr1354.i = getelementptr i8, ptr %368, i32 526320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1354.i, i32 %366) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !514
  call void @arm_heavy_mb() #11
  %369 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %media.i, align 4
  %and1361.i = and i32 %370, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1361.i)
  %tobool1362.not.i = icmp eq i32 %and1361.i, 0
  br i1 %tobool1362.not.i, label %do.body1349.i.if.end1366.i_crit_edge, label %if.then1363.i

do.body1349.i.if.end1366.i_crit_edge:             ; preds = %do.body1349.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1366.i

if.then1363.i:                                    ; preds = %do.body1349.i
  call void @__sanitizer_cov_trace_pc() #13
  %371 = ptrtoint ptr %atm_dev.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %atm_dev.i, align 4
  %call1365.i = call i32 @suni_init(ptr noundef %372) #11
  br label %if.end1366.i

if.end1366.i:                                     ; preds = %if.then1363.i, %do.body1349.i.if.end1366.i_crit_edge
  %373 = ptrtoint ptr %atm_dev.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %atm_dev.i, align 4
  %phy.i = getelementptr inbounds %struct.atm_dev, ptr %374, i32 0, i32 1
  %375 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %phy.i, align 4
  %tobool1368.not.i = icmp eq ptr %376, null
  br i1 %tobool1368.not.i, label %if.end1366.i.if.end1380.i_crit_edge, label %land.lhs.true1369.i

if.end1366.i.if.end1380.i_crit_edge:              ; preds = %if.end1366.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1380.i

land.lhs.true1369.i:                              ; preds = %if.end1366.i
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %376, align 4
  %tobool1373.not.i = icmp eq ptr %378, null
  br i1 %tobool1373.not.i, label %land.lhs.true1369.i.if.end1380.i_crit_edge, label %if.then1374.i

land.lhs.true1369.i.if.end1380.i_crit_edge:       ; preds = %land.lhs.true1369.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1380.i

if.then1374.i:                                    ; preds = %land.lhs.true1369.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1379.i = call i32 %378(ptr noundef %374) #11
  br label %if.end1380.i

if.end1380.i:                                     ; preds = %if.then1374.i, %land.lhs.true1369.i.if.end1380.i_crit_edge, %if.end1366.i.if.end1380.i_crit_edge
  %379 = load i8, ptr @sdh, align 1, !range !349
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool1381.not.i = icmp eq i8 %379, 0
  br i1 %tobool1381.not.i, label %if.end1380.i.if.end31_crit_edge, label %if.then1382.i

if.end1380.i.if.end31_crit_edge:                  ; preds = %if.end1380.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then1382.i:                                    ; preds = %if.end1380.i
  call void @__sanitizer_cov_trace_pc() #13
  %380 = ptrtoint ptr %atm_dev.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %atm_dev.i, align 4
  %call1384.i = call zeroext i8 @he_phy_get(ptr noundef %381, i32 noundef 70) #11
  %382 = and i8 %call1384.i, -13
  %383 = or i8 %382, 8
  %384 = ptrtoint ptr %atm_dev.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %atm_dev.i, align 4
  call void @he_phy_put(ptr noundef %385, i8 noundef zeroext %383, i32 noundef 70) #11
  %386 = ptrtoint ptr %atm_dev.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %atm_dev.i, align 4
  call void @he_phy_put(ptr noundef %387, i8 noundef zeroext 1, i32 noundef 97) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then1382.i, %if.end1380.i.if.end31_crit_edge
  %call1392.i = call fastcc i32 @he_readl_internal(ptr noundef %14, i32 noundef 85, i32 noundef -2147483648) #11
  %or1393.i = or i32 %call1392.i, 402653184
  call fastcc void @he_writel_internal(ptr noundef %14, i32 noundef %or1393.i, i32 noundef 85, i32 noundef -2147483648) #11
  %388 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %membase94.i, align 4
  %add.ptr1397.i = getelementptr i8, ptr %389, i32 526272
  %390 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1397.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !515
  %391 = or i32 %390, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !516
  call void @arm_heavy_mb() #11
  %392 = ptrtoint ptr %membase94.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %membase94.i, align 4
  %add.ptr1407.i = getelementptr i8, ptr %393, i32 526272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1407.i, i32 %391) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !517
  call void @arm_heavy_mb() #11
  %arrayidx1417.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 0
  %inuse.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 0, i32 1
  %394 = ptrtoint ptr %inuse.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 0, ptr %inuse.i, align 4
  %395 = ptrtoint ptr %arrayidx1417.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 -1, ptr %arrayidx1417.i, align 4
  %arrayidx1417.1.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 1
  %inuse.1.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 1, i32 1
  %396 = ptrtoint ptr %inuse.1.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 0, ptr %inuse.1.i, align 4
  %397 = ptrtoint ptr %arrayidx1417.1.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 -1, ptr %arrayidx1417.1.i, align 4
  %arrayidx1417.2.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 2
  %inuse.2.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 2, i32 1
  %398 = ptrtoint ptr %inuse.2.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 0, ptr %inuse.2.i, align 4
  %399 = ptrtoint ptr %arrayidx1417.2.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 -1, ptr %arrayidx1417.2.i, align 4
  %arrayidx1417.3.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 3
  %inuse.3.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 3, i32 1
  %400 = ptrtoint ptr %inuse.3.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 0, ptr %inuse.3.i, align 4
  %401 = ptrtoint ptr %arrayidx1417.3.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 -1, ptr %arrayidx1417.3.i, align 4
  %arrayidx1417.4.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 4
  %inuse.4.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 4, i32 1
  %402 = ptrtoint ptr %inuse.4.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 0, ptr %inuse.4.i, align 4
  %403 = ptrtoint ptr %arrayidx1417.4.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 -1, ptr %arrayidx1417.4.i, align 4
  %arrayidx1417.5.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 5
  %inuse.5.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 5, i32 1
  %404 = ptrtoint ptr %inuse.5.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 0, ptr %inuse.5.i, align 4
  %405 = ptrtoint ptr %arrayidx1417.5.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 -1, ptr %arrayidx1417.5.i, align 4
  %arrayidx1417.6.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 6
  %inuse.6.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 6, i32 1
  %406 = ptrtoint ptr %inuse.6.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 0, ptr %inuse.6.i, align 4
  %407 = ptrtoint ptr %arrayidx1417.6.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 -1, ptr %arrayidx1417.6.i, align 4
  %arrayidx1417.7.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 7
  %inuse.7.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 7, i32 1
  %408 = ptrtoint ptr %inuse.7.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 0, ptr %inuse.7.i, align 4
  %409 = ptrtoint ptr %arrayidx1417.7.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 -1, ptr %arrayidx1417.7.i, align 4
  %arrayidx1417.8.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 8
  %inuse.8.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 8, i32 1
  %410 = ptrtoint ptr %inuse.8.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 0, ptr %inuse.8.i, align 4
  %411 = ptrtoint ptr %arrayidx1417.8.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 -1, ptr %arrayidx1417.8.i, align 4
  %arrayidx1417.9.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 9
  %inuse.9.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 9, i32 1
  %412 = ptrtoint ptr %inuse.9.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 0, ptr %inuse.9.i, align 4
  %413 = ptrtoint ptr %arrayidx1417.9.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 -1, ptr %arrayidx1417.9.i, align 4
  %arrayidx1417.10.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 10
  %inuse.10.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 10, i32 1
  %414 = ptrtoint ptr %inuse.10.i to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 0, ptr %inuse.10.i, align 4
  %415 = ptrtoint ptr %arrayidx1417.10.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 -1, ptr %arrayidx1417.10.i, align 4
  %arrayidx1417.11.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 11
  %inuse.11.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 11, i32 1
  %416 = ptrtoint ptr %inuse.11.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 0, ptr %inuse.11.i, align 4
  %417 = ptrtoint ptr %arrayidx1417.11.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 -1, ptr %arrayidx1417.11.i, align 4
  %arrayidx1417.12.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 12
  %inuse.12.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 12, i32 1
  %418 = ptrtoint ptr %inuse.12.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 0, ptr %inuse.12.i, align 4
  %419 = ptrtoint ptr %arrayidx1417.12.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 -1, ptr %arrayidx1417.12.i, align 4
  %arrayidx1417.13.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 13
  %inuse.13.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 13, i32 1
  %420 = ptrtoint ptr %inuse.13.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 0, ptr %inuse.13.i, align 4
  %421 = ptrtoint ptr %arrayidx1417.13.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 -1, ptr %arrayidx1417.13.i, align 4
  %arrayidx1417.14.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 14
  %inuse.14.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 14, i32 1
  %422 = ptrtoint ptr %inuse.14.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 0, ptr %inuse.14.i, align 4
  %423 = ptrtoint ptr %arrayidx1417.14.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 -1, ptr %arrayidx1417.14.i, align 4
  %arrayidx1417.15.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 15
  %inuse.15.i = getelementptr %struct.he_dev, ptr %14, i32 0, i32 22, i32 15, i32 1
  %424 = ptrtoint ptr %inuse.15.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 0, ptr %inuse.15.i, align 4
  %425 = ptrtoint ptr %arrayidx1417.15.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 -1, ptr %arrayidx1417.15.i, align 4
  %total_bw.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 23
  %426 = ptrtoint ptr %total_bw.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 0, ptr %total_bw.i, align 4
  %427 = ptrtoint ptr %vpibits.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %vpibits.i, align 4
  %conv1424.i = trunc i32 %428 to i8
  %429 = ptrtoint ptr %atm_dev.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %atm_dev.i, align 4
  %ci_range.i = getelementptr inbounds %struct.atm_dev, ptr %430, i32 0, i32 10
  %431 = ptrtoint ptr %ci_range.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %conv1424.i, ptr %ci_range.i, align 2
  %432 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %vcibits.i, align 4
  %conv1427.i = trunc i32 %433 to i8
  %434 = load ptr, ptr %atm_dev.i, align 4
  %vci_bits.i = getelementptr inbounds %struct.atm_dev, ptr %434, i32 0, i32 10, i32 1
  %435 = ptrtoint ptr %vci_bits.i to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 %conv1427.i, ptr %vci_bits.i, align 1
  %irq_peak.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 29
  %436 = ptrtoint ptr %irq_peak.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 0, ptr %irq_peak.i, align 4
  %rbrq_peak.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 41
  %437 = ptrtoint ptr %rbrq_peak.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 0, ptr %rbrq_peak.i, align 4
  %rbpl_peak.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 50
  %438 = ptrtoint ptr %rbpl_peak.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 0, ptr %rbpl_peak.i, align 4
  %tbrq_peak.i = getelementptr inbounds %struct.he_dev, ptr %14, i32 0, i32 54
  %439 = ptrtoint ptr %tbrq_peak.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 0, ptr %tbrq_peak.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %timer.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cache_size.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen_cntl_0.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.i) #11
  %next = getelementptr inbounds %struct.he_dev, ptr %call7.i.i, i32 0, i32 59
  %440 = load ptr, ptr @he_devs, align 4
  %441 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %440, ptr %next, align 8
  store ptr %call7.i.i, ptr @he_devs, align 4
  br label %cleanup

init_one_failure.thread85:                        ; preds = %do.body105.i.init_one_failure.thread85_crit_edge, %if.end92.i.init_one_failure.thread85_crit_edge, %if.end63.i.init_one_failure.thread85_crit_edge, %if.end38.i.init_one_failure.thread85_crit_edge, %if.end25.i.init_one_failure.thread85_crit_edge, %if.end15.i.init_one_failure.thread85_crit_edge, %if.end.i.init_one_failure.thread85_crit_edge, %if.end18.init_one_failure.thread85_crit_edge
  %.str.100.sink = phi ptr [ @.str.76, %if.end18.init_one_failure.thread85_crit_edge ], [ @.str.79, %if.end.i.init_one_failure.thread85_crit_edge ], [ @.str.82, %if.end15.i.init_one_failure.thread85_crit_edge ], [ @.str.85, %if.end25.i.init_one_failure.thread85_crit_edge ], [ @.str.88, %if.end38.i.init_one_failure.thread85_crit_edge ], [ @.str.94, %if.end63.i.init_one_failure.thread85_crit_edge ], [ @.str.100, %if.end92.i.init_one_failure.thread85_crit_edge ], [ @.str.103, %do.body105.i.init_one_failure.thread85_crit_edge ]
  %442 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %14, align 4
  %call102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.100.sink, i32 noundef %443) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %timer.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cache_size.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen_cntl_0.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.i) #11
  br label %if.then37.sink.split

init_one_failure:                                 ; preds = %do.end1343.i, %if.end1113.i.init_one_failure_crit_edge, %do.end1109.i, %do.body1051.i.init_one_failure_crit_edge, %do.end297.i, %for.end.i.init_one_failure_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %timer.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cache_size.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen_cntl_0.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.i) #11
  br label %if.then37.sink.split

if.then37.sink.split:                             ; preds = %init_one_failure, %init_one_failure.thread85
  call fastcc void @he_stop(ptr noundef nonnull %call7.i.i)
  br label %if.then37

if.then37:                                        ; preds = %if.then37.sink.split, %if.end14.if.then37_crit_edge
  %err.082 = phi i32 [ -12, %if.end14.if.then37_crit_edge ], [ -19, %if.then37.sink.split ]
  call void @atm_dev_deregister(ptr noundef nonnull %call11) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end9.if.end38_crit_edge, %do.end6
  %err.075 = phi i32 [ %err.082, %if.then37 ], [ -19, %if.end9.if.end38_crit_edge ], [ -5, %do.end6 ]
  %he_dev.074 = phi ptr [ %call7.i.i, %if.then37 ], [ null, %if.end9.if.end38_crit_edge ], [ null, %do.end6 ]
  call void @kfree(ptr noundef %he_dev.074) #11
  call void @pci_disable_device(ptr noundef %pci_dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.075, %if.end38 ], [ 0, %if.end31 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @he_remove_one(ptr noundef %pci_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  tail call fastcc void @he_stop(ptr noundef %3)
  tail call void @atm_dev_deregister(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %3) #11
  tail call void @pci_disable_device(ptr noundef %pci_dev) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @he_tasklet(i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %global_lock = getelementptr inbounds %struct.he_dev, ptr %0, i32 0, i32 37
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  %irq_head = getelementptr inbounds %struct.he_dev, ptr %0, i32 0, i32 26
  %irq_tail = getelementptr inbounds %struct.he_dev, ptr %0, i32 0, i32 27
  %1 = ptrtoint ptr %irq_head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %irq_head, align 4
  %3 = ptrtoint ptr %irq_tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_tail, align 4
  %cmp8.not168 = icmp eq ptr %2, %4
  br i1 %cmp8.not168, label %entry.if.end120_crit_edge, label %while.body.lr.ph

entry.if.end120_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

while.body.lr.ph:                                 ; preds = %entry
  %membase = getelementptr inbounds %struct.he_dev, ptr %0, i32 0, i32 2
  %atm_dev = getelementptr inbounds %struct.he_dev, ptr %0, i32 0, i32 58
  %irq_base = getelementptr inbounds %struct.he_dev, ptr %0, i32 0, i32 25
  br label %while.body

while.body:                                       ; preds = %sw.epilog84.while.body_crit_edge, %while.body.lr.ph
  %5 = phi ptr [ %2, %while.body.lr.ph ], [ %38, %sw.epilog84.while.body_crit_edge ]
  %flags.0170 = phi i32 [ %call3, %while.body.lr.ph ], [ %flags.1, %sw.epilog84.while.body_crit_edge ]
  %updated.0169 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %sw.epilog84.while.body_crit_edge ]
  %inc = add i32 %updated.0169, 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = load volatile i32, ptr %5, align 4
  %and13 = and i32 %8, 7
  %9 = trunc i32 %7 to i8
  %trunc = and i8 %9, -8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end78 [
    i8 32, label %while.body.sw.bb17_crit_edge
    i8 40, label %while.body.sw.bb17_crit_edge176
    i8 0, label %while.body.sw.bb23_crit_edge
    i8 8, label %while.body.sw.bb23_crit_edge177
    i8 24, label %sw.bb24
    i8 16, label %while.body.sw.epilog84_crit_edge
    i8 48, label %do.end28
    i8 -128, label %sw.bb54
    i8 -8, label %do.end74
  ]

while.body.sw.epilog84_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog84

while.body.sw.bb23_crit_edge177:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb23

while.body.sw.bb23_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb23

while.body.sw.bb17_crit_edge176:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

while.body.sw.bb17_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb17

sw.bb17:                                          ; preds = %while.body.sw.bb17_crit_edge, %while.body.sw.bb17_crit_edge176
  %call18 = tail call fastcc i32 @he_service_rbrq(ptr noundef %0, i32 noundef %and13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %sw.bb17.sw.epilog84_crit_edge, label %if.then

sw.bb17.sw.epilog84_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog84

if.then:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @he_service_rbpl(ptr noundef %0)
  br label %sw.epilog84

sw.bb23:                                          ; preds = %while.body.sw.bb23_crit_edge, %while.body.sw.bb23_crit_edge177
  tail call fastcc void @he_service_tbrq(ptr noundef %0, i32 noundef %and13)
  br label %sw.epilog84

sw.bb24:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @he_service_rbpl(ptr noundef %0)
  br label %sw.epilog84

do.end28:                                         ; preds = %while.body
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %flags.0170) #11
  %11 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %atm_dev, align 4
  %phy = getelementptr inbounds %struct.atm_dev, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy, align 4
  %tobool30.not = icmp eq ptr %14, null
  br i1 %tobool30.not, label %do.end28.do.body41_crit_edge, label %land.lhs.true

do.end28.do.body41_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41

land.lhs.true:                                    ; preds = %do.end28
  %interrupt = getelementptr inbounds %struct.atmphy_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interrupt, align 4
  %tobool33.not = icmp eq ptr %16, null
  br i1 %tobool33.not, label %land.lhs.true.do.body41_crit_edge, label %if.then34

land.lhs.true.do.body41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %16(ptr noundef %12) #11
  br label %do.body41

do.body41:                                        ; preds = %if.then34, %land.lhs.true.do.body41_crit_edge, %do.end28.do.body41_crit_edge
  %call49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  br label %sw.epilog84

sw.bb54:                                          ; preds = %while.body
  %trunc167 = trunc i32 %8 to i3
  %17 = zext i3 %trunc167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.152)
  switch i3 %trunc167, label %sw.bb54.sw.epilog84_crit_edge [
    i3 1, label %do.end58
    i3 2, label %do.end64
  ]

sw.bb54.sw.epilog84_crit_edge:                    ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog84

do.end58:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %19) #14
  br label %sw.epilog84

do.end64:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 4
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 524320
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !518
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %21, i32 noundef %25) #14
  br label %sw.epilog84

do.end74:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %call75 = tail call fastcc i32 @he_service_rbrq(ptr noundef %0, i32 noundef 0)
  tail call fastcc void @he_service_rbpl(ptr noundef %0)
  tail call fastcc void @he_service_tbrq(ptr noundef %0, i32 noundef 0)
  br label %sw.epilog84

do.end78:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %0, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %5, align 4
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %27, i32 noundef %29) #14
  br label %sw.epilog84

sw.epilog84:                                      ; preds = %do.end78, %do.end74, %do.end64, %do.end58, %sw.bb54.sw.epilog84_crit_edge, %do.body41, %sw.bb24, %sw.bb23, %if.then, %sw.bb17.sw.epilog84_crit_edge, %while.body.sw.epilog84_crit_edge
  %flags.1 = phi i32 [ %flags.0170, %do.end78 ], [ %flags.0170, %do.end74 ], [ %flags.0170, %sw.bb54.sw.epilog84_crit_edge ], [ %flags.0170, %do.end64 ], [ %flags.0170, %do.end58 ], [ %call49, %do.body41 ], [ %flags.0170, %while.body.sw.epilog84_crit_edge ], [ %flags.0170, %sw.bb24 ], [ %flags.0170, %sw.bb23 ], [ %flags.0170, %if.then ], [ %flags.0170, %sw.bb17.sw.epilog84_crit_edge ]
  %30 = ptrtoint ptr %irq_head to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_head, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 -1, ptr %31, align 4
  %33 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_base, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = load ptr, ptr %irq_head, align 4
  %add.ptr88 = getelementptr %struct.he_irq, ptr %36, i32 1
  %37 = ptrtoint ptr %add.ptr88 to i32
  %and89 = and i32 %37, 511
  %or90 = or i32 %and89, %35
  %38 = inttoptr i32 %or90 to ptr
  store ptr %38, ptr %irq_head, align 4
  %39 = ptrtoint ptr %irq_tail to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irq_tail, align 4
  %cmp8.not = icmp eq ptr %40, %38
  br i1 %cmp8.not, label %while.end, label %sw.epilog84.while.body_crit_edge

sw.epilog84.while.body_crit_edge:                 ; preds = %sw.epilog84
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %sw.epilog84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool92.not = icmp eq i32 %inc, 0
  br i1 %tobool92.not, label %while.end.if.end120_crit_edge, label %if.then93

while.end.if.end120_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

if.then93:                                        ; preds = %while.end
  %irq_peak = getelementptr inbounds %struct.he_dev, ptr %0, i32 0, i32 29
  %41 = ptrtoint ptr %irq_peak to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq_peak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %42)
  %cmp94 = icmp sgt i32 %inc, %42
  br i1 %cmp94, label %if.then96, label %if.then93.do.body100_crit_edge

if.then93.do.body100_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body100

if.then96:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %irq_peak to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc, ptr %irq_peak, align 4
  br label %do.body100

do.body100:                                       ; preds = %if.then96, %if.then93.do.body100_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !519
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %irq_tail to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irq_tail, align 4
  %46 = ptrtoint ptr %45 to i32
  %and104 = and i32 %46, 511
  %or105 = or i32 %and104, 537133056
  %47 = tail call i32 @llvm.bswap.i32(i32 %or105)
  %membase106 = getelementptr inbounds %struct.he_dev, ptr %0, i32 0, i32 2
  %48 = ptrtoint ptr %membase106 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase106, align 4
  %add.ptr107 = getelementptr i8, ptr %49, i32 524420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %47) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !520
  tail call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %membase106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase106, align 4
  %add.ptr116 = getelementptr i8, ptr %51, i32 524316
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !521
  br label %if.end120

if.end120:                                        ; preds = %do.body100, %while.end.if.end120_crit_edge, %entry.if.end120_crit_edge
  %flags.0.lcssa175 = phi i32 [ %flags.1, %do.body100 ], [ %flags.1, %while.end.if.end120_crit_edge ], [ %call3, %entry.if.end120_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %flags.0.lcssa175) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @he_stop(ptr noundef %he_dev) unnamed_addr #2 align 64 {
entry:
  %gen_cntl_0 = alloca i32, align 4
  %command = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gen_cntl_0) #11
  %0 = ptrtoint ptr %gen_cntl_0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gen_cntl_0, align 4, !annotation !340
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command) #11
  %1 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %command, align 2, !annotation !340
  %pci_dev1 = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 57
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev1, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 64, ptr noundef nonnull %gen_cntl_0) #11
  %6 = ptrtoint ptr %gen_cntl_0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gen_cntl_0, align 4
  %and = and i32 %7, -33554437
  store i32 %and, ptr %gen_cntl_0, align 4
  %call2 = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 64, i32 noundef %and) #11
  %tasklet = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 30
  %count.i.i = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 30, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #11
  %8 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #11, !srcloc !522
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !523
  call void @tasklet_unlock_wait(ptr noundef %tasklet) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !524
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !525
  call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1426063488) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !526
  call void @arm_heavy_mb() #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr7.i = getelementptr i8, ptr %12, i32 526332
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  %14 = and i32 %13, 16
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %he_readl_internal.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

he_readl_internal.exit:                           ; preds = %while.cond.i
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %add.ptr12.i = getelementptr i8, ptr %16, i32 526328
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !528
  %18 = and i32 %17, -25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr.i166 = getelementptr i8, ptr %20, i32 526328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %18) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr6.i = getelementptr i8, ptr %22, i32 526328
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr13.i = getelementptr i8, ptr %25, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 1426063520) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  call void @arm_heavy_mb() #11
  br label %while.cond.i168

while.cond.i168:                                  ; preds = %while.cond.i168.while.cond.i168_crit_edge, %he_readl_internal.exit
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr20.i = getelementptr i8, ptr %27, i32 526332
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %29 = and i32 %28, 16
  %tobool.not.i167 = icmp eq i32 %29, 0
  br i1 %tobool.not.i167, label %he_writel_internal.exit, label %while.cond.i168.while.cond.i168_crit_edge

while.cond.i168.while.cond.i168_crit_edge:        ; preds = %while.cond.i168
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i168

he_writel_internal.exit:                          ; preds = %while.cond.i168
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 526272
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !529
  %33 = and i32 %32, -65537
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !530
  call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr11 = getelementptr i8, ptr %35, i32 526272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %33) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !531
  call void @arm_heavy_mb() #11
  br label %if.end

if.end:                                           ; preds = %he_writel_internal.exit, %entry.if.end_crit_edge
  %atm_dev = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 58
  %36 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %atm_dev, align 4
  %phy = getelementptr inbounds %struct.atm_dev, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy, align 4
  %tobool17.not = icmp eq ptr %39, null
  br i1 %tobool17.not, label %if.end.if.end27_crit_edge, label %land.lhs.true

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %stop = getelementptr inbounds %struct.atmphy_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stop, align 4
  %tobool20.not = icmp eq ptr %41, null
  br i1 %tobool20.not, label %land.lhs.true.if.end27_crit_edge, label %if.then21

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = call i32 %41(ptr noundef %37) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %land.lhs.true.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %irq = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 1
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool28.not = icmp eq i32 %43, 0
  br i1 %tobool28.not, label %if.end27.if.end32_crit_edge, label %if.then29

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = call ptr @free_irq(i32 noundef %43, ptr noundef %he_dev) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end27.if.end32_crit_edge
  %irq_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 25
  %44 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irq_base, align 4
  %tobool33.not = icmp eq ptr %45, null
  br i1 %tobool33.not, label %if.end32.if.end37_crit_edge, label %if.then34

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci_dev1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %irq_phys = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 24
  %48 = ptrtoint ptr %irq_phys to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef 516, ptr noundef nonnull %45, i32 noundef %49, i32 noundef 0) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32.if.end37_crit_edge
  %hsp = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 56
  %50 = ptrtoint ptr %hsp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hsp, align 4
  %tobool38.not = icmp eq ptr %51, null
  br i1 %tobool38.not, label %if.end37.if.end43_crit_edge, label %if.then39

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci_dev1, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %hsp_phys = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 55
  %54 = ptrtoint ptr %hsp_phys to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hsp_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev41, i32 noundef 1024, ptr noundef nonnull %51, i32 noundef %55, i32 noundef 0) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end37.if.end43_crit_edge
  %rbpl_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 47
  %56 = ptrtoint ptr %rbpl_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rbpl_base, align 4
  %tobool44.not = icmp eq ptr %57, null
  br i1 %tobool44.not, label %if.end43.if.end64_crit_edge, label %if.then45

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then45:                                        ; preds = %if.end43
  %rbpl_outstanding = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 49
  %58 = ptrtoint ptr %rbpl_outstanding to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rbpl_outstanding, align 4
  %cmp.not169 = icmp eq ptr %59, %rbpl_outstanding
  br i1 %cmp.not169, label %if.then45.for.end_crit_edge, label %for.body.lr.ph

if.then45.for.end_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then45
  %rbpl_pool = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %heb.0170 = phi ptr [ %59, %for.body.lr.ph ], [ %next.0, %for.body.for.body_crit_edge ]
  %60 = ptrtoint ptr %heb.0170 to i32
  call void @__asan_load4_noabort(i32 %60)
  %next.0 = load ptr, ptr %heb.0170, align 4
  %61 = ptrtoint ptr %rbpl_pool to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rbpl_pool, align 4
  %mapping = getelementptr inbounds %struct.he_buff, ptr %heb.0170, i32 0, i32 1
  %63 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mapping, align 4
  call void @dma_pool_free(ptr noundef %62, ptr noundef %heb.0170, i32 noundef %64) #11
  %cmp.not = icmp eq ptr %next.0, %rbpl_outstanding
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then45.for.end_crit_edge
  %65 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pci_dev1, align 4
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %67 = ptrtoint ptr %rbpl_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rbpl_base, align 4
  %rbpl_phys = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 46
  %69 = ptrtoint ptr %rbpl_phys to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rbpl_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev62, i32 noundef 4096, ptr noundef %68, i32 noundef %70, i32 noundef 0) #11
  br label %if.end64

if.end64:                                         ; preds = %for.end, %if.end43.if.end64_crit_edge
  %rbpl_virt = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 42
  %71 = ptrtoint ptr %rbpl_virt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rbpl_virt, align 4
  call void @kfree(ptr noundef %72) #11
  %rbpl_table = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 43
  %73 = ptrtoint ptr %rbpl_table to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rbpl_table, align 4
  call void @kfree(ptr noundef %74) #11
  %rbpl_pool65 = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 45
  %75 = ptrtoint ptr %rbpl_pool65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rbpl_pool65, align 4
  call void @dma_pool_destroy(ptr noundef %76) #11
  %rbrq_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 39
  %77 = ptrtoint ptr %rbrq_base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rbrq_base, align 4
  %tobool66.not = icmp eq ptr %78, null
  br i1 %tobool66.not, label %if.end64.if.end71_crit_edge, label %if.then67

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pci_dev1, align 4
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %rbrq_phys = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 38
  %81 = ptrtoint ptr %rbrq_phys to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rbrq_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev69, i32 noundef 4096, ptr noundef nonnull %78, i32 noundef %82, i32 noundef 0) #11
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end64.if.end71_crit_edge
  %tbrq_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 52
  %83 = ptrtoint ptr %tbrq_base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tbrq_base, align 4
  %tobool72.not = icmp eq ptr %84, null
  br i1 %tobool72.not, label %if.end71.if.end77_crit_edge, label %if.then73

if.end71.if.end77_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pci_dev1, align 4
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %tbrq_phys = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 51
  %87 = ptrtoint ptr %tbrq_phys to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tbrq_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev75, i32 noundef 2048, ptr noundef nonnull %84, i32 noundef %88, i32 noundef 0) #11
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.end71.if.end77_crit_edge
  %tpdrq_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 34
  %89 = ptrtoint ptr %tpdrq_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tpdrq_base, align 4
  %tobool78.not = icmp eq ptr %90, null
  br i1 %tobool78.not, label %if.end77.if.end83_crit_edge, label %if.then79

if.end77.if.end83_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pci_dev1, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  %tpdrq_phys = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 33
  %93 = ptrtoint ptr %tpdrq_phys to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tpdrq_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev81, i32 noundef 2048, ptr noundef nonnull %90, i32 noundef %94, i32 noundef 0) #11
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end77.if.end83_crit_edge
  %tpd_pool = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 31
  %95 = ptrtoint ptr %tpd_pool to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tpd_pool, align 4
  call void @dma_pool_destroy(ptr noundef %96) #11
  %97 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pci_dev1, align 4
  %tobool85.not = icmp eq ptr %98, null
  br i1 %tobool85.not, label %if.end83.if.end93_crit_edge, label %if.then86

if.end83.if.end93_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %call88 = call i32 @pci_read_config_word(ptr noundef nonnull %98, i32 noundef 4, ptr noundef nonnull %command) #11
  %99 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %command, align 2
  %101 = and i16 %100, -7
  store i16 %101, ptr %command, align 2
  %102 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pci_dev1, align 4
  %call92 = call i32 @pci_write_config_word(ptr noundef %103, i32 noundef 4, i16 noundef zeroext %101) #11
  br label %if.end93

if.end93:                                         ; preds = %if.then86, %if.end83.if.end93_crit_edge
  %104 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %membase, align 4
  %tobool95.not = icmp eq ptr %105, null
  br i1 %tobool95.not, label %if.end93.if.end98_crit_edge, label %if.then96

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  call void @iounmap(ptr noundef nonnull %105) #11
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end93.if.end98_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen_cntl_0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @he_open(ptr noundef %vcc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %vci2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %4 = ptrtoint ptr %vci2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vci2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %cmp = icmp eq i32 %5, -2
  br i1 %cmp, label %entry.cleanup291_crit_edge, label %lor.lhs.false

entry.cleanup291_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup291

lor.lhs.false:                                    ; preds = %entry
  %vpi1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %6 = ptrtoint ptr %vpi1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vpi1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %7)
  %cmp3 = icmp eq i16 %7, -2
  br i1 %cmp3, label %lor.lhs.false.cleanup291_crit_edge, label %do.end

lor.lhs.false.cleanup291_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup291

do.end:                                           ; preds = %lor.lhs.false
  %conv428 = zext i16 %7 to i32
  %flags5 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags5) #11
  %vcibits = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %vcibits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vcibits, align 4
  %shl = shl i32 %conv428, %9
  %or = or i32 %shl, %5
  %and = and i32 %or, 8191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2592, i32 noundef 120) #15
  %cmp7 = icmp eq ptr %call7.i, null
  br i1 %cmp7, label %do.end12, label %if.end14

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %12) #14
  br label %cleanup291

if.end14:                                         ; preds = %do.end
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %prev.i, align 4
  %pdu_len = getelementptr inbounds %struct.he_vcc, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %pdu_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pdu_len, align 8
  %rc_index = getelementptr inbounds %struct.he_vcc, ptr %call7.i, i32 0, i32 2
  %16 = ptrtoint ptr %rc_index to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %rc_index, align 4
  %rx_waitq = getelementptr inbounds %struct.he_vcc, ptr %call7.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %rx_waitq, ptr noundef nonnull @.str.10, ptr noundef nonnull @he_open.__key) #11
  %tx_waitq = getelementptr inbounds %struct.he_vcc, ptr %call7.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %tx_waitq, ptr noundef nonnull @.str.12, ptr noundef nonnull @he_open.__key.11) #11
  %dev_data21 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %17 = ptrtoint ptr %dev_data21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %dev_data21, align 8
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %18 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp23.not = icmp eq i8 %19, 0
  br i1 %cmp23.not, label %if.end14.if.end211_crit_edge, label %if.then25

if.end14.if.end211_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

if.then25:                                        ; preds = %if.end14
  %call28 = tail call i32 @atm_pcr_goal(ptr noundef %qos) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.then25.if.end32_crit_edge

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then31:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %atm_dev = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 58
  %20 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %atm_dev, align 4
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link_rate, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then25.if.end32_crit_edge
  %pcr_goal.0 = phi i32 [ %23, %if.then31 ], [ %call28, %if.then25.if.end32_crit_edge ]
  %24 = tail call i32 @llvm.abs.i32(i32 %pcr_goal.0, i1 false)
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %aal, align 8
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %26, label %if.end32.if.then287_crit_edge [
    i8 5, label %if.end32.do.body44_crit_edge
    i8 13, label %sw.bb42
  ]

if.end32.do.body44_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body44

if.end32.if.then287_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then287

sw.bb42:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body44

do.body44:                                        ; preds = %sw.bb42, %if.end32.do.body44_crit_edge
  %tsr0_aal.0 = phi i32 [ 8192, %sw.bb42 ], [ 0, %if.end32.do.body44_crit_edge ]
  %tsr4.0 = phi i32 [ 16777217, %sw.bb42 ], [ 1, %if.end32.do.body44_crit_edge ]
  %global_lock = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 37
  %call49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  %shl54 = shl nuw nsw i32 %and, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !525
  tail call void @arm_heavy_mb() #11
  %or2.i = or i32 %shl54, 1073741824
  %28 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #11
  %membase.i = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !526
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body44
  %31 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %32, i32 526332
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  %34 = and i32 %33, 16
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %he_readl_internal.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

he_readl_internal.exit:                           ; preds = %while.cond.i
  %35 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %36, i32 526328
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #11, !srcloc !346
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !528
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call49) #11
  %39 = and i32 %38, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp60.not = icmp eq i32 %39, 0
  br i1 %cmp60.not, label %if.end69, label %do.end65

do.end65:                                         ; preds = %he_readl_internal.exit
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %41, i32 noundef %and, i32 noundef %38) #14
  br label %if.then287

if.end69:                                         ; preds = %he_readl_internal.exit
  %42 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %qos, align 8
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.154)
  switch i8 %43, label %if.end69.if.then287_crit_edge [
    i8 1, label %if.end69.do.body140_crit_edge
    i8 2, label %sw.bb78
  ]

if.end69.do.body140_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body140

if.end69.if.then287_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then287

sw.bb78:                                          ; preds = %if.end69
  %total_bw = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 23
  %45 = ptrtoint ptr %total_bw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %total_bw, align 4
  %add = add i32 %46, %24
  %atm_dev79 = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 58
  %47 = ptrtoint ptr %atm_dev79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %atm_dev79, align 4
  %link_rate80 = getelementptr inbounds %struct.atm_dev, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %link_rate80 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %link_rate80, align 4
  %mul = mul i32 %50, 9
  %div = sdiv i32 %mul, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div)
  %cmp81 = icmp ugt i32 %add, %div
  br i1 %cmp81, label %sw.bb78.if.then287_crit_edge, label %do.body86

sw.bb78.if.then287_crit_edge:                     ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then287

do.body86:                                        ; preds = %sw.bb78
  %call94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  %inuse = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 0, i32 1
  %51 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp101 = icmp eq i32 %52, 0
  br i1 %cmp101, label %do.body86.if.end114_crit_edge, label %lor.lhs.false103

do.body86.if.end114_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103:                                 ; preds = %do.body86
  %arrayidx = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 0
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %24)
  %cmp106 = icmp eq i32 %54, %24
  br i1 %cmp106, label %lor.lhs.false103.if.end114_crit_edge, label %for.inc

lor.lhs.false103.if.end114_crit_edge:             ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc:                                          ; preds = %lor.lhs.false103
  %inuse.1 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 1, i32 1
  %55 = ptrtoint ptr %inuse.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %inuse.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp101.1 = icmp eq i32 %56, 0
  br i1 %cmp101.1, label %for.inc.if.end114_crit_edge, label %lor.lhs.false103.1

for.inc.if.end114_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.1:                               ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 1
  %57 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %24)
  %cmp106.1 = icmp eq i32 %58, %24
  br i1 %cmp106.1, label %lor.lhs.false103.1.if.end114_crit_edge, label %for.inc.1

lor.lhs.false103.1.if.end114_crit_edge:           ; preds = %lor.lhs.false103.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.1:                                        ; preds = %lor.lhs.false103.1
  %inuse.2 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 2, i32 1
  %59 = ptrtoint ptr %inuse.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %inuse.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp101.2 = icmp eq i32 %60, 0
  br i1 %cmp101.2, label %for.inc.1.if.end114_crit_edge, label %lor.lhs.false103.2

for.inc.1.if.end114_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.2:                               ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 2
  %61 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %24)
  %cmp106.2 = icmp eq i32 %62, %24
  br i1 %cmp106.2, label %lor.lhs.false103.2.if.end114_crit_edge, label %for.inc.2

lor.lhs.false103.2.if.end114_crit_edge:           ; preds = %lor.lhs.false103.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.2:                                        ; preds = %lor.lhs.false103.2
  %inuse.3 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 3, i32 1
  %63 = ptrtoint ptr %inuse.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %inuse.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp101.3 = icmp eq i32 %64, 0
  br i1 %cmp101.3, label %for.inc.2.if.end114_crit_edge, label %lor.lhs.false103.3

for.inc.2.if.end114_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.3:                               ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 3
  %65 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %24)
  %cmp106.3 = icmp eq i32 %66, %24
  br i1 %cmp106.3, label %lor.lhs.false103.3.if.end114_crit_edge, label %for.inc.3

lor.lhs.false103.3.if.end114_crit_edge:           ; preds = %lor.lhs.false103.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.3:                                        ; preds = %lor.lhs.false103.3
  %inuse.4 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 4, i32 1
  %67 = ptrtoint ptr %inuse.4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %inuse.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp101.4 = icmp eq i32 %68, 0
  br i1 %cmp101.4, label %for.inc.3.if.end114_crit_edge, label %lor.lhs.false103.4

for.inc.3.if.end114_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.4:                               ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 4
  %69 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %24)
  %cmp106.4 = icmp eq i32 %70, %24
  br i1 %cmp106.4, label %lor.lhs.false103.4.if.end114_crit_edge, label %for.inc.4

lor.lhs.false103.4.if.end114_crit_edge:           ; preds = %lor.lhs.false103.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.4:                                        ; preds = %lor.lhs.false103.4
  %inuse.5 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 5, i32 1
  %71 = ptrtoint ptr %inuse.5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %inuse.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp101.5 = icmp eq i32 %72, 0
  br i1 %cmp101.5, label %for.inc.4.if.end114_crit_edge, label %lor.lhs.false103.5

for.inc.4.if.end114_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.5:                               ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 5
  %73 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %24)
  %cmp106.5 = icmp eq i32 %74, %24
  br i1 %cmp106.5, label %lor.lhs.false103.5.if.end114_crit_edge, label %for.inc.5

lor.lhs.false103.5.if.end114_crit_edge:           ; preds = %lor.lhs.false103.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.5:                                        ; preds = %lor.lhs.false103.5
  %inuse.6 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 6, i32 1
  %75 = ptrtoint ptr %inuse.6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %inuse.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp101.6 = icmp eq i32 %76, 0
  br i1 %cmp101.6, label %for.inc.5.if.end114_crit_edge, label %lor.lhs.false103.6

for.inc.5.if.end114_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.6:                               ; preds = %for.inc.5
  %arrayidx.6 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 6
  %77 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %24)
  %cmp106.6 = icmp eq i32 %78, %24
  br i1 %cmp106.6, label %lor.lhs.false103.6.if.end114_crit_edge, label %for.inc.6

lor.lhs.false103.6.if.end114_crit_edge:           ; preds = %lor.lhs.false103.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.6:                                        ; preds = %lor.lhs.false103.6
  %inuse.7 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 7, i32 1
  %79 = ptrtoint ptr %inuse.7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %inuse.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp101.7 = icmp eq i32 %80, 0
  br i1 %cmp101.7, label %for.inc.6.if.end114_crit_edge, label %lor.lhs.false103.7

for.inc.6.if.end114_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.7:                               ; preds = %for.inc.6
  %arrayidx.7 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 7
  %81 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %24)
  %cmp106.7 = icmp eq i32 %82, %24
  br i1 %cmp106.7, label %lor.lhs.false103.7.if.end114_crit_edge, label %for.inc.7

lor.lhs.false103.7.if.end114_crit_edge:           ; preds = %lor.lhs.false103.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.7:                                        ; preds = %lor.lhs.false103.7
  %inuse.8 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 8, i32 1
  %83 = ptrtoint ptr %inuse.8 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %inuse.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp101.8 = icmp eq i32 %84, 0
  br i1 %cmp101.8, label %for.inc.7.if.end114_crit_edge, label %lor.lhs.false103.8

for.inc.7.if.end114_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.8:                               ; preds = %for.inc.7
  %arrayidx.8 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 8
  %85 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %24)
  %cmp106.8 = icmp eq i32 %86, %24
  br i1 %cmp106.8, label %lor.lhs.false103.8.if.end114_crit_edge, label %for.inc.8

lor.lhs.false103.8.if.end114_crit_edge:           ; preds = %lor.lhs.false103.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.8:                                        ; preds = %lor.lhs.false103.8
  %inuse.9 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 9, i32 1
  %87 = ptrtoint ptr %inuse.9 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %inuse.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp101.9 = icmp eq i32 %88, 0
  br i1 %cmp101.9, label %for.inc.8.if.end114_crit_edge, label %lor.lhs.false103.9

for.inc.8.if.end114_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.9:                               ; preds = %for.inc.8
  %arrayidx.9 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 9
  %89 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %24)
  %cmp106.9 = icmp eq i32 %90, %24
  br i1 %cmp106.9, label %lor.lhs.false103.9.if.end114_crit_edge, label %for.inc.9

lor.lhs.false103.9.if.end114_crit_edge:           ; preds = %lor.lhs.false103.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.9:                                        ; preds = %lor.lhs.false103.9
  %inuse.10 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 10, i32 1
  %91 = ptrtoint ptr %inuse.10 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %inuse.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp101.10 = icmp eq i32 %92, 0
  br i1 %cmp101.10, label %for.inc.9.if.end114_crit_edge, label %lor.lhs.false103.10

for.inc.9.if.end114_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.10:                              ; preds = %for.inc.9
  %arrayidx.10 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 10
  %93 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %24)
  %cmp106.10 = icmp eq i32 %94, %24
  br i1 %cmp106.10, label %lor.lhs.false103.10.if.end114_crit_edge, label %for.inc.10

lor.lhs.false103.10.if.end114_crit_edge:          ; preds = %lor.lhs.false103.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.10:                                       ; preds = %lor.lhs.false103.10
  %inuse.11 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 11, i32 1
  %95 = ptrtoint ptr %inuse.11 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %inuse.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp101.11 = icmp eq i32 %96, 0
  br i1 %cmp101.11, label %for.inc.10.if.end114_crit_edge, label %lor.lhs.false103.11

for.inc.10.if.end114_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.11:                              ; preds = %for.inc.10
  %arrayidx.11 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 11
  %97 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %24)
  %cmp106.11 = icmp eq i32 %98, %24
  br i1 %cmp106.11, label %lor.lhs.false103.11.if.end114_crit_edge, label %for.inc.11

lor.lhs.false103.11.if.end114_crit_edge:          ; preds = %lor.lhs.false103.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.11:                                       ; preds = %lor.lhs.false103.11
  %inuse.12 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 12, i32 1
  %99 = ptrtoint ptr %inuse.12 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %inuse.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp101.12 = icmp eq i32 %100, 0
  br i1 %cmp101.12, label %for.inc.11.if.end114_crit_edge, label %lor.lhs.false103.12

for.inc.11.if.end114_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.12:                              ; preds = %for.inc.11
  %arrayidx.12 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 12
  %101 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %24)
  %cmp106.12 = icmp eq i32 %102, %24
  br i1 %cmp106.12, label %lor.lhs.false103.12.if.end114_crit_edge, label %for.inc.12

lor.lhs.false103.12.if.end114_crit_edge:          ; preds = %lor.lhs.false103.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.12:                                       ; preds = %lor.lhs.false103.12
  %inuse.13 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 13, i32 1
  %103 = ptrtoint ptr %inuse.13 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %inuse.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp101.13 = icmp eq i32 %104, 0
  br i1 %cmp101.13, label %for.inc.12.if.end114_crit_edge, label %lor.lhs.false103.13

for.inc.12.if.end114_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.13:                              ; preds = %for.inc.12
  %arrayidx.13 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 13
  %105 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %24)
  %cmp106.13 = icmp eq i32 %106, %24
  br i1 %cmp106.13, label %lor.lhs.false103.13.if.end114_crit_edge, label %for.inc.13

lor.lhs.false103.13.if.end114_crit_edge:          ; preds = %lor.lhs.false103.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.13:                                       ; preds = %lor.lhs.false103.13
  %inuse.14 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 14, i32 1
  %107 = ptrtoint ptr %inuse.14 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %inuse.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp101.14 = icmp eq i32 %108, 0
  br i1 %cmp101.14, label %for.inc.13.if.end114_crit_edge, label %lor.lhs.false103.14

for.inc.13.if.end114_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.14:                              ; preds = %for.inc.13
  %arrayidx.14 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 14
  %109 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %24)
  %cmp106.14 = icmp eq i32 %110, %24
  br i1 %cmp106.14, label %lor.lhs.false103.14.if.end114_crit_edge, label %for.inc.14

lor.lhs.false103.14.if.end114_crit_edge:          ; preds = %lor.lhs.false103.14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

for.inc.14:                                       ; preds = %lor.lhs.false103.14
  %inuse.15 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 15, i32 1
  %111 = ptrtoint ptr %inuse.15 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %inuse.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp101.15 = icmp eq i32 %112, 0
  br i1 %cmp101.15, label %for.inc.14.if.end114_crit_edge, label %lor.lhs.false103.15

for.inc.14.if.end114_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

lor.lhs.false103.15:                              ; preds = %for.inc.14
  %arrayidx.15 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 15
  %113 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %24)
  %cmp106.15 = icmp eq i32 %114, %24
  br i1 %cmp106.15, label %lor.lhs.false103.15.if.end114_crit_edge, label %if.then112

lor.lhs.false103.15.if.end114_crit_edge:          ; preds = %lor.lhs.false103.15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then112:                                       ; preds = %lor.lhs.false103.15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call94) #11
  br label %if.then287

if.end114:                                        ; preds = %lor.lhs.false103.15.if.end114_crit_edge, %for.inc.14.if.end114_crit_edge, %lor.lhs.false103.14.if.end114_crit_edge, %for.inc.13.if.end114_crit_edge, %lor.lhs.false103.13.if.end114_crit_edge, %for.inc.12.if.end114_crit_edge, %lor.lhs.false103.12.if.end114_crit_edge, %for.inc.11.if.end114_crit_edge, %lor.lhs.false103.11.if.end114_crit_edge, %for.inc.10.if.end114_crit_edge, %lor.lhs.false103.10.if.end114_crit_edge, %for.inc.9.if.end114_crit_edge, %lor.lhs.false103.9.if.end114_crit_edge, %for.inc.8.if.end114_crit_edge, %lor.lhs.false103.8.if.end114_crit_edge, %for.inc.7.if.end114_crit_edge, %lor.lhs.false103.7.if.end114_crit_edge, %for.inc.6.if.end114_crit_edge, %lor.lhs.false103.6.if.end114_crit_edge, %for.inc.5.if.end114_crit_edge, %lor.lhs.false103.5.if.end114_crit_edge, %for.inc.4.if.end114_crit_edge, %lor.lhs.false103.4.if.end114_crit_edge, %for.inc.3.if.end114_crit_edge, %lor.lhs.false103.3.if.end114_crit_edge, %for.inc.2.if.end114_crit_edge, %lor.lhs.false103.2.if.end114_crit_edge, %for.inc.1.if.end114_crit_edge, %lor.lhs.false103.1.if.end114_crit_edge, %for.inc.if.end114_crit_edge, %lor.lhs.false103.if.end114_crit_edge, %do.body86.if.end114_crit_edge
  %reg.0694.lcssa = phi i32 [ 0, %do.body86.if.end114_crit_edge ], [ 0, %lor.lhs.false103.if.end114_crit_edge ], [ 1, %for.inc.if.end114_crit_edge ], [ 1, %lor.lhs.false103.1.if.end114_crit_edge ], [ 2, %for.inc.1.if.end114_crit_edge ], [ 2, %lor.lhs.false103.2.if.end114_crit_edge ], [ 3, %for.inc.2.if.end114_crit_edge ], [ 3, %lor.lhs.false103.3.if.end114_crit_edge ], [ 4, %for.inc.3.if.end114_crit_edge ], [ 4, %lor.lhs.false103.4.if.end114_crit_edge ], [ 5, %for.inc.4.if.end114_crit_edge ], [ 5, %lor.lhs.false103.5.if.end114_crit_edge ], [ 6, %for.inc.5.if.end114_crit_edge ], [ 6, %lor.lhs.false103.6.if.end114_crit_edge ], [ 7, %for.inc.6.if.end114_crit_edge ], [ 7, %lor.lhs.false103.7.if.end114_crit_edge ], [ 8, %for.inc.7.if.end114_crit_edge ], [ 8, %lor.lhs.false103.8.if.end114_crit_edge ], [ 9, %for.inc.8.if.end114_crit_edge ], [ 9, %lor.lhs.false103.9.if.end114_crit_edge ], [ 10, %for.inc.9.if.end114_crit_edge ], [ 10, %lor.lhs.false103.10.if.end114_crit_edge ], [ 11, %for.inc.10.if.end114_crit_edge ], [ 11, %lor.lhs.false103.11.if.end114_crit_edge ], [ 12, %for.inc.11.if.end114_crit_edge ], [ 12, %lor.lhs.false103.12.if.end114_crit_edge ], [ 13, %for.inc.12.if.end114_crit_edge ], [ 13, %lor.lhs.false103.13.if.end114_crit_edge ], [ 14, %for.inc.13.if.end114_crit_edge ], [ 14, %lor.lhs.false103.14.if.end114_crit_edge ], [ 15, %for.inc.14.if.end114_crit_edge ], [ 15, %lor.lhs.false103.15.if.end114_crit_edge ]
  %115 = ptrtoint ptr %total_bw to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %total_bw, align 4
  %add116 = add i32 %116, %24
  store i32 %add116, ptr %total_bw, align 4
  %117 = ptrtoint ptr %rc_index to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %reg.0694.lcssa, ptr %rc_index, align 4
  %arrayidx119 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 %reg.0694.lcssa
  %inuse120 = getelementptr %struct.he_dev, ptr %3, i32 0, i32 22, i32 %reg.0694.lcssa, i32 1
  %118 = ptrtoint ptr %inuse120 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %inuse120, align 4
  %inc121 = add i32 %119, 1
  store i32 %inc121, ptr %inuse120, align 4
  %120 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %24, ptr %arrayidx119, align 4
  %media = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 5
  %121 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %media, align 4
  %and125 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool.not = icmp eq i32 %and125, 0
  %cond = select i1 %tobool.not, i32 50000000, i32 66667000
  %div126 = udiv i32 %cond, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div126)
  %cmp.i = icmp ult i32 %div126, 2
  br i1 %cmp.i, label %if.end114.rate_to_atmf.exit_crit_edge, label %if.end.i

if.end114.rate_to_atmf.exit_crit_edge:            ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %rate_to_atmf.exit

if.end.i:                                         ; preds = %if.end114
  %123 = shl i32 %div126, 8
  %shl.i = and i32 %123, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %shl.i)
  %cmp19.i = icmp ugt i32 %shl.i, 1023
  br i1 %cmp19.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %exp.011.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.i.while.body.i_crit_edge ]
  %rate.addr.010.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %shl.i, %if.end.i.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %exp.011.i, 1
  %shr.i = lshr i32 %rate.addr.010.i, 1
  %cmp1.i = icmp ugt i32 %rate.addr.010.i, 2047
  br i1 %cmp1.i, label %while.body.i.while.body.i_crit_edge, label %while.end.loopexit.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i = shl i32 %inc.i, 9
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.loopexit.i, %if.end.i.while.end.i_crit_edge
  %rate.addr.0.lcssa.i = phi i32 [ %shl.i, %if.end.i.while.end.i_crit_edge ], [ %shr.i, %while.end.loopexit.i ]
  %exp.0.lcssa.i = phi i32 [ 0, %if.end.i.while.end.i_crit_edge ], [ %phi.bo.i, %while.end.loopexit.i ]
  %and.i = and i32 %rate.addr.0.lcssa.i, 511
  %or.i = or i32 %and.i, %exp.0.lcssa.i
  %or3.i = or i32 %or.i, 16384
  br label %rate_to_atmf.exit

rate_to_atmf.exit:                                ; preds = %while.end.i, %if.end114.rate_to_atmf.exit_crit_edge
  %retval.0.i = phi i32 [ %or3.i, %while.end.i ], [ 0, %if.end114.rate_to_atmf.exit_crit_edge ]
  tail call fastcc void @he_writel_internal(ptr noundef %3, i32 noundef %retval.0.i, i32 noundef %reg.0694.lcssa, i32 noundef -2147483648)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call94) #11
  br label %do.body140

do.body140:                                       ; preds = %rate_to_atmf.exit, %if.end69.do.body140_crit_edge
  %and135.pn = phi i32 [ %reg.0694.lcssa, %rate_to_atmf.exit ], [ 8454400, %if.end69.do.body140_crit_edge ]
  %tsr0.0 = or i32 %and135.pn, %tsr0_aal.0
  %call148 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %124 = tail call i32 @llvm.bswap.i32(i32 %tsr0.0) #11
  %125 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %membase.i, align 4
  %add.ptr.i431 = getelementptr i8, ptr %126, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i431, i32 %124) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %127 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %128, i32 526328
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i = or i32 %shl54, 1610612736
  %130 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #11
  %131 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %132, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %130) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i434

while.cond.i434:                                  ; preds = %while.cond.i434.while.cond.i434_crit_edge, %do.body140
  %133 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %134, i32 526332
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %136 = and i32 %135, 16
  %tobool.not.i433 = icmp eq i32 %136, 0
  br i1 %tobool.not.i433, label %he_writel_internal.exit, label %while.cond.i434.while.cond.i434_crit_edge

while.cond.i434.while.cond.i434_crit_edge:        ; preds = %while.cond.i434
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i434

he_writel_internal.exit:                          ; preds = %while.cond.i434
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %137 = tail call i32 @llvm.bswap.i32(i32 %tsr4.0) #11
  %138 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %membase.i, align 4
  %add.ptr.i437 = getelementptr i8, ptr %139, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i437, i32 %137) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %140 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i438 = getelementptr i8, ptr %141, i32 526328
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i438) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i440 = or i32 %shl54, 1610612740
  %143 = tail call i32 @llvm.bswap.i32(i32 %or11.i440) #11
  %144 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i441 = getelementptr i8, ptr %145, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i441, i32 %143) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i444

while.cond.i444:                                  ; preds = %while.cond.i444.while.cond.i444_crit_edge, %he_writel_internal.exit
  %146 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i442 = getelementptr i8, ptr %147, i32 526332
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i442) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %149 = and i32 %148, 16
  %tobool.not.i443 = icmp eq i32 %149, 0
  br i1 %tobool.not.i443, label %he_writel_internal.exit446, label %while.cond.i444.while.cond.i444_crit_edge

while.cond.i444.while.cond.i444_crit_edge:        ; preds = %while.cond.i444
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i444

he_writel_internal.exit446:                       ; preds = %while.cond.i444
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcr_goal.0)
  %cmp.i448 = icmp eq i32 %pcr_goal.0, 0
  br i1 %cmp.i448, label %he_writel_internal.exit446.rate_to_atmf.exit467_crit_edge, label %if.end.i451

he_writel_internal.exit446.rate_to_atmf.exit467_crit_edge: ; preds = %he_writel_internal.exit446
  call void @__sanitizer_cov_trace_pc() #13
  br label %rate_to_atmf.exit467

if.end.i451:                                      ; preds = %he_writel_internal.exit446
  %shl.i449 = shl i32 %24, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %shl.i449)
  %cmp19.i450 = icmp ugt i32 %shl.i449, 1023
  br i1 %cmp19.i450, label %if.end.i451.while.body.i457_crit_edge, label %if.end.i451.while.end.i465_crit_edge

if.end.i451.while.end.i465_crit_edge:             ; preds = %if.end.i451
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i465

if.end.i451.while.body.i457_crit_edge:            ; preds = %if.end.i451
  br label %while.body.i457

while.body.i457:                                  ; preds = %while.body.i457.while.body.i457_crit_edge, %if.end.i451.while.body.i457_crit_edge
  %exp.011.i452 = phi i32 [ %inc.i454, %while.body.i457.while.body.i457_crit_edge ], [ 0, %if.end.i451.while.body.i457_crit_edge ]
  %rate.addr.010.i453 = phi i32 [ %shr.i455, %while.body.i457.while.body.i457_crit_edge ], [ %shl.i449, %if.end.i451.while.body.i457_crit_edge ]
  %inc.i454 = add nuw nsw i32 %exp.011.i452, 1
  %shr.i455 = lshr i32 %rate.addr.010.i453, 1
  %cmp1.i456 = icmp ugt i32 %rate.addr.010.i453, 2047
  br i1 %cmp1.i456, label %while.body.i457.while.body.i457_crit_edge, label %while.end.loopexit.i459

while.body.i457.while.body.i457_crit_edge:        ; preds = %while.body.i457
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i457

while.end.loopexit.i459:                          ; preds = %while.body.i457
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i458 = shl i32 %inc.i454, 9
  br label %while.end.i465

while.end.i465:                                   ; preds = %while.end.loopexit.i459, %if.end.i451.while.end.i465_crit_edge
  %rate.addr.0.lcssa.i460 = phi i32 [ %shl.i449, %if.end.i451.while.end.i465_crit_edge ], [ %shr.i455, %while.end.loopexit.i459 ]
  %exp.0.lcssa.i461 = phi i32 [ 0, %if.end.i451.while.end.i465_crit_edge ], [ %phi.bo.i458, %while.end.loopexit.i459 ]
  %and.i462 = and i32 %rate.addr.0.lcssa.i460, 511
  %or.i463 = or i32 %and.i462, %exp.0.lcssa.i461
  %or3.i464 = or i32 %or.i463, 16384
  br label %rate_to_atmf.exit467

rate_to_atmf.exit467:                             ; preds = %while.end.i465, %he_writel_internal.exit446.rate_to_atmf.exit467_crit_edge
  %retval.0.i466 = phi i32 [ %or3.i464, %while.end.i465 ], [ 0, %he_writel_internal.exit446.rate_to_atmf.exit467_crit_edge ]
  %and163 = shl i32 %retval.0.i466, 16
  %shl164 = and i32 %and163, 2147418112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %150 = tail call i32 @llvm.bswap.i32(i32 %shl164) #11
  %151 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %membase.i, align 4
  %add.ptr.i469 = getelementptr i8, ptr %152, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i469, i32 %150) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %153 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i470 = getelementptr i8, ptr %154, i32 526328
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i470) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i472 = or i32 %shl54, 1610612737
  %156 = tail call i32 @llvm.bswap.i32(i32 %or11.i472) #11
  %157 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i473 = getelementptr i8, ptr %158, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i473, i32 %156) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i476

while.cond.i476:                                  ; preds = %while.cond.i476.while.cond.i476_crit_edge, %rate_to_atmf.exit467
  %159 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i474 = getelementptr i8, ptr %160, i32 526332
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i474) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %162 = and i32 %161, 16
  %tobool.not.i475 = icmp eq i32 %162, 0
  br i1 %tobool.not.i475, label %he_writel_internal.exit478, label %while.cond.i476.while.cond.i476_crit_edge

while.cond.i476.while.cond.i476_crit_edge:        ; preds = %while.cond.i476
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i476

he_writel_internal.exit478:                       ; preds = %while.cond.i476
  br i1 %cmp.i448, label %he_writel_internal.exit478.rate_to_atmf.exit498_crit_edge, label %if.end.i482

he_writel_internal.exit478.rate_to_atmf.exit498_crit_edge: ; preds = %he_writel_internal.exit478
  call void @__sanitizer_cov_trace_pc() #13
  br label %rate_to_atmf.exit498

if.end.i482:                                      ; preds = %he_writel_internal.exit478
  %shl.i480 = shl i32 %24, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %shl.i480)
  %cmp19.i481 = icmp ugt i32 %shl.i480, 1023
  br i1 %cmp19.i481, label %if.end.i482.while.body.i488_crit_edge, label %if.end.i482.while.end.i496_crit_edge

if.end.i482.while.end.i496_crit_edge:             ; preds = %if.end.i482
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i496

if.end.i482.while.body.i488_crit_edge:            ; preds = %if.end.i482
  br label %while.body.i488

while.body.i488:                                  ; preds = %while.body.i488.while.body.i488_crit_edge, %if.end.i482.while.body.i488_crit_edge
  %exp.011.i483 = phi i32 [ %inc.i485, %while.body.i488.while.body.i488_crit_edge ], [ 0, %if.end.i482.while.body.i488_crit_edge ]
  %rate.addr.010.i484 = phi i32 [ %shr.i486, %while.body.i488.while.body.i488_crit_edge ], [ %shl.i480, %if.end.i482.while.body.i488_crit_edge ]
  %inc.i485 = add nuw nsw i32 %exp.011.i483, 1
  %shr.i486 = lshr i32 %rate.addr.010.i484, 1
  %cmp1.i487 = icmp ugt i32 %rate.addr.010.i484, 2047
  br i1 %cmp1.i487, label %while.body.i488.while.body.i488_crit_edge, label %while.end.loopexit.i490

while.body.i488.while.body.i488_crit_edge:        ; preds = %while.body.i488
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i488

while.end.loopexit.i490:                          ; preds = %while.body.i488
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i489 = shl i32 %inc.i485, 9
  br label %while.end.i496

while.end.i496:                                   ; preds = %while.end.loopexit.i490, %if.end.i482.while.end.i496_crit_edge
  %rate.addr.0.lcssa.i491 = phi i32 [ %shl.i480, %if.end.i482.while.end.i496_crit_edge ], [ %shr.i486, %while.end.loopexit.i490 ]
  %exp.0.lcssa.i492 = phi i32 [ 0, %if.end.i482.while.end.i496_crit_edge ], [ %phi.bo.i489, %while.end.loopexit.i490 ]
  %and.i493 = and i32 %rate.addr.0.lcssa.i491, 511
  %or.i494 = or i32 %and.i493, %exp.0.lcssa.i492
  %or3.i495 = or i32 %or.i494, 16384
  br label %rate_to_atmf.exit498

rate_to_atmf.exit498:                             ; preds = %while.end.i496, %he_writel_internal.exit478.rate_to_atmf.exit498_crit_edge
  %retval.0.i497 = phi i32 [ %or3.i495, %while.end.i496 ], [ 0, %he_writel_internal.exit478.rate_to_atmf.exit498_crit_edge ]
  %and170 = shl i32 %retval.0.i497, 16
  %shl171 = and i32 %and170, 2147418112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %163 = tail call i32 @llvm.bswap.i32(i32 %shl171) #11
  %164 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %membase.i, align 4
  %add.ptr.i500 = getelementptr i8, ptr %165, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i500, i32 %163) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %166 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i501 = getelementptr i8, ptr %167, i32 526328
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i501) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i503 = or i32 %shl54, 1610612738
  %169 = tail call i32 @llvm.bswap.i32(i32 %or11.i503) #11
  %170 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i504 = getelementptr i8, ptr %171, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i504, i32 %169) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i507

while.cond.i507:                                  ; preds = %while.cond.i507.while.cond.i507_crit_edge, %rate_to_atmf.exit498
  %172 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i505 = getelementptr i8, ptr %173, i32 526332
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i505) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %175 = and i32 %174, 16
  %tobool.not.i506 = icmp eq i32 %175, 0
  br i1 %tobool.not.i506, label %he_writel_internal.exit509, label %while.cond.i507.while.cond.i507_crit_edge

while.cond.i507.while.cond.i507_crit_edge:        ; preds = %while.cond.i507
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i507

he_writel_internal.exit509:                       ; preds = %while.cond.i507
  %shl175 = shl nuw nsw i32 %and, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %176 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %membase.i, align 4
  %add.ptr.i511 = getelementptr i8, ptr %177, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i511, i32 4096) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %178 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i512 = getelementptr i8, ptr %179, i32 526328
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i512) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i514 = or i32 %shl175, 1610645505
  %181 = tail call i32 @llvm.bswap.i32(i32 %or11.i514) #11
  %182 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i515 = getelementptr i8, ptr %183, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i515, i32 %181) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i518

while.cond.i518:                                  ; preds = %while.cond.i518.while.cond.i518_crit_edge, %he_writel_internal.exit509
  %184 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i516 = getelementptr i8, ptr %185, i32 526332
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i516) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %187 = and i32 %186, 16
  %tobool.not.i517 = icmp eq i32 %187, 0
  br i1 %tobool.not.i517, label %he_writel_internal.exit520, label %while.cond.i518.while.cond.i518_crit_edge

while.cond.i518.while.cond.i518_crit_edge:        ; preds = %while.cond.i518
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i518

he_writel_internal.exit520:                       ; preds = %while.cond.i518
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %188 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %membase.i, align 4
  %add.ptr.i522 = getelementptr i8, ptr %189, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i522, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %190 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i523 = getelementptr i8, ptr %191, i32 526328
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i523) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i525 = or i32 %shl54, 1610612739
  %193 = tail call i32 @llvm.bswap.i32(i32 %or11.i525) #11
  %194 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i526 = getelementptr i8, ptr %195, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i526, i32 %193) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i529

while.cond.i529:                                  ; preds = %while.cond.i529.while.cond.i529_crit_edge, %he_writel_internal.exit520
  %196 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i527 = getelementptr i8, ptr %197, i32 526332
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i527) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %199 = and i32 %198, 16
  %tobool.not.i528 = icmp eq i32 %199, 0
  br i1 %tobool.not.i528, label %he_writel_internal.exit531, label %while.cond.i529.while.cond.i529_crit_edge

while.cond.i529.while.cond.i529_crit_edge:        ; preds = %while.cond.i529
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i529

he_writel_internal.exit531:                       ; preds = %while.cond.i529
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %200 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %membase.i, align 4
  %add.ptr.i533 = getelementptr i8, ptr %201, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i533, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %202 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i534 = getelementptr i8, ptr %203, i32 526328
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i534) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i536 = or i32 %shl54, 1610612741
  %205 = tail call i32 @llvm.bswap.i32(i32 %or11.i536) #11
  %206 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i537 = getelementptr i8, ptr %207, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i537, i32 %205) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i540

while.cond.i540:                                  ; preds = %while.cond.i540.while.cond.i540_crit_edge, %he_writel_internal.exit531
  %208 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i538 = getelementptr i8, ptr %209, i32 526332
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i538) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %211 = and i32 %210, 16
  %tobool.not.i539 = icmp eq i32 %211, 0
  br i1 %tobool.not.i539, label %he_writel_internal.exit542, label %while.cond.i540.while.cond.i540_crit_edge

while.cond.i540.while.cond.i540_crit_edge:        ; preds = %while.cond.i540
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i540

he_writel_internal.exit542:                       ; preds = %while.cond.i540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %212 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %membase.i, align 4
  %add.ptr.i544 = getelementptr i8, ptr %213, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i544, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %214 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i545 = getelementptr i8, ptr %215, i32 526328
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i545) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i547 = or i32 %shl54, 1610612742
  %217 = tail call i32 @llvm.bswap.i32(i32 %or11.i547) #11
  %218 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i548 = getelementptr i8, ptr %219, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i548, i32 %217) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i551

while.cond.i551:                                  ; preds = %while.cond.i551.while.cond.i551_crit_edge, %he_writel_internal.exit542
  %220 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i549 = getelementptr i8, ptr %221, i32 526332
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i549) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %223 = and i32 %222, 16
  %tobool.not.i550 = icmp eq i32 %223, 0
  br i1 %tobool.not.i550, label %he_writel_internal.exit553, label %while.cond.i551.while.cond.i551_crit_edge

while.cond.i551.while.cond.i551_crit_edge:        ; preds = %while.cond.i551
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i551

he_writel_internal.exit553:                       ; preds = %while.cond.i551
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %224 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %membase.i, align 4
  %add.ptr.i555 = getelementptr i8, ptr %225, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i555, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %226 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i556 = getelementptr i8, ptr %227, i32 526328
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i556) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i558 = or i32 %shl54, 1610612743
  %229 = tail call i32 @llvm.bswap.i32(i32 %or11.i558) #11
  %230 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i559 = getelementptr i8, ptr %231, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i559, i32 %229) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i562

while.cond.i562:                                  ; preds = %while.cond.i562.while.cond.i562_crit_edge, %he_writel_internal.exit553
  %232 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i560 = getelementptr i8, ptr %233, i32 526332
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i560) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %235 = and i32 %234, 16
  %tobool.not.i561 = icmp eq i32 %235, 0
  br i1 %tobool.not.i561, label %he_writel_internal.exit564, label %while.cond.i562.while.cond.i562_crit_edge

while.cond.i562.while.cond.i562_crit_edge:        ; preds = %while.cond.i562
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i562

he_writel_internal.exit564:                       ; preds = %while.cond.i562
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %236 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %membase.i, align 4
  %add.ptr.i566 = getelementptr i8, ptr %237, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i566, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %238 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i567 = getelementptr i8, ptr %239, i32 526328
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i567) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i569 = or i32 %shl175, 1610645504
  %241 = tail call i32 @llvm.bswap.i32(i32 %or11.i569) #11
  %242 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i570 = getelementptr i8, ptr %243, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i570, i32 %241) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i573

while.cond.i573:                                  ; preds = %while.cond.i573.while.cond.i573_crit_edge, %he_writel_internal.exit564
  %244 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i571 = getelementptr i8, ptr %245, i32 526332
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i571) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %247 = and i32 %246, 16
  %tobool.not.i572 = icmp eq i32 %247, 0
  br i1 %tobool.not.i572, label %he_writel_internal.exit575, label %while.cond.i573.while.cond.i573_crit_edge

while.cond.i573.while.cond.i573_crit_edge:        ; preds = %while.cond.i573
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i573

he_writel_internal.exit575:                       ; preds = %while.cond.i573
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %248 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %membase.i, align 4
  %add.ptr.i577 = getelementptr i8, ptr %249, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i577, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %250 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i578 = getelementptr i8, ptr %251, i32 526328
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i578) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i580 = or i32 %shl175, 1610645506
  %253 = tail call i32 @llvm.bswap.i32(i32 %or11.i580) #11
  %254 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i581 = getelementptr i8, ptr %255, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i581, i32 %253) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i584

while.cond.i584:                                  ; preds = %while.cond.i584.while.cond.i584_crit_edge, %he_writel_internal.exit575
  %256 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i582 = getelementptr i8, ptr %257, i32 526332
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i582) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %259 = and i32 %258, 16
  %tobool.not.i583 = icmp eq i32 %259, 0
  br i1 %tobool.not.i583, label %he_writel_internal.exit586, label %while.cond.i584.while.cond.i584_crit_edge

while.cond.i584.while.cond.i584_crit_edge:        ; preds = %while.cond.i584
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i584

he_writel_internal.exit586:                       ; preds = %while.cond.i584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %260 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %membase.i, align 4
  %add.ptr.i588 = getelementptr i8, ptr %261, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i588, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %262 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i589 = getelementptr i8, ptr %263, i32 526328
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i589) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i591 = or i32 %shl175, 1610645507
  %265 = tail call i32 @llvm.bswap.i32(i32 %or11.i591) #11
  %266 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i592 = getelementptr i8, ptr %267, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i592, i32 %265) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i595

while.cond.i595:                                  ; preds = %while.cond.i595.while.cond.i595_crit_edge, %he_writel_internal.exit586
  %268 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i593 = getelementptr i8, ptr %269, i32 526332
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i593) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %271 = and i32 %270, 16
  %tobool.not.i594 = icmp eq i32 %271, 0
  br i1 %tobool.not.i594, label %he_writel_internal.exit597, label %while.cond.i595.while.cond.i595_crit_edge

while.cond.i595.while.cond.i595_crit_edge:        ; preds = %while.cond.i595
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i595

he_writel_internal.exit597:                       ; preds = %while.cond.i595
  %shl199 = shl nuw nsw i32 %and, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %272 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %membase.i, align 4
  %add.ptr.i599 = getelementptr i8, ptr %273, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i599, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %274 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i600 = getelementptr i8, ptr %275, i32 526328
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i600) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i602 = or i32 %shl199, 1610661888
  %277 = tail call i32 @llvm.bswap.i32(i32 %or11.i602) #11
  %278 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i603 = getelementptr i8, ptr %279, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i603, i32 %277) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i606

while.cond.i606:                                  ; preds = %while.cond.i606.while.cond.i606_crit_edge, %he_writel_internal.exit597
  %280 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i604 = getelementptr i8, ptr %281, i32 526332
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i604) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %283 = and i32 %282, 16
  %tobool.not.i605 = icmp eq i32 %283, 0
  br i1 %tobool.not.i605, label %he_writel_internal.exit608, label %while.cond.i606.while.cond.i606_crit_edge

while.cond.i606.while.cond.i606_crit_edge:        ; preds = %while.cond.i606
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i606

he_writel_internal.exit608:                       ; preds = %while.cond.i606
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %284 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %membase.i, align 4
  %add.ptr.i610 = getelementptr i8, ptr %285, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i610, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %286 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i611 = getelementptr i8, ptr %287, i32 526328
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i611) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i613 = or i32 %shl199, 1610661889
  %289 = tail call i32 @llvm.bswap.i32(i32 %or11.i613) #11
  %290 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i614 = getelementptr i8, ptr %291, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i614, i32 %289) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i617

while.cond.i617:                                  ; preds = %while.cond.i617.while.cond.i617_crit_edge, %he_writel_internal.exit608
  %292 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i615 = getelementptr i8, ptr %293, i32 526332
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i615) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %295 = and i32 %294, 16
  %tobool.not.i616 = icmp eq i32 %295, 0
  br i1 %tobool.not.i616, label %he_writel_internal.exit619, label %while.cond.i617.while.cond.i617_crit_edge

while.cond.i617.while.cond.i617_crit_edge:        ; preds = %while.cond.i617
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i617

he_writel_internal.exit619:                       ; preds = %while.cond.i617
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %296 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %membase.i, align 4
  %add.ptr.i621 = getelementptr i8, ptr %297, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i621, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %298 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i622 = getelementptr i8, ptr %299, i32 526328
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i622) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i624 = or i32 %and, 1610670080
  %301 = tail call i32 @llvm.bswap.i32(i32 %or11.i624) #11
  %302 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i625 = getelementptr i8, ptr %303, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i625, i32 %301) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i628

while.cond.i628:                                  ; preds = %while.cond.i628.while.cond.i628_crit_edge, %he_writel_internal.exit619
  %304 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i626 = getelementptr i8, ptr %305, i32 526332
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i626) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %307 = and i32 %306, 16
  %tobool.not.i627 = icmp eq i32 %307, 0
  br i1 %tobool.not.i627, label %he_writel_internal.exit630, label %while.cond.i628.while.cond.i628_crit_edge

while.cond.i628.while.cond.i628_crit_edge:        ; preds = %while.cond.i628
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i628

he_writel_internal.exit630:                       ; preds = %while.cond.i628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !525
  tail call void @arm_heavy_mb() #11
  %308 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %membase.i, align 4
  %add.ptr.i633 = getelementptr i8, ptr %309, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i633, i32 %28) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !526
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i636

while.cond.i636:                                  ; preds = %while.cond.i636.while.cond.i636_crit_edge, %he_writel_internal.exit630
  %310 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %membase.i, align 4
  %add.ptr7.i634 = getelementptr i8, ptr %311, i32 526332
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i634) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  %313 = and i32 %312, 16
  %tobool.not.i635 = icmp eq i32 %313, 0
  br i1 %tobool.not.i635, label %cleanup, label %while.cond.i636.while.cond.i636_crit_edge

while.cond.i636.while.cond.i636_crit_edge:        ; preds = %while.cond.i636
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i636

cleanup:                                          ; preds = %while.cond.i636
  call void @__sanitizer_cov_trace_pc() #13
  %314 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %membase.i, align 4
  %add.ptr12.i637 = getelementptr i8, ptr %315, i32 526328
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i637) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !528
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call148) #11
  br label %if.end211

if.end211:                                        ; preds = %cleanup, %if.end14.if.end211_crit_edge
  %rxtp = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 1
  %317 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %rxtp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %cmp215.not = icmp eq i8 %318, 0
  br i1 %cmp215.not, label %if.end211.if.else_crit_edge, label %if.then217

if.end211.if.else_crit_edge:                      ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then217:                                       ; preds = %if.end211
  %aal223 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %319 = ptrtoint ptr %aal223 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %aal223, align 8
  %321 = zext i8 %320 to i64
  call void @__sanitizer_cov_trace_switch(i64 %321, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %320, label %if.then217.if.then287_crit_edge [
    i8 5, label %if.then217.do.body230_crit_edge
    i8 13, label %sw.bb226
  ]

if.then217.do.body230_crit_edge:                  ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body230

if.then217.if.then287_crit_edge:                  ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then287

sw.bb226:                                         ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body230

do.body230:                                       ; preds = %sw.bb226, %if.then217.do.body230_crit_edge
  %aal218.0 = phi i32 [ 3, %sw.bb226 ], [ 0, %if.then217.do.body230_crit_edge ]
  %global_lock236 = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 37
  %call238 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock236) #11
  %shl243 = shl nuw nsw i32 %and, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !525
  tail call void @arm_heavy_mb() #11
  %322 = tail call i32 @llvm.bswap.i32(i32 %shl243) #11
  %membase.i640 = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 2
  %323 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %membase.i640, align 4
  %add.ptr.i641 = getelementptr i8, ptr %324, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i641, i32 %322) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !526
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i644

while.cond.i644:                                  ; preds = %while.cond.i644.while.cond.i644_crit_edge, %do.body230
  %325 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %membase.i640, align 4
  %add.ptr7.i642 = getelementptr i8, ptr %326, i32 526332
  %327 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i642) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  %328 = and i32 %327, 16
  %tobool.not.i643 = icmp eq i32 %328, 0
  br i1 %tobool.not.i643, label %he_readl_internal.exit647, label %while.cond.i644.while.cond.i644_crit_edge

while.cond.i644.while.cond.i644_crit_edge:        ; preds = %while.cond.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i644

he_readl_internal.exit647:                        ; preds = %while.cond.i644
  %329 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %membase.i640, align 4
  %add.ptr12.i645 = getelementptr i8, ptr %330, i32 526328
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i645) #11, !srcloc !346
  %332 = tail call i32 @llvm.bswap.i32(i32 %331) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !528
  %and247 = and i32 %332, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %if.end257, label %if.then249

if.then249:                                       ; preds = %he_readl_internal.exit647
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock236, i32 noundef %call238) #11
  %333 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %3, align 4
  %call256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %334, i32 noundef %and, i32 noundef %332) #14
  br label %if.then287

if.end257:                                        ; preds = %he_readl_internal.exit647
  %335 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %rxtp, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %337 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %membase.i640, align 4
  %add.ptr.i649 = getelementptr i8, ptr %338, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i649, i32 4) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %339 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %membase.i640, align 4
  %add.ptr6.i650 = getelementptr i8, ptr %340, i32 526328
  %341 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i650) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i651 = or i32 %shl243, 536870916
  %342 = tail call i32 @llvm.bswap.i32(i32 %or11.i651) #11
  %343 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %membase.i640, align 4
  %add.ptr13.i652 = getelementptr i8, ptr %344, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i652, i32 %342) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i655

while.cond.i655:                                  ; preds = %while.cond.i655.while.cond.i655_crit_edge, %if.end257
  %345 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %membase.i640, align 4
  %add.ptr20.i653 = getelementptr i8, ptr %346, i32 526332
  %347 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i653) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %348 = and i32 %347, 16
  %tobool.not.i654 = icmp eq i32 %348, 0
  br i1 %tobool.not.i654, label %he_writel_internal.exit657, label %while.cond.i655.while.cond.i655_crit_edge

while.cond.i655.while.cond.i655_crit_edge:        ; preds = %while.cond.i655
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i655

he_writel_internal.exit657:                       ; preds = %while.cond.i655
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %349 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %membase.i640, align 4
  %add.ptr.i659 = getelementptr i8, ptr %350, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i659, i32 2048) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %351 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %membase.i640, align 4
  %add.ptr6.i660 = getelementptr i8, ptr %352, i32 526328
  %353 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i660) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i661 = or i32 %shl243, 536870913
  %354 = tail call i32 @llvm.bswap.i32(i32 %or11.i661) #11
  %355 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %membase.i640, align 4
  %add.ptr13.i662 = getelementptr i8, ptr %356, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i662, i32 %354) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i665

while.cond.i665:                                  ; preds = %while.cond.i665.while.cond.i665_crit_edge, %he_writel_internal.exit657
  %357 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %membase.i640, align 4
  %add.ptr20.i663 = getelementptr i8, ptr %358, i32 526332
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i663) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %360 = and i32 %359, 16
  %tobool.not.i664 = icmp eq i32 %360, 0
  br i1 %tobool.not.i664, label %he_writel_internal.exit667, label %while.cond.i665.while.cond.i665_crit_edge

while.cond.i665.while.cond.i665_crit_edge:        ; preds = %while.cond.i665
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i665

he_writel_internal.exit667:                       ; preds = %while.cond.i665
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %336)
  %cmp262 = icmp eq i8 %336, 1
  %or272 = select i1 %cmp262, i32 1136, i32 1088
  %or273 = or i32 %or272, %aal218.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %361 = tail call i32 @llvm.bswap.i32(i32 %or273) #11
  %362 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %membase.i640, align 4
  %add.ptr.i669 = getelementptr i8, ptr %363, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i669, i32 %361) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %364 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %membase.i640, align 4
  %add.ptr6.i670 = getelementptr i8, ptr %365, i32 526328
  %366 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i670) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i671 = or i32 %shl243, 536870912
  %367 = tail call i32 @llvm.bswap.i32(i32 %or11.i671) #11
  %368 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %membase.i640, align 4
  %add.ptr13.i672 = getelementptr i8, ptr %369, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i672, i32 %367) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i675

while.cond.i675:                                  ; preds = %while.cond.i675.while.cond.i675_crit_edge, %he_writel_internal.exit667
  %370 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %membase.i640, align 4
  %add.ptr20.i673 = getelementptr i8, ptr %371, i32 526332
  %372 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i673) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %373 = and i32 %372, 16
  %tobool.not.i674 = icmp eq i32 %373, 0
  br i1 %tobool.not.i674, label %he_writel_internal.exit677, label %while.cond.i675.while.cond.i675_crit_edge

while.cond.i675.while.cond.i675_crit_edge:        ; preds = %while.cond.i675
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i675

he_writel_internal.exit677:                       ; preds = %while.cond.i675
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !525
  tail call void @arm_heavy_mb() #11
  %374 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %membase.i640, align 4
  %add.ptr.i679 = getelementptr i8, ptr %375, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i679, i32 %322) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !526
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i682

while.cond.i682:                                  ; preds = %while.cond.i682.while.cond.i682_crit_edge, %he_writel_internal.exit677
  %376 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %membase.i640, align 4
  %add.ptr7.i680 = getelementptr i8, ptr %377, i32 526332
  %378 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i680) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  %379 = and i32 %378, 16
  %tobool.not.i681 = icmp eq i32 %379, 0
  br i1 %tobool.not.i681, label %he_readl_internal.exit685, label %while.cond.i682.while.cond.i682_crit_edge

while.cond.i682.while.cond.i682_crit_edge:        ; preds = %while.cond.i682
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i682

he_readl_internal.exit685:                        ; preds = %while.cond.i682
  call void @__sanitizer_cov_trace_pc() #13
  %380 = ptrtoint ptr %membase.i640 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %membase.i640, align 4
  %add.ptr12.i683 = getelementptr i8, ptr %381, i32 526328
  %382 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i683) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !528
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock236, i32 noundef %call238) #11
  br label %if.else

if.then287:                                       ; preds = %if.then249, %if.then217.if.then287_crit_edge, %if.then112, %sw.bb78.if.then287_crit_edge, %if.end69.if.then287_crit_edge, %do.end65, %if.end32.if.then287_crit_edge
  %err.3.ph = phi i32 [ -22, %if.then217.if.then287_crit_edge ], [ -16, %if.then249 ], [ -22, %if.end69.if.then287_crit_edge ], [ -16, %sw.bb78.if.then287_crit_edge ], [ -22, %if.end32.if.then287_crit_edge ], [ -16, %if.then112 ], [ -16, %do.end65 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags5) #11
  br label %cleanup291

if.else:                                          ; preds = %he_readl_internal.exit685, %if.end211.if.else_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags5) #11
  br label %cleanup291

cleanup291:                                       ; preds = %if.else, %if.then287, %do.end12, %lor.lhs.false.cleanup291_crit_edge, %entry.cleanup291_crit_edge
  %retval.0 = phi i32 [ -12, %do.end12 ], [ 0, %lor.lhs.false.cleanup291_crit_edge ], [ 0, %entry.cleanup291_crit_edge ], [ 0, %if.else ], [ %err.3.ph, %if.then287 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @he_close(ptr noundef %vcc) #2 align 64 {
entry:
  %mapping.i = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %tsr4 = alloca i32, align 4
  %tsr0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !330) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_data, align 8
  %dev_data3 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %17 = ptrtoint ptr %dev_data3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_data3, align 8
  %flags4 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags4) #11
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %19 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vpi, align 4
  %conv608 = zext i16 %20 to i32
  %vcibits = getelementptr inbounds %struct.he_dev, ptr %16, i32 0, i32 6
  %21 = ptrtoint ptr %vcibits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vcibits, align 4
  %shl = shl i32 %conv608, %22
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %23 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vci, align 8
  %or = or i32 %shl, %24
  %and = and i32 %or, 8191
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %rxtp = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %rxtp to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rxtp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.not = icmp eq i8 %26, 0
  br i1 %cmp.not, label %entry.if.end198_crit_edge, label %if.then

entry.if.end198_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.then:                                          ; preds = %entry
  %global_lock = getelementptr inbounds %struct.he_dev, ptr %16, i32 0, i32 37
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  %membase = getelementptr inbounds %struct.he_dev, ptr %16, i32 0, i32 2
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr677 = getelementptr i8, ptr %28, i32 526092
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr677) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !532
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not678 = icmp eq i32 %30, 0
  br i1 %tobool.not678, label %if.then.__here_crit_edge, label %if.then.do.end26_crit_edge

if.then.do.end26_crit_edge:                       ; preds = %if.then
  br label %do.end26

if.then.__here_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

do.end26:                                         ; preds = %do.end26.do.end26_crit_edge, %if.then.do.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 53687000) #11
  %32 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 526092
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !532
  %35 = and i32 %34, 16777216
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %do.end26.__here_crit_edge, label %do.end26.do.end26_crit_edge

do.end26.do.end26_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

do.end26.__here_crit_edge:                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %do.end26.__here_crit_edge, %if.then.__here_crit_edge
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 212
  %38 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 ptrtoint (ptr blockaddress(@he_close, %__here) to i32), ptr %task_state_change, align 4
  %39 = load ptr, ptr %task, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 2, ptr %39, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !533
  %rx_waitq = getelementptr inbounds %struct.he_vcc, ptr %18, i32 0, i32 3
  call void @add_wait_queue(ptr noundef %rx_waitq, ptr noundef nonnull %wait) #11
  %shl95 = shl nuw nsw i32 %and, 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 526328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %add.ptr6.i = getelementptr i8, ptr %44, i32 526328
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  call void @arm_heavy_mb() #11
  %or11.i = or i32 %shl95, 536870912
  %46 = call i32 @llvm.bswap.i32(i32 %or11.i) #11
  %47 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase, align 4
  %add.ptr13.i = getelementptr i8, ptr %48, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %46) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  call void @arm_heavy_mb() #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %__here
  %49 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase, align 4
  %add.ptr20.i = getelementptr i8, ptr %50, i32 526332
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %52 = and i32 %51, 16
  %tobool.not.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i, label %he_writel_internal.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

he_writel_internal.exit:                          ; preds = %while.cond.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !525
  call void @arm_heavy_mb() #11
  %53 = call i32 @llvm.bswap.i32(i32 %shl95) #11
  %54 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase, align 4
  %add.ptr.i610 = getelementptr i8, ptr %55, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i610, i32 %53) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !526
  call void @arm_heavy_mb() #11
  br label %while.cond.i612

while.cond.i612:                                  ; preds = %while.cond.i612.while.cond.i612_crit_edge, %he_writel_internal.exit
  %56 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase, align 4
  %add.ptr7.i = getelementptr i8, ptr %57, i32 526332
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  %59 = and i32 %58, 16
  %tobool.not.i611 = icmp eq i32 %59, 0
  br i1 %tobool.not.i611, label %he_readl_internal.exit, label %while.cond.i612.while.cond.i612_crit_edge

while.cond.i612.while.cond.i612_crit_edge:        ; preds = %while.cond.i612
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i612

he_readl_internal.exit:                           ; preds = %while.cond.i612
  %60 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase, align 4
  %add.ptr12.i = getelementptr i8, ptr %61, i32 526328
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !528
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  call void @arm_heavy_mb() #11
  %63 = call i32 @llvm.bswap.i32(i32 %and) #11
  %64 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase, align 4
  %add.ptr.i614 = getelementptr i8, ptr %65, i32 526328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i614, i32 %63) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  call void @arm_heavy_mb() #11
  %66 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase, align 4
  %add.ptr6.i615 = getelementptr i8, ptr %67, i32 526328
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i615) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  call void @arm_heavy_mb() #11
  %69 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase, align 4
  %add.ptr13.i616 = getelementptr i8, ptr %70, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i616, i32 65696) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  call void @arm_heavy_mb() #11
  br label %while.cond.i619

while.cond.i619:                                  ; preds = %while.cond.i619.while.cond.i619_crit_edge, %he_readl_internal.exit
  %71 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase, align 4
  %add.ptr20.i617 = getelementptr i8, ptr %72, i32 526332
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i617) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %74 = and i32 %73, 16
  %tobool.not.i618 = icmp eq i32 %74, 0
  br i1 %tobool.not.i618, label %he_writel_internal.exit620, label %while.cond.i619.while.cond.i619_crit_edge

while.cond.i619.while.cond.i619_crit_edge:        ; preds = %while.cond.i619
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i619

he_writel_internal.exit620:                       ; preds = %while.cond.i619
  call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call15) #11
  %call103 = call i32 @schedule_timeout(i32 noundef 3000) #11
  call void @remove_wait_queue(ptr noundef %rx_waitq, ptr noundef nonnull %wait) #11
  br label %__here156

__here156:                                        ; preds = %he_writel_internal.exit620
  %75 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task, align 8
  %task_state_change160 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 212
  %77 = ptrtoint ptr %task_state_change160 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 ptrtoint (ptr blockaddress(@he_close, %__here156) to i32), ptr %task_state_change160, align 4
  %78 = load ptr, ptr %task, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 0, ptr %78, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp186 = icmp eq i32 %call103, 0
  br i1 %cmp186, label %do.end191, label %__here156.if.end198_crit_edge

__here156.if.end198_crit_edge:                    ; preds = %__here156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

do.end191:                                        ; preds = %__here156
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %16, align 4
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %81, i32 noundef %and) #14
  br label %if.end198

if.end198:                                        ; preds = %do.end191, %__here156.if.end198_crit_edge, %entry.if.end198_crit_edge
  %82 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp202.not = icmp eq i8 %83, 0
  br i1 %cmp202.not, label %if.end198.if.end529_crit_edge, label %if.then204

if.end198.if.end529_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end529

if.then204:                                       ; preds = %if.end198
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tsr4)
  %84 = ptrtoint ptr %tsr4 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 -1, ptr %tsr4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tsr0)
  %85 = ptrtoint ptr %tsr0 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 -1, ptr %tsr0, align 4
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 23
  %call.i.i.i679 = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #11
  %86 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %sk_wmem_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp212680 = icmp sgt i32 %87, 1
  br i1 %cmp212680, label %if.then204.while.body218_crit_edge, label %if.then204.do.body235_crit_edge

if.then204.do.body235_crit_edge:                  ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body235

if.then204.while.body218_crit_edge:               ; preds = %if.then204
  br label %while.body218

while.body218:                                    ; preds = %while.body218.while.body218_crit_edge, %if.then204.while.body218_crit_edge
  %retry.0682 = phi i32 [ %inc, %while.body218.while.body218_crit_edge ], [ 0, %if.then204.while.body218_crit_edge ]
  %sleep.0681 = phi i32 [ %spec.select, %while.body218.while.body218_crit_edge ], [ 1, %if.then204.while.body218_crit_edge ]
  call void @msleep(i32 noundef %sleep.0681) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %sleep.0681)
  %cmp219 = icmp ult i32 %sleep.0681, 250
  %mul = zext i1 %cmp219 to i32
  %spec.select = shl i32 %sleep.0681, %mul
  %inc = add nuw nsw i32 %retry.0682, 1
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #11
  %88 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %sk_wmem_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp212 = icmp sgt i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %retry.0682)
  %cmp215 = icmp ult i32 %retry.0682, 29
  %or.cond = select i1 %cmp212, i1 %cmp215, i1 false
  br i1 %or.cond, label %while.body218.while.body218_crit_edge, label %while.end223

while.body218.while.body218_crit_edge:            ; preds = %while.body218
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body218

while.end223:                                     ; preds = %while.body218
  br i1 %cmp212, label %do.end229, label %while.end223.do.body235_crit_edge

while.end223.do.body235_crit_edge:                ; preds = %while.end223
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body235

do.end229:                                        ; preds = %while.end223
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %16, align 4
  %call232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %91, i32 noundef %and, i32 noundef %89) #14
  br label %do.body235

do.body235:                                       ; preds = %do.end229, %while.end223.do.body235_crit_edge, %if.then204.do.body235_crit_edge
  %global_lock241 = getelementptr inbounds %struct.he_dev, ptr %16, i32 0, i32 37
  %call243 = call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock241) #11
  %shl248 = shl nuw nsw i32 %and, 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  call void @arm_heavy_mb() #11
  %membase.i621 = getelementptr inbounds %struct.he_dev, ptr %16, i32 0, i32 2
  %92 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase.i621, align 4
  %add.ptr.i622 = getelementptr i8, ptr %93, i32 526328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i622, i32 128) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  call void @arm_heavy_mb() #11
  %94 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %membase.i621, align 4
  %add.ptr6.i623 = getelementptr i8, ptr %95, i32 526328
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i623) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  call void @arm_heavy_mb() #11
  %or11.i624 = or i32 %shl248, 1614282756
  %97 = call i32 @llvm.bswap.i32(i32 %or11.i624) #11
  %98 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase.i621, align 4
  %add.ptr13.i625 = getelementptr i8, ptr %99, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i625, i32 %97) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  call void @arm_heavy_mb() #11
  br label %while.cond.i628

while.cond.i628:                                  ; preds = %while.cond.i628.while.cond.i628_crit_edge, %do.body235
  %100 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase.i621, align 4
  %add.ptr20.i626 = getelementptr i8, ptr %101, i32 526332
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i626) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %103 = and i32 %102, 16
  %tobool.not.i627 = icmp eq i32 %103, 0
  br i1 %tobool.not.i627, label %he_writel_internal.exit629, label %while.cond.i628.while.cond.i628_crit_edge

while.cond.i628.while.cond.i628_crit_edge:        ; preds = %while.cond.i628
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i628

he_writel_internal.exit629:                       ; preds = %while.cond.i628
  %104 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %qos, align 8
  %106 = zext i8 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %105, label %he_writel_internal.exit629.sw.epilog_crit_edge [
    i8 1, label %while.body.i.preheader
    i8 2, label %sw.bb261
  ]

he_writel_internal.exit629.sw.epilog_crit_edge:   ; preds = %he_writel_internal.exit629
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body.i.preheader:                           ; preds = %he_writel_internal.exit629
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  call void @arm_heavy_mb() #11
  %107 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %membase.i621, align 4
  %add.ptr.i633 = getelementptr i8, ptr %108, i32 526328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i633, i32 224591872) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  call void @arm_heavy_mb() #11
  %109 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %membase.i621, align 4
  %add.ptr6.i634 = getelementptr i8, ptr %110, i32 526328
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i634) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  call void @arm_heavy_mb() #11
  %or11.i636 = or i32 %shl248, 1610612737
  %112 = call i32 @llvm.bswap.i32(i32 %or11.i636) #11
  %113 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %membase.i621, align 4
  %add.ptr13.i637 = getelementptr i8, ptr %114, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i637, i32 %112) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  call void @arm_heavy_mb() #11
  br label %while.cond.i640

while.cond.i640:                                  ; preds = %while.cond.i640.while.cond.i640_crit_edge, %while.body.i.preheader
  %115 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %membase.i621, align 4
  %add.ptr20.i638 = getelementptr i8, ptr %116, i32 526332
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i638) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %118 = and i32 %117, 16
  %tobool.not.i639 = icmp eq i32 %118, 0
  br i1 %tobool.not.i639, label %while.cond.i640.sw.epilog_crit_edge, label %while.cond.i640.while.cond.i640_crit_edge

while.cond.i640.while.cond.i640_crit_edge:        ; preds = %while.cond.i640
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i640

while.cond.i640.sw.epilog_crit_edge:              ; preds = %while.cond.i640
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb261:                                         ; preds = %he_writel_internal.exit629
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  call void @arm_heavy_mb() #11
  %119 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %membase.i621, align 4
  %add.ptr.i643 = getelementptr i8, ptr %120, i32 526328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i643, i32 128) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  call void @arm_heavy_mb() #11
  %121 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %membase.i621, align 4
  %add.ptr6.i644 = getelementptr i8, ptr %122, i32 526328
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i644) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  call void @arm_heavy_mb() #11
  %or11.i646 = or i32 %and, 1614340096
  %124 = call i32 @llvm.bswap.i32(i32 %or11.i646) #11
  %125 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %membase.i621, align 4
  %add.ptr13.i647 = getelementptr i8, ptr %126, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i647, i32 %124) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  call void @arm_heavy_mb() #11
  br label %while.cond.i650

while.cond.i650:                                  ; preds = %while.cond.i650.while.cond.i650_crit_edge, %sw.bb261
  %127 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %membase.i621, align 4
  %add.ptr20.i648 = getelementptr i8, ptr %128, i32 526332
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i648) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %130 = and i32 %129, 16
  %tobool.not.i649 = icmp eq i32 %130, 0
  br i1 %tobool.not.i649, label %while.cond.i650.sw.epilog_crit_edge, label %while.cond.i650.while.cond.i650_crit_edge

while.cond.i650.while.cond.i650_crit_edge:        ; preds = %while.cond.i650
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i650

while.cond.i650.sw.epilog_crit_edge:              ; preds = %while.cond.i650
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.cond.i650.sw.epilog_crit_edge, %while.cond.i640.sw.epilog_crit_edge, %he_writel_internal.exit629.sw.epilog_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !525
  call void @arm_heavy_mb() #11
  %or2.i = or i32 %shl248, 1073741828
  %131 = call i32 @llvm.bswap.i32(i32 %or2.i) #11
  %132 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %membase.i621, align 4
  %add.ptr.i653 = getelementptr i8, ptr %133, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i653, i32 %131) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !526
  call void @arm_heavy_mb() #11
  br label %while.cond.i656

while.cond.i656:                                  ; preds = %while.cond.i656.while.cond.i656_crit_edge, %sw.epilog
  %134 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %membase.i621, align 4
  %add.ptr7.i654 = getelementptr i8, ptr %135, i32 526332
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i654) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  %137 = and i32 %136, 16
  %tobool.not.i655 = icmp eq i32 %137, 0
  br i1 %tobool.not.i655, label %he_readl_internal.exit658, label %while.cond.i656.while.cond.i656_crit_edge

while.cond.i656.while.cond.i656_crit_edge:        ; preds = %while.cond.i656
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i656

he_readl_internal.exit658:                        ; preds = %while.cond.i656
  %138 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %membase.i621, align 4
  %add.ptr12.i657 = getelementptr i8, ptr %139, i32 526328
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i657) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !528
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping.i) #11
  %141 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %mapping.i, align 4, !annotation !340
  %tpd_pool.i = getelementptr inbounds %struct.he_dev, ptr %16, i32 0, i32 31
  %142 = ptrtoint ptr %tpd_pool.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tpd_pool.i, align 4
  %call.i = call ptr @dma_pool_alloc(ptr noundef %143, i32 noundef 2592, ptr noundef nonnull %mapping.i) #11
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end273, label %if.end277

do.end273:                                        ; preds = %he_readl_internal.exit658
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping.i) #11
  br label %close_tx_incomplete.sink.split

if.end277:                                        ; preds = %he_readl_internal.exit658
  %144 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %mapping.i, align 4
  %and.i659 = and i32 %145, -64
  %146 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 %and.i659, ptr %call.i, align 4
  %reserved.i = getelementptr inbounds %struct.he_tpd, ptr %call.i, i32 0, i32 1
  %147 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile i32 0, ptr %reserved.i, align 4
  %iovec.i = getelementptr inbounds %struct.he_tpd, ptr %call.i, i32 0, i32 2
  %148 = call ptr @memset(ptr %iovec.i, i32 0, i32 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping.i) #11
  %149 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %call.i, align 4
  %or278 = or i32 %150, 5
  store volatile i32 %or278, ptr %call.i, align 4
  %skb = getelementptr inbounds %struct.he_tpd, ptr %call.i, i32 0, i32 3
  %151 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %skb, align 4
  %vcc279 = getelementptr inbounds %struct.he_tpd, ptr %call.i, i32 0, i32 4
  %152 = ptrtoint ptr %vcc279 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %vcc, ptr %vcc279, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !535
  call void @arm_heavy_mb() #11
  br label %__here334

__here334:                                        ; preds = %if.end277
  %153 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %task, align 8
  %task_state_change338 = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 212
  %155 = ptrtoint ptr %task_state_change338 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 ptrtoint (ptr blockaddress(@he_close, %__here334) to i32), ptr %task_state_change338, align 4
  %156 = load ptr, ptr %task, align 8
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 2, ptr %156, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !536
  %tx_waitq = getelementptr inbounds %struct.he_vcc, ptr %18, i32 0, i32 4
  call void @add_wait_queue(ptr noundef %tx_waitq, ptr noundef nonnull %wait) #11
  call fastcc void @__enqueue_tpd(ptr noundef %16, ptr noundef nonnull %call.i, i32 noundef %and)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock241, i32 noundef %call243) #11
  %call365 = call i32 @schedule_timeout(i32 noundef 3000) #11
  call void @remove_wait_queue(ptr noundef %tx_waitq, ptr noundef nonnull %wait) #11
  br label %__here418

__here418:                                        ; preds = %__here334
  %158 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %task, align 8
  %task_state_change422 = getelementptr inbounds %struct.task_struct, ptr %159, i32 0, i32 212
  %160 = ptrtoint ptr %task_state_change422 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 ptrtoint (ptr blockaddress(@he_close, %__here418) to i32), ptr %task_state_change422, align 4
  %161 = load ptr, ptr %task, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile i32 0, ptr %161, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !537
  %call457 = call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock241) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call365)
  %cmp462 = icmp eq i32 %call365, 0
  br i1 %cmp462, label %__here418.close_tx_incomplete.sink.split_crit_edge, label %__here418.while.cond472_crit_edge

__here418.while.cond472_crit_edge:                ; preds = %__here418
  br label %while.cond472

__here418.close_tx_incomplete.sink.split_crit_edge: ; preds = %__here418
  call void @__sanitizer_cov_trace_pc() #13
  br label %close_tx_incomplete.sink.split

while.cond472:                                    ; preds = %do.end484, %__here418.while.cond472_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !525
  call void @arm_heavy_mb() #11
  %163 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %membase.i621, align 4
  %add.ptr.i662 = getelementptr i8, ptr %164, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i662, i32 %131) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !526
  call void @arm_heavy_mb() #11
  br label %while.cond.i665

while.cond.i665:                                  ; preds = %while.cond.i665.while.cond.i665_crit_edge, %while.cond472
  %165 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %membase.i621, align 4
  %add.ptr7.i663 = getelementptr i8, ptr %166, i32 526332
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i663) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  %168 = and i32 %167, 16
  %tobool.not.i664 = icmp eq i32 %168, 0
  br i1 %tobool.not.i664, label %he_readl_internal.exit667, label %while.cond.i665.while.cond.i665_crit_edge

while.cond.i665.while.cond.i665_crit_edge:        ; preds = %while.cond.i665
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i665

he_readl_internal.exit667:                        ; preds = %while.cond.i665
  %169 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %membase.i621, align 4
  %add.ptr12.i666 = getelementptr i8, ptr %170, i32 526328
  %171 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i666) #11, !srcloc !346
  %172 = call i32 @llvm.bswap.i32(i32 %171) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !528
  %173 = ptrtoint ptr %tsr4 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile i32 %172, ptr %tsr4, align 4
  %and477 = and i32 %172, 1073741824
  %tobool478.not = icmp eq i32 %and477, 0
  br i1 %tobool478.not, label %do.end484, label %while.cond486.preheader

while.cond486.preheader:                          ; preds = %he_readl_internal.exit667
  %or2.i668 = or i32 %shl248, 1073741824
  %174 = call i32 @llvm.bswap.i32(i32 %or2.i668) #11
  br label %while.cond486

do.end484:                                        ; preds = %he_readl_internal.exit667
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %175(i32 noundef 53687000) #11
  br label %while.cond472

while.cond486:                                    ; preds = %do.end497, %while.cond486.preheader
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !525
  call void @arm_heavy_mb() #11
  %176 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %membase.i621, align 4
  %add.ptr.i670 = getelementptr i8, ptr %177, i32 526332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i670, i32 %174) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !526
  call void @arm_heavy_mb() #11
  br label %while.cond.i673

while.cond.i673:                                  ; preds = %while.cond.i673.while.cond.i673_crit_edge, %while.cond486
  %178 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %membase.i621, align 4
  %add.ptr7.i671 = getelementptr i8, ptr %179, i32 526332
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i671) #11, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  %181 = and i32 %180, 16
  %tobool.not.i672 = icmp eq i32 %181, 0
  br i1 %tobool.not.i672, label %he_readl_internal.exit675, label %while.cond.i673.while.cond.i673_crit_edge

while.cond.i673.while.cond.i673_crit_edge:        ; preds = %while.cond.i673
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i673

he_readl_internal.exit675:                        ; preds = %while.cond.i673
  %182 = ptrtoint ptr %membase.i621 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %membase.i621, align 4
  %add.ptr12.i674 = getelementptr i8, ptr %183, i32 526328
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i674) #11, !srcloc !346
  %185 = call i32 @llvm.bswap.i32(i32 %184) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !528
  %shr = lshr i32 %185, 28
  %186 = ptrtoint ptr %tsr0 to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile i32 %shr, ptr %tsr0, align 4
  %187 = and i32 %185, 1879048192
  %cmp492.not = icmp eq i32 %187, 0
  br i1 %cmp492.not, label %he_readl_internal.exit675.close_tx_incomplete_crit_edge, label %do.end497

he_readl_internal.exit675.close_tx_incomplete_crit_edge: ; preds = %he_readl_internal.exit675
  call void @__sanitizer_cov_trace_pc() #13
  br label %close_tx_incomplete

do.end497:                                        ; preds = %he_readl_internal.exit675
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %188(i32 noundef 53687000) #11
  br label %while.cond486

close_tx_incomplete.sink.split:                   ; preds = %__here418.close_tx_incomplete.sink.split_crit_edge, %do.end273
  %.str.31.sink = phi ptr [ @.str.26, %do.end273 ], [ @.str.31, %__here418.close_tx_incomplete.sink.split_crit_edge ]
  %flags.0.ph = phi i32 [ %call243, %do.end273 ], [ %call457, %__here418.close_tx_incomplete.sink.split_crit_edge ]
  %189 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %16, align 4
  %call470 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.31.sink, i32 noundef %190, i32 noundef %and) #14
  br label %close_tx_incomplete

close_tx_incomplete:                              ; preds = %close_tx_incomplete.sink.split, %he_readl_internal.exit675.close_tx_incomplete_crit_edge
  %flags.0 = phi i32 [ %flags.0.ph, %close_tx_incomplete.sink.split ], [ %call457, %he_readl_internal.exit675.close_tx_incomplete_crit_edge ]
  %191 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %192)
  %cmp503 = icmp eq i8 %192, 2
  br i1 %cmp503, label %if.then505, label %close_tx_incomplete.if.end524_crit_edge

close_tx_incomplete.if.end524_crit_edge:          ; preds = %close_tx_incomplete
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end524

if.then505:                                       ; preds = %close_tx_incomplete
  %rc_index = getelementptr inbounds %struct.he_vcc, ptr %18, i32 0, i32 2
  %193 = ptrtoint ptr %rc_index to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %rc_index, align 4
  %arrayidx = getelementptr %struct.he_dev, ptr %16, i32 0, i32 22, i32 %194
  %inuse = getelementptr %struct.he_dev, ptr %16, i32 0, i32 22, i32 %194, i32 1
  %195 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp509 = icmp eq i32 %196, 0
  br i1 %cmp509, label %do.end514, label %if.else

do.end514:                                        ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #13
  %197 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %16, align 4
  %call517 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %198, i32 noundef %194) #14
  br label %if.end521

if.else:                                          ; preds = %if.then505
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i32 %196, -1
  %199 = ptrtoint ptr %inuse to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %dec, ptr %inuse, align 4
  br label %if.end521

if.end521:                                        ; preds = %if.else, %do.end514
  %200 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx, align 4
  %total_bw = getelementptr inbounds %struct.he_dev, ptr %16, i32 0, i32 23
  %202 = ptrtoint ptr %total_bw to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %total_bw, align 4
  %sub = sub i32 %203, %201
  store i32 %sub, ptr %total_bw, align 4
  br label %if.end524

if.end524:                                        ; preds = %if.end521, %close_tx_incomplete.if.end524_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock241, i32 noundef %flags.0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tsr0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tsr4)
  br label %if.end529

if.end529:                                        ; preds = %if.end524, %if.end198.if.end529_crit_edge
  call void @kfree(ptr noundef %18) #11
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags4) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @he_ioctl(ptr noundef %atm_dev, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  %reg = alloca %struct.he_ioctl_reg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reg) #11
  %2 = call ptr @memset(ptr %reg, i32 255, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074553184, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1074553184
  br i1 %cond, label %sw.bb, label %sw.default40

sw.bb:                                            ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call, label %if.then.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 12, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !538

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reg, i32 noundef 12) #11
  %4 = call i32 @llvm.read_register.i32(metadata !330) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !539
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !540
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !541
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %reg, ptr noundef %arg, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !540
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !541
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !538

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.then.i.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %reg, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

do.body4:                                         ; preds = %if.end.i.i
  %global_lock = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 37
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  %type = getelementptr inbounds %struct.he_ioctl_reg, ptr %reg, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %9, label %do.body4.sw.epilog_crit_edge [
    i8 1, label %sw.bb10
    i8 2, label %sw.bb19
    i8 3, label %sw.bb23
    i8 4, label %sw.bb27
  ]

do.body4.sw.epilog_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.body4
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %12)
  %cmp11 = icmp ugt i32 %12, 1048575
  br i1 %cmp11, label %sw.bb10.sw.epilog_crit_edge, label %if.end14

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  %membase = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %12
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !542
  br label %if.then.i71

sw.bb19:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %call21 = call fastcc i32 @he_readl_internal(ptr noundef %1, i32 noundef %18, i32 noundef 0)
  br label %if.then.i71

sw.bb23:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %call25 = call fastcc i32 @he_readl_internal(ptr noundef %1, i32 noundef %20, i32 noundef 1073741824)
  br label %if.then.i71

sw.bb27:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg, align 4
  %call29 = call fastcc i32 @he_readl_internal(ptr noundef %1, i32 noundef %22, i32 noundef -2147483648)
  br label %if.then.i71

sw.epilog:                                        ; preds = %sw.bb10.sw.epilog_crit_edge, %do.body4.sw.epilog_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call6) #11
  br label %sw.epilog49

if.then.i71:                                      ; preds = %sw.bb27, %sw.bb23, %sw.bb19, %if.end14
  %.sink = phi i32 [ %16, %if.end14 ], [ %call21, %sw.bb19 ], [ %call25, %sw.bb23 ], [ %call29, %sw.bb27 ]
  %val = getelementptr inbounds %struct.he_ioctl_reg, ptr %reg, i32 0, i32 1
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %val, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call6) #11
  call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 174) #11
  %call.i.i70 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i70, label %if.then.i71.cleanup_crit_edge, label %copy_to_user.exit

if.then.i71.cleanup_crit_edge:                    ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i71
  %call.i.i.i75 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %reg, i32 noundef 12) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %reg, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool36.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool36.not, label %copy_to_user.exit.sw.epilog49_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit.sw.epilog49_crit_edge:          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog49

sw.default40:                                     ; preds = %entry
  %phy = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 1
  %24 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy, align 4
  %tobool41.not = icmp eq ptr %25, null
  br i1 %tobool41.not, label %sw.default40.sw.epilog49_crit_edge, label %land.lhs.true

sw.default40.sw.epilog49_crit_edge:               ; preds = %sw.default40
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog49

land.lhs.true:                                    ; preds = %sw.default40
  %ioctl = getelementptr inbounds %struct.atmphy_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioctl, align 4
  %tobool43.not = icmp eq ptr %27, null
  br i1 %tobool43.not, label %land.lhs.true.sw.epilog49_crit_edge, label %if.then44

land.lhs.true.sw.epilog49_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog49

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = tail call i32 %27(ptr noundef %atm_dev, i32 noundef %cmd, ptr noundef %arg) #11
  br label %sw.epilog49

sw.epilog49:                                      ; preds = %if.then44, %land.lhs.true.sw.epilog49_crit_edge, %sw.default40.sw.epilog49_crit_edge, %copy_to_user.exit.sw.epilog49_crit_edge, %sw.epilog
  %err.1 = phi i32 [ 0, %copy_to_user.exit.sw.epilog49_crit_edge ], [ -22, %sw.epilog ], [ %call47, %if.then44 ], [ 0, %land.lhs.true.sw.epilog49_crit_edge ], [ 0, %sw.default40.sw.epilog49_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog49, %copy_to_user.exit.cleanup_crit_edge, %if.then.i71.cleanup_crit_edge, %if.then11.i.i, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %sw.epilog49 ], [ -1, %sw.bb.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @he_send(ptr noundef %vcc, ptr noundef %skb) #2 align 64 {
entry:
  %mapping.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %4 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vpi, align 4
  %conv159 = zext i16 %5 to i32
  %vcibits = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %vcibits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vcibits, align 4
  %shl = shl i32 %conv159, %7
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %8 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vci, align 8
  %or = or i32 %shl, %9
  %and = and i32 %or, 8191
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %11)
  %cmp = icmp ugt i32 %11, 65535
  br i1 %cmp, label %entry.do.end10_crit_edge, label %lor.lhs.false

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

lor.lhs.false:                                    ; preds = %entry
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %13)
  %cmp3 = icmp ne i8 %13, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %11)
  %cmp6.not = icmp eq i32 %11, 52
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %if.end14, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false.do.end10_crit_edge, %entry.do.end10_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %15, i32 noundef %11) #14
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %16 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pop, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %17(ptr noundef %vcc, ptr noundef %skb) #11
  br label %if.end

if.else:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %18 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stats, align 8
  %tx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %19, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_err, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err, ptr %tx_err, i32 1, ptr elementtype(i32) %tx_err) #11, !srcloc !522
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool16.not = icmp eq i8 %24, 0
  br i1 %tobool16.not, label %do.body34, label %do.end20

do.end20:                                         ; preds = %if.end14
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %26) #14
  %pop24 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %27 = ptrtoint ptr %pop24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pop24, align 4
  %tobool25.not = icmp eq ptr %28, null
  br i1 %tobool25.not, label %if.else28, label %if.then26

if.then26:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %28(ptr noundef %vcc, ptr noundef %skb) #11
  br label %if.end29

if.else28:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then26
  %stats30 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %29 = ptrtoint ptr %stats30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stats30, align 8
  %tx_err31 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %30, i32 0, i32 1
  %call.i.i160 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err31, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_err31, i32 1, i32 3, i32 1) #11
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err31, ptr %tx_err31, i32 1, ptr elementtype(i32) %tx_err31) #11, !srcloc !522
  br label %cleanup

do.body34:                                        ; preds = %if.end14
  %global_lock = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 37
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping.i) #11
  %32 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %mapping.i, align 4, !annotation !340
  %tpd_pool.i = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 31
  %33 = ptrtoint ptr %tpd_pool.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tpd_pool.i, align 4
  %call.i = call ptr @dma_pool_alloc(ptr noundef %34, i32 noundef 2592, ptr noundef nonnull %mapping.i) #11
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then47, label %if.end57

if.then47:                                        ; preds = %do.body34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping.i) #11
  %pop48 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %35 = ptrtoint ptr %pop48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pop48, align 4
  %tobool49.not = icmp eq ptr %36, null
  br i1 %tobool49.not, label %if.else52, label %if.then50

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  call void %36(ptr noundef %vcc, ptr noundef %skb) #11
  br label %if.end53

if.else52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %if.end53

if.end53:                                         ; preds = %if.else52, %if.then50
  %stats54 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %37 = ptrtoint ptr %stats54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stats54, align 8
  %tx_err55 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %38, i32 0, i32 1
  %call.i.i161 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_err55, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %tx_err55, i32 1, i32 3, i32 1) #11
  %39 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err55, ptr %tx_err55, i32 1, ptr elementtype(i32) %tx_err55) #11, !srcloc !522
  call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call39) #11
  br label %cleanup

if.end57:                                         ; preds = %do.body34
  %40 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mapping.i, align 4
  %and.i = and i32 %41, -64
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 %and.i, ptr %call.i, align 4
  %reserved.i = getelementptr inbounds %struct.he_tpd, ptr %call.i, i32 0, i32 1
  %43 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %reserved.i, align 4
  %iovec.i = getelementptr inbounds %struct.he_tpd, ptr %call.i, i32 0, i32 2
  %44 = call ptr @memset(ptr %iovec.i, i32 0, i32 24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping.i) #11
  %45 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %46)
  %cmp61 = icmp eq i8 %46, 5
  br i1 %cmp61, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %call.i, align 4
  store volatile i32 %48, ptr %call.i, align 4
  br label %if.end79

if.else65:                                        ; preds = %if.end57
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %50, i32 3
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr, align 1
  %conv66 = zext i8 %52 to i32
  %and69 = and i32 %conv66, 1
  %53 = shl nuw nsw i32 %conv66, 2
  %shl70 = and i32 %53, 56
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %call.i, align 4
  %or72 = or i32 %shl70, %55
  store volatile i32 %or72, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool73.not = icmp eq i32 %and69, 0
  br i1 %tobool73.not, label %if.else65.if.end77_crit_edge, label %if.then74

if.else65.if.end77_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then74:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %call.i, align 4
  %or76 = or i32 %57, 2
  store volatile i32 %or76, ptr %call.i, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.else65.if.end77_crit_edge
  %call78 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #11
  br label %if.end79

if.end79:                                         ; preds = %if.end77, %if.then63
  %pci_dev = getelementptr inbounds %struct.he_dev, ptr %3, i32 0, i32 57
  %58 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pci_dev, align 4
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %data81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %60 = ptrtoint ptr %data81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data81, align 4
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  %call.i163 = call zeroext i1 @is_vmalloc_addr(ptr noundef %61) #11
  br i1 %call.i163, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end79
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !538

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %dev80) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44, i32 3
  %64 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev80, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %67, %if.end.i.i ], [ %65, %if.then.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  call void @debug_dma_map_single(ptr noundef %dev80, ptr noundef %61, i32 noundef %63) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %68 = load ptr, ptr @mem_map, align 4
  %69 = ptrtoint ptr %61 to i32
  %sub.i = add i32 %69, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %68, i32 %shr.i
  %and.i164 = and i32 %69, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %dev80, ptr noundef %add.ptr.i, i32 noundef %and.i164, i32 noundef %63, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %70 = ptrtoint ptr %iovec.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i, ptr %iovec.i, align 4
  %71 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len, align 4
  %or85 = or i32 %72, -2147483648
  %len88 = getelementptr inbounds %struct.he_tpd, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %73 = ptrtoint ptr %len88 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or85, ptr %len88, align 4
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %call.i, align 4
  %or90 = or i32 %75, 1
  store volatile i32 %or90, ptr %call.i, align 4
  %vcc91 = getelementptr inbounds %struct.he_tpd, ptr %call.i, i32 0, i32 4
  %76 = ptrtoint ptr %vcc91 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %vcc, ptr %vcc91, align 4
  %skb92 = getelementptr inbounds %struct.he_tpd, ptr %call.i, i32 0, i32 3
  %77 = ptrtoint ptr %skb92 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %skb, ptr %skb92, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !543
  call void @arm_heavy_mb() #11
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %78 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %vcc, ptr %cb, align 8
  call fastcc void @__enqueue_tpd(ptr noundef %3, ptr noundef nonnull %call.i, i32 noundef %and)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call39) #11
  %stats98 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %79 = ptrtoint ptr %stats98 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %stats98, align 8
  %call.i.i162 = call zeroext i1 @__kasan_check_write(ptr noundef %80, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %80, i32 1, i32 3, i32 1) #11
  %81 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 1, ptr elementtype(i32) %80) #11, !srcloc !522
  br label %cleanup

cleanup:                                          ; preds = %dma_map_single_attrs.exit, %if.end53, %if.end29, %if.end
  %retval.0 = phi i32 [ -22, %if.end ], [ -22, %if.end29 ], [ -12, %if.end53 ], [ 0, %dma_map_single_attrs.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @he_phy_put(ptr nocapture noundef readonly %atm_dev, i8 noundef zeroext %val, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %global_lock = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 37
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !544
  tail call void @arm_heavy_mb() #11
  %conv12 = zext i8 %val to i32
  %2 = shl nuw i32 %conv12, 24
  %membase = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %mul = shl i32 %addr, 2
  %add = add i32 %mul, 526336
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !545
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr21 = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !546
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @he_phy_get(ptr nocapture noundef readonly %atm_dev, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %atm_dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %global_lock = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 37
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  %membase = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %mul = shl i32 %addr, 2
  %add = add i32 %mul, 526336
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !547
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call2) #11
  %conv12 = trunc i32 %5 to i8
  ret i8 %conv12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @he_proc_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %pos, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %conv = trunc i64 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %conv, label %do.body12 [
    i32 0, label %if.then
    i32 1, label %if.then3
    i32 2, label %if.then9
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = call ptr @memcpy(ptr %page, ptr @.str.48, i32 15)
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prod_id = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 3
  %media = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %media, align 4
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool4.not, ptr @.str.51, ptr @.str.50
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.49, ptr noundef %prod_id, ptr noundef nonnull %cond)
  br label %cleanup

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = call ptr @memcpy(ptr %page, ptr @.str.52, i32 70)
  br label %cleanup

do.body12:                                        ; preds = %entry
  %global_lock = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 37
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  %membase = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 526276
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !548
  %13 = load i32, ptr @he_proc_read.mcc, align 4
  %add = add i32 %13, %12
  store i32 %add, ptr @he_proc_read.mcc, align 4
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr24 = getelementptr i8, ptr %15, i32 526280
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #11, !srcloc !346
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !549
  %18 = load i32, ptr @he_proc_read.oec, align 4
  %add28 = add i32 %18, %17
  store i32 %add28, ptr @he_proc_read.oec, align 4
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr32 = getelementptr i8, ptr %20, i32 526284
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #11, !srcloc !346
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !550
  %23 = load i32, ptr @he_proc_read.dcc, align 4
  %add36 = add i32 %23, %22
  store i32 %add36, ptr @he_proc_read.dcc, align 4
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr40 = getelementptr i8, ptr %25, i32 526288
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #11, !srcloc !346
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !551
  %28 = load i32, ptr @he_proc_read.cec, align 4
  %add44 = add i32 %28, %27
  store i32 %add44, ptr @he_proc_read.cec, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call15) #11
  %29 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %conv, label %if.end75 [
    i32 3, label %if.then48
    i32 4, label %if.then53
    i32 5, label %if.then58
    i32 6, label %if.then63
    i32 7, label %if.then68
    i32 8, label %if.then73
  ]

if.then48:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %30 = load i32, ptr @he_proc_read.mcc, align 4
  %31 = load i32, ptr @he_proc_read.oec, align 4
  %32 = load i32, ptr @he_proc_read.dcc, align 4
  %33 = load i32, ptr @he_proc_read.cec, align 4
  %call49 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.53, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33)
  br label %cleanup

if.then53:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %irq_peak = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 29
  %34 = ptrtoint ptr %irq_peak to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq_peak, align 4
  %call54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.54, i32 noundef 128, i32 noundef %35)
  br label %cleanup

if.then58:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.55, i32 noundef 512)
  br label %cleanup

if.then63:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %rbrq_peak = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 41
  %36 = ptrtoint ptr %rbrq_peak to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rbrq_peak, align 4
  %call64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.56, i32 noundef 512, i32 noundef %37)
  br label %cleanup

if.then68:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %tbrq_peak = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 54
  %38 = ptrtoint ptr %tbrq_peak to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tbrq_peak, align 4
  %call69 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.57, i32 noundef 512, i32 noundef %39)
  br label %cleanup

if.then73:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %40 = call ptr @memcpy(ptr %page, ptr @.str.58, i32 57)
  br label %cleanup

if.end75:                                         ; preds = %do.body12
  %dec71 = add i32 %conv, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %dec71)
  %41 = icmp ult i32 %dec71, 16
  br i1 %41, label %if.then80, label %for.inc.15

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.he_dev, ptr %1, i32 0, i32 22, i32 %dec71
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %inuse = getelementptr %struct.he_dev, ptr %1, i32 0, i32 22, i32 %dec71, i32 1
  %44 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %inuse, align 4
  %call83 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.59, i32 noundef %dec71, i32 noundef %43, i32 noundef %45)
  br label %cleanup

for.inc.15:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %conv)
  %tobool86.not = icmp eq i32 %conv, 25
  br i1 %tobool86.not, label %if.then87, label %for.inc.15.cleanup_crit_edge

for.inc.15.cleanup_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then87:                                        ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #13
  %total_bw = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 23
  %46 = ptrtoint ptr %total_bw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %total_bw, align 4
  %atm_dev = getelementptr inbounds %struct.he_dev, ptr %1, i32 0, i32 58
  %48 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %atm_dev, align 4
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %link_rate, align 4
  %mul = mul i32 %51, 10
  %div = sdiv i32 %mul, 9
  %call88 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.60, i32 noundef %47, i32 noundef %div)
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %for.inc.15.cleanup_crit_edge, %if.then80, %if.then73, %if.then68, %if.then63, %if.then58, %if.then53, %if.then48, %if.then9, %if.then3, %if.then
  %retval.0 = phi i32 [ %call83, %if.then80 ], [ %call88, %if.then87 ], [ 56, %if.then73 ], [ %call69, %if.then68 ], [ %call64, %if.then63 ], [ %call59, %if.then58 ], [ %call54, %if.then53 ], [ %call49, %if.then48 ], [ 69, %if.then9 ], [ %call5, %if.then3 ], [ 14, %if.then ], [ 0, %for.inc.15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_pcr_goal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @he_readl_internal(ptr nocapture noundef readonly %he_dev, i32 noundef %addr, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !525
  tail call void @arm_heavy_mb() #11
  %or2 = or i32 %flags, %addr
  %0 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !526
  tail call void @arm_heavy_mb() #11
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %4, i32 526332
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !527
  %6 = and i32 %5, 16
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 526328
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #11, !srcloc !346
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !528
  ret i32 %10
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @he_writel_internal(ptr nocapture noundef readonly %he_dev, i32 noundef %val, i32 noundef %addr, i32 noundef %flags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 526328
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or = or i32 %addr, %flags
  %or11 = or i32 %or, 536870912
  %6 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %6) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr20 = getelementptr i8, ptr %10, i32 526332
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %12 = and i32 %11, 16
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__enqueue_tpd(ptr noundef %he_dev, ptr noundef %tpd, i32 noundef %cid) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tpdrq_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 34
  %0 = ptrtoint ptr %tpdrq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpdrq_base, align 4
  %2 = ptrtoint ptr %1 to i32
  %tpdrq_tail = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 35
  %3 = ptrtoint ptr %tpdrq_tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tpdrq_tail, align 4
  %add.ptr = getelementptr %struct.he_tpdrq, ptr %4, i32 1
  %5 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %5, 4095
  %or = or i32 %and, %2
  %6 = inttoptr i32 %or to ptr
  %tpdrq_head = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 36
  %7 = ptrtoint ptr %tpdrq_head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tpdrq_head, align 4
  %cmp = icmp eq ptr %8, %6
  br i1 %cmp, label %if.then, label %entry.if.end37_crit_edge

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then:                                          ; preds = %entry
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %10, i32 525952
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !552
  %12 = and i32 %11, -15794176
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or5 = or i32 %13, %2
  %14 = inttoptr i32 %or5 to ptr
  %15 = ptrtoint ptr %tpdrq_head to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %tpdrq_head, align 4
  %cmp8 = icmp eq ptr %6, %14
  br i1 %cmp8, label %if.then9, label %if.then.if.end37_crit_edge

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then9:                                         ; preds = %if.then
  %16 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %he_dev, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %17, i32 noundef %cid) #14
  %pci_dev = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 57
  %arrayidx = getelementptr %struct.he_tpd, ptr %tpd, i32 0, i32 2, i32 0
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.then9.for.inc_crit_edge, label %if.then16

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %len = getelementptr %struct.he_tpd, ptr %tpd, i32 0, i32 2, i32 0, i32 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %and22 = and i32 %23, 65535
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %19, i32 noundef %and22, i32 noundef 1, i32 noundef 0) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.then9.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.he_tpd, ptr %tpd, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.1 = icmp eq i32 %25, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then16.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then16.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_dev, align 4
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %len.1 = getelementptr %struct.he_tpd, ptr %tpd, i32 0, i32 2, i32 1, i32 1
  %28 = ptrtoint ptr %len.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.1, align 4
  %and22.1 = and i32 %29, 65535
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.1, i32 noundef %25, i32 noundef %and22.1, i32 noundef 1, i32 noundef 0) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then16.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.he_tpd, ptr %tpd, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.2 = icmp eq i32 %31, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then16.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then16.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_dev, align 4
  %dev.2 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %len.2 = getelementptr %struct.he_tpd, ptr %tpd, i32 0, i32 2, i32 2, i32 1
  %34 = ptrtoint ptr %len.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.2, align 4
  %and22.2 = and i32 %35, 65535
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.2, i32 noundef %31, i32 noundef %and22.2, i32 noundef 1, i32 noundef 0) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then16.2, %for.inc.1.for.inc.2_crit_edge
  %skb = getelementptr inbounds %struct.he_tpd, ptr %tpd, i32 0, i32 3
  %36 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb, align 4
  %tobool23.not = icmp eq ptr %37, null
  br i1 %tobool23.not, label %for.inc.2.if.end34_crit_edge, label %if.then24

for.inc.2.if.end34_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then24:                                        ; preds = %for.inc.2
  %vcc = getelementptr inbounds %struct.he_tpd, ptr %tpd, i32 0, i32 4
  %38 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vcc, align 4
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pop, align 4
  %tobool25.not = icmp eq ptr %41, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %41(ptr noundef %39, ptr noundef nonnull %37) #11
  br label %if.end32

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %37, i32 noundef 1) #11
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then26
  %42 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vcc, align 4
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stats, align 8
  %tx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %45, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_err, i32 1, i32 3, i32 1) #11
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err, ptr %tx_err, i32 1, ptr elementtype(i32) %tx_err) #11, !srcloc !522
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %for.inc.2.if.end34_crit_edge
  %tpd_pool = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 31
  %47 = ptrtoint ptr %tpd_pool to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tpd_pool, align 4
  %49 = ptrtoint ptr %tpd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %tpd, align 4
  %and35 = and i32 %50, -64
  tail call void @dma_pool_free(ptr noundef %48, ptr noundef %tpd, i32 noundef %and35) #11
  br label %cleanup

if.end37:                                         ; preds = %if.then.if.end37_crit_edge, %entry.if.end37_crit_edge
  %entry38 = getelementptr inbounds %struct.he_tpd, ptr %tpd, i32 0, i32 5
  %outstanding_tpds = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 32
  %prev.i = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 32, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i, align 4
  %call.i.i108 = tail call zeroext i1 @__list_add_valid(ptr noundef %entry38, ptr noundef %52, ptr noundef %outstanding_tpds) #11
  br i1 %call.i.i108, label %if.end.i.i, label %if.end37.list_add_tail.exit_crit_edge

if.end37.list_add_tail.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %entry38, ptr %prev.i, align 4
  %54 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %outstanding_tpds, ptr %entry38, align 4
  %prev3.i.i = getelementptr inbounds %struct.he_tpd, ptr %tpd, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %entry38, ptr %52, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end37.list_add_tail.exit_crit_edge
  %57 = ptrtoint ptr %tpd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %tpd, align 4
  %and40 = and i32 %58, -64
  %59 = ptrtoint ptr %tpdrq_tail to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tpdrq_tail, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %and40, ptr %60, align 4
  %62 = load ptr, ptr %tpdrq_tail, align 4
  %cid44 = getelementptr inbounds %struct.he_tpdrq, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %cid44 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 %cid, ptr %cid44, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !553
  tail call void @arm_heavy_mb() #11
  %64 = ptrtoint ptr %tpdrq_tail to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %6, ptr %tpdrq_tail, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !554
  tail call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %tpdrq_tail to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tpdrq_tail, align 4
  %67 = ptrtoint ptr %66 to i32
  %and54 = and i32 %67, 4095
  %68 = tail call i32 @llvm.bswap.i32(i32 %and54)
  %membase55 = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %69 = ptrtoint ptr %membase55 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase55, align 4
  %add.ptr56 = getelementptr i8, ptr %70, i32 525956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %68) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !555
  tail call void @arm_heavy_mb() #11
  %71 = ptrtoint ptr %membase55 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase55, align 4
  %add.ptr65 = getelementptr i8, ptr %72, i32 525956
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !556
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end34
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @he_service_rbrq(ptr noundef %he_dev, i32 noundef %group) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rbrq_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 39
  %0 = ptrtoint ptr %rbrq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbrq_base, align 4
  %2 = ptrtoint ptr %1 to i32
  %hsp = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 56
  %3 = ptrtoint ptr %hsp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hsp, align 4
  %rbrq_tail2 = getelementptr [8 x %struct.he_hsp_entry], ptr %4, i32 0, i32 %group, i32 2
  %5 = ptrtoint ptr %rbrq_tail2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %rbrq_tail2, align 4
  %or = or i32 %6, %2
  %7 = inttoptr i32 %or to ptr
  tail call void @_raw_read_lock(ptr noundef nonnull @vcc_sklist_lock) #11
  %rbrq_head = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 40
  %8 = ptrtoint ptr %rbrq_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rbrq_head, align 4
  %cmp.not291 = icmp eq ptr %9, %7
  br i1 %cmp.not291, label %while.end.thread, label %while.body.lr.ph

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #11
  br label %if.end174

while.body.lr.ph:                                 ; preds = %entry
  %rbpl_virt = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 42
  %vcibits.i = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 6
  %atm_dev.i = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 58
  %rbpl_table38 = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 43
  %global_lock = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 37
  %rbpl_pool136 = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 45
  br label %while.body

while.body:                                       ; preds = %next_rbrq_entry.while.body_crit_edge, %while.body.lr.ph
  %10 = phi ptr [ %9, %while.body.lr.ph ], [ %149, %next_rbrq_entry.while.body_crit_edge ]
  %lastcid.0297 = phi i32 [ -1, %while.body.lr.ph ], [ %lastcid.2, %next_rbrq_entry.while.body_crit_edge ]
  %vcc.0296 = phi ptr [ null, %while.body.lr.ph ], [ %vcc.1278, %next_rbrq_entry.while.body_crit_edge ]
  %pdus_assembled.0293 = phi i32 [ 0, %while.body.lr.ph ], [ %pdus_assembled.1, %next_rbrq_entry.while.body_crit_edge ]
  %updated.0292 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %next_rbrq_entry.while.body_crit_edge ]
  %inc = add i32 %updated.0292, 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %shr = lshr i32 %12, 6
  %13 = ptrtoint ptr %rbpl_virt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rbpl_virt, align 4
  %arrayidx4 = getelementptr ptr, ptr %14, i32 %shr
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4, align 4
  %cidlen = getelementptr inbounds %struct.he_rbrq, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %cidlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %cidlen, align 4
  %shr6 = lshr i32 %18, 16
  %and7 = and i32 %shr6, 8191
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %lastcid.0297)
  %cmp8.not = icmp eq i32 %and7, %lastcid.0297
  br i1 %cmp8.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %19 = ptrtoint ptr %vcibits.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vcibits.i, align 4
  %notmask.i = shl nsw i32 -1, %20
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %and7, %sub.i
  %and2.i = and i32 %and.i, 31
  %arrayidx.i = getelementptr [32 x %struct.hlist_head], ptr @vcc_hash, i32 0, i32 %and2.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  %add.ptr.i = getelementptr i8, ptr %22, i32 -84
  %tobool4.not4953.i = icmp eq ptr %add.ptr.i, null
  %tobool4.not49.i = or i1 %tobool.not.i, %tobool4.not4953.i
  br i1 %tobool4.not49.i, label %if.then.do.end14_crit_edge, label %for.body.lr.ph.i

if.then.do.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

for.body.lr.ph.i:                                 ; preds = %if.then
  %shr.i = lshr i32 %and7, %20
  %23 = ptrtoint ptr %atm_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %atm_dev.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %s.050.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr25.i, %for.inc.i.for.body.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.atm_vcc, ptr %s.050.i, i32 0, i32 6
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %cmp.i = icmp eq ptr %26, %24
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vci6.i = getelementptr inbounds %struct.atm_vcc, ptr %s.050.i, i32 0, i32 3
  %27 = ptrtoint ptr %vci6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vci6.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %and.i)
  %cmp7.i = icmp eq i32 %28, %and.i
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %vpi10.i = getelementptr inbounds %struct.atm_vcc, ptr %s.050.i, i32 0, i32 2
  %29 = ptrtoint ptr %vpi10.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vpi10.i, align 4
  %conv11.i = sext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv11.i)
  %cmp13.i = icmp eq i32 %shr.i, %conv11.i
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %land.lhs.true9.i
  %rxtp.i = getelementptr inbounds %struct.atm_vcc, ptr %s.050.i, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %rxtp.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rxtp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp17.not.i = icmp eq i8 %32, 0
  br i1 %cmp17.not.i, label %land.lhs.true15.i.for.inc.i_crit_edge, label %land.lhs.true15.i.lor.lhs.false_crit_edge

land.lhs.true15.i.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %33 = getelementptr inbounds %struct.sock_common, ptr %s.050.i, i32 0, i32 15
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool21.not.i = icmp eq ptr %35, null
  %add.ptr25.i = getelementptr i8, ptr %35, i32 -84
  %tobool4.not54.i = icmp eq ptr %add.ptr25.i, null
  %tobool4.not.i = or i1 %tobool21.not.i, %tobool4.not54.i
  br i1 %tobool4.not.i, label %for.inc.i.do.end14_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.do.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

if.end:                                           ; preds = %while.body
  %cmp9 = icmp eq ptr %vcc.0296, null
  br i1 %cmp9, label %if.end.do.end14_crit_edge, label %if.end.lor.lhs.false_crit_edge

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

lor.lhs.false:                                    ; preds = %if.end.lor.lhs.false_crit_edge, %land.lhs.true15.i.lor.lhs.false_crit_edge
  %vcc.1283 = phi ptr [ %vcc.0296, %if.end.lor.lhs.false_crit_edge ], [ %s.050.i, %land.lhs.true15.i.lor.lhs.false_crit_edge ]
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc.1283, i32 0, i32 14
  %36 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_data, align 8
  %cmp10 = icmp eq ptr %37, null
  br i1 %cmp10, label %lor.lhs.false.do.end14_crit_edge, label %if.end22

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.end14:                                         ; preds = %lor.lhs.false.do.end14_crit_edge, %if.end.do.end14_crit_edge, %for.inc.i.do.end14_crit_edge, %if.then.do.end14_crit_edge
  %vcc.1279 = phi ptr [ null, %if.end.do.end14_crit_edge ], [ %vcc.1283, %lor.lhs.false.do.end14_crit_edge ], [ null, %if.then.do.end14_crit_edge ], [ null, %for.inc.i.do.end14_crit_edge ]
  %38 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %he_dev, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %39, i32 noundef %and7) #14
  %40 = ptrtoint ptr %rbrq_head to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rbrq_head, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and18 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %if.then19, label %do.end14.next_rbrq_entry_crit_edge

do.end14.next_rbrq_entry_crit_edge:               ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_rbrq_entry

if.then19:                                        ; preds = %do.end14
  %44 = ptrtoint ptr %rbpl_table38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rbpl_table38, align 4
  tail call void @_clear_bit(i32 noundef %shr, ptr noundef %45) #11
  %call.i.i262 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #11
  br i1 %call.i.i262, label %if.end.i.i, label %if.then19.list_del.exit_crit_edge

if.then19.list_del.exit_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then19.list_del.exit_crit_edge
  %52 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %54 = ptrtoint ptr %rbpl_pool136 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rbpl_pool136, align 4
  %mapping = getelementptr inbounds %struct.he_buff, ptr %16, i32 0, i32 1
  %56 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mapping, align 4
  tail call void @dma_pool_free(ptr noundef %55, ptr noundef %16, i32 noundef %57) #11
  br label %next_rbrq_entry

if.end22:                                         ; preds = %lor.lhs.false
  %58 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %10, align 4
  %and25 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end34, label %do.end30

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %he_dev, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %61, i32 noundef %and7) #14
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc.1283, i32 0, i32 16
  %62 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stats, align 8
  %rx_drop = getelementptr inbounds %struct.k_atm_aal_stats, ptr %63, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_drop, i32 1, i32 3, i32 1) #11
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop, ptr %rx_drop, i32 1, ptr elementtype(i32) %rx_drop) #11, !srcloc !522
  br label %return_host_buffers

if.end34:                                         ; preds = %if.end22
  %65 = ptrtoint ptr %cidlen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %cidlen, align 4
  %and37 = shl i32 %66, 2
  %mul = and i32 %and37, 262140
  %len = getelementptr inbounds %struct.he_buff, ptr %16, i32 0, i32 2
  %67 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %mul, ptr %len, align 4
  %68 = ptrtoint ptr %rbpl_table38 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rbpl_table38, align 4
  tail call void @_clear_bit(i32 noundef %shr, ptr noundef %69) #11
  %call.i.i263 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #11
  br i1 %call.i.i263, label %if.end.i.i266, label %if.end34.__list_del_entry.exit.i_crit_edge

if.end34.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i266:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i264 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i264 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i264, align 4
  %72 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %16, align 4
  %prev1.i.i.i265 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i265 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i265, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i266, %if.end34.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %16, ptr noundef %77, ptr noundef nonnull %37) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %16, ptr %prev.i2.i, align 4
  %79 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %37, ptr %16, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %80 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %16, ptr %77, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %82 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len, align 4
  %pdu_len = getelementptr inbounds %struct.he_vcc, ptr %37, i32 0, i32 1
  %84 = ptrtoint ptr %pdu_len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pdu_len, align 4
  %add = add i32 %85, %83
  store i32 %add, ptr %pdu_len, align 4
  %86 = ptrtoint ptr %rbrq_head to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rbrq_head, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %87, align 4
  %and43 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end49, label %if.then45

if.then45:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rx_waitq = getelementptr inbounds %struct.he_vcc, ptr %37, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %rx_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %return_host_buffers

if.end49:                                         ; preds = %list_move_tail.exit
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %87, align 4
  %and52 = and i32 %91, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end49.next_rbrq_entry_crit_edge, label %if.end55

if.end49.next_rbrq_entry_crit_edge:               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_rbrq_entry

if.end55:                                         ; preds = %if.end49
  %92 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %87, align 4
  %and58 = and i32 %93, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %if.end55.do.end68_crit_edge

if.end55.do.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

lor.lhs.false60:                                  ; preds = %if.end55
  %94 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %87, align 4
  %and63 = and i32 %95, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end70, label %lor.lhs.false60.do.end68_crit_edge

lor.lhs.false60.do.end68_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

do.end68:                                         ; preds = %lor.lhs.false60.do.end68_crit_edge, %if.end55.do.end68_crit_edge
  %stats69 = getelementptr inbounds %struct.atm_vcc, ptr %vcc.1283, i32 0, i32 16
  %96 = ptrtoint ptr %stats69 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %stats69, align 8
  %rx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %97, i32 0, i32 3
  %call.i.i260 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_err, i32 1, i32 3, i32 1) #11
  %98 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err, ptr %rx_err, i32 1, ptr elementtype(i32) %rx_err) #11, !srcloc !522
  br label %return_host_buffers

if.end70:                                         ; preds = %lor.lhs.false60
  %99 = load i16, ptr @rx_skb_reserve, align 2
  %conv = sext i16 %99 to i32
  %add72 = add i32 %add, %conv
  %call73 = tail call ptr @atm_alloc_charge(ptr noundef nonnull %vcc.1283, i32 noundef %add72, i32 noundef 2592) #11
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.end70.return_host_buffers_crit_edge, label %if.end79

if.end70.return_host_buffers_crit_edge:           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_host_buffers

if.end79:                                         ; preds = %if.end70
  %100 = load i16, ptr @rx_skb_reserve, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %cmp81 = icmp sgt i16 %100, 0
  br i1 %cmp81, label %if.then83, label %if.end79.if.end85_crit_edge

if.end79.if.end85_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %conv80284 = zext i16 %100 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call73, i32 0, i32 19
  %101 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i, align 4
  %add.ptr.i267 = getelementptr i8, ptr %102, i32 %conv80284
  store ptr %add.ptr.i267, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call73, i32 0, i32 16
  %103 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %104, i32 %conv80284
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end79.if.end85_crit_edge
  %call.i.i268 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %105 = getelementptr inbounds %struct.sk_buff, ptr %call73, i32 0, i32 2
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %call.i.i268, ptr %105, align 8
  %107 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %107)
  %heb.0286 = load ptr, ptr %37, align 4
  %cmp91.not287 = icmp eq ptr %heb.0286, %37
  br i1 %cmp91.not287, label %if.end85.for.end_crit_edge, label %if.end85.for.body_crit_edge

if.end85.for.body_crit_edge:                      ; preds = %if.end85
  br label %for.body

if.end85.for.end_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end85.for.body_crit_edge
  %heb.0288 = phi ptr [ %heb.0, %for.body.for.body_crit_edge ], [ %heb.0286, %if.end85.for.body_crit_edge ]
  %data = getelementptr inbounds %struct.he_buff, ptr %heb.0288, i32 0, i32 3
  %len93 = getelementptr inbounds %struct.he_buff, ptr %heb.0288, i32 0, i32 2
  %108 = ptrtoint ptr %len93 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len93, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call73, i32 noundef %109) #11
  %110 = call ptr @memcpy(ptr %call.i, ptr %data, i32 %109)
  %111 = ptrtoint ptr %heb.0288 to i32
  call void @__asan_load4_noabort(i32 %111)
  %heb.0 = load ptr, ptr %heb.0288, align 4
  %cmp91.not = icmp eq ptr %heb.0, %37
  br i1 %cmp91.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end85.for.end_crit_edge
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc.1283, i32 0, i32 7, i32 2
  %112 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %aal, align 8
  %114 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.160)
  switch i8 %113, label %for.end.sw.epilog_crit_edge [
    i8 13, label %sw.bb
    i8 5, label %sw.bb103
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %len101 = getelementptr inbounds %struct.sk_buff, ptr %call73, i32 0, i32 6
  %115 = ptrtoint ptr %len101 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 52, ptr %len101, align 4
  %data.i269 = getelementptr inbounds %struct.sk_buff, ptr %call73, i32 0, i32 19
  %116 = ptrtoint ptr %data.i269 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i269, align 4
  %add.ptr.i270 = getelementptr i8, ptr %117, i32 52
  br label %sw.epilog.sink.split

sw.bb103:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %data104 = getelementptr inbounds %struct.sk_buff, ptr %call73, i32 0, i32 19
  %118 = ptrtoint ptr %data104 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data104, align 4
  %120 = ptrtoint ptr %pdu_len to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pdu_len, align 4
  %sub = add i32 %121, -6
  %arrayidx106 = getelementptr i8, ptr %119, i32 %sub
  %122 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %123 to i32
  %shl = shl nuw nsw i32 %conv107, 8
  %sub110 = add i32 %121, -5
  %arrayidx111 = getelementptr i8, ptr %119, i32 %sub110
  %124 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %125 to i32
  %or113 = or i32 %shl, %conv112
  %len114 = getelementptr inbounds %struct.sk_buff, ptr %call73, i32 0, i32 6
  %126 = ptrtoint ptr %len114 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %or113, ptr %len114, align 4
  %add.ptr.i273 = getelementptr i8, ptr %119, i32 %or113
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb103, %sw.bb
  %add.ptr.i273.sink = phi ptr [ %add.ptr.i273, %sw.bb103 ], [ %add.ptr.i270, %sw.bb ]
  %tail.i274 = getelementptr inbounds %struct.sk_buff, ptr %call73, i32 0, i32 16
  %127 = ptrtoint ptr %tail.i274 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr.i273.sink, ptr %tail.i274, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.end.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %global_lock) #11
  %push = getelementptr inbounds %struct.atm_vcc, ptr %vcc.1283, i32 0, i32 10
  %128 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %push, align 8
  tail call void %129(ptr noundef nonnull %vcc.1283, ptr noundef nonnull %call73) #11
  tail call void @_raw_spin_lock(ptr noundef %global_lock) #11
  %stats117 = getelementptr inbounds %struct.atm_vcc, ptr %vcc.1283, i32 0, i32 16
  %130 = ptrtoint ptr %stats117 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %stats117, align 8
  %rx = getelementptr inbounds %struct.k_atm_aal_stats, ptr %131, i32 0, i32 2
  %call.i.i261 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx, i32 1, i32 3, i32 1) #11
  %132 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx, ptr %rx, i32 1, ptr elementtype(i32) %rx) #11, !srcloc !522
  br label %return_host_buffers

return_host_buffers:                              ; preds = %sw.epilog, %if.end70.return_host_buffers_crit_edge, %do.end68, %if.then45, %do.end30
  %lastcid.1 = phi i32 [ %and7, %do.end30 ], [ -1, %if.then45 ], [ %and7, %do.end68 ], [ %and7, %sw.epilog ], [ %and7, %if.end70.return_host_buffers_crit_edge ]
  %inc118 = add i32 %pdus_assembled.0293, 1
  %133 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %37, align 4
  %cmp132.not289 = icmp eq ptr %134, %37
  br i1 %cmp132.not289, label %return_host_buffers.for.end144_crit_edge, label %return_host_buffers.for.body135_crit_edge

return_host_buffers.for.body135_crit_edge:        ; preds = %return_host_buffers
  br label %for.body135

return_host_buffers.for.end144_crit_edge:         ; preds = %return_host_buffers
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end144

for.body135:                                      ; preds = %for.body135.for.body135_crit_edge, %return_host_buffers.for.body135_crit_edge
  %heb.1290 = phi ptr [ %next.0, %for.body135.for.body135_crit_edge ], [ %134, %return_host_buffers.for.body135_crit_edge ]
  %135 = ptrtoint ptr %heb.1290 to i32
  call void @__asan_load4_noabort(i32 %135)
  %next.0 = load ptr, ptr %heb.1290, align 4
  %136 = ptrtoint ptr %rbpl_pool136 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rbpl_pool136, align 4
  %mapping137 = getelementptr inbounds %struct.he_buff, ptr %heb.1290, i32 0, i32 1
  %138 = ptrtoint ptr %mapping137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mapping137, align 4
  tail call void @dma_pool_free(ptr noundef %137, ptr noundef %heb.1290, i32 noundef %139) #11
  %cmp132.not = icmp eq ptr %next.0, %37
  br i1 %cmp132.not, label %for.body135.for.end144_crit_edge, label %for.body135.for.body135_crit_edge

for.body135.for.body135_crit_edge:                ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body135

for.body135.for.end144_crit_edge:                 ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end144

for.end144:                                       ; preds = %for.body135.for.end144_crit_edge, %return_host_buffers.for.end144_crit_edge
  %140 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %37, ptr %37, align 4
  %prev.i275 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i275 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %37, ptr %prev.i275, align 4
  %pdu_len146 = getelementptr inbounds %struct.he_vcc, ptr %37, i32 0, i32 1
  %142 = ptrtoint ptr %pdu_len146 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %pdu_len146, align 4
  br label %next_rbrq_entry

next_rbrq_entry:                                  ; preds = %for.end144, %if.end49.next_rbrq_entry_crit_edge, %list_del.exit, %do.end14.next_rbrq_entry_crit_edge
  %vcc.1278 = phi ptr [ %vcc.1279, %do.end14.next_rbrq_entry_crit_edge ], [ %vcc.1279, %list_del.exit ], [ %vcc.1283, %for.end144 ], [ %vcc.1283, %if.end49.next_rbrq_entry_crit_edge ]
  %pdus_assembled.1 = phi i32 [ %pdus_assembled.0293, %do.end14.next_rbrq_entry_crit_edge ], [ %pdus_assembled.0293, %list_del.exit ], [ %inc118, %for.end144 ], [ %pdus_assembled.0293, %if.end49.next_rbrq_entry_crit_edge ]
  %lastcid.2 = phi i32 [ %and7, %do.end14.next_rbrq_entry_crit_edge ], [ %and7, %list_del.exit ], [ %lastcid.1, %for.end144 ], [ %and7, %if.end49.next_rbrq_entry_crit_edge ]
  %143 = ptrtoint ptr %rbrq_base to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rbrq_base, align 4
  %145 = ptrtoint ptr %144 to i32
  %146 = ptrtoint ptr %rbrq_head to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rbrq_head, align 4
  %add.ptr149 = getelementptr %struct.he_rbrq, ptr %147, i32 1
  %148 = ptrtoint ptr %add.ptr149 to i32
  %and150 = and i32 %148, 4095
  %or151 = or i32 %and150, %145
  %149 = inttoptr i32 %or151 to ptr
  store ptr %149, ptr %rbrq_head, align 4
  %cmp.not = icmp eq ptr %149, %7
  br i1 %cmp.not, label %while.end, label %next_rbrq_entry.while.body_crit_edge

next_rbrq_entry.while.body_crit_edge:             ; preds = %next_rbrq_entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %next_rbrq_entry
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool153.not = icmp eq i32 %inc, 0
  br i1 %tobool153.not, label %while.end.if.end174_crit_edge, label %if.then154

while.end.if.end174_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end174

if.then154:                                       ; preds = %while.end
  %rbrq_peak = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 41
  %150 = ptrtoint ptr %rbrq_peak to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rbrq_peak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %151)
  %cmp155 = icmp sgt i32 %inc, %151
  br i1 %cmp155, label %if.then157, label %if.then154.do.body161_crit_edge

if.then154.do.body161_crit_edge:                  ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body161

if.then157:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %rbrq_peak to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %inc, ptr %rbrq_peak, align 4
  br label %do.body161

do.body161:                                       ; preds = %if.then157, %if.then154.do.body161_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !557
  tail call void @arm_heavy_mb() #11
  %153 = ptrtoint ptr %rbrq_head to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rbrq_head, align 4
  %155 = ptrtoint ptr %154 to i32
  %and165 = and i32 %155, 4095
  %156 = tail call i32 @llvm.bswap.i32(i32 %and165)
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %157 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %membase, align 4
  %mul166 = shl i32 %group, 4
  %add167 = add i32 %mul166, 525572
  %add.ptr168 = getelementptr i8, ptr %158, i32 %add167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 %156) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !558
  tail call void @arm_heavy_mb() #11
  br label %if.end174

if.end174:                                        ; preds = %do.body161, %while.end.if.end174_crit_edge, %while.end.thread
  %pdus_assembled.0.lcssa304 = phi i32 [ 0, %while.end.thread ], [ %pdus_assembled.1, %do.body161 ], [ %pdus_assembled.1, %while.end.if.end174_crit_edge ]
  ret i32 %pdus_assembled.0.lcssa304
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @he_service_rbpl(ptr noundef %he_dev) unnamed_addr #2 align 64 {
entry:
  %mapping = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #11
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mapping, align 4, !annotation !340
  %rbpl_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 47
  %1 = ptrtoint ptr %rbpl_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rbpl_base, align 4
  %3 = ptrtoint ptr %2 to i32
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 525328
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !559
  %7 = and i32 %6, -15794176
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or = or i32 %8, %3
  %9 = inttoptr i32 %or to ptr
  %rbpl_tail = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 48
  %10 = ptrtoint ptr %rbpl_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rbpl_base, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %rbpl_tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rbpl_tail, align 4
  %add.ptr31 = getelementptr %struct.he_rbp, ptr %14, i32 1
  %15 = ptrtoint ptr %add.ptr31 to i32
  %and42 = and i32 %15, 4095
  %or53 = or i32 %and42, %12
  %16 = inttoptr i32 %or53 to ptr
  %cmp4 = icmp eq ptr %16, %9
  br i1 %cmp4, label %entry.if.end36_crit_edge, label %if.end.lr.ph

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end.lr.ph:                                     ; preds = %entry
  %rbpl_table = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 43
  %rbpl_hint = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 44
  %rbpl_pool = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 45
  %rbpl_outstanding = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 49
  %rbpl_virt = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 42
  br label %if.end

if.end:                                           ; preds = %list_add.exit.if.end_crit_edge, %if.end.lr.ph
  %17 = phi ptr [ %16, %if.end.lr.ph ], [ %50, %list_add.exit.if.end_crit_edge ]
  %moved.05 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %list_add.exit.if.end_crit_edge ]
  %18 = ptrtoint ptr %rbpl_table to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rbpl_table, align 4
  %20 = ptrtoint ptr %rbpl_hint to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rbpl_hint, align 4
  %call6 = call i32 @_find_next_zero_bit_be(ptr noundef %19, i32 noundef 530, i32 noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 529, i32 %call6)
  %cmp7 = icmp sgt i32 %call6, 529
  br i1 %cmp7, label %if.then8, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %if.end
  %22 = ptrtoint ptr %rbpl_table to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rbpl_table, align 4
  %call10 = call i32 @_find_first_zero_bit_be(ptr noundef %23, i32 noundef 530) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 529, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, 529
  br i1 %cmp11, label %if.then8.for.end_crit_edge, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %i.0 = phi i32 [ %call10, %if.then8.if.end14_crit_edge ], [ %call6, %if.end.if.end14_crit_edge ]
  %add = add nsw i32 %i.0, 1
  %24 = ptrtoint ptr %rbpl_hint to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %rbpl_hint, align 4
  %25 = ptrtoint ptr %rbpl_pool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rbpl_pool, align 4
  %call16 = call ptr @dma_pool_alloc(ptr noundef %26, i32 noundef 2592, ptr noundef nonnull %mapping) #11
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %if.end14.for.end_crit_edge, label %if.end18

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end18:                                         ; preds = %if.end14
  %27 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mapping, align 4
  %mapping19 = getelementptr inbounds %struct.he_buff, ptr %call16, i32 0, i32 1
  %29 = ptrtoint ptr %mapping19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %mapping19, align 4
  %30 = ptrtoint ptr %rbpl_outstanding to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rbpl_outstanding, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call16, ptr noundef %rbpl_outstanding, ptr noundef %31) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.list_add.exit_crit_edge

if.end18.list_add.exit_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call16, ptr %prev1.i.i, align 4
  %33 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %call16, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call16, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rbpl_outstanding, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %rbpl_outstanding to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call16, ptr %rbpl_outstanding, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end18.list_add.exit_crit_edge
  %36 = ptrtoint ptr %rbpl_virt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rbpl_virt, align 4
  %arrayidx = getelementptr ptr, ptr %37, i32 %i.0
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call16, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %rbpl_table to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rbpl_table, align 4
  call void @_set_bit(i32 noundef %i.0, ptr noundef %40) #11
  %shl = shl i32 %i.0, 6
  %idx = getelementptr inbounds %struct.he_rbp, ptr %17, i32 0, i32 1
  %41 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %shl, ptr %idx, align 4
  %42 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mapping, align 4
  %add22 = add i32 %43, 16
  %44 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %add22, ptr %17, align 4
  %45 = ptrtoint ptr %rbpl_tail to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %17, ptr %rbpl_tail, align 4
  %inc = add i32 %moved.05, 1
  %46 = ptrtoint ptr %rbpl_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rbpl_base, align 4
  %48 = ptrtoint ptr %47 to i32
  %add.ptr3 = getelementptr %struct.he_rbp, ptr %17, i32 1
  %49 = ptrtoint ptr %add.ptr3 to i32
  %and4 = and i32 %49, 4095
  %or5 = or i32 %and4, %48
  %50 = inttoptr i32 %or5 to ptr
  %cmp = icmp eq ptr %50, %9
  br i1 %cmp, label %list_add.exit.for.end_crit_edge, label %list_add.exit.if.end_crit_edge

list_add.exit.if.end_crit_edge:                   ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %if.end14.for.end_crit_edge, %if.then8.for.end_crit_edge
  %moved.0.lcssa = phi i32 [ %inc, %list_add.exit.for.end_crit_edge ], [ %moved.05, %if.then8.for.end_crit_edge ], [ %moved.05, %if.end14.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %moved.0.lcssa)
  %tobool24.not = icmp eq i32 %moved.0.lcssa, 0
  br i1 %tobool24.not, label %for.end.if.end36_crit_edge, label %do.body26

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.body26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !560
  call void @arm_heavy_mb() #11
  %51 = ptrtoint ptr %rbpl_tail to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rbpl_tail, align 4
  %53 = ptrtoint ptr %52 to i32
  %and28 = and i32 %53, 4095
  %54 = call i32 @llvm.bswap.i32(i32 %and28)
  %55 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase, align 4
  %add.ptr30 = getelementptr i8, ptr %56, i32 525332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %54) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !561
  call void @arm_heavy_mb() #11
  br label %if.end36

if.end36:                                         ; preds = %do.body26, %for.end.if.end36_crit_edge, %entry.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @he_service_tbrq(ptr noundef %he_dev, i32 noundef %group) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tbrq_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 52
  %0 = ptrtoint ptr %tbrq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbrq_base, align 4
  %2 = ptrtoint ptr %1 to i32
  %hsp = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 56
  %3 = ptrtoint ptr %hsp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hsp, align 4
  %arrayidx = getelementptr [8 x %struct.he_hsp_entry], ptr %4, i32 0, i32 %group
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx, align 4
  %or = or i32 %6, %2
  %7 = inttoptr i32 %or to ptr
  %tbrq_head = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 53
  %8 = ptrtoint ptr %tbrq_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tbrq_head, align 4
  %cmp.not170 = icmp eq ptr %9, %7
  br i1 %cmp.not170, label %entry.if.end103_crit_edge, label %while.body.lr.ph

entry.if.end103_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

while.body.lr.ph:                                 ; preds = %entry
  %outstanding_tpds = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 32
  %pci_dev = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 57
  %tpd_pool = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 31
  br label %while.body

while.body:                                       ; preds = %if.end78.while.body_crit_edge, %while.body.lr.ph
  %10 = phi ptr [ %9, %while.body.lr.ph ], [ %77, %if.end78.while.body_crit_edge ]
  %updated.0171 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end78.while.body_crit_edge ]
  %inc = add i32 %updated.0171, 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %while.body
  %.pn.in = phi ptr [ %outstanding_tpds, %while.body ], [ %.pn, %for.body.for.cond_crit_edge ]
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp5.not = icmp eq ptr %.pn, %outstanding_tpds
  br i1 %cmp5.not, label %for.cond.next_tbrq_entry.thread163_crit_edge, label %for.body

for.cond.next_tbrq_entry.thread163_crit_edge:     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_tbrq_entry.thread163

for.body:                                         ; preds = %for.cond
  %__tpd.0 = getelementptr i8, ptr %.pn, i32 -40
  %12 = ptrtoint ptr %__tpd.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %__tpd.0, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %16 = xor i32 %15, %13
  %cmp8 = icmp ult i32 %16, 64
  br i1 %cmp8, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then:                                          ; preds = %for.body
  %__tpd.0.le = getelementptr i8, ptr %.pn, i32 -40
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i, %if.then.for.end_crit_edge
  %23 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp15 = icmp eq ptr %__tpd.0.le, null
  br i1 %cmp15, label %for.end.next_tbrq_entry.thread163_crit_edge, label %if.end24

for.end.next_tbrq_entry.thread163_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_tbrq_entry.thread163

next_tbrq_entry.thread163:                        ; preds = %for.end.next_tbrq_entry.thread163_crit_edge, %for.cond.next_tbrq_entry.thread163_crit_edge
  %25 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %he_dev, align 4
  %27 = ptrtoint ptr %tbrq_head to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tbrq_head, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and23 = and i32 %30, -64
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %26, i32 noundef %and23) #14
  br label %if.end78

if.end24:                                         ; preds = %for.end
  %31 = ptrtoint ptr %tbrq_head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tbrq_head, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and27 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %for.body39, label %do.end31

do.end31:                                         ; preds = %if.end24
  %vcc = getelementptr i8, ptr %.pn, i32 -4
  %35 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vcc, align 4
  %tobool32.not = icmp eq ptr %36, null
  br i1 %tobool32.not, label %do.end31.if.then75_crit_edge, label %if.then33

do.end31.if.then75_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then75

if.then33:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_data, align 8
  %tx_waitq = getelementptr inbounds %struct.he_vcc, ptr %38, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %tx_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.then75

for.body39:                                       ; preds = %if.end24
  %arrayidx40 = getelementptr i8, ptr %.pn, i32 -32
  %39 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool41.not = icmp eq i32 %40, 0
  br i1 %tobool41.not, label %for.body39.if.end49_crit_edge, label %if.then42

for.body39.if.end49_crit_edge:                    ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then42:                                        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %len = getelementptr i8, ptr %.pn, i32 -28
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %and48 = and i32 %44, 65535
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %40, i32 noundef %and48, i32 noundef 1, i32 noundef 0) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %for.body39.if.end49_crit_edge
  %len52 = getelementptr i8, ptr %.pn, i32 -28
  %45 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %tobool54.not = icmp sgt i32 %46, -1
  br i1 %tobool54.not, label %for.body39.1, label %if.end49.for.end59_crit_edge

if.end49.for.end59_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end59

for.body39.1:                                     ; preds = %if.end49
  %arrayidx40.1 = getelementptr i8, ptr %.pn, i32 -24
  %47 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx40.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool41.not.1 = icmp eq i32 %48, 0
  br i1 %tobool41.not.1, label %for.body39.1.if.end49.1_crit_edge, label %if.then42.1

for.body39.1.if.end49.1_crit_edge:                ; preds = %for.body39.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.1

if.then42.1:                                      ; preds = %for.body39.1
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci_dev, align 4
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %len.1 = getelementptr i8, ptr %.pn, i32 -20
  %51 = ptrtoint ptr %len.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.1, align 4
  %and48.1 = and i32 %52, 65535
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.1, i32 noundef %48, i32 noundef %and48.1, i32 noundef 1, i32 noundef 0) #11
  br label %if.end49.1

if.end49.1:                                       ; preds = %if.then42.1, %for.body39.1.if.end49.1_crit_edge
  %len52.1 = getelementptr i8, ptr %.pn, i32 -20
  %53 = ptrtoint ptr %len52.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len52.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %tobool54.not.1 = icmp sgt i32 %54, -1
  br i1 %tobool54.not.1, label %for.body39.2, label %if.end49.1.for.end59_crit_edge

if.end49.1.for.end59_crit_edge:                   ; preds = %if.end49.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end59

for.body39.2:                                     ; preds = %if.end49.1
  %arrayidx40.2 = getelementptr i8, ptr %.pn, i32 -16
  %55 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx40.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool41.not.2 = icmp eq i32 %56, 0
  br i1 %tobool41.not.2, label %for.body39.2.for.end59_crit_edge, label %if.then42.2

for.body39.2.for.end59_crit_edge:                 ; preds = %for.body39.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end59

if.then42.2:                                      ; preds = %for.body39.2
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_dev, align 4
  %dev.2 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %len.2 = getelementptr i8, ptr %.pn, i32 -12
  %59 = ptrtoint ptr %len.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.2, align 4
  %and48.2 = and i32 %60, 65535
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.2, i32 noundef %56, i32 noundef %and48.2, i32 noundef 1, i32 noundef 0) #11
  br label %for.end59

for.end59:                                        ; preds = %if.then42.2, %for.body39.2.for.end59_crit_edge, %if.end49.1.for.end59_crit_edge, %if.end49.for.end59_crit_edge
  %skb = getelementptr i8, ptr %.pn, i32 -8
  %61 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %skb, align 4
  %tobool60.not = icmp eq ptr %62, null
  br i1 %tobool60.not, label %for.end59.if.then75_crit_edge, label %if.then61

for.end59.if.then75_crit_edge:                    ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then75

if.then61:                                        ; preds = %for.end59
  %vcc62 = getelementptr i8, ptr %.pn, i32 -4
  %63 = ptrtoint ptr %vcc62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vcc62, align 4
  %tobool63.not = icmp eq ptr %64, null
  br i1 %tobool63.not, label %if.then61.if.else_crit_edge, label %land.lhs.true

if.then61.if.else_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.then61
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pop, align 4
  %tobool65.not = icmp eq ptr %66, null
  br i1 %tobool65.not, label %land.lhs.true.if.else_crit_edge, label %if.then66

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then66:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %66(ptr noundef nonnull %64, ptr noundef nonnull %62) #11
  br label %if.then75

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then61.if.else_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %62, i32 noundef 1) #11
  br label %if.then75

if.then75:                                        ; preds = %if.else, %if.then66, %for.end59.if.then75_crit_edge, %if.then33, %do.end31.if.then75_crit_edge
  %67 = ptrtoint ptr %tpd_pool to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tpd_pool, align 4
  %69 = ptrtoint ptr %__tpd.0.le to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %__tpd.0.le, align 4
  %and77 = and i32 %70, -64
  tail call void @dma_pool_free(ptr noundef %68, ptr noundef nonnull %__tpd.0.le, i32 noundef %and77) #11
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %next_tbrq_entry.thread163
  %71 = ptrtoint ptr %tbrq_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tbrq_base, align 4
  %73 = ptrtoint ptr %72 to i32
  %74 = ptrtoint ptr %tbrq_head to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tbrq_head, align 4
  %add.ptr81 = getelementptr %struct.he_tbrq, ptr %75, i32 1
  %76 = ptrtoint ptr %add.ptr81 to i32
  %and82 = and i32 %76, 2047
  %or83 = or i32 %and82, %73
  %77 = inttoptr i32 %or83 to ptr
  store ptr %77, ptr %tbrq_head, align 4
  %cmp.not = icmp eq ptr %77, %7
  br i1 %cmp.not, label %while.end, label %if.end78.while.body_crit_edge

if.end78.while.body_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool85.not = icmp eq i32 %inc, 0
  br i1 %tobool85.not, label %while.end.if.end103_crit_edge, label %if.then86

while.end.if.end103_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then86:                                        ; preds = %while.end
  %tbrq_peak = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 54
  %78 = ptrtoint ptr %tbrq_peak to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tbrq_peak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %79)
  %cmp87 = icmp sgt i32 %inc, %79
  br i1 %cmp87, label %if.then88, label %if.then86.do.body92_crit_edge

if.then86.do.body92_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body92

if.then88:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %tbrq_peak to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %inc, ptr %tbrq_peak, align 4
  br label %do.body92

do.body92:                                        ; preds = %if.then88, %if.then86.do.body92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !562
  tail call void @arm_heavy_mb() #11
  %81 = ptrtoint ptr %tbrq_head to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tbrq_head, align 4
  %83 = ptrtoint ptr %82 to i32
  %and96 = and i32 %83, 2047
  %84 = tail call i32 @llvm.bswap.i32(i32 %and96)
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %85 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase, align 4
  %mul = shl i32 %group, 4
  %add = add i32 %mul, 525828
  %add.ptr97 = getelementptr i8, ptr %86, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %84) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !563
  tail call void @arm_heavy_mb() #11
  br label %if.end103

if.end103:                                        ; preds = %do.body92, %while.end.if.end103_crit_edge, %entry.if.end103_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_alloc_charge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @read_prom_byte(ptr nocapture noundef readonly %he_dev, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 524292
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !564
  %3 = and i32 %2, -2031617
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or = or i32 %4, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !565
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 524292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !566
  tail call void @arm_heavy_mb() #11
  br label %do.body11

do.body11:                                        ; preds = %do.body11.do.body11_crit_edge, %entry
  %i.0167 = phi i32 [ 0, %entry ], [ %inc, %do.body11.do.body11_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !567
  tail call void @arm_heavy_mb() #11
  %arrayidx = getelementptr [17 x i32], ptr @readtab, i32 0, i32 %i.0167
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %or14 = or i32 %9, %or
  %10 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 524292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %10) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !568
  tail call void @arm_heavy_mb() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 85899200) #11
  %inc = add nuw nsw i32 %i.0167, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %do.body11.do.body26_crit_edge, label %do.body11.do.body11_crit_edge

do.body11.do.body11_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

do.body11.do.body26_crit_edge:                    ; preds = %do.body11
  br label %do.body26

do.body26:                                        ; preds = %do.body26.do.body26_crit_edge, %do.body11.do.body26_crit_edge
  %i.1169 = phi i32 [ %dec, %do.body26.do.body26_crit_edge ], [ 7, %do.body11.do.body26_crit_edge ]
  %j.0168 = phi i32 [ %inc45, %do.body26.do.body26_crit_edge ], [ 0, %do.body11.do.body26_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !569
  tail call void @arm_heavy_mb() #11
  %inc29 = or i32 %j.0168, 1
  %arrayidx30 = getelementptr [17 x i32], ptr @clocktab, i32 0, i32 %j.0168
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx30, align 4
  %shr166 = lshr i32 %addr, %i.1169
  %and32 = shl i32 %shr166, 9
  %shl = and i32 %and32, 512
  %or31 = or i32 %shl, %or
  %or33 = or i32 %or31, %15
  %16 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr35 = getelementptr i8, ptr %18, i32 524292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %16) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !570
  tail call void @arm_heavy_mb() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 85899200) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !571
  tail call void @arm_heavy_mb() #11
  %inc45 = add nuw nsw i32 %j.0168, 2
  %arrayidx46 = getelementptr [17 x i32], ptr @clocktab, i32 0, i32 %inc29
  %20 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx46, align 4
  %or51 = or i32 %or31, %21
  %22 = tail call i32 @llvm.bswap.i32(i32 %or51)
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr53 = getelementptr i8, ptr %24, i32 524292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %22) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !572
  tail call void @arm_heavy_mb() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 85899200) #11
  %dec = add nsw i32 %i.1169, -1
  %cmp23.not = icmp eq i32 %i.1169, 0
  br i1 %cmp23.not, label %for.end60, label %do.body26.do.body26_crit_edge

do.body26.do.body26_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

for.end60:                                        ; preds = %do.body26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !573
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr67 = getelementptr i8, ptr %27, i32 524292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %3) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !574
  tail call void @arm_heavy_mb() #11
  br label %do.body77

do.body77:                                        ; preds = %do.body77.do.body77_crit_edge, %for.end60
  %i.2172 = phi i32 [ 7, %for.end60 ], [ %dec119, %do.body77.do.body77_crit_edge ]
  %j.1171 = phi i32 [ 0, %for.end60 ], [ %inc108, %do.body77.do.body77_crit_edge ]
  %byte_read.0170 = phi i8 [ 0, %for.end60 ], [ %conv103, %do.body77.do.body77_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !575
  tail call void @arm_heavy_mb() #11
  %inc80 = or i32 %j.1171, 1
  %arrayidx81 = getelementptr [17 x i32], ptr @clocktab, i32 0, i32 %j.1171
  %28 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx81, align 4
  %or82 = or i32 %29, %4
  %30 = tail call i32 @llvm.bswap.i32(i32 %or82)
  %31 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase, align 4
  %add.ptr84 = getelementptr i8, ptr %32, i32 524292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %30) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !576
  tail call void @arm_heavy_mb() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 85899200) #11
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr93 = getelementptr i8, ptr %35, i32 524292
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #11, !srcloc !346
  %37 = lshr i32 %36, 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !577
  %and97 = and i32 %37, 1
  %shl99 = shl nuw i32 %and97, %i.2172
  %38 = trunc i32 %shl99 to i8
  %conv103 = or i8 %byte_read.0170, %38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !578
  tail call void @arm_heavy_mb() #11
  %inc108 = add nuw nsw i32 %j.1171, 2
  %arrayidx109 = getelementptr [17 x i32], ptr @clocktab, i32 0, i32 %inc80
  %39 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx109, align 4
  %or110 = or i32 %40, %4
  %41 = tail call i32 @llvm.bswap.i32(i32 %or110)
  %42 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase, align 4
  %add.ptr112 = getelementptr i8, ptr %43, i32 524292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %41) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !579
  tail call void @arm_heavy_mb() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 85899200) #11
  %dec119 = add nsw i32 %i.2172, -1
  %cmp74.not = icmp eq i32 %i.2172, 0
  br i1 %cmp74.not, label %do.body122, label %do.body77.do.body77_crit_edge

do.body77.do.body77_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body77

do.body122:                                       ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !580
  tail call void @arm_heavy_mb() #11
  %or125 = or i32 %4, 4096
  %45 = tail call i32 @llvm.bswap.i32(i32 %or125)
  %46 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase, align 4
  %add.ptr127 = getelementptr i8, ptr %47, i32 524292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %45) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !581
  tail call void @arm_heavy_mb() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 85899200) #11
  ret i8 %conv103
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @he_init_irq(ptr noundef %he_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 57
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %irq_phys = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 24
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 516, ptr noundef %irq_phys, i32 noundef 3264, i32 noundef 0) #11
  %irq_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 25
  %2 = ptrtoint ptr %irq_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %irq_base, align 4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %he_dev, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %4) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.he_irq, ptr %call.i, i32 128
  %irq_tailoffset = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 28
  %5 = ptrtoint ptr %irq_tailoffset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %irq_tailoffset, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_base, align 4
  %irq_head = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 26
  %9 = ptrtoint ptr %irq_head to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %irq_head, align 4
  %irq_tail = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 27
  %10 = ptrtoint ptr %irq_tail to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %irq_tail, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0286 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_base, align 4
  %arrayidx9 = getelementptr %struct.he_irq, ptr %12, i32 %i.0286
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 -1, ptr %arrayidx9, align 4
  %inc = add nuw nsw i32 %i.0286, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.body11, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body11:                                        ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !582
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %irq_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_phys, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 524416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !583
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !584
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr25 = getelementptr i8, ptr %20, i32 524420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 1056) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !585
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !586
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr36 = getelementptr i8, ptr %22, i32 524424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !587
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !588
  tail call void @arm_heavy_mb() #11
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr47 = getelementptr i8, ptr %24, i32 524428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !589
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !590
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %add.ptr58 = getelementptr i8, ptr %26, i32 524432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !591
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !592
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr69 = getelementptr i8, ptr %28, i32 524436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !593
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !594
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr80 = getelementptr i8, ptr %30, i32 524440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !595
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !596
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase, align 4
  %add.ptr91 = getelementptr i8, ptr %32, i32 524444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !597
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !598
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase, align 4
  %add.ptr102 = getelementptr i8, ptr %34, i32 524448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !599
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !600
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase, align 4
  %add.ptr113 = getelementptr i8, ptr %36, i32 524452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !601
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !602
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase, align 4
  %add.ptr124 = getelementptr i8, ptr %38, i32 524456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !603
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !604
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase, align 4
  %add.ptr135 = getelementptr i8, ptr %40, i32 524460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !605
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !606
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase, align 4
  %add.ptr146 = getelementptr i8, ptr %42, i32 524464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !607
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !608
  tail call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %add.ptr157 = getelementptr i8, ptr %44, i32 524468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !609
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !610
  tail call void @arm_heavy_mb() #11
  %45 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase, align 4
  %add.ptr168 = getelementptr i8, ptr %46, i32 524472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !611
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !612
  tail call void @arm_heavy_mb() #11
  %47 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase, align 4
  %add.ptr179 = getelementptr i8, ptr %48, i32 524476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !613
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !614
  tail call void @arm_heavy_mb() #11
  %49 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase, align 4
  %add.ptr190 = getelementptr i8, ptr %50, i32 524480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr190, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !615
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !616
  tail call void @arm_heavy_mb() #11
  %51 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase, align 4
  %add.ptr201 = getelementptr i8, ptr %52, i32 524484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !617
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !618
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase, align 4
  %add.ptr212 = getelementptr i8, ptr %54, i32 524488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !619
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !620
  tail call void @arm_heavy_mb() #11
  %55 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase, align 4
  %add.ptr223 = getelementptr i8, ptr %56, i32 524492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr223, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !621
  tail call void @arm_heavy_mb() #11
  %57 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 46
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  %call.i285 = tail call i32 @request_threaded_irq(i32 noundef %60, ptr noundef nonnull @he_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %he_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285)
  %tobool.not = icmp eq i32 %call.i285, 0
  br i1 %tobool.not, label %if.end240, label %do.end234

do.end234:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %he_dev, align 4
  %63 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci_dev, align 4
  %irq238 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 46
  %65 = ptrtoint ptr %irq238 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq238, align 4
  %call239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %62, i32 noundef %66) #14
  br label %cleanup

if.end240:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci_dev, align 4
  %irq242 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 46
  %69 = ptrtoint ptr %irq242 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq242, align 4
  %irq243 = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 1
  %71 = ptrtoint ptr %irq243 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %irq243, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end240, %do.end234, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -22, %do.end234 ], [ 0, %if.end240 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @he_init_rx_lbfp0(ptr nocapture noundef readonly %he_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cells_per_row = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 8
  %0 = ptrtoint ptr %cells_per_row to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cells_per_row, align 4
  %cells_per_lbuf = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 10
  %2 = ptrtoint ptr %cells_per_lbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cells_per_lbuf, align 4
  %div = udiv i32 %1, %3
  %mul = mul i32 %3, 48
  %r0_startrow = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 12
  %4 = ptrtoint ptr %r0_startrow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r0_startrow, align 4
  %bytes_per_row = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 9
  %6 = ptrtoint ptr %bytes_per_row to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes_per_row, align 4
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 526216
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !623
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 526016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !624
  tail call void @arm_heavy_mb() #11
  %r0_numbuffs = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 13
  %13 = ptrtoint ptr %r0_numbuffs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r0_numbuffs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp75.not = icmp eq i32 %14, 0
  br i1 %cmp75.not, label %entry.do.body22_crit_edge, label %for.body.preheader

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body22

for.body.preheader:                               ; preds = %entry
  %15 = tail call i32 @llvm.bswap.i32(i32 %10)
  %mul2 = mul i32 %7, %5
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.080 = phi i32 [ %inc20, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %lbm_offset.079 = phi i32 [ %add19, %if.end.for.body_crit_edge ], [ %15, %for.body.preheader ]
  %lbufd_index.078 = phi i32 [ %add, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %row_offset.077 = phi i32 [ %row_offset.1, %if.end.for.body_crit_edge ], [ %mul2, %for.body.preheader ]
  %lbuf_count.076 = phi i32 [ %lbuf_count.1, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul12 = mul i32 %mul, %lbuf_count.076
  %add13 = add i32 %row_offset.077, %mul12
  %div1465 = lshr i32 %add13, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %div1465) #11
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr6.i = getelementptr i8, ptr %20, i32 526328
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i = or i32 %lbm_offset.079, 536870912
  %22 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #11
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr13.i = getelementptr i8, ptr %24, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %22) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %add.ptr20.i = getelementptr i8, ptr %26, i32 526332
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %28 = and i32 %27, 16
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %he_writel_internal.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

he_writel_internal.exit:                          ; preds = %while.cond.i
  %add = add i32 %lbufd_index.078, 2
  %add15 = add i32 %lbm_offset.079, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %add) #11
  %30 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase, align 4
  %add.ptr.i67 = getelementptr i8, ptr %31, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %29) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase, align 4
  %add.ptr6.i68 = getelementptr i8, ptr %33, i32 526328
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i68) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i69 = or i32 %add15, 536870912
  %35 = tail call i32 @llvm.bswap.i32(i32 %or11.i69) #11
  %36 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase, align 4
  %add.ptr13.i70 = getelementptr i8, ptr %37, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i70, i32 %35) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i73

while.cond.i73:                                   ; preds = %while.cond.i73.while.cond.i73_crit_edge, %he_writel_internal.exit
  %38 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase, align 4
  %add.ptr20.i71 = getelementptr i8, ptr %39, i32 526332
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i71) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %41 = and i32 %40, 16
  %tobool.not.i72 = icmp eq i32 %41, 0
  br i1 %tobool.not.i72, label %he_writel_internal.exit74, label %while.cond.i73.while.cond.i73_crit_edge

while.cond.i73.while.cond.i73_crit_edge:          ; preds = %while.cond.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i73

he_writel_internal.exit74:                        ; preds = %while.cond.i73
  %inc = add i32 %lbuf_count.076, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div)
  %cmp16 = icmp eq i32 %inc, %div
  br i1 %cmp16, label %if.then, label %he_writel_internal.exit74.if.end_crit_edge

he_writel_internal.exit74.if.end_crit_edge:       ; preds = %he_writel_internal.exit74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %he_writel_internal.exit74
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %bytes_per_row to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytes_per_row, align 4
  %add18 = add i32 %43, %row_offset.077
  br label %if.end

if.end:                                           ; preds = %if.then, %he_writel_internal.exit74.if.end_crit_edge
  %lbuf_count.1 = phi i32 [ 0, %if.then ], [ %inc, %he_writel_internal.exit74.if.end_crit_edge ]
  %row_offset.1 = phi i32 [ %add18, %if.then ], [ %row_offset.077, %he_writel_internal.exit74.if.end_crit_edge ]
  %add19 = add i32 %lbm_offset.079, 4
  %inc20 = add nuw i32 %i.080, 1
  %44 = ptrtoint ptr %r0_numbuffs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %r0_numbuffs, align 4
  %cmp = icmp ult i32 %inc20, %45
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.do.body22_crit_edge

if.end.do.body22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body22

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body22:                                        ; preds = %if.end.do.body22_crit_edge, %entry.do.body22_crit_edge
  %lbufd_index.0.lcssa = phi i32 [ -2, %entry.do.body22_crit_edge ], [ %lbufd_index.078, %if.end.do.body22_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !625
  tail call void @arm_heavy_mb() #11
  %46 = tail call i32 @llvm.bswap.i32(i32 %lbufd_index.0.lcssa)
  %47 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase, align 4
  %add.ptr26 = getelementptr i8, ptr %48, i32 526020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %46) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !626
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !627
  tail call void @arm_heavy_mb() #11
  %49 = ptrtoint ptr %r0_numbuffs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %r0_numbuffs, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase, align 4
  %add.ptr38 = getelementptr i8, ptr %53, i32 526056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %51) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !628
  tail call void @arm_heavy_mb() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @he_init_rx_lbfp1(ptr nocapture noundef readonly %he_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cells_per_row = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 8
  %0 = ptrtoint ptr %cells_per_row to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cells_per_row, align 4
  %cells_per_lbuf = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 10
  %2 = ptrtoint ptr %cells_per_lbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cells_per_lbuf, align 4
  %div = udiv i32 %1, %3
  %mul = mul i32 %3, 48
  %r1_startrow = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 15
  %4 = ptrtoint ptr %r1_startrow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r1_startrow, align 4
  %bytes_per_row = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 9
  %6 = ptrtoint ptr %bytes_per_row to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes_per_row, align 4
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 526216
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !629
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !630
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 526024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !631
  tail call void @arm_heavy_mb() #11
  %r1_numbuffs = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 16
  %13 = ptrtoint ptr %r1_numbuffs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r1_numbuffs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp78.not = icmp eq i32 %14, 0
  br i1 %cmp78.not, label %entry.do.body24_crit_edge, label %for.body.preheader

entry.do.body24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

for.body.preheader:                               ; preds = %entry
  %15 = tail call i32 @llvm.bswap.i32(i32 %10)
  %add = add i32 %15, 2
  %mul2 = mul i32 %7, %5
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.083 = phi i32 [ %inc22, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %lbm_offset.082 = phi i32 [ %add21, %if.end.for.body_crit_edge ], [ %add, %for.body.preheader ]
  %lbufd_index.081 = phi i32 [ %add13, %if.end.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %row_offset.080 = phi i32 [ %row_offset.1, %if.end.for.body_crit_edge ], [ %mul2, %for.body.preheader ]
  %lbuf_count.079 = phi i32 [ %lbuf_count.1, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul14 = mul i32 %mul, %lbuf_count.079
  %add15 = add i32 %row_offset.080, %mul14
  %div1668 = lshr i32 %add15, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %div1668) #11
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr6.i = getelementptr i8, ptr %20, i32 526328
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i = or i32 %lbm_offset.082, 536870912
  %22 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #11
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr13.i = getelementptr i8, ptr %24, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %22) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %add.ptr20.i = getelementptr i8, ptr %26, i32 526332
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %28 = and i32 %27, 16
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %he_writel_internal.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

he_writel_internal.exit:                          ; preds = %while.cond.i
  %add13 = add i32 %lbufd_index.081, 2
  %add17 = add i32 %lbm_offset.082, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %add13) #11
  %30 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase, align 4
  %add.ptr.i70 = getelementptr i8, ptr %31, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %29) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase, align 4
  %add.ptr6.i71 = getelementptr i8, ptr %33, i32 526328
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i71) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i72 = or i32 %add17, 536870912
  %35 = tail call i32 @llvm.bswap.i32(i32 %or11.i72) #11
  %36 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase, align 4
  %add.ptr13.i73 = getelementptr i8, ptr %37, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i73, i32 %35) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i76

while.cond.i76:                                   ; preds = %while.cond.i76.while.cond.i76_crit_edge, %he_writel_internal.exit
  %38 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase, align 4
  %add.ptr20.i74 = getelementptr i8, ptr %39, i32 526332
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i74) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %41 = and i32 %40, 16
  %tobool.not.i75 = icmp eq i32 %41, 0
  br i1 %tobool.not.i75, label %he_writel_internal.exit77, label %while.cond.i76.while.cond.i76_crit_edge

while.cond.i76.while.cond.i76_crit_edge:          ; preds = %while.cond.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i76

he_writel_internal.exit77:                        ; preds = %while.cond.i76
  %inc = add i32 %lbuf_count.079, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div)
  %cmp18 = icmp eq i32 %inc, %div
  br i1 %cmp18, label %if.then, label %he_writel_internal.exit77.if.end_crit_edge

he_writel_internal.exit77.if.end_crit_edge:       ; preds = %he_writel_internal.exit77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %he_writel_internal.exit77
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %bytes_per_row to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytes_per_row, align 4
  %add20 = add i32 %43, %row_offset.080
  br label %if.end

if.end:                                           ; preds = %if.then, %he_writel_internal.exit77.if.end_crit_edge
  %lbuf_count.1 = phi i32 [ 0, %if.then ], [ %inc, %he_writel_internal.exit77.if.end_crit_edge ]
  %row_offset.1 = phi i32 [ %add20, %if.then ], [ %row_offset.080, %he_writel_internal.exit77.if.end_crit_edge ]
  %add21 = add i32 %lbm_offset.082, 4
  %inc22 = add nuw i32 %i.083, 1
  %44 = ptrtoint ptr %r1_numbuffs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %r1_numbuffs, align 4
  %cmp = icmp ult i32 %inc22, %45
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.do.body24_crit_edge

if.end.do.body24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body24:                                        ; preds = %if.end.do.body24_crit_edge, %entry.do.body24_crit_edge
  %lbufd_index.0.lcssa = phi i32 [ -1, %entry.do.body24_crit_edge ], [ %lbufd_index.081, %if.end.do.body24_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  tail call void @arm_heavy_mb() #11
  %46 = tail call i32 @llvm.bswap.i32(i32 %lbufd_index.0.lcssa)
  %47 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase, align 4
  %add.ptr28 = getelementptr i8, ptr %48, i32 526028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %46) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !633
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !634
  tail call void @arm_heavy_mb() #11
  %49 = ptrtoint ptr %r1_numbuffs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %r1_numbuffs, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase, align 4
  %add.ptr40 = getelementptr i8, ptr %53, i32 526060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %51) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !635
  tail call void @arm_heavy_mb() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @he_init_tx_lbfp(ptr nocapture noundef readonly %he_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cells_per_row = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 8
  %0 = ptrtoint ptr %cells_per_row to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cells_per_row, align 4
  %cells_per_lbuf = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 10
  %2 = ptrtoint ptr %cells_per_lbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cells_per_lbuf, align 4
  %div = udiv i32 %1, %3
  %mul = mul i32 %3, 48
  %tx_startrow = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 18
  %4 = ptrtoint ptr %tx_startrow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_startrow, align 4
  %bytes_per_row = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 9
  %6 = ptrtoint ptr %bytes_per_row to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes_per_row, align 4
  %r0_numbuffs = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 13
  %8 = ptrtoint ptr %r0_numbuffs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r0_numbuffs, align 4
  %r1_numbuffs = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 16
  %10 = ptrtoint ptr %r1_numbuffs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r1_numbuffs, align 4
  %add = add i32 %11, %9
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 526216
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !637
  tail call void @arm_heavy_mb() #11
  %15 = tail call i32 @llvm.bswap.i32(i32 %add)
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %17, i32 526048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %15) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !638
  tail call void @arm_heavy_mb() #11
  %tx_numbuffs = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 19
  %18 = ptrtoint ptr %tx_numbuffs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_numbuffs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp67.not = icmp eq i32 %19, 0
  br i1 %cmp67.not, label %entry.do.body25_crit_edge, label %for.body.preheader

entry.do.body25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25

for.body.preheader:                               ; preds = %entry
  %20 = tail call i32 @llvm.bswap.i32(i32 %14)
  %mul4 = shl i32 %add, 1
  %add5 = add i32 %20, %mul4
  %mul2 = mul i32 %7, %5
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.072 = phi i32 [ %inc23, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %lbm_offset.071 = phi i32 [ %add22, %if.end.for.body_crit_edge ], [ %add5, %for.body.preheader ]
  %lbufd_index.070 = phi i32 [ %add14, %if.end.for.body_crit_edge ], [ %add, %for.body.preheader ]
  %row_offset.069 = phi i32 [ %row_offset.1, %if.end.for.body_crit_edge ], [ %mul2, %for.body.preheader ]
  %lbuf_count.068 = phi i32 [ %lbuf_count.1, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul15 = mul i32 %mul, %lbuf_count.068
  %add16 = add i32 %row_offset.069, %mul15
  %div1757 = lshr i32 %add16, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %div1757) #11
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr6.i = getelementptr i8, ptr %25, i32 526328
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i = or i32 %lbm_offset.071, 536870912
  %27 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #11
  %28 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase, align 4
  %add.ptr13.i = getelementptr i8, ptr %29, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %27) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body
  %30 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase, align 4
  %add.ptr20.i = getelementptr i8, ptr %31, i32 526332
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %33 = and i32 %32, 16
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %he_writel_internal.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

he_writel_internal.exit:                          ; preds = %while.cond.i
  %add14 = add i32 %lbufd_index.070, 1
  %add18 = add i32 %lbm_offset.071, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %add14) #11
  %35 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase, align 4
  %add.ptr.i59 = getelementptr i8, ptr %36, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %34) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase, align 4
  %add.ptr6.i60 = getelementptr i8, ptr %38, i32 526328
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i60) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i61 = or i32 %add18, 536870912
  %40 = tail call i32 @llvm.bswap.i32(i32 %or11.i61) #11
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase, align 4
  %add.ptr13.i62 = getelementptr i8, ptr %42, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i62, i32 %40) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i65

while.cond.i65:                                   ; preds = %while.cond.i65.while.cond.i65_crit_edge, %he_writel_internal.exit
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %add.ptr20.i63 = getelementptr i8, ptr %44, i32 526332
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i63) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %46 = and i32 %45, 16
  %tobool.not.i64 = icmp eq i32 %46, 0
  br i1 %tobool.not.i64, label %he_writel_internal.exit66, label %while.cond.i65.while.cond.i65_crit_edge

while.cond.i65.while.cond.i65_crit_edge:          ; preds = %while.cond.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i65

he_writel_internal.exit66:                        ; preds = %while.cond.i65
  %inc = add i32 %lbuf_count.068, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div)
  %cmp19 = icmp eq i32 %inc, %div
  br i1 %cmp19, label %if.then, label %he_writel_internal.exit66.if.end_crit_edge

he_writel_internal.exit66.if.end_crit_edge:       ; preds = %he_writel_internal.exit66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %he_writel_internal.exit66
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %bytes_per_row to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytes_per_row, align 4
  %add21 = add i32 %48, %row_offset.069
  br label %if.end

if.end:                                           ; preds = %if.then, %he_writel_internal.exit66.if.end_crit_edge
  %lbuf_count.1 = phi i32 [ 0, %if.then ], [ %inc, %he_writel_internal.exit66.if.end_crit_edge ]
  %row_offset.1 = phi i32 [ %add21, %if.then ], [ %row_offset.069, %he_writel_internal.exit66.if.end_crit_edge ]
  %add22 = add i32 %lbm_offset.071, 2
  %inc23 = add nuw i32 %i.072, 1
  %49 = ptrtoint ptr %tx_numbuffs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_numbuffs, align 4
  %cmp = icmp ult i32 %inc23, %50
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.do.body25_crit_edge

if.end.do.body25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body25

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body25:                                        ; preds = %if.end.do.body25_crit_edge, %entry.do.body25_crit_edge
  %lbufd_index.0.lcssa = phi i32 [ %add, %entry.do.body25_crit_edge ], [ %add14, %if.end.do.body25_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !639
  tail call void @arm_heavy_mb() #11
  %sub = add i32 %lbufd_index.0.lcssa, -1
  %51 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %52 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase, align 4
  %add.ptr29 = getelementptr i8, ptr %53, i32 526052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %51) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !640
  tail call void @arm_heavy_mb() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @he_init_cs_block(ptr noundef readonly %he_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %he_writel_internal.exit.for.body_crit_edge, %entry
  %reg.0427 = phi i32 [ 0, %entry ], [ %inc, %he_writel_internal.exit.for.body_crit_edge ]
  %add = add nuw nsw i32 %reg.0427, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %3, i32 526328
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i = or i32 %add, -1610612736
  %5 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #11
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %7, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %5) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %9, i32 526332
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %11 = and i32 %10, 16
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %he_writel_internal.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

he_writel_internal.exit:                          ; preds = %while.cond.i
  %inc = add nuw nsw i32 %reg.0427, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %he_writel_internal.exit.for.body_crit_edge

he_writel_internal.exit.for.body_crit_edge:       ; preds = %he_writel_internal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %he_writel_internal.exit
  %media = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 5
  %12 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %media, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 50000000, i32 66667000
  %atm_dev = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 58
  %14 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %atm_dev, align 4
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link_rate, align 4
  %div177 = lshr i32 %17, 5
  br label %for.body4

for.body4:                                        ; preds = %he_writel_internal.exit87.for.body4_crit_edge, %for.end
  %reg.1429 = phi i32 [ 0, %for.end ], [ %inc8, %he_writel_internal.exit87.for.body4_crit_edge ]
  %rate.0428 = phi i32 [ %17, %for.end ], [ %sub, %he_writel_internal.exit87.for.body4_crit_edge ]
  %div5 = udiv i32 %cond, %rate.0428
  %add6 = add nuw nsw i32 %reg.1429, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %18 = tail call i32 @llvm.bswap.i32(i32 %div5) #11
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %20, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %18) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i80 = getelementptr i8, ptr %22, i32 526328
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i80) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i82 = or i32 %add6, -1610612736
  %24 = tail call i32 @llvm.bswap.i32(i32 %or11.i82) #11
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i83 = getelementptr i8, ptr %26, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i83, i32 %24) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i86

while.cond.i86:                                   ; preds = %while.cond.i86.while.cond.i86_crit_edge, %for.body4
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i84 = getelementptr i8, ptr %28, i32 526332
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i84) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %30 = and i32 %29, 16
  %tobool.not.i85 = icmp eq i32 %30, 0
  br i1 %tobool.not.i85, label %he_writel_internal.exit87, label %while.cond.i86.while.cond.i86_crit_edge

while.cond.i86.while.cond.i86_crit_edge:          ; preds = %while.cond.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i86

he_writel_internal.exit87:                        ; preds = %while.cond.i86
  %sub = sub i32 %rate.0428, %div177
  %inc8 = add nuw nsw i32 %reg.1429, 1
  %exitcond432.not = icmp eq i32 %inc8, 16
  br i1 %exitcond432.not, label %for.end9, label %he_writel_internal.exit87.for.body4_crit_edge

he_writel_internal.exit87.for.body4_crit_edge:    ; preds = %he_writel_internal.exit87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4

for.end9:                                         ; preds = %he_writel_internal.exit87
  %31 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %media, align 4
  %and11 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr.i249 = getelementptr i8, ptr %34, i32 526328
  br i1 %tobool12.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249, i32 -100661248) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i90 = getelementptr i8, ptr %36, i32 526328
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i90) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %38 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i91 = getelementptr i8, ptr %39, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i91, i32 1342177440) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i94

while.cond.i94:                                   ; preds = %while.cond.i94.while.cond.i94_crit_edge, %if.then
  %40 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i92 = getelementptr i8, ptr %41, i32 526332
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i92) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %43 = and i32 %42, 16
  %tobool.not.i93 = icmp eq i32 %43, 0
  br i1 %tobool.not.i93, label %he_writel_internal.exit95, label %while.cond.i94.while.cond.i94_crit_edge

while.cond.i94.while.cond.i94_crit_edge:          ; preds = %while.cond.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i94

he_writel_internal.exit95:                        ; preds = %while.cond.i94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %45, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 -885847040) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %46 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i98 = getelementptr i8, ptr %47, i32 526328
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i98) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %49 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i99 = getelementptr i8, ptr %50, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i99, i32 1358954656) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i102

while.cond.i102:                                  ; preds = %while.cond.i102.while.cond.i102_crit_edge, %he_writel_internal.exit95
  %51 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i100 = getelementptr i8, ptr %52, i32 526332
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i100) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %54 = and i32 %53, 16
  %tobool.not.i101 = icmp eq i32 %54, 0
  br i1 %tobool.not.i101, label %he_writel_internal.exit103, label %while.cond.i102.while.cond.i102_crit_edge

while.cond.i102.while.cond.i102_crit_edge:        ; preds = %while.cond.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i102

he_writel_internal.exit103:                       ; preds = %while.cond.i102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %55 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %56, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 454037504) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %57 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i106 = getelementptr i8, ptr %58, i32 526328
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i106) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %60 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i107 = getelementptr i8, ptr %61, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i107, i32 1375731872) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i110

while.cond.i110:                                  ; preds = %while.cond.i110.while.cond.i110_crit_edge, %he_writel_internal.exit103
  %62 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i108 = getelementptr i8, ptr %63, i32 526332
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i108) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %65 = and i32 %64, 16
  %tobool.not.i109 = icmp eq i32 %65, 0
  br i1 %tobool.not.i109, label %he_writel_internal.exit111, label %while.cond.i110.while.cond.i110_crit_edge

while.cond.i110.while.cond.i110_crit_edge:        ; preds = %while.cond.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i110

he_writel_internal.exit111:                       ; preds = %while.cond.i110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %66 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %67, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 -1407379456) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %68 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i114 = getelementptr i8, ptr %69, i32 526328
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i114) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %71 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i115 = getelementptr i8, ptr %72, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i115, i32 1392509088) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i118

while.cond.i118:                                  ; preds = %while.cond.i118.while.cond.i118_crit_edge, %he_writel_internal.exit111
  %73 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i116 = getelementptr i8, ptr %74, i32 526332
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i116) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %76 = and i32 %75, 16
  %tobool.not.i117 = icmp eq i32 %76, 0
  br i1 %tobool.not.i117, label %he_writel_internal.exit119, label %while.cond.i118.while.cond.i118_crit_edge

while.cond.i118.while.cond.i118_crit_edge:        ; preds = %while.cond.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i118

he_writel_internal.exit119:                       ; preds = %while.cond.i118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %77 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %78, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 403456) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %79 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i122 = getelementptr i8, ptr %80, i32 526328
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i122) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %82 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i123 = getelementptr i8, ptr %83, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i123, i32 1409286304) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i126

while.cond.i126:                                  ; preds = %while.cond.i126.while.cond.i126_crit_edge, %he_writel_internal.exit119
  %84 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i124 = getelementptr i8, ptr %85, i32 526332
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i124) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %87 = and i32 %86, 16
  %tobool.not.i125 = icmp eq i32 %87, 0
  br i1 %tobool.not.i125, label %he_writel_internal.exit127, label %while.cond.i126.while.cond.i126_crit_edge

while.cond.i126.while.cond.i126_crit_edge:        ; preds = %while.cond.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i126

he_writel_internal.exit127:                       ; preds = %while.cond.i126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %88 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %89, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 -1276625662) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i130 = getelementptr i8, ptr %91, i32 526328
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i130) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %93 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i131 = getelementptr i8, ptr %94, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i131, i32 1426063520) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i134

while.cond.i134:                                  ; preds = %while.cond.i134.while.cond.i134_crit_edge, %he_writel_internal.exit127
  %95 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i132 = getelementptr i8, ptr %96, i32 526332
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i132) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %98 = and i32 %97, 16
  %tobool.not.i133 = icmp eq i32 %98, 0
  br i1 %tobool.not.i133, label %he_writel_internal.exit135, label %while.cond.i134.while.cond.i134_crit_edge

while.cond.i134.while.cond.i134_crit_edge:        ; preds = %while.cond.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i134

he_writel_internal.exit135:                       ; preds = %while.cond.i134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %99 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %100, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 18350080) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %101 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i138 = getelementptr i8, ptr %102, i32 526328
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i138) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %104 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i139 = getelementptr i8, ptr %105, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i139, i32 1442840736) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i142

while.cond.i142:                                  ; preds = %while.cond.i142.while.cond.i142_crit_edge, %he_writel_internal.exit135
  %106 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i140 = getelementptr i8, ptr %107, i32 526332
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i140) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %109 = and i32 %108, 16
  %tobool.not.i141 = icmp eq i32 %109, 0
  br i1 %tobool.not.i141, label %he_writel_internal.exit143, label %while.cond.i142.while.cond.i142_crit_edge

while.cond.i142.while.cond.i142_crit_edge:        ; preds = %while.cond.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i142

he_writel_internal.exit143:                       ; preds = %while.cond.i142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %110 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %membase.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %111, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 -1285029888) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %112 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i146 = getelementptr i8, ptr %113, i32 526328
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i146) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %115 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i147 = getelementptr i8, ptr %116, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i147, i32 1459617952) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i150

while.cond.i150:                                  ; preds = %while.cond.i150.while.cond.i150_crit_edge, %he_writel_internal.exit143
  %117 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i148 = getelementptr i8, ptr %118, i32 526332
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i148) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %120 = and i32 %119, 16
  %tobool.not.i149 = icmp eq i32 %120, 0
  br i1 %tobool.not.i149, label %he_writel_internal.exit151, label %while.cond.i150.while.cond.i150_crit_edge

while.cond.i150.while.cond.i150_crit_edge:        ; preds = %while.cond.i150
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i150

he_writel_internal.exit151:                       ; preds = %while.cond.i150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %121 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %membase.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %122, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 -2146304000) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %123 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i154 = getelementptr i8, ptr %124, i32 526328
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i154) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %126 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i155 = getelementptr i8, ptr %127, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i155, i32 1476395168) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i158

while.cond.i158:                                  ; preds = %while.cond.i158.while.cond.i158_crit_edge, %he_writel_internal.exit151
  %128 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i156 = getelementptr i8, ptr %129, i32 526332
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i156) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %131 = and i32 %130, 16
  %tobool.not.i157 = icmp eq i32 %131, 0
  br i1 %tobool.not.i157, label %he_writel_internal.exit159, label %while.cond.i158.while.cond.i158_crit_edge

while.cond.i158.while.cond.i158_crit_edge:        ; preds = %while.cond.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i158

he_writel_internal.exit159:                       ; preds = %while.cond.i158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %132 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %membase.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %133, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 -1285029888) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %134 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i162 = getelementptr i8, ptr %135, i32 526328
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i162) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %137 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i163 = getelementptr i8, ptr %138, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i163, i32 1493172384) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i166

while.cond.i166:                                  ; preds = %while.cond.i166.while.cond.i166_crit_edge, %he_writel_internal.exit159
  %139 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i164 = getelementptr i8, ptr %140, i32 526332
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i164) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %142 = and i32 %141, 16
  %tobool.not.i165 = icmp eq i32 %142, 0
  br i1 %tobool.not.i165, label %he_writel_internal.exit167, label %while.cond.i166.while.cond.i166_crit_edge

while.cond.i166.while.cond.i166_crit_edge:        ; preds = %while.cond.i166
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i166

he_writel_internal.exit167:                       ; preds = %while.cond.i166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %143 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %membase.i, align 4
  %add.ptr.i169 = getelementptr i8, ptr %144, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 -2059075328) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %145 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i170 = getelementptr i8, ptr %146, i32 526328
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i170) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %148 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i171 = getelementptr i8, ptr %149, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i171, i32 1644167328) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i174

while.cond.i174:                                  ; preds = %while.cond.i174.while.cond.i174_crit_edge, %he_writel_internal.exit167
  %150 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i172 = getelementptr i8, ptr %151, i32 526332
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i172) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %153 = and i32 %152, 16
  %tobool.not.i173 = icmp eq i32 %153, 0
  br i1 %tobool.not.i173, label %he_writel_internal.exit175, label %while.cond.i174.while.cond.i174_crit_edge

while.cond.i174.while.cond.i174_crit_edge:        ; preds = %while.cond.i174
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i174

he_writel_internal.exit175:                       ; preds = %while.cond.i174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %154 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %membase.i, align 4
  %add.ptr.i177 = getelementptr i8, ptr %155, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 -2142896128) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %156 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i178 = getelementptr i8, ptr %157, i32 526328
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i178) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %159 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i179 = getelementptr i8, ptr %160, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i179, i32 1677721760) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i182

while.cond.i182:                                  ; preds = %while.cond.i182.while.cond.i182_crit_edge, %he_writel_internal.exit175
  %161 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i180 = getelementptr i8, ptr %162, i32 526332
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i180) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %164 = and i32 %163, 16
  %tobool.not.i181 = icmp eq i32 %164, 0
  br i1 %tobool.not.i181, label %he_writel_internal.exit183, label %while.cond.i182.while.cond.i182_crit_edge

while.cond.i182.while.cond.i182_crit_edge:        ; preds = %while.cond.i182
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i182

he_writel_internal.exit183:                       ; preds = %while.cond.i182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %165 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %membase.i, align 4
  %add.ptr.i185 = getelementptr i8, ptr %166, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 -828500736) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %167 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i186 = getelementptr i8, ptr %168, i32 526328
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i186) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %170 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i187 = getelementptr i8, ptr %171, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i187, i32 1879048352) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i190

while.cond.i190:                                  ; preds = %while.cond.i190.while.cond.i190_crit_edge, %he_writel_internal.exit183
  %172 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i188 = getelementptr i8, ptr %173, i32 526332
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i188) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %175 = and i32 %174, 16
  %tobool.not.i189 = icmp eq i32 %175, 0
  br i1 %tobool.not.i189, label %he_writel_internal.exit191, label %while.cond.i190.while.cond.i190_crit_edge

while.cond.i190.while.cond.i190_crit_edge:        ; preds = %while.cond.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i190

he_writel_internal.exit191:                       ; preds = %while.cond.i190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %176 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %membase.i, align 4
  %add.ptr.i193 = getelementptr i8, ptr %177, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 -1285029888) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %178 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i194 = getelementptr i8, ptr %179, i32 526328
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i194) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %181 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i195 = getelementptr i8, ptr %182, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i195, i32 1929380000) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i198

while.cond.i198:                                  ; preds = %while.cond.i198.while.cond.i198_crit_edge, %he_writel_internal.exit191
  %183 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i196 = getelementptr i8, ptr %184, i32 526332
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i196) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %186 = and i32 %185, 16
  %tobool.not.i197 = icmp eq i32 %186, 0
  br i1 %tobool.not.i197, label %he_writel_internal.exit199, label %while.cond.i198.while.cond.i198_crit_edge

while.cond.i198.while.cond.i198_crit_edge:        ; preds = %while.cond.i198
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i198

he_writel_internal.exit199:                       ; preds = %while.cond.i198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %187 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %membase.i, align 4
  %add.ptr.i201 = getelementptr i8, ptr %188, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 -1285685248) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %189 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i202 = getelementptr i8, ptr %190, i32 526328
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i202) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %192 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i203 = getelementptr i8, ptr %193, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i203, i32 1946157216) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i206

while.cond.i206:                                  ; preds = %while.cond.i206.while.cond.i206_crit_edge, %he_writel_internal.exit199
  %194 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i204 = getelementptr i8, ptr %195, i32 526332
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i204) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %197 = and i32 %196, 16
  %tobool.not.i205 = icmp eq i32 %197, 0
  br i1 %tobool.not.i205, label %he_writel_internal.exit207, label %while.cond.i206.while.cond.i206_crit_edge

while.cond.i206.while.cond.i206_crit_edge:        ; preds = %while.cond.i206
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i206

he_writel_internal.exit207:                       ; preds = %while.cond.i206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %198 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %membase.i, align 4
  %add.ptr.i209 = getelementptr i8, ptr %199, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209, i32 -1276641280) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %200 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i210 = getelementptr i8, ptr %201, i32 526328
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i210) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %203 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i211 = getelementptr i8, ptr %204, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i211, i32 1962934432) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i214

while.cond.i214:                                  ; preds = %while.cond.i214.while.cond.i214_crit_edge, %he_writel_internal.exit207
  %205 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i212 = getelementptr i8, ptr %206, i32 526332
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i212) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %208 = and i32 %207, 16
  %tobool.not.i213 = icmp eq i32 %208, 0
  br i1 %tobool.not.i213, label %he_writel_internal.exit215, label %while.cond.i214.while.cond.i214_crit_edge

while.cond.i214.while.cond.i214_crit_edge:        ; preds = %while.cond.i214
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i214

he_writel_internal.exit215:                       ; preds = %while.cond.i214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %209 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %membase.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %210, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 -1277296640) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %211 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i218 = getelementptr i8, ptr %212, i32 526328
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i218) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %214 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i219 = getelementptr i8, ptr %215, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i219, i32 1979711648) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i222

while.cond.i222:                                  ; preds = %while.cond.i222.while.cond.i222_crit_edge, %he_writel_internal.exit215
  %216 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i220 = getelementptr i8, ptr %217, i32 526332
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i220) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %219 = and i32 %218, 16
  %tobool.not.i221 = icmp eq i32 %219, 0
  br i1 %tobool.not.i221, label %he_writel_internal.exit223, label %while.cond.i222.while.cond.i222_crit_edge

while.cond.i222.while.cond.i222_crit_edge:        ; preds = %while.cond.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i222

he_writel_internal.exit223:                       ; preds = %while.cond.i222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %220 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %membase.i, align 4
  %add.ptr.i225 = getelementptr i8, ptr %221, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 -1285029888) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %222 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i226 = getelementptr i8, ptr %223, i32 526328
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i226) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %225 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i227 = getelementptr i8, ptr %226, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i227, i32 1996488864) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i230

while.cond.i230:                                  ; preds = %while.cond.i230.while.cond.i230_crit_edge, %he_writel_internal.exit223
  %227 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i228 = getelementptr i8, ptr %228, i32 526332
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i228) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %230 = and i32 %229, 16
  %tobool.not.i229 = icmp eq i32 %230, 0
  br i1 %tobool.not.i229, label %he_writel_internal.exit231, label %while.cond.i230.while.cond.i230_crit_edge

while.cond.i230.while.cond.i230_crit_edge:        ; preds = %while.cond.i230
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i230

he_writel_internal.exit231:                       ; preds = %while.cond.i230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %231 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %membase.i, align 4
  %add.ptr.i233 = getelementptr i8, ptr %232, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233, i32 83886080) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %233 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i234 = getelementptr i8, ptr %234, i32 526328
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i234) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %236 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i235 = getelementptr i8, ptr %237, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i235, i32 -2147483488) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i238

while.cond.i238:                                  ; preds = %while.cond.i238.while.cond.i238_crit_edge, %he_writel_internal.exit231
  %238 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i236 = getelementptr i8, ptr %239, i32 526332
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i236) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %241 = and i32 %240, 16
  %tobool.not.i237 = icmp eq i32 %241, 0
  br i1 %tobool.not.i237, label %he_writel_internal.exit239, label %while.cond.i238.while.cond.i238_crit_edge

while.cond.i238.while.cond.i238_crit_edge:        ; preds = %while.cond.i238
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i238

he_writel_internal.exit239:                       ; preds = %while.cond.i238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %242 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %membase.i, align 4
  %add.ptr.i241 = getelementptr i8, ptr %243, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i241, i32 335544320) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %244 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i242 = getelementptr i8, ptr %245, i32 526328
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i242) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %247 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i243 = getelementptr i8, ptr %248, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i243, i32 -2130706272) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i246

while.cond.i246:                                  ; preds = %while.cond.i246.while.cond.i246_crit_edge, %he_writel_internal.exit239
  %249 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i244 = getelementptr i8, ptr %250, i32 526332
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i244) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %252 = and i32 %251, 16
  %tobool.not.i245 = icmp eq i32 %252, 0
  br i1 %tobool.not.i245, label %while.cond.i246.if.end_crit_edge, label %while.cond.i246.while.cond.i246_crit_edge

while.cond.i246.while.cond.i246_crit_edge:        ; preds = %while.cond.i246
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i246

while.cond.i246.if.end_crit_edge:                 ; preds = %while.cond.i246
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %for.end9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249, i32 -369097728) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %253 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i250 = getelementptr i8, ptr %254, i32 526328
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i250) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %256 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i251 = getelementptr i8, ptr %257, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i251, i32 1342177440) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i254

while.cond.i254:                                  ; preds = %while.cond.i254.while.cond.i254_crit_edge, %if.else
  %258 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i252 = getelementptr i8, ptr %259, i32 526332
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i252) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %261 = and i32 %260, 16
  %tobool.not.i253 = icmp eq i32 %261, 0
  br i1 %tobool.not.i253, label %he_writel_internal.exit255, label %while.cond.i254.while.cond.i254_crit_edge

while.cond.i254.while.cond.i254_crit_edge:        ; preds = %while.cond.i254
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i254

he_writel_internal.exit255:                       ; preds = %while.cond.i254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %262 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %membase.i, align 4
  %add.ptr.i257 = getelementptr i8, ptr %263, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257, i32 -2009922048) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %264 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i258 = getelementptr i8, ptr %265, i32 526328
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i258) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %267 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i259 = getelementptr i8, ptr %268, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i259, i32 1358954656) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i262

while.cond.i262:                                  ; preds = %while.cond.i262.while.cond.i262_crit_edge, %he_writel_internal.exit255
  %269 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i260 = getelementptr i8, ptr %270, i32 526332
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i260) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %272 = and i32 %271, 16
  %tobool.not.i261 = icmp eq i32 %272, 0
  br i1 %tobool.not.i261, label %he_writel_internal.exit263, label %while.cond.i262.while.cond.i262_crit_edge

while.cond.i262.while.cond.i262_crit_edge:        ; preds = %while.cond.i262
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i262

he_writel_internal.exit263:                       ; preds = %while.cond.i262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %273 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %membase.i, align 4
  %add.ptr.i265 = getelementptr i8, ptr %274, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265, i32 403703808) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %275 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i266 = getelementptr i8, ptr %276, i32 526328
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i266) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %278 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i267 = getelementptr i8, ptr %279, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i267, i32 1375731872) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i270

while.cond.i270:                                  ; preds = %while.cond.i270.while.cond.i270_crit_edge, %he_writel_internal.exit263
  %280 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i268 = getelementptr i8, ptr %281, i32 526332
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i268) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %283 = and i32 %282, 16
  %tobool.not.i269 = icmp eq i32 %283, 0
  br i1 %tobool.not.i269, label %he_writel_internal.exit271, label %while.cond.i270.while.cond.i270_crit_edge

while.cond.i270.while.cond.i270_crit_edge:        ; preds = %while.cond.i270
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i270

he_writel_internal.exit271:                       ; preds = %while.cond.i270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %284 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %membase.i, align 4
  %add.ptr.i273 = getelementptr i8, ptr %285, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273, i32 -1407382528) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %286 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i274 = getelementptr i8, ptr %287, i32 526328
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i274) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %289 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i275 = getelementptr i8, ptr %290, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i275, i32 1392509088) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i278

while.cond.i278:                                  ; preds = %while.cond.i278.while.cond.i278_crit_edge, %he_writel_internal.exit271
  %291 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i276 = getelementptr i8, ptr %292, i32 526332
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i276) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %294 = and i32 %293, 16
  %tobool.not.i277 = icmp eq i32 %294, 0
  br i1 %tobool.not.i277, label %he_writel_internal.exit279, label %while.cond.i278.while.cond.i278_crit_edge

while.cond.i278.while.cond.i278_crit_edge:        ; preds = %while.cond.i278
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i278

he_writel_internal.exit279:                       ; preds = %while.cond.i278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %295 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %membase.i, align 4
  %add.ptr.i281 = getelementptr i8, ptr %296, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 436540416) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %297 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i282 = getelementptr i8, ptr %298, i32 526328
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i282) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %300 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i283 = getelementptr i8, ptr %301, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i283, i32 1409286304) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i286

while.cond.i286:                                  ; preds = %while.cond.i286.while.cond.i286_crit_edge, %he_writel_internal.exit279
  %302 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i284 = getelementptr i8, ptr %303, i32 526332
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i284) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %305 = and i32 %304, 16
  %tobool.not.i285 = icmp eq i32 %305, 0
  br i1 %tobool.not.i285, label %he_writel_internal.exit287, label %while.cond.i286.while.cond.i286_crit_edge

while.cond.i286.while.cond.i286_crit_edge:        ; preds = %while.cond.i286
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i286

he_writel_internal.exit287:                       ; preds = %while.cond.i286
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %306 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %membase.i, align 4
  %add.ptr.i289 = getelementptr i8, ptr %307, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i289, i32 -1310444286) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %308 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i290 = getelementptr i8, ptr %309, i32 526328
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i290) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %311 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i291 = getelementptr i8, ptr %312, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i291, i32 1426063520) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i294

while.cond.i294:                                  ; preds = %while.cond.i294.while.cond.i294_crit_edge, %he_writel_internal.exit287
  %313 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i292 = getelementptr i8, ptr %314, i32 526332
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i292) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %316 = and i32 %315, 16
  %tobool.not.i293 = icmp eq i32 %316, 0
  br i1 %tobool.not.i293, label %he_writel_internal.exit295, label %while.cond.i294.while.cond.i294_crit_edge

while.cond.i294.while.cond.i294_crit_edge:        ; preds = %while.cond.i294
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i294

he_writel_internal.exit295:                       ; preds = %while.cond.i294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %317 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %membase.i, align 4
  %add.ptr.i297 = getelementptr i8, ptr %318, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i297, i32 21430272) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %319 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i298 = getelementptr i8, ptr %320, i32 526328
  %321 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i298) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %322 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i299 = getelementptr i8, ptr %323, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i299, i32 1442840736) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i302

while.cond.i302:                                  ; preds = %while.cond.i302.while.cond.i302_crit_edge, %he_writel_internal.exit295
  %324 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i300 = getelementptr i8, ptr %325, i32 526332
  %326 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i300) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %327 = and i32 %326, 16
  %tobool.not.i301 = icmp eq i32 %327, 0
  br i1 %tobool.not.i301, label %he_writel_internal.exit303, label %while.cond.i302.while.cond.i302_crit_edge

while.cond.i302.while.cond.i302_crit_edge:        ; preds = %while.cond.i302
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i302

he_writel_internal.exit303:                       ; preds = %while.cond.i302
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %328 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %membase.i, align 4
  %add.ptr.i305 = getelementptr i8, ptr %329, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i305, i32 -1318846464) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %330 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i306 = getelementptr i8, ptr %331, i32 526328
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i306) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %333 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i307 = getelementptr i8, ptr %334, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i307, i32 1459617952) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i310

while.cond.i310:                                  ; preds = %while.cond.i310.while.cond.i310_crit_edge, %he_writel_internal.exit303
  %335 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i308 = getelementptr i8, ptr %336, i32 526332
  %337 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i308) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %338 = and i32 %337, 16
  %tobool.not.i309 = icmp eq i32 %338, 0
  br i1 %tobool.not.i309, label %he_writel_internal.exit311, label %while.cond.i310.while.cond.i310_crit_edge

while.cond.i310.while.cond.i310_crit_edge:        ; preds = %while.cond.i310
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i310

he_writel_internal.exit311:                       ; preds = %while.cond.i310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %339 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %membase.i, align 4
  %add.ptr.i313 = getelementptr i8, ptr %340, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i313, i32 -2146304000) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %341 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i314 = getelementptr i8, ptr %342, i32 526328
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i314) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %344 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i315 = getelementptr i8, ptr %345, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i315, i32 1476395168) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i318

while.cond.i318:                                  ; preds = %while.cond.i318.while.cond.i318_crit_edge, %he_writel_internal.exit311
  %346 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i316 = getelementptr i8, ptr %347, i32 526332
  %348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i316) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %349 = and i32 %348, 16
  %tobool.not.i317 = icmp eq i32 %349, 0
  br i1 %tobool.not.i317, label %he_writel_internal.exit319, label %while.cond.i318.while.cond.i318_crit_edge

while.cond.i318.while.cond.i318_crit_edge:        ; preds = %while.cond.i318
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i318

he_writel_internal.exit319:                       ; preds = %while.cond.i318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %350 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %membase.i, align 4
  %add.ptr.i321 = getelementptr i8, ptr %351, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i321, i32 -1318846464) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %352 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i322 = getelementptr i8, ptr %353, i32 526328
  %354 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i322) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %355 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i323 = getelementptr i8, ptr %356, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i323, i32 1493172384) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i326

while.cond.i326:                                  ; preds = %while.cond.i326.while.cond.i326_crit_edge, %he_writel_internal.exit319
  %357 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i324 = getelementptr i8, ptr %358, i32 526332
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i324) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %360 = and i32 %359, 16
  %tobool.not.i325 = icmp eq i32 %360, 0
  br i1 %tobool.not.i325, label %he_writel_internal.exit327, label %while.cond.i326.while.cond.i326_crit_edge

while.cond.i326.while.cond.i326_crit_edge:        ; preds = %while.cond.i326
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i326

he_writel_internal.exit327:                       ; preds = %while.cond.i326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %361 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %membase.i, align 4
  %add.ptr.i329 = getelementptr i8, ptr %362, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i329, i32 619970560) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %363 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i330 = getelementptr i8, ptr %364, i32 526328
  %365 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i330) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %366 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i331 = getelementptr i8, ptr %367, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i331, i32 1644167328) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i334

while.cond.i334:                                  ; preds = %while.cond.i334.while.cond.i334_crit_edge, %he_writel_internal.exit327
  %368 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i332 = getelementptr i8, ptr %369, i32 526332
  %370 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i332) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %371 = and i32 %370, 16
  %tobool.not.i333 = icmp eq i32 %371, 0
  br i1 %tobool.not.i333, label %he_writel_internal.exit335, label %while.cond.i334.while.cond.i334_crit_edge

while.cond.i334.while.cond.i334_crit_edge:        ; preds = %while.cond.i334
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i334

he_writel_internal.exit335:                       ; preds = %while.cond.i334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %372 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %membase.i, align 4
  %add.ptr.i337 = getelementptr i8, ptr %373, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i337, i32 -2142896128) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %374 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i338 = getelementptr i8, ptr %375, i32 526328
  %376 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i338) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %377 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i339 = getelementptr i8, ptr %378, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i339, i32 1677721760) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i342

while.cond.i342:                                  ; preds = %while.cond.i342.while.cond.i342_crit_edge, %he_writel_internal.exit335
  %379 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i340 = getelementptr i8, ptr %380, i32 526332
  %381 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i340) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %382 = and i32 %381, 16
  %tobool.not.i341 = icmp eq i32 %382, 0
  br i1 %tobool.not.i341, label %he_writel_internal.exit343, label %while.cond.i342.while.cond.i342_crit_edge

while.cond.i342.while.cond.i342_crit_edge:        ; preds = %while.cond.i342
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i342

he_writel_internal.exit343:                       ; preds = %while.cond.i342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %383 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %membase.i, align 4
  %add.ptr.i345 = getelementptr i8, ptr %384, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i345, i32 -1218247424) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %385 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i346 = getelementptr i8, ptr %386, i32 526328
  %387 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i346) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %388 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i347 = getelementptr i8, ptr %389, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i347, i32 1879048352) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i350

while.cond.i350:                                  ; preds = %while.cond.i350.while.cond.i350_crit_edge, %he_writel_internal.exit343
  %390 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i348 = getelementptr i8, ptr %391, i32 526332
  %392 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i348) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %393 = and i32 %392, 16
  %tobool.not.i349 = icmp eq i32 %393, 0
  br i1 %tobool.not.i349, label %he_writel_internal.exit351, label %while.cond.i350.while.cond.i350_crit_edge

while.cond.i350.while.cond.i350_crit_edge:        ; preds = %while.cond.i350
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i350

he_writel_internal.exit351:                       ; preds = %while.cond.i350
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %394 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %membase.i, align 4
  %add.ptr.i353 = getelementptr i8, ptr %395, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i353, i32 -1318846464) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %396 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i354 = getelementptr i8, ptr %397, i32 526328
  %398 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i354) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %399 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i355 = getelementptr i8, ptr %400, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i355, i32 1929380000) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i358

while.cond.i358:                                  ; preds = %while.cond.i358.while.cond.i358_crit_edge, %he_writel_internal.exit351
  %401 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i356 = getelementptr i8, ptr %402, i32 526332
  %403 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i356) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %404 = and i32 %403, 16
  %tobool.not.i357 = icmp eq i32 %404, 0
  br i1 %tobool.not.i357, label %he_writel_internal.exit359, label %while.cond.i358.while.cond.i358_crit_edge

while.cond.i358.while.cond.i358_crit_edge:        ; preds = %while.cond.i358
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i358

he_writel_internal.exit359:                       ; preds = %while.cond.i358
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %405 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %membase.i, align 4
  %add.ptr.i361 = getelementptr i8, ptr %406, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i361, i32 -1319501824) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %407 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i362 = getelementptr i8, ptr %408, i32 526328
  %409 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i362) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %410 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i363 = getelementptr i8, ptr %411, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i363, i32 1946157216) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i366

while.cond.i366:                                  ; preds = %while.cond.i366.while.cond.i366_crit_edge, %he_writel_internal.exit359
  %412 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i364 = getelementptr i8, ptr %413, i32 526332
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i364) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %415 = and i32 %414, 16
  %tobool.not.i365 = icmp eq i32 %415, 0
  br i1 %tobool.not.i365, label %he_writel_internal.exit367, label %while.cond.i366.while.cond.i366_crit_edge

while.cond.i366.while.cond.i366_crit_edge:        ; preds = %while.cond.i366
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i366

he_writel_internal.exit367:                       ; preds = %while.cond.i366
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %416 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %membase.i, align 4
  %add.ptr.i369 = getelementptr i8, ptr %417, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i369, i32 -1310457856) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %418 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i370 = getelementptr i8, ptr %419, i32 526328
  %420 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i370) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %421 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i371 = getelementptr i8, ptr %422, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i371, i32 1962934432) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i374

while.cond.i374:                                  ; preds = %while.cond.i374.while.cond.i374_crit_edge, %he_writel_internal.exit367
  %423 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i372 = getelementptr i8, ptr %424, i32 526332
  %425 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i372) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %426 = and i32 %425, 16
  %tobool.not.i373 = icmp eq i32 %426, 0
  br i1 %tobool.not.i373, label %he_writel_internal.exit375, label %while.cond.i374.while.cond.i374_crit_edge

while.cond.i374.while.cond.i374_crit_edge:        ; preds = %while.cond.i374
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i374

he_writel_internal.exit375:                       ; preds = %while.cond.i374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %427 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %membase.i, align 4
  %add.ptr.i377 = getelementptr i8, ptr %428, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i377, i32 -1311113216) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %429 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i378 = getelementptr i8, ptr %430, i32 526328
  %431 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i378) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %432 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i379 = getelementptr i8, ptr %433, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i379, i32 1979711648) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i382

while.cond.i382:                                  ; preds = %while.cond.i382.while.cond.i382_crit_edge, %he_writel_internal.exit375
  %434 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i380 = getelementptr i8, ptr %435, i32 526332
  %436 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i380) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %437 = and i32 %436, 16
  %tobool.not.i381 = icmp eq i32 %437, 0
  br i1 %tobool.not.i381, label %he_writel_internal.exit383, label %while.cond.i382.while.cond.i382_crit_edge

while.cond.i382.while.cond.i382_crit_edge:        ; preds = %while.cond.i382
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i382

he_writel_internal.exit383:                       ; preds = %while.cond.i382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %438 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %membase.i, align 4
  %add.ptr.i385 = getelementptr i8, ptr %439, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i385, i32 -1318846464) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %440 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i386 = getelementptr i8, ptr %441, i32 526328
  %442 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i386) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %443 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i387 = getelementptr i8, ptr %444, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i387, i32 1996488864) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i390

while.cond.i390:                                  ; preds = %while.cond.i390.while.cond.i390_crit_edge, %he_writel_internal.exit383
  %445 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i388 = getelementptr i8, ptr %446, i32 526332
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i388) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %448 = and i32 %447, 16
  %tobool.not.i389 = icmp eq i32 %448, 0
  br i1 %tobool.not.i389, label %he_writel_internal.exit391, label %while.cond.i390.while.cond.i390_crit_edge

while.cond.i390.while.cond.i390_crit_edge:        ; preds = %while.cond.i390
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i390

he_writel_internal.exit391:                       ; preds = %while.cond.i390
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %449 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %membase.i, align 4
  %add.ptr.i393 = getelementptr i8, ptr %450, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i393, i32 100663296) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %451 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i394 = getelementptr i8, ptr %452, i32 526328
  %453 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i394) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %454 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i395 = getelementptr i8, ptr %455, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i395, i32 -2147483488) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i398

while.cond.i398:                                  ; preds = %while.cond.i398.while.cond.i398_crit_edge, %he_writel_internal.exit391
  %456 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i396 = getelementptr i8, ptr %457, i32 526332
  %458 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i396) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %459 = and i32 %458, 16
  %tobool.not.i397 = icmp eq i32 %459, 0
  br i1 %tobool.not.i397, label %he_writel_internal.exit399, label %while.cond.i398.while.cond.i398_crit_edge

while.cond.i398.while.cond.i398_crit_edge:        ; preds = %while.cond.i398
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i398

he_writel_internal.exit399:                       ; preds = %while.cond.i398
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %460 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %membase.i, align 4
  %add.ptr.i401 = getelementptr i8, ptr %461, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i401, i32 503316480) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %462 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i402 = getelementptr i8, ptr %463, i32 526328
  %464 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i402) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %465 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i403 = getelementptr i8, ptr %466, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i403, i32 -2130706272) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i406

while.cond.i406:                                  ; preds = %while.cond.i406.while.cond.i406_crit_edge, %he_writel_internal.exit399
  %467 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i404 = getelementptr i8, ptr %468, i32 526332
  %469 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i404) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %470 = and i32 %469, 16
  %tobool.not.i405 = icmp eq i32 %470, 0
  br i1 %tobool.not.i405, label %while.cond.i406.if.end_crit_edge, label %while.cond.i406.while.cond.i406_crit_edge

while.cond.i406.while.cond.i406_crit_edge:        ; preds = %while.cond.i406
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i406

while.cond.i406.if.end_crit_edge:                 ; preds = %while.cond.i406
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %while.cond.i406.if.end_crit_edge, %while.cond.i246.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %471 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %membase.i, align 4
  %add.ptr.i409 = getelementptr i8, ptr %472, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i409, i32 134217728) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %473 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i410 = getelementptr i8, ptr %474, i32 526328
  %475 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i410) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %476 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i411 = getelementptr i8, ptr %477, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i411, i32 -2113929056) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i414

while.cond.i414:                                  ; preds = %while.cond.i414.while.cond.i414_crit_edge, %if.end
  %478 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i412 = getelementptr i8, ptr %479, i32 526332
  %480 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i412) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %481 = and i32 %480, 16
  %tobool.not.i413 = icmp eq i32 %481, 0
  br i1 %tobool.not.i413, label %while.cond.i414.for.body15_crit_edge, label %while.cond.i414.while.cond.i414_crit_edge

while.cond.i414.while.cond.i414_crit_edge:        ; preds = %while.cond.i414
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i414

while.cond.i414.for.body15_crit_edge:             ; preds = %while.cond.i414
  br label %for.body15

for.body15:                                       ; preds = %he_writel_internal.exit425.for.body15_crit_edge, %while.cond.i414.for.body15_crit_edge
  %reg.2430 = phi i32 [ %inc18, %he_writel_internal.exit425.for.body15_crit_edge ], [ 0, %while.cond.i414.for.body15_crit_edge ]
  %add16 = add nuw nsw i32 %reg.2430, 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %482 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %membase.i, align 4
  %add.ptr.i417 = getelementptr i8, ptr %483, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i417, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %484 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i418 = getelementptr i8, ptr %485, i32 526328
  %486 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i418) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i420 = or i32 %add16, -1610612736
  %487 = tail call i32 @llvm.bswap.i32(i32 %or11.i420) #11
  %488 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i421 = getelementptr i8, ptr %489, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i421, i32 %487) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i424

while.cond.i424:                                  ; preds = %while.cond.i424.while.cond.i424_crit_edge, %for.body15
  %490 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i422 = getelementptr i8, ptr %491, i32 526332
  %492 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i422) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %493 = and i32 %492, 16
  %tobool.not.i423 = icmp eq i32 %493, 0
  br i1 %tobool.not.i423, label %he_writel_internal.exit425, label %while.cond.i424.while.cond.i424_crit_edge

while.cond.i424.while.cond.i424_crit_edge:        ; preds = %while.cond.i424
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i424

he_writel_internal.exit425:                       ; preds = %while.cond.i424
  %inc18 = add nuw nsw i32 %reg.2430, 1
  %exitcond433.not = icmp eq i32 %inc18, 8
  br i1 %exitcond433.not, label %for.end19, label %he_writel_internal.exit425.for.body15_crit_edge

he_writel_internal.exit425.for.body15_crit_edge:  ; preds = %he_writel_internal.exit425
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15

for.end19:                                        ; preds = %he_writel_internal.exit425
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @he_init_cs_block_rcm(ptr nocapture noundef readonly %he_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1024) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %membase.i = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %he_writel_internal.exit.for.body_crit_edge, %for.cond.preheader
  %reg.0200 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %he_writel_internal.exit.for.body_crit_edge ]
  %add = add nuw nsw i32 %reg.0200, 55296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %4, i32 526328
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i = or i32 %add, 536870912
  %6 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #11
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %8, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %6) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %10, i32 526332
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %12 = and i32 %11, 16
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %he_writel_internal.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

he_writel_internal.exit:                          ; preds = %while.cond.i
  %inc = add nuw nsw i32 %reg.0200, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %he_writel_internal.exit.for.body3_crit_edge, label %he_writel_internal.exit.for.body_crit_edge

he_writel_internal.exit.for.body_crit_edge:       ; preds = %he_writel_internal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

he_writel_internal.exit.for.body3_crit_edge:      ; preds = %he_writel_internal.exit
  br label %for.body3

for.body3:                                        ; preds = %he_writel_internal.exit187.for.body3_crit_edge, %he_writel_internal.exit.for.body3_crit_edge
  %reg.1201 = phi i32 [ %inc6, %he_writel_internal.exit187.for.body3_crit_edge ], [ 256, %he_writel_internal.exit.for.body3_crit_edge ]
  %add4 = add nuw nsw i32 %reg.1201, 55296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr.i180 = getelementptr i8, ptr %14, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i181 = getelementptr i8, ptr %16, i32 526328
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i181) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i182 = or i32 %add4, 536870912
  %18 = tail call i32 @llvm.bswap.i32(i32 %or11.i182) #11
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i183 = getelementptr i8, ptr %20, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i183, i32 %18) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i186

while.cond.i186:                                  ; preds = %while.cond.i186.while.cond.i186_crit_edge, %for.body3
  %21 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i184 = getelementptr i8, ptr %22, i32 526332
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i184) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %24 = and i32 %23, 16
  %tobool.not.i185 = icmp eq i32 %24, 0
  br i1 %tobool.not.i185, label %he_writel_internal.exit187, label %while.cond.i186.while.cond.i186_crit_edge

while.cond.i186.while.cond.i186_crit_edge:        ; preds = %while.cond.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i186

he_writel_internal.exit187:                       ; preds = %while.cond.i186
  %inc6 = add nuw nsw i32 %reg.1201, 1
  %exitcond211.not = icmp eq i32 %inc6, 511
  br i1 %exitcond211.not, label %for.end7, label %he_writel_internal.exit187.for.body3_crit_edge

he_writel_internal.exit187.for.body3_crit_edge:   ; preds = %he_writel_internal.exit187
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3

for.end7:                                         ; preds = %he_writel_internal.exit187
  %atm_dev = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 58
  %25 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %atm_dev, align 4
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_rate, align 4
  %div176 = lshr i32 %28, 5
  %29 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %call7.i, align 8
  %sub = sub i32 %28, %div176
  %arrayidx11.1 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %arrayidx11.1, align 4
  %sub.1 = sub i32 %sub, %div176
  %arrayidx11.2 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.1, ptr %arrayidx11.2, align 8
  %sub.2 = sub i32 %sub.1, %div176
  %arrayidx11.3 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.2, ptr %arrayidx11.3, align 4
  %sub.3 = sub i32 %sub.2, %div176
  %arrayidx11.4 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.3, ptr %arrayidx11.4, align 8
  %sub.4 = sub i32 %sub.3, %div176
  %arrayidx11.5 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 5
  %34 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.4, ptr %arrayidx11.5, align 4
  %sub.5 = sub i32 %sub.4, %div176
  %arrayidx11.6 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 6
  %35 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.5, ptr %arrayidx11.6, align 8
  %sub.6 = sub i32 %sub.5, %div176
  %arrayidx11.7 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 7
  %36 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.6, ptr %arrayidx11.7, align 4
  %sub.7 = sub i32 %sub.6, %div176
  %arrayidx11.8 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx11.8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.7, ptr %arrayidx11.8, align 8
  %sub.8 = sub i32 %sub.7, %div176
  %arrayidx11.9 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 9
  %38 = ptrtoint ptr %arrayidx11.9 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub.8, ptr %arrayidx11.9, align 4
  %sub.9 = sub i32 %sub.8, %div176
  %arrayidx11.10 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 10
  %39 = ptrtoint ptr %arrayidx11.10 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.9, ptr %arrayidx11.10, align 8
  %sub.10 = sub i32 %sub.9, %div176
  %arrayidx11.11 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 11
  %40 = ptrtoint ptr %arrayidx11.11 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.10, ptr %arrayidx11.11, align 4
  %sub.11 = sub i32 %sub.10, %div176
  %arrayidx11.12 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 12
  %41 = ptrtoint ptr %arrayidx11.12 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.11, ptr %arrayidx11.12, align 8
  %sub.12 = sub i32 %sub.11, %div176
  %arrayidx11.13 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 13
  %42 = ptrtoint ptr %arrayidx11.13 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.12, ptr %arrayidx11.13, align 4
  %sub.13 = sub i32 %sub.12, %div176
  %arrayidx11.14 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 14
  %43 = ptrtoint ptr %arrayidx11.14 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.13, ptr %arrayidx11.14, align 8
  %sub.14 = sub i32 %sub.13, %div176
  %arrayidx11.15 = getelementptr [16 x i32], ptr %call7.i, i32 0, i32 15
  %44 = ptrtoint ptr %arrayidx11.15 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.14, ptr %arrayidx11.15, align 4
  br label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond18.preheader.for.cond18.preheader_crit_edge, %for.end7
  %i.0206 = phi i32 [ %inc40, %for.cond18.preheader.for.cond18.preheader_crit_edge ], [ 1, %for.end7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.0206)
  %cmp21 = icmp ugt i32 %i.0206, 14
  %sub29 = add nsw i32 %i.0206, -1
  %.sub29 = select i1 %cmp21, i32 14, i32 %sub29
  %.219 = select i1 %cmp21, i32 2, i32 1
  %.i.0206 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29, i32 0
  %45 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx25, align 8
  %div26178 = lshr i32 %46, %.219
  %arrayidx28 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206, i32 0
  %47 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div26178, ptr %arrayidx28, align 8
  %.sub29.1 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.1 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.1 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.1 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.1, i32 1
  %48 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx25.1, align 4
  %div26178.1 = lshr i32 %49, %.219.1
  %arrayidx28.1 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.1, i32 1
  %50 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div26178.1, ptr %arrayidx28.1, align 4
  %.sub29.2 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.2 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.2 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.2 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.2, i32 2
  %51 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx25.2, align 8
  %div26178.2 = lshr i32 %52, %.219.2
  %arrayidx28.2 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.2, i32 2
  %53 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div26178.2, ptr %arrayidx28.2, align 8
  %.sub29.3 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.3 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.3 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.3 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.3, i32 3
  %54 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx25.3, align 4
  %div26178.3 = lshr i32 %55, %.219.3
  %arrayidx28.3 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.3, i32 3
  %56 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div26178.3, ptr %arrayidx28.3, align 4
  %.sub29.4 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.4 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.4 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.4 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.4, i32 4
  %57 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx25.4, align 8
  %div26178.4 = lshr i32 %58, %.219.4
  %arrayidx28.4 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.4, i32 4
  %59 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div26178.4, ptr %arrayidx28.4, align 8
  %.sub29.5 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.5 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.5 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.5 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.5, i32 5
  %60 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx25.5, align 4
  %div26178.5 = lshr i32 %61, %.219.5
  %arrayidx28.5 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.5, i32 5
  %62 = ptrtoint ptr %arrayidx28.5 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div26178.5, ptr %arrayidx28.5, align 4
  %.sub29.6 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.6 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.6 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.6 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.6, i32 6
  %63 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx25.6, align 8
  %div26178.6 = lshr i32 %64, %.219.6
  %arrayidx28.6 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.6, i32 6
  %65 = ptrtoint ptr %arrayidx28.6 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div26178.6, ptr %arrayidx28.6, align 8
  %.sub29.7 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.7 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.7 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.7 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.7, i32 7
  %66 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx25.7, align 4
  %div26178.7 = lshr i32 %67, %.219.7
  %arrayidx28.7 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.7, i32 7
  %68 = ptrtoint ptr %arrayidx28.7 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div26178.7, ptr %arrayidx28.7, align 4
  %.sub29.8 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.8 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.8 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.8 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.8, i32 8
  %69 = ptrtoint ptr %arrayidx25.8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx25.8, align 8
  %div26178.8 = lshr i32 %70, %.219.8
  %arrayidx28.8 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.8, i32 8
  %71 = ptrtoint ptr %arrayidx28.8 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div26178.8, ptr %arrayidx28.8, align 8
  %.sub29.9 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.9 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.9 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.9 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.9, i32 9
  %72 = ptrtoint ptr %arrayidx25.9 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx25.9, align 4
  %div26178.9 = lshr i32 %73, %.219.9
  %arrayidx28.9 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.9, i32 9
  %74 = ptrtoint ptr %arrayidx28.9 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %div26178.9, ptr %arrayidx28.9, align 4
  %.sub29.10 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.10 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.10 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.10 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.10, i32 10
  %75 = ptrtoint ptr %arrayidx25.10 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx25.10, align 8
  %div26178.10 = lshr i32 %76, %.219.10
  %arrayidx28.10 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.10, i32 10
  %77 = ptrtoint ptr %arrayidx28.10 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div26178.10, ptr %arrayidx28.10, align 8
  %.sub29.11 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.11 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.11 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.11 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.11, i32 11
  %78 = ptrtoint ptr %arrayidx25.11 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx25.11, align 4
  %div26178.11 = lshr i32 %79, %.219.11
  %arrayidx28.11 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.11, i32 11
  %80 = ptrtoint ptr %arrayidx28.11 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %div26178.11, ptr %arrayidx28.11, align 4
  %.sub29.12 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.12 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.12 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.12 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.12, i32 12
  %81 = ptrtoint ptr %arrayidx25.12 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx25.12, align 8
  %div26178.12 = lshr i32 %82, %.219.12
  %arrayidx28.12 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.12, i32 12
  %83 = ptrtoint ptr %arrayidx28.12 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %div26178.12, ptr %arrayidx28.12, align 8
  %.sub29.13 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.13 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.13 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.13 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.13, i32 13
  %84 = ptrtoint ptr %arrayidx25.13 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx25.13, align 4
  %div26178.13 = lshr i32 %85, %.219.13
  %arrayidx28.13 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.13, i32 13
  %86 = ptrtoint ptr %arrayidx28.13 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %div26178.13, ptr %arrayidx28.13, align 4
  %.sub29.14 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.14 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.14 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.14 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.14, i32 14
  %87 = ptrtoint ptr %arrayidx25.14 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx25.14, align 8
  %div26178.14 = lshr i32 %88, %.219.14
  %arrayidx28.14 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.14, i32 14
  %89 = ptrtoint ptr %arrayidx28.14 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %div26178.14, ptr %arrayidx28.14, align 8
  %.sub29.15 = select i1 %cmp21, i32 14, i32 %sub29
  %.219.15 = select i1 %cmp21, i32 2, i32 1
  %.i.0206.15 = select i1 %cmp21, i32 15, i32 %i.0206
  %arrayidx25.15 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.sub29.15, i32 15
  %90 = ptrtoint ptr %arrayidx25.15 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx25.15, align 4
  %div26178.15 = lshr i32 %91, %.219.15
  %arrayidx28.15 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %.i.0206.15, i32 15
  %92 = ptrtoint ptr %arrayidx28.15 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %div26178.15, ptr %arrayidx28.15, align 4
  %inc40 = add nuw nsw i32 %i.0206, 1
  %exitcond214.not = icmp eq i32 %inc40, 16
  br i1 %exitcond214.not, label %for.cond18.preheader.while.body_crit_edge, label %for.cond18.preheader.for.cond18.preheader_crit_edge

for.cond18.preheader.for.cond18.preheader_crit_edge: ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond18.preheader

for.cond18.preheader.while.body_crit_edge:        ; preds = %for.cond18.preheader
  br label %while.body

while.body:                                       ; preds = %if.end108.while.body_crit_edge, %for.cond18.preheader.while.body_crit_edge
  %rate_atmf.0209 = phi i32 [ %inc109, %if.end108.while.body_crit_edge ], [ 0, %for.cond18.preheader.while.body_crit_edge ]
  %reg.2208 = phi i32 [ %or102, %if.end108.while.body_crit_edge ], [ 511, %for.cond18.preheader.while.body_crit_edge ]
  %and = shl nuw nsw i32 %rate_atmf.0209, 4
  %shl = and i32 %and, 496
  %shr = lshr i32 %rate_atmf.0209, 5
  %shl43 = shl nuw i32 1, %shr
  %conv = zext i32 %shl43 to i64
  %add44 = or i32 %shl, 512
  %conv45 = zext i32 %add44 to i64
  %mul = mul nuw nsw i64 %conv45, %conv
  %shr46 = lshr i64 %mul, 9
  %93 = tail call i64 @llvm.umax.i64(i64 %shr46, i64 10)
  br label %for.body54

for.body54:                                       ; preds = %for.inc63.for.body54_crit_edge, %while.body
  %i.1207 = phi i32 [ 255, %while.body ], [ %dec, %for.inc63.for.body54_crit_edge ]
  %div55197199 = lshr i32 %i.1207, 4
  %rem198 = and i32 %i.1207, 15
  %arrayidx57 = getelementptr [16 x [16 x i32]], ptr %call7.i, i32 0, i32 %div55197199, i32 %rem198
  %94 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx57, align 4
  %conv58 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %conv58)
  %cmp59.not = icmp ugt i64 %93, %conv58
  br i1 %cmp59.not, label %for.inc63, label %for.body54.for.end64_crit_edge

for.body54.for.end64_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end64

for.inc63:                                        ; preds = %for.body54
  %dec = add nsw i32 %i.1207, -1
  %cmp52 = icmp ugt i32 %i.1207, 1
  br i1 %cmp52, label %for.inc63.for.body54_crit_edge, label %for.inc63.for.end64_crit_edge

for.inc63.for.end64_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end64

for.inc63.for.body54_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54

for.end64:                                        ; preds = %for.inc63.for.end64_crit_edge, %for.body54.for.end64_crit_edge
  %i.1.lcssa = phi i32 [ %i.1207, %for.body54.for.end64_crit_edge ], [ 0, %for.inc63.for.end64_crit_edge ]
  %96 = ptrtoint ptr %atm_dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %atm_dev, align 4
  %link_rate66 = getelementptr inbounds %struct.atm_dev, ptr %97, i32 0, i32 13
  %98 = ptrtoint ptr %link_rate66 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %link_rate66, align 4
  %div67 = sdiv i32 %99, 353207
  %conv68 = sext i32 %div67 to i64
  %mul69 = mul nsw i64 %conv68, 272
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %mul69)
  %cmp70 = icmp ugt i64 %93, %mul69
  br i1 %cmp70, label %for.end64.if.end99_crit_edge, label %if.else73

for.end64.if.end99_crit_edge:                     ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.else73:                                        ; preds = %for.end64
  %mul75 = mul nsw i64 %conv68, 204
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %mul75)
  %cmp76 = icmp ugt i64 %93, %mul75
  br i1 %cmp76, label %if.else73.if.end99_crit_edge, label %if.else79

if.else73.if.end99_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.else79:                                        ; preds = %if.else73
  %mul81 = mul nsw i64 %conv68, 136
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %mul81)
  %cmp82 = icmp ugt i64 %93, %mul81
  br i1 %cmp82, label %if.else79.if.end99_crit_edge, label %if.else85

if.else79.if.end99_crit_edge:                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.else85:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #13
  %mul87 = mul nsw i64 %conv68, 68
  call void @__sanitizer_cov_trace_cmp8(i64 %93, i64 %mul87)
  %cmp88 = icmp ugt i64 %93, %mul87
  %. = zext i1 %cmp88 to i32
  br label %if.end99

if.end99:                                         ; preds = %if.else85, %if.else79.if.end99_crit_edge, %if.else73.if.end99_crit_edge, %for.end64.if.end99_crit_edge
  %buf.0 = phi i32 [ 4, %for.end64.if.end99_crit_edge ], [ 3, %if.else73.if.end99_crit_edge ], [ 2, %if.else79.if.end99_crit_edge ], [ %., %if.else85 ]
  %shl100 = shl i32 %reg.2208, 16
  %shl101 = shl i32 %i.1.lcssa, 8
  %or = or i32 %buf.0, %shl101
  %or102 = or i32 %or, %shl100
  %and103 = and i32 %rate_atmf.0209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end99.if.end108_crit_edge, label %if.then105

if.end99.if.end108_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then105:                                       ; preds = %if.end99
  %shr106 = lshr i32 %rate_atmf.0209, 1
  %add107 = add nuw nsw i32 %shr106, 56320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %100 = tail call i32 @llvm.bswap.i32(i32 %or102) #11
  %101 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase.i, align 4
  %add.ptr.i189 = getelementptr i8, ptr %102, i32 526328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189, i32 %100) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %103 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i190 = getelementptr i8, ptr %104, i32 526328
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i190) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %or11.i191 = or i32 %add107, 536870912
  %106 = tail call i32 @llvm.bswap.i32(i32 %or11.i191) #11
  %107 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i192 = getelementptr i8, ptr %108, i32 526332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i192, i32 %106) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  br label %while.cond.i195

while.cond.i195:                                  ; preds = %while.cond.i195.while.cond.i195_crit_edge, %if.then105
  %109 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i193 = getelementptr i8, ptr %110, i32 526332
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i193) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  %112 = and i32 %111, 16
  %tobool.not.i194 = icmp eq i32 %112, 0
  br i1 %tobool.not.i194, label %while.cond.i195.if.end108_crit_edge, label %while.cond.i195.while.cond.i195_crit_edge

while.cond.i195.while.cond.i195_crit_edge:        ; preds = %while.cond.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i195

while.cond.i195.if.end108_crit_edge:              ; preds = %while.cond.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.end108:                                        ; preds = %while.cond.i195.if.end108_crit_edge, %if.end99.if.end108_crit_edge
  %inc109 = add nuw nsw i32 %rate_atmf.0209, 1
  %exitcond215.not = icmp eq i32 %inc109, 1024
  br i1 %exitcond215.not, label %while.end, label %if.end108.while.body_crit_edge

if.end108.while.body_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @he_init_tpdrq(ptr noundef %he_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 57
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %tpdrq_phys = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 33
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %tpdrq_phys, i32 noundef 3264, i32 noundef 0) #11
  %tpdrq_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 34
  %2 = ptrtoint ptr %tpdrq_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %tpdrq_base, align 4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %he_dev, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef %4) #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tpdrq_tail = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 35
  %5 = ptrtoint ptr %tpdrq_tail to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %tpdrq_tail, align 4
  %tpdrq_head = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 36
  %6 = ptrtoint ptr %tpdrq_head to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %tpdrq_head, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !641
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %tpdrq_phys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tpdrq_phys, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 525952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !642
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !643
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %13, i32 525956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !644
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !645
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr24 = getelementptr i8, ptr %15, i32 525960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 -16711680) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !646
  tail call void @arm_heavy_mb() #11
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @he_init_group(ptr noundef %he_dev) unnamed_addr #2 align 64 {
entry:
  %mapping = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #11
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mapping, align 4, !annotation !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !647
  tail call void @arm_heavy_mb() #11
  %membase = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 2
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 525312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !648
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !649
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %4, i32 525316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !650
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !651
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr27 = getelementptr i8, ptr %6, i32 525320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !652
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !653
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr40 = getelementptr i8, ptr %8, i32 525324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 16777216) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !654
  tail call void @arm_heavy_mb() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 68) #15
  %rbpl_table = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 43
  %10 = ptrtoint ptr %rbpl_table to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %rbpl_table, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end49, label %if.end

do.end49:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %he_dev, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %12) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = call ptr @memset(ptr %call7.i.i, i32 0, i32 68)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 2120) #15
  %rbpl_virt = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 42
  %15 = ptrtoint ptr %rbpl_virt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i1, ptr %rbpl_virt, align 4
  %tobool54.not = icmp eq ptr %call7.i.i1, null
  br i1 %tobool54.not, label %do.end58, label %if.end62

do.end58:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %he_dev, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %17) #14
  br label %out_free_rbpl_table

if.end62:                                         ; preds = %if.end
  %pci_dev = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 57
  %18 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %call63 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.136, ptr noundef %dev, i32 noundef 4096, i32 noundef 64, i32 noundef 0) #11
  %rbpl_pool = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 45
  %20 = ptrtoint ptr %rbpl_pool to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call63, ptr %rbpl_pool, align 4
  %cmp = icmp eq ptr %call63, null
  br i1 %cmp, label %do.end68, label %if.end72

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %he_dev, align 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %22) #14
  br label %out_free_rbpl_virt

if.end72:                                         ; preds = %if.end62
  %23 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev, align 4
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %rbpl_phys = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 46
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev74, i32 noundef 4096, ptr noundef %rbpl_phys, i32 noundef 3264, i32 noundef 0) #11
  %rbpl_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 47
  %25 = ptrtoint ptr %rbpl_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %rbpl_base, align 4
  %cmp77 = icmp eq ptr %call.i, null
  br i1 %cmp77, label %do.end81, label %if.end85

do.end81:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %he_dev, align 4
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %27) #14
  br label %out_destroy_rbpl_pool

if.end85:                                         ; preds = %if.end72
  %rbpl_outstanding = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 49
  %28 = ptrtoint ptr %rbpl_outstanding to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %rbpl_outstanding, ptr %rbpl_outstanding, align 4
  %prev.i = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 49, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rbpl_outstanding, ptr %prev.i, align 4
  %rbpl_hint = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %if.end85
  %i.04 = phi i32 [ 0, %if.end85 ], [ %add97, %list_add.exit.for.body_crit_edge ]
  %30 = ptrtoint ptr %rbpl_pool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rbpl_pool, align 4
  %call88 = call ptr @dma_pool_alloc(ptr noundef %31, i32 noundef 3264, ptr noundef nonnull %mapping) #11
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %for.body.out_free_rbpl_crit_edge, label %if.end91

for.body.out_free_rbpl_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_rbpl

if.end91:                                         ; preds = %for.body
  %32 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mapping, align 4
  %mapping92 = getelementptr inbounds %struct.he_buff, ptr %call88, i32 0, i32 1
  %34 = ptrtoint ptr %mapping92 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mapping92, align 4
  %35 = ptrtoint ptr %rbpl_outstanding to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rbpl_outstanding, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call88, ptr noundef %rbpl_outstanding, ptr noundef %36) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end91.list_add.exit_crit_edge

if.end91.list_add.exit_crit_edge:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call88, ptr %prev1.i.i, align 4
  %38 = ptrtoint ptr %call88 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %call88, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call88, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rbpl_outstanding, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %rbpl_outstanding to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call88, ptr %rbpl_outstanding, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end91.list_add.exit_crit_edge
  %41 = ptrtoint ptr %rbpl_table to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rbpl_table, align 4
  call void @_set_bit(i32 noundef %i.04, ptr noundef %42) #11
  %43 = ptrtoint ptr %rbpl_virt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rbpl_virt, align 4
  %arrayidx = getelementptr ptr, ptr %44, i32 %i.04
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call88, ptr %arrayidx, align 4
  %add97 = add nuw nsw i32 %i.04, 1
  %46 = ptrtoint ptr %rbpl_hint to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add97, ptr %rbpl_hint, align 4
  %shl = shl i32 %i.04, 6
  %47 = ptrtoint ptr %rbpl_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rbpl_base, align 4
  %idx = getelementptr %struct.he_rbp, ptr %48, i32 %i.04, i32 1
  %49 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %shl, ptr %idx, align 4
  %50 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mapping, align 4
  %add100 = add i32 %51, 16
  %52 = load ptr, ptr %rbpl_base, align 4
  %arrayidx102 = getelementptr %struct.he_rbp, ptr %52, i32 %i.04
  %53 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %add100, ptr %arrayidx102, align 4
  %exitcond.not = icmp eq i32 %add97, 512
  br i1 %exitcond.not, label %for.end, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %list_add.exit
  %54 = ptrtoint ptr %rbpl_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rbpl_base, align 4
  %arrayidx104 = getelementptr %struct.he_rbp, ptr %55, i32 511
  %rbpl_tail = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 48
  %56 = ptrtoint ptr %rbpl_tail to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx104, ptr %rbpl_tail, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !655
  call void @arm_heavy_mb() #11
  %57 = ptrtoint ptr %rbpl_phys to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rbpl_phys, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase, align 4
  %add.ptr113 = getelementptr i8, ptr %61, i32 525328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %59) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !656
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !657
  call void @arm_heavy_mb() #11
  %62 = ptrtoint ptr %rbpl_tail to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rbpl_tail, align 4
  %64 = ptrtoint ptr %63 to i32
  %and = and i32 %64, 4095
  %65 = call i32 @llvm.bswap.i32(i32 %and)
  %66 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase, align 4
  %add.ptr127 = getelementptr i8, ptr %67, i32 525332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %65) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !658
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !659
  call void @arm_heavy_mb() #11
  %68 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase, align 4
  %add.ptr140 = getelementptr i8, ptr %69, i32 525340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 -66912256) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !660
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !661
  call void @arm_heavy_mb() #11
  %70 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase, align 4
  %add.ptr153 = getelementptr i8, ptr %71, i32 525336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 1088454400) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !662
  call void @arm_heavy_mb() #11
  %72 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci_dev, align 4
  %dev160 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %rbrq_phys = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 38
  %call.i2 = call ptr @dma_alloc_attrs(ptr noundef %dev160, i32 noundef 4096, ptr noundef %rbrq_phys, i32 noundef 3264, i32 noundef 0) #11
  %rbrq_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 39
  %74 = ptrtoint ptr %rbrq_base to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i2, ptr %rbrq_base, align 4
  %cmp163 = icmp eq ptr %call.i2, null
  br i1 %cmp163, label %do.end167, label %if.end171

do.end167:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %he_dev, align 4
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %76) #14
  br label %out_free_rbpl

if.end171:                                        ; preds = %for.end
  %rbrq_head = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 40
  %77 = ptrtoint ptr %rbrq_head to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i2, ptr %rbrq_head, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !663
  call void @arm_heavy_mb() #11
  %78 = ptrtoint ptr %rbrq_phys to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rbrq_phys, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  %81 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase, align 4
  %add.ptr181 = getelementptr i8, ptr %82, i32 525568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181, i32 %80) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !664
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !665
  call void @arm_heavy_mb() #11
  %83 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase, align 4
  %add.ptr194 = getelementptr i8, ptr %84, i32 525572
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !666
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !667
  call void @arm_heavy_mb() #11
  %85 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase, align 4
  %add.ptr207 = getelementptr i8, ptr %86, i32 525576
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 -16698880) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !668
  call void @arm_heavy_mb() #11
  %87 = load i8, ptr @irq_coalesce, align 1, !range !349
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool213.not = icmp eq i8 %87, 0
  br i1 %tobool213.not, label %do.body235, label %do.end217

do.end217:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %he_dev, align 4
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %89) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !669
  call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase, align 4
  %add.ptr228 = getelementptr i8, ptr %91, i32 525580
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228, i32 117441280) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !670
  br label %if.end247

do.body235:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !671
  call void @arm_heavy_mb() #11
  %92 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase, align 4
  %add.ptr241 = getelementptr i8, ptr %93, i32 525580
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr241, i32 16777216) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !672
  br label %if.end247

if.end247:                                        ; preds = %do.body235, %do.end217
  call void @arm_heavy_mb() #11
  %94 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pci_dev, align 4
  %dev249 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  %tbrq_phys = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 51
  %call.i3 = call ptr @dma_alloc_attrs(ptr noundef %dev249, i32 noundef 2048, ptr noundef %tbrq_phys, i32 noundef 3264, i32 noundef 0) #11
  %tbrq_base = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 52
  %96 = ptrtoint ptr %tbrq_base to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i3, ptr %tbrq_base, align 4
  %cmp252 = icmp eq ptr %call.i3, null
  br i1 %cmp252, label %do.end256, label %if.end260

do.end256:                                        ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %he_dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %he_dev, align 4
  %call259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %98) #14
  %99 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pci_dev, align 4
  %dev316 = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %101 = ptrtoint ptr %rbrq_base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rbrq_base, align 4
  %103 = ptrtoint ptr %rbrq_phys to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rbrq_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev316, i32 noundef 4096, ptr noundef %102, i32 noundef %104, i32 noundef 0) #11
  br label %out_free_rbpl

if.end260:                                        ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #13
  %tbrq_head = getelementptr inbounds %struct.he_dev, ptr %he_dev, i32 0, i32 53
  %105 = ptrtoint ptr %tbrq_head to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i3, ptr %tbrq_head, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !673
  call void @arm_heavy_mb() #11
  %106 = ptrtoint ptr %tbrq_phys to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tbrq_phys, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107)
  %109 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %membase, align 4
  %add.ptr270 = getelementptr i8, ptr %110, i32 525824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr270, i32 %108) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !674
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !675
  call void @arm_heavy_mb() #11
  %111 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %membase, align 4
  %add.ptr283 = getelementptr i8, ptr %112, i32 525828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr283, i32 0) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !676
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !677
  call void @arm_heavy_mb() #11
  %113 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %membase, align 4
  %add.ptr296 = getelementptr i8, ptr %114, i32 525832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr296, i32 -16711680) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !678
  call void @arm_heavy_mb() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !679
  call void @arm_heavy_mb() #11
  %115 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %membase, align 4
  %add.ptr309 = getelementptr i8, ptr %116, i32 525836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr309, i32 -1878982656) #11, !srcloc !342
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !680
  call void @arm_heavy_mb() #11
  br label %cleanup

out_free_rbpl:                                    ; preds = %do.end256, %do.end167, %for.body.out_free_rbpl_crit_edge
  %117 = ptrtoint ptr %rbpl_outstanding to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rbpl_outstanding, align 4
  %cmp331.not5 = icmp eq ptr %118, %rbpl_outstanding
  br i1 %cmp331.not5, label %out_free_rbpl.for.end341_crit_edge, label %out_free_rbpl.for.body332_crit_edge

out_free_rbpl.for.body332_crit_edge:              ; preds = %out_free_rbpl
  br label %for.body332

out_free_rbpl.for.end341_crit_edge:               ; preds = %out_free_rbpl
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end341

for.body332:                                      ; preds = %for.body332.for.body332_crit_edge, %out_free_rbpl.for.body332_crit_edge
  %heb.06 = phi ptr [ %next.0, %for.body332.for.body332_crit_edge ], [ %118, %out_free_rbpl.for.body332_crit_edge ]
  %119 = ptrtoint ptr %heb.06 to i32
  call void @__asan_load4_noabort(i32 %119)
  %next.0 = load ptr, ptr %heb.06, align 4
  %120 = ptrtoint ptr %rbpl_pool to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rbpl_pool, align 4
  %mapping334 = getelementptr inbounds %struct.he_buff, ptr %heb.06, i32 0, i32 1
  %122 = ptrtoint ptr %mapping334 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mapping334, align 4
  call void @dma_pool_free(ptr noundef %121, ptr noundef %heb.06, i32 noundef %123) #11
  %cmp331.not = icmp eq ptr %next.0, %rbpl_outstanding
  br i1 %cmp331.not, label %for.body332.for.end341_crit_edge, label %for.body332.for.body332_crit_edge

for.body332.for.body332_crit_edge:                ; preds = %for.body332
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body332

for.body332.for.end341_crit_edge:                 ; preds = %for.body332
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end341

for.end341:                                       ; preds = %for.body332.for.end341_crit_edge, %out_free_rbpl.for.end341_crit_edge
  %124 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pci_dev, align 4
  %dev343 = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  %126 = ptrtoint ptr %rbpl_base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rbpl_base, align 4
  %128 = ptrtoint ptr %rbpl_phys to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rbpl_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev343, i32 noundef 4096, ptr noundef %127, i32 noundef %129, i32 noundef 0) #11
  br label %out_destroy_rbpl_pool

out_destroy_rbpl_pool:                            ; preds = %for.end341, %do.end81
  %130 = ptrtoint ptr %rbpl_pool to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rbpl_pool, align 4
  call void @dma_pool_destroy(ptr noundef %131) #11
  br label %out_free_rbpl_virt

out_free_rbpl_virt:                               ; preds = %out_destroy_rbpl_pool, %do.end68
  %132 = ptrtoint ptr %rbpl_virt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rbpl_virt, align 4
  call void @kfree(ptr noundef %133) #11
  br label %out_free_rbpl_table

out_free_rbpl_table:                              ; preds = %out_free_rbpl_virt, %do.end58
  %134 = ptrtoint ptr %rbpl_table to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rbpl_table, align 4
  call void @kfree(ptr noundef %135) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free_rbpl_table, %if.end260, %do.end49
  %retval.0 = phi i32 [ -12, %out_free_rbpl_table ], [ 0, %if.end260 ], [ -12, %do.end49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suni_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @he_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev_id, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  %global_lock = getelementptr inbounds %struct.he_dev, ptr %dev_id, i32 0, i32 37
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %global_lock) #11
  %irq_base = getelementptr inbounds %struct.he_dev, ptr %dev_id, i32 0, i32 25
  %0 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_base, align 4
  %2 = ptrtoint ptr %1 to i32
  %irq_tailoffset = getelementptr inbounds %struct.he_dev, ptr %dev_id, i32 0, i32 28
  %3 = ptrtoint ptr %irq_tailoffset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_tailoffset, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %shl = shl i32 %6, 2
  %or = or i32 %shl, %2
  %7 = inttoptr i32 %or to ptr
  %irq_tail = getelementptr inbounds %struct.he_dev, ptr %dev_id, i32 0, i32 27
  %8 = ptrtoint ptr %irq_tail to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %irq_tail, align 4
  %irq_head = getelementptr inbounds %struct.he_dev, ptr %dev_id, i32 0, i32 26
  %9 = ptrtoint ptr %irq_head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_head, align 4
  %cmp7 = icmp eq ptr %10, %7
  br i1 %cmp7, label %do.end12, label %do.body1.if.end27_crit_edge

do.body1.if.end27_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.end12:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %membase = getelementptr inbounds %struct.he_dev, ptr %dev_id, i32 0, i32 2
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 524416
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !681
  %14 = and i32 %13, -16711680
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %shl17 = shl nuw nsw i32 %15, 2
  %or18 = or i32 %shl17, %2
  %16 = inttoptr i32 %or18 to ptr
  %17 = ptrtoint ptr %irq_tail to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %irq_tail, align 4
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr23 = getelementptr i8, ptr %19, i32 524316
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !682
  br label %if.end27

if.end27:                                         ; preds = %do.end12, %do.body1.if.end27_crit_edge
  %21 = ptrtoint ptr %irq_head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_head, align 4
  %23 = ptrtoint ptr %irq_tail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_tail, align 4
  %cmp30.not = icmp eq ptr %22, %24
  br i1 %cmp30.not, label %if.end27.if.end51_crit_edge, label %if.then32

if.end27.if.end51_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then32:                                        ; preds = %if.end27
  %state.i = getelementptr inbounds %struct.he_dev, ptr %dev_id, i32 0, i32 30, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then32.tasklet_schedule.exit_crit_edge

if.then32.tasklet_schedule.exit_crit_edge:        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr inbounds %struct.he_dev, ptr %dev_id, i32 0, i32 30
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.then32.tasklet_schedule.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !683
  tail call void @arm_heavy_mb() #11
  %membase37 = getelementptr inbounds %struct.he_dev, ptr %dev_id, i32 0, i32 2
  %25 = ptrtoint ptr %membase37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase37, align 4
  %add.ptr38 = getelementptr i8, ptr %26, i32 524316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 65536) #11, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !684
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %membase37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase37, align 4
  %add.ptr47 = getelementptr i8, ptr %28, i32 524316
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #11, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !685
  br label %if.end51

if.end51:                                         ; preds = %tasklet_schedule.exit, %if.end27.if.end51_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %global_lock, i32 noundef %call3) #11
  %not.cmp30.not = xor i1 %cmp30.not, true
  %cond = zext i1 %not.cmp30.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end51 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !59, !61, !63, !65, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !81, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !136, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !273, !274, !275, !277, !278, !279, !281, !283, !285, !286, !287, !288, !290, !291, !292, !294, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328}
!llvm.named.register.sp = !{!330}
!llvm.module.flags = !{!331, !332, !333, !334, !335, !336, !337, !338}
!llvm.ident = !{!339}

!0 = !{ptr @__UNIQUE_ID_file463, !1, !"__UNIQUE_ID_file463", i1 false, i1 false}
!1 = !{!"../drivers/atm/he.c", i32 2836, i32 1}
!2 = !{ptr @__UNIQUE_ID_license464, !1, !"__UNIQUE_ID_license464", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author465, !4, !"__UNIQUE_ID_author465", i1 false, i1 false}
!4 = !{!"../drivers/atm/he.c", i32 2837, i32 1}
!5 = !{ptr @__UNIQUE_ID_description466, !6, !"__UNIQUE_ID_description466", i1 false, i1 false}
!6 = !{!"../drivers/atm/he.c", i32 2838, i32 1}
!7 = !{ptr @__param_disable64, !8, !"__param_disable64", i1 false, i1 false}
!8 = !{!"../drivers/atm/he.c", i32 2839, i32 1}
!9 = !{ptr @__UNIQUE_ID_disable64type467, !8, !"__UNIQUE_ID_disable64type467", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_disable64468, !11, !"__UNIQUE_ID_disable64468", i1 false, i1 false}
!11 = !{!"../drivers/atm/he.c", i32 2840, i32 1}
!12 = !{ptr @__param_nvpibits, !13, !"__param_nvpibits", i1 false, i1 false}
!13 = !{!"../drivers/atm/he.c", i32 2841, i32 1}
!14 = !{ptr @__UNIQUE_ID_nvpibitstype469, !13, !"__UNIQUE_ID_nvpibitstype469", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_nvpibits470, !16, !"__UNIQUE_ID_nvpibits470", i1 false, i1 false}
!16 = !{!"../drivers/atm/he.c", i32 2842, i32 1}
!17 = !{ptr @__param_nvcibits, !18, !"__param_nvcibits", i1 false, i1 false}
!18 = !{!"../drivers/atm/he.c", i32 2843, i32 1}
!19 = !{ptr @__UNIQUE_ID_nvcibitstype471, !18, !"__UNIQUE_ID_nvcibitstype471", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_nvcibits472, !21, !"__UNIQUE_ID_nvcibits472", i1 false, i1 false}
!21 = !{!"../drivers/atm/he.c", i32 2844, i32 1}
!22 = !{ptr @__param_rx_skb_reserve, !23, !"__param_rx_skb_reserve", i1 false, i1 false}
!23 = !{!"../drivers/atm/he.c", i32 2845, i32 1}
!24 = !{ptr @__UNIQUE_ID_rx_skb_reservetype473, !23, !"__UNIQUE_ID_rx_skb_reservetype473", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_rx_skb_reserve474, !26, !"__UNIQUE_ID_rx_skb_reserve474", i1 false, i1 false}
!26 = !{!"../drivers/atm/he.c", i32 2846, i32 1}
!27 = !{ptr @__param_irq_coalesce, !28, !"__param_irq_coalesce", i1 false, i1 false}
!28 = !{!"../drivers/atm/he.c", i32 2847, i32 1}
!29 = !{ptr @__UNIQUE_ID_irq_coalescetype475, !28, !"__UNIQUE_ID_irq_coalescetype475", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_irq_coalesce476, !31, !"__UNIQUE_ID_irq_coalesce476", i1 false, i1 false}
!31 = !{!"../drivers/atm/he.c", i32 2848, i32 1}
!32 = !{ptr @__param_sdh, !33, !"__param_sdh", i1 false, i1 false}
!33 = !{!"../drivers/atm/he.c", i32 2849, i32 1}
!34 = !{ptr @__UNIQUE_ID_sdhtype477, !33, !"__UNIQUE_ID_sdhtype477", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_sdh478, !36, !"__UNIQUE_ID_sdh478", i1 false, i1 false}
!36 = !{!"../drivers/atm/he.c", i32 2850, i32 1}
!37 = !{ptr @__initcall__kmod_he__479_2866_he_driver_init6, !38, !"__initcall__kmod_he__479_2866_he_driver_init6", i1 false, i1 false}
!38 = !{!"../drivers/atm/he.c", i32 2866, i32 1}
!39 = !{ptr @__exitcall_he_driver_exit, !38, !"__exitcall_he_driver_exit", i1 false, i1 false}
!40 = !{ptr @disable64, !41, !"disable64", i1 false, i1 false}
!41 = !{!"../drivers/atm/he.c", i32 115, i32 13}
!42 = !{ptr @sdh, !43, !"sdh", i1 false, i1 false}
!43 = !{!"../drivers/atm/he.c", i32 120, i32 13}
!44 = !{ptr @__param_str_disable64, !8, !"__param_str_disable64", i1 false, i1 false}
!45 = !{ptr @__param_str_nvpibits, !13, !"__param_str_nvpibits", i1 false, i1 false}
!46 = !{ptr @nvpibits, !47, !"nvpibits", i1 false, i1 false}
!47 = !{!"../drivers/atm/he.c", i32 116, i32 14}
!48 = !{ptr @__param_str_nvcibits, !18, !"__param_str_nvcibits", i1 false, i1 false}
!49 = !{ptr @nvcibits, !50, !"nvcibits", i1 false, i1 false}
!50 = !{!"../drivers/atm/he.c", i32 117, i32 14}
!51 = !{ptr @__param_str_rx_skb_reserve, !23, !"__param_str_rx_skb_reserve", i1 false, i1 false}
!52 = !{ptr @rx_skb_reserve, !53, !"rx_skb_reserve", i1 false, i1 false}
!53 = !{!"../drivers/atm/he.c", i32 118, i32 14}
!54 = !{ptr @__param_str_irq_coalesce, !28, !"__param_str_irq_coalesce", i1 false, i1 false}
!55 = !{ptr @irq_coalesce, !56, !"irq_coalesce", i1 false, i1 false}
!56 = !{!"../drivers/atm/he.c", i32 119, i32 13}
!57 = !{ptr @__param_str_sdh, !33, !"__param_str_sdh", i1 false, i1 false}
!58 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @he_driver, !60, !"he_driver", i1 false, i1 false}
!60 = !{!"../drivers/atm/he.c", i32 2859, i32 26}
!61 = !{ptr @he_pci_tbl, !62, !"he_pci_tbl", i1 false, i1 false}
!62 = !{!"../drivers/atm/he.c", i32 2852, i32 35}
!63 = !{ptr @.str.1, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/atm/he.c", i32 358, i32 2}
!65 = !{ptr @.str.2, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.3, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @he_init_one._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @he_init_one._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.5, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/atm/he.c", i32 363, i32 3}
!71 = !{ptr @he_init_one._entry.4, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @he_init_one._entry_ptr.6, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @he_init_one.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/atm/he.c", i32 387, i32 2}
!75 = !{ptr @.str.7, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @he_ops, !77, !"he_ops", i1 false, i1 false}
!77 = !{!"../drivers/atm/he.c", i32 164, i32 32}
!78 = !{ptr @.str.8, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/atm/he.c", i32 2139, i32 3}
!80 = !{ptr @.str.9, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @he_open._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @he_open._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @he_open.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/atm/he.c", i32 2147, i32 2}
!85 = !{ptr @.str.10, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @he_open.__key.11, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/atm/he.c", i32 2148, i32 2}
!88 = !{ptr @.str.12, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.14, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/atm/he.c", i32 2182, i32 4}
!91 = !{ptr @he_open._entry.13, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @he_open._entry_ptr.15, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.17, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/atm/he.c", i32 2292, i32 4}
!95 = !{ptr @he_open._entry.16, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @he_open._entry_ptr.18, !94, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../drivers/atm/he.c", i32 2362, i32 3}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../drivers/atm/he.c", i32 2373, i32 3}
!101 = !{ptr @.str.20, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/atm/he.c", i32 2376, i32 4}
!103 = !{ptr @.str.21, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @he_close._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @he_close._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.23, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/atm/he.c", i32 2407, i32 4}
!108 = !{ptr @he_close._entry.22, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @he_close._entry_ptr.24, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.26, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/atm/he.c", i32 2429, i32 4}
!112 = !{ptr @he_close._entry.25, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @he_close._entry_ptr.27, !111, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../drivers/atm/he.c", i32 2437, i32 3}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../drivers/atm/he.c", i32 2445, i32 3}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/atm/he.c", i32 2450, i32 4}
!120 = !{ptr @he_close._entry.30, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @he_close._entry_ptr.32, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.34, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/atm/he.c", i32 2472, i32 5}
!124 = !{ptr @he_close._entry.33, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @he_close._entry_ptr.35, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.36, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/atm/he.c", i32 2079, i32 4}
!128 = !{ptr @.str.37, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @__enqueue_tpd._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @__enqueue_tpd._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!133 = distinct !{null, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!136 = !{ptr @.str.40, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!138 = !{ptr @.str.41, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/atm/he.c", i32 2505, i32 3}
!140 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @he_send._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @he_send._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.44, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/atm/he.c", i32 2516, i32 3}
!145 = !{ptr @he_send._entry.43, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @he_send._entry_ptr.45, !144, !"_entry_ptr", i1 false, i1 false}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!149 = !{ptr @.str.46, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.47, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @he_proc_read.mcc, !152, !"mcc", i1 false, i1 false}
!152 = !{!"../drivers/atm/he.c", i32 2713, i32 14}
!153 = !{ptr @he_proc_read.oec, !154, !"oec", i1 false, i1 false}
!154 = !{!"../drivers/atm/he.c", i32 2713, i32 23}
!155 = !{ptr @he_proc_read.dcc, !156, !"dcc", i1 false, i1 false}
!156 = !{!"../drivers/atm/he.c", i32 2713, i32 32}
!157 = !{ptr @he_proc_read.cec, !158, !"cec", i1 false, i1 false}
!158 = !{!"../drivers/atm/he.c", i32 2713, i32 41}
!159 = !{ptr @.str.48, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/atm/he.c", i32 2718, i32 24}
!161 = !{ptr @.str.49, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/atm/he.c", i32 2721, i32 24}
!163 = !{ptr @.str.50, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/atm/he.c", i32 2722, i32 44}
!165 = !{ptr @.str.51, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/atm/he.c", i32 2722, i32 51}
!167 = !{ptr @.str.52, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/atm/he.c", i32 2725, i32 24}
!169 = !{ptr @.str.53, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/atm/he.c", i32 2735, i32 24}
!171 = !{ptr @.str.54, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/atm/he.c", i32 2739, i32 24}
!173 = !{ptr @.str.55, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/atm/he.c", i32 2743, i32 24}
!175 = !{ptr @.str.56, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/atm/he.c", i32 2747, i32 24}
!177 = !{ptr @.str.57, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/atm/he.c", i32 2751, i32 24}
!179 = !{ptr @.str.58, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/atm/he.c", i32 2770, i32 24}
!181 = !{ptr @.str.59, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/atm/he.c", i32 2774, i32 25}
!183 = !{ptr @.str.60, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/atm/he.c", i32 2779, i32 24}
!185 = !{ptr @.str.61, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/atm/he.c", i32 1976, i32 7}
!187 = !{ptr @.str.62, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @he_tasklet._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @he_tasklet._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.64, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/atm/he.c", i32 1979, i32 7}
!192 = !{ptr @he_tasklet._entry.63, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @he_tasklet._entry_ptr.65, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.67, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/atm/he.c", i32 1993, i32 5}
!196 = !{ptr @he_tasklet._entry.66, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @he_tasklet._entry_ptr.68, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.69, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/atm/he.c", i32 1681, i32 4}
!200 = !{ptr @.str.70, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @he_service_rbrq._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @he_service_rbrq._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.72, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/atm/he.c", i32 1692, i32 4}
!205 = !{ptr @he_service_rbrq._entry.71, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @he_service_rbrq._entry_ptr.73, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.74, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/atm/he.c", i32 1831, i32 4}
!209 = !{ptr @.str.75, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @he_service_tbrq._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @he_service_tbrq._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.76, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/atm/he.c", i32 999, i32 3}
!214 = !{ptr @.str.77, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @he_start._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @he_start._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.79, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/atm/he.c", i32 1004, i32 3}
!219 = !{ptr @he_start._entry.78, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @he_start._entry_ptr.80, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.82, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/atm/he.c", i32 1009, i32 3}
!223 = !{ptr @he_start._entry.81, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @he_start._entry_ptr.83, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.85, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/atm/he.c", i32 1015, i32 3}
!227 = !{ptr @he_start._entry.84, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @he_start._entry_ptr.86, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.88, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/atm/he.c", i32 1020, i32 3}
!231 = !{ptr @he_start._entry.87, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @he_start._entry_ptr.89, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.91, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/atm/he.c", i32 1027, i32 4}
!235 = !{ptr @he_start._entry.90, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @he_start._entry_ptr.92, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.94, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/atm/he.c", i32 1031, i32 3}
!239 = !{ptr @he_start._entry.93, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @he_start._entry_ptr.95, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.97, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/atm/he.c", i32 1048, i32 4}
!243 = !{ptr @he_start._entry.96, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @he_start._entry_ptr.98, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.100, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/atm/he.c", i32 1052, i32 3}
!247 = !{ptr @he_start._entry.99, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @he_start._entry_ptr.101, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.103, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/atm/he.c", i32 1063, i32 3}
!251 = !{ptr @he_start._entry.102, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @he_start._entry_ptr.104, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.106, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/atm/he.c", i32 1075, i32 3}
!255 = !{ptr @he_start._entry.105, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @he_start._entry_ptr.107, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.109, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/atm/he.c", i32 1080, i32 3}
!259 = !{ptr @he_start._entry.108, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @he_start._entry_ptr.110, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.112, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/atm/he.c", i32 1093, i32 2}
!263 = !{ptr @he_start._entry.111, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @he_start._entry_ptr.113, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.115, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/atm/he.c", i32 1170, i32 3}
!267 = !{ptr @he_start._entry.114, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @he_start._entry_ptr.116, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.117, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/atm/he.c", i32 1426, i32 37}
!271 = !{ptr @.str.119, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/atm/he.c", i32 1429, i32 3}
!273 = !{ptr @he_start._entry.118, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @he_start._entry_ptr.120, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.122, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/atm/he.c", i32 1470, i32 3}
!277 = !{ptr @he_start._entry.121, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @he_start._entry_ptr.123, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @readtab, !280, !"readtab", i1 false, i1 false}
!280 = !{!"../drivers/atm/he.c", i32 123, i32 21}
!281 = !{ptr @clocktab, !282, !"clocktab", i1 false, i1 false}
!282 = !{!"../drivers/atm/he.c", i32 144, i32 21}
!283 = !{ptr @.str.124, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/atm/he.c", i32 921, i32 3}
!285 = !{ptr @.str.125, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @he_init_irq._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @he_init_irq._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.127, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/atm/he.c", i32 964, i32 3}
!290 = !{ptr @he_init_irq._entry.126, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @he_init_irq._entry_ptr.128, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.129, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/atm/he.c", i32 541, i32 3}
!294 = !{ptr @.str.130, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @he_init_tpdrq._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @he_init_tpdrq._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.131, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/atm/he.c", i32 787, i32 3}
!299 = !{ptr @.str.132, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @he_init_group._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @he_init_group._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.134, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/atm/he.c", i32 797, i32 3}
!304 = !{ptr @he_init_group._entry.133, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @he_init_group._entry_ptr.135, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.136, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/atm/he.c", i32 802, i32 38}
!308 = !{ptr @.str.138, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/atm/he.c", i32 805, i32 3}
!310 = !{ptr @he_init_group._entry.137, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @he_init_group._entry_ptr.139, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.141, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/atm/he.c", i32 813, i32 3}
!314 = !{ptr @he_init_group._entry.140, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @he_init_group._entry_ptr.142, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.144, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/atm/he.c", i32 852, i32 3}
!318 = !{ptr @he_init_group._entry.143, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @he_init_group._entry_ptr.145, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.147, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/atm/he.c", i32 863, i32 3}
!322 = !{ptr @he_init_group._entry.146, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @he_init_group._entry_ptr.148, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.150, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/atm/he.c", i32 876, i32 3}
!326 = !{ptr @he_init_group._entry.149, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @he_init_group._entry_ptr.151, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @he_devs, !329, !"he_devs", i1 false, i1 false}
!329 = !{!"../drivers/atm/he.c", i32 114, i32 23}
!330 = !{!"sp"}
!331 = !{i32 1, !"wchar_size", i32 2}
!332 = !{i32 1, !"min_enum_size", i32 4}
!333 = !{i32 8, !"branch-target-enforcement", i32 0}
!334 = !{i32 8, !"sign-return-address", i32 0}
!335 = !{i32 8, !"sign-return-address-all", i32 0}
!336 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!337 = !{i32 7, !"uwtable", i32 1}
!338 = !{i32 7, !"frame-pointer", i32 2}
!339 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!340 = !{!"auto-init"}
!341 = !{i64 2157394165}
!342 = !{i64 6305472}
!343 = !{i64 2157394504}
!344 = !{i64 2157394824}
!345 = !{i64 2157395166}
!346 = !{i64 6305890}
!347 = !{i64 2157395769}
!348 = !{i64 2157397911}
!349 = !{i8 0, i8 2}
!350 = !{i64 2157403653}
!351 = !{i64 2157404045}
!352 = !{i64 2157404396}
!353 = !{i64 2157404823}
!354 = !{i64 2157405273}
!355 = !{i64 2157405611}
!356 = !{i64 2157405962}
!357 = !{i64 2157406327}
!358 = !{i64 2157406684}
!359 = !{i64 2157409298}
!360 = !{i64 2157410225}
!361 = !{i64 2157410759}
!362 = !{i64 2157411326}
!363 = !{i64 2157411817}
!364 = !{i64 2157412333}
!365 = !{i64 2157412824}
!366 = !{i64 2157413340}
!367 = !{i64 2157413709}
!368 = !{i64 2157414120}
!369 = !{i64 2157414881}
!370 = !{i64 2157415679}
!371 = !{i64 2157416344}
!372 = !{i64 2157417040}
!373 = !{i64 2157417358}
!374 = !{i64 2157417697}
!375 = !{i64 2157418201}
!376 = !{i64 2157418732}
!377 = !{i64 2157303176}
!378 = !{i64 2157303515}
!379 = !{i64 2157304118}
!380 = !{i64 2157304499}
!381 = !{i64 2157304907}
!382 = !{i64 2157305510}
!383 = !{i64 2157419214}
!384 = !{i64 2157419565}
!385 = !{i64 2157419899}
!386 = !{i64 2157420250}
!387 = !{i64 2157420584}
!388 = !{i64 2157420935}
!389 = !{i64 2157421269}
!390 = !{i64 2157421620}
!391 = !{i64 2157421954}
!392 = !{i64 2157422305}
!393 = !{i64 2157422631}
!394 = !{i64 2157422982}
!395 = !{i64 2157423308}
!396 = !{i64 2157423659}
!397 = !{i64 2157423985}
!398 = !{i64 2157424336}
!399 = !{i64 2157424654}
!400 = !{i64 2157424993}
!401 = !{i64 2157425311}
!402 = !{i64 2157425650}
!403 = !{i64 2157425968}
!404 = !{i64 2157426307}
!405 = !{i64 2157426625}
!406 = !{i64 2157426964}
!407 = !{i64 2157427282}
!408 = !{i64 2157427621}
!409 = !{i64 2157428049}
!410 = !{i64 2157428511}
!411 = !{i64 2157429211}
!412 = !{i64 2157429535}
!413 = !{i64 2157429883}
!414 = !{i64 2157430207}
!415 = !{i64 2157430555}
!416 = !{i64 2157430879}
!417 = !{i64 2157431227}
!418 = !{i64 2157431551}
!419 = !{i64 2157431899}
!420 = !{i64 2157432223}
!421 = !{i64 2157432571}
!422 = !{i64 2157432895}
!423 = !{i64 2157433243}
!424 = !{i64 2157433567}
!425 = !{i64 2157433915}
!426 = !{i64 2157434239}
!427 = !{i64 2157434587}
!428 = !{i64 2157434911}
!429 = !{i64 2157435259}
!430 = !{i64 2157435583}
!431 = !{i64 2157435931}
!432 = !{i64 2157436255}
!433 = !{i64 2157436603}
!434 = !{i64 2157436927}
!435 = !{i64 2157437275}
!436 = !{i64 2157437599}
!437 = !{i64 2157437947}
!438 = !{i64 2157438271}
!439 = !{i64 2157438619}
!440 = !{i64 2157438943}
!441 = !{i64 2157439291}
!442 = !{i64 2157439963}
!443 = !{i64 2157440287}
!444 = !{i64 2157440635}
!445 = !{i64 2157440959}
!446 = !{i64 2157441307}
!447 = !{i64 2157441631}
!448 = !{i64 2157441979}
!449 = !{i64 2157442303}
!450 = !{i64 2157442651}
!451 = !{i64 2157442975}
!452 = !{i64 2157443323}
!453 = !{i64 2157443647}
!454 = !{i64 2157443995}
!455 = !{i64 2157444319}
!456 = !{i64 2157444667}
!457 = !{i64 2157444991}
!458 = !{i64 2157445339}
!459 = !{i64 2157445663}
!460 = !{i64 2157446011}
!461 = !{i64 2157446335}
!462 = !{i64 2157446683}
!463 = !{i64 2157447007}
!464 = !{i64 2157447355}
!465 = !{i64 2157447679}
!466 = !{i64 2157448027}
!467 = !{i64 2157448351}
!468 = !{i64 2157448699}
!469 = !{i64 2157449023}
!470 = !{i64 2157449371}
!471 = !{i64 2157449695}
!472 = !{i64 2157450043}
!473 = !{i64 2157450361}
!474 = !{i64 2157450700}
!475 = !{i64 2157451018}
!476 = !{i64 2157451357}
!477 = !{i64 2157451675}
!478 = !{i64 2157452014}
!479 = !{i64 2157452332}
!480 = !{i64 2157452671}
!481 = !{i64 2157454693}
!482 = !{i64 2157455047}
!483 = !{i64 2157455395}
!484 = !{i64 2157455749}
!485 = !{i64 2157456097}
!486 = !{i64 2157456451}
!487 = !{i64 2157456861}
!488 = !{i64 2157457275}
!489 = !{i64 2157457623}
!490 = !{i64 2157457977}
!491 = !{i64 2157458325}
!492 = !{i64 2157458679}
!493 = !{i64 2157459089}
!494 = !{i64 2157459503}
!495 = !{i64 2157459851}
!496 = !{i64 2157460205}
!497 = !{i64 2157460553}
!498 = !{i64 2157460907}
!499 = !{i64 2157461255}
!500 = !{i64 2157461609}
!501 = !{i64 2157462019}
!502 = !{i64 2157462433}
!503 = !{i64 2157462781}
!504 = !{i64 2157463135}
!505 = !{i64 2157463483}
!506 = !{i64 2157463837}
!507 = !{i64 2157464185}
!508 = !{i64 2157464539}
!509 = !{i64 2157464903}
!510 = !{i64 2157465269}
!511 = !{i64 2157465617}
!512 = !{i64 2157465971}
!513 = !{i64 2157468201}
!514 = !{i64 2157468579}
!515 = !{i64 2157469404}
!516 = !{i64 2157469729}
!517 = !{i64 2157470068}
!518 = !{i64 2157509111}
!519 = !{i64 2157511545}
!520 = !{i64 2157512148}
!521 = !{i64 2157512751}
!522 = !{i64 2148415978, i64 2148416004, i64 2148416033, i64 2148416067, i64 2148416098, i64 2148416121}
!523 = !{i64 2154938348}
!524 = !{i64 2154938990}
!525 = !{i64 2157305899}
!526 = !{i64 2157306307}
!527 = !{i64 2157306910}
!528 = !{i64 2157307521}
!529 = !{i64 2157470880}
!530 = !{i64 2157471205}
!531 = !{i64 2157471544}
!532 = !{i64 2157534024}
!533 = !{i64 2157539315}
!534 = !{i64 2157544437}
!535 = !{i64 2157551042}
!536 = !{i64 2157555764}
!537 = !{i64 2157560500}
!538 = !{!"branch_weights", i32 2000, i32 1}
!539 = !{i64 5133129}
!540 = !{i64 5133326}
!541 = !{i64 2152618559}
!542 = !{i64 2157572045}
!543 = !{i64 2157570109}
!544 = !{i64 2157573026}
!545 = !{i64 2157573376}
!546 = !{i64 2157574034}
!547 = !{i64 2157575108}
!548 = !{i64 2157576140}
!549 = !{i64 2157576743}
!550 = !{i64 2157577346}
!551 = !{i64 2157577949}
!552 = !{i64 2157516883}
!553 = !{i64 2157518868}
!554 = !{i64 2157519365}
!555 = !{i64 2157519863}
!556 = !{i64 2157520466}
!557 = !{i64 2157494185}
!558 = !{i64 2157494695}
!559 = !{i64 2157502645}
!560 = !{i64 2157503871}
!561 = !{i64 2157504366}
!562 = !{i64 2157501229}
!563 = !{i64 2157501739}
!564 = !{i64 2157578494}
!565 = !{i64 2157578812}
!566 = !{i64 2157579151}
!567 = !{i64 2157579836}
!568 = !{i64 2157580214}
!569 = !{i64 2157581170}
!570 = !{i64 2157581638}
!571 = !{i64 2157582594}
!572 = !{i64 2157583062}
!573 = !{i64 2157583932}
!574 = !{i64 2157584271}
!575 = !{i64 2157584621}
!576 = !{i64 2157585008}
!577 = !{i64 2157586163}
!578 = !{i64 2157586524}
!579 = !{i64 2157586911}
!580 = !{i64 2157587809}
!581 = !{i64 2157588178}
!582 = !{i64 2157364189}
!583 = !{i64 2157364567}
!584 = !{i64 2157364999}
!585 = !{i64 2157365422}
!586 = !{i64 2157365769}
!587 = !{i64 2157366135}
!588 = !{i64 2157366453}
!589 = !{i64 2157366792}
!590 = !{i64 2157367110}
!591 = !{i64 2157367449}
!592 = !{i64 2157367767}
!593 = !{i64 2157368106}
!594 = !{i64 2157368424}
!595 = !{i64 2157368763}
!596 = !{i64 2157369081}
!597 = !{i64 2157369420}
!598 = !{i64 2157369738}
!599 = !{i64 2157370077}
!600 = !{i64 2157370395}
!601 = !{i64 2157370734}
!602 = !{i64 2157371052}
!603 = !{i64 2157371391}
!604 = !{i64 2157371709}
!605 = !{i64 2157372048}
!606 = !{i64 2157372366}
!607 = !{i64 2157372705}
!608 = !{i64 2157373023}
!609 = !{i64 2157373362}
!610 = !{i64 2157373680}
!611 = !{i64 2157374019}
!612 = !{i64 2157374337}
!613 = !{i64 2157374676}
!614 = !{i64 2157374994}
!615 = !{i64 2157375333}
!616 = !{i64 2157375651}
!617 = !{i64 2157375990}
!618 = !{i64 2157376308}
!619 = !{i64 2157376647}
!620 = !{i64 2157376965}
!621 = !{i64 2157377304}
!622 = !{i64 2157315099}
!623 = !{i64 2157315433}
!624 = !{i64 2157315796}
!625 = !{i64 2157316310}
!626 = !{i64 2157316685}
!627 = !{i64 2157317035}
!628 = !{i64 2157317422}
!629 = !{i64 2157318028}
!630 = !{i64 2157318362}
!631 = !{i64 2157318725}
!632 = !{i64 2157319239}
!633 = !{i64 2157319614}
!634 = !{i64 2157319964}
!635 = !{i64 2157320351}
!636 = !{i64 2157320957}
!637 = !{i64 2157321291}
!638 = !{i64 2157321654}
!639 = !{i64 2157322168}
!640 = !{i64 2157322543}
!641 = !{i64 2157324682}
!642 = !{i64 2157325066}
!643 = !{i64 2157325380}
!644 = !{i64 2157325713}
!645 = !{i64 2157326043}
!646 = !{i64 2157326394}
!647 = !{i64 2157330962}
!648 = !{i64 2157331316}
!649 = !{i64 2157331664}
!650 = !{i64 2157332018}
!651 = !{i64 2157332366}
!652 = !{i64 2157332720}
!653 = !{i64 2157333130}
!654 = !{i64 2157333544}
!655 = !{i64 2157341793}
!656 = !{i64 2157342189}
!657 = !{i64 2157342712}
!658 = !{i64 2157343222}
!659 = !{i64 2157343637}
!660 = !{i64 2157344084}
!661 = !{i64 2157344538}
!662 = !{i64 2157344991}
!663 = !{i64 2157347169}
!664 = !{i64 2157347565}
!665 = !{i64 2157347909}
!666 = !{i64 2157348257}
!667 = !{i64 2157348687}
!668 = !{i64 2157349113}
!669 = !{i64 2157351105}
!670 = !{i64 2157351510}
!671 = !{i64 2157351905}
!672 = !{i64 2157352304}
!673 = !{i64 2157354482}
!674 = !{i64 2157354878}
!675 = !{i64 2157355222}
!676 = !{i64 2157355570}
!677 = !{i64 2157355930}
!678 = !{i64 2157356296}
!679 = !{i64 2157356648}
!680 = !{i64 2157357002}
!681 = !{i64 2157513755}
!682 = !{i64 2157514387}
!683 = !{i64 2157514718}
!684 = !{i64 2157515066}
!685 = !{i64 2157515669}
