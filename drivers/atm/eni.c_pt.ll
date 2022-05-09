; ModuleID = '/llk/IR_all_yes/drivers/atm/eni.c_pt.bc'
source_filename = "../drivers/atm/eni.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
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
%struct.eni_dev = type { %struct.spinlock, %struct.tasklet_struct, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.eni_tx], ptr, %struct.sk_buff_head, %struct.wait_queue_head, i32, [200 x i32], %struct.eni_zero, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.wait_queue_head, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.153, i32 }
%union.anon.153 = type { ptr }
%struct.eni_tx = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sk_buff_head }
%struct.eni_zero = type { ptr, i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.eni_free = type { ptr, i32 }
%struct.atmphy_ops = type { ptr, ptr, ptr, ptr }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
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
%struct.eni_vcc = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i64, ptr, ptr }
%struct.eni_multipliers = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.page = type { i32, %union.anon.29, %union.anon.90, %struct.atomic_t, i32 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.90 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%struct.llist_node = type { ptr }
%union.anon.47 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.49 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.72 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__initcall__kmod_eni__467_2318_eni_init6 = internal global ptr @eni_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file468 = internal constant [25 x i8] c"eni.file=drivers/atm/eni\00", section ".modinfo", align 1
@__UNIQUE_ID_license469 = internal constant [16 x i8] c"eni.license=GPL\00", section ".modinfo", align 1
@eni_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @eni_pci_tbl, ptr @eni_init_one, ptr @eni_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eni\00", [28 x i8] zeroinitializer }, align 32
@eni_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4378, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4378, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr null, ptr @eni_open, ptr @eni_close, ptr @eni_ioctl, ptr @eni_send, ptr null, ptr null, ptr @eni_phy_put, ptr @eni_phy_get, ptr @eni_change_qos, ptr @eni_proc_read, ptr null }, [48 x i8] zeroinitializer }, align 32
@eni_boards = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eni_open\0A\00", [22 x i8] zeroinitializer }, align 32
@ev = internal global { [64 x ptr], [64 x i8] } zeroinitializer, align 32
@ec = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ev_a = internal global { [64 x i32], [64 x i8] } zeroinitializer, align 32
@ev_b = internal global { [64 x i32], [64 x i8] } zeroinitializer, align 32
@eni_put_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\012eni_put_free overflow (%p,%ld)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eni_put_free\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/atm/eni.c\00", [46 x i8] zeroinitializer }, align 32
@eni_put_free._entry_ptr = internal global ptr @eni_put_free._entry, section ".printk_index", align 4
@eni_put_free._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\012eni_put_free: order %d too small\0A\00", [60 x i8] zeroinitializer }, align 32
@eni_put_free._entry_ptr.7 = internal global ptr @eni_put_free._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_aal5\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"empty cell (descr=0x%lx)\0A\00", [38 x i8] zeroinitializer }, align 32
@rx_aal5.silence = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rx_aal5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014eni(itf %d): discarding PDU(s) with CRC error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_aal5\00", [24 x i8] zeroinitializer }, align 32
@rx_aal5._entry_ptr = internal global ptr @rx_aal5._entry, section ".printk_index", align 4
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CRC error (descr=0x%lx,size=%ld)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad PDU (descr=0x08%lx,length=%ld)\0A\00", [60 x i8] zeroinitializer }, align 32
@rx_aal5._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.4, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013eni(itf %d): bad AAL5 PDU (VCI=%d,length=%ld,size=%ld (descr 0x%lx))\0A\00", [56 x i8] zeroinitializer }, align 32
@rx_aal5._entry_ptr.16 = internal global ptr @rx_aal5._entry.14, section ".printk_index", align 4
@rx_ident_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\011eni(itf %d): driver error - RX ident mismatch\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_ident_err\00", [19 x i8] zeroinitializer }, align 32
@rx_ident_err._entry_ptr = internal global ptr @rx_ident_err._entry, section ".printk_index", align 4
@rx_ident_err._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\011  VCI %d, rxing %d, words %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@rx_ident_err._entry_ptr.21 = internal global ptr @rx_ident_err._entry.19, section ".printk_index", align 4
@rx_ident_err._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.4, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\011  host descr 0x%lx, rx pos 0x%lx, descr value 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@rx_ident_err._entry_ptr.24 = internal global ptr @rx_ident_err._entry.22, section ".printk_index", align 4
@rx_ident_err._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.4, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\011  last %p, servicing %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rx_ident_err._entry_ptr.27 = internal global ptr @rx_ident_err._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"---dump ends here---\0A\00", [42 x i8] zeroinitializer }, align 32
@rx_ident_err._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.4, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015---recent events---\0A\00", [41 x i8] zeroinitializer }, align 32
@rx_ident_err._entry_ptr.31 = internal global ptr @rx_ident_err._entry.29, section ".printk_index", align 4
@event_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event_dump\00", [21 x i8] zeroinitializer }, align 32
@event_dump._entry_ptr = internal global ptr @event_dump._entry, section ".printk_index", align 4
@event_dump._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.33, ptr @.str.4, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@event_dump._entry_ptr.35 = internal global ptr @event_dump._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"discard (size=%ld)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BUSY LOOP\00", [22 x i8] zeroinitializer }, align 32
@do_rx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\012eni(itf %d): VCI %d has mis-aligned RX data (0x%lx)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"do_rx_dma\00", [22 x i8] zeroinitializer }, align 32
@do_rx_dma._entry_ptr = internal global ptr @do_rx_dma._entry, section ".printk_index", align 4
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"strange things happen ... (skip=%ld,eff=%ld)\0A\00", [50 x i8] zeroinitializer }, align 32
@do_rx_dma._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.4, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\012eni!j or j too big!!!\0A\00", [39 x i8] zeroinitializer }, align 32
@do_rx_dma._entry_ptr.45 = internal global ptr @do_rx_dma._entry.43, section ".printk_index", align 4
@do_rx_dma._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.41, ptr @.str.4, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014eni(itf %d): RX DMA full\0A\00", [36 x i8] zeroinitializer }, align 32
@do_rx_dma._entry_ptr.48 = internal global ptr @do_rx_dma._entry.46, section ".printk_index", align 4
@rx_enqueued = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@eni_free_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\011eni_free_mem overflow (%p,%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eni_free_mem\00", [19 x i8] zeroinitializer }, align 32
@eni_free_mem._entry_ptr = internal global ptr @eni_free_mem._entry, section ".printk_index", align 4
@comp_tx.pre_div = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 16, i32 128, i32 2048], [16 x i8] zeroinitializer }, align 32
@open_rx_second._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\012eni(itf %d): BUG - VCI %d already in use\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"open_rx_second\00", [17 x i8] zeroinitializer }, align 32
@open_rx_second._entry_ptr = internal global ptr @open_rx_second._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX closing\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drain PDUs (rx %ld, serv %ld)\0A\00", [33 x i8] zeroinitializer }, align 32
@close_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%d+%d RX left\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"close_rx\00", [23 x i8] zeroinitializer }, align 32
@close_rx._entry_ptr = internal global ptr @close_rx._entry, section ".printk_index", align 4
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drain discard (host 0x%lx, nic 0x%lx)\0A\00", [57 x i8] zeroinitializer }, align 32
@close_rx._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.58, ptr @.str.4, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016draining RX: host 0x%lx, nic 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@close_rx._entry_ptr.63 = internal global ptr @close_rx._entry.61, section ".printk_index", align 4
@eni_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 2002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014Please use /proc/atm/eni:%d instead of obsolete ioctl ENI_MEMDUMP\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eni_ioctl\00", [22 x i8] zeroinitializer }, align 32
@eni_ioctl._entry_ptr = internal global ptr @eni_ioctl._entry, section ".printk_index", align 4
@dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\015Free memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dump\00", [27 x i8] zeroinitializer }, align 32
@dump._entry_ptr = internal global ptr @dump._entry, section ".printk_index", align 4
@dump._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.4, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\015TX buffers\0A\00", [18 x i8] zeroinitializer }, align 32
@dump._entry_ptr.74 = internal global ptr @dump._entry.72, section ".printk_index", align 4
@dump._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.4, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\015  TX %d @ %p: %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@dump._entry_ptr.77 = internal global ptr @dump._entry.75, section ".printk_index", align 4
@dump._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.4, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\015RX buffers\0A\00", [18 x i8] zeroinitializer }, align 32
@dump._entry_ptr.80 = internal global ptr @dump._entry.78, section ".printk_index", align 4
@dump._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.71, ptr @.str.4, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\015  RX %d @ %p: %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@dump._entry_ptr.83 = internal global ptr @dump._entry.81, section ".printk_index", align 4
@dump._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.71, ptr @.str.4, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\015----\0A\00", [24 x i8] zeroinitializer }, align 32
@dump._entry_ptr.86 = internal global ptr @dump._entry.84, section ".printk_index", align 4
@dump_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017  %d: %p %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dump_mem\00", [23 x i8] zeroinitializer }, align 32
@dump_mem._entry_ptr = internal global ptr @dump_mem._entry, section ".printk_index", align 4
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@eni_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.4, i32 2045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\012!skb in eni_send ?\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eni_send\00", [23 x i8] zeroinitializer }, align 32
@eni_send._entry_ptr = internal global ptr @eni_send._entry, section ".printk_index", align 4
@submitted = internal global { i32, [28 x i8] } zeroinitializer, align 32
@backlogged = internal global { i32, [28 x i8] } zeroinitializer, align 32
@do_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\012skb==0x%lx\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"do_tx\00", [26 x i8] zeroinitializer }, align 32
@do_tx._entry_ptr = internal global ptr @do_tx._entry, section ".printk_index", align 4
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"do_tx: skb=0x%lx, %ld bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@do_tx._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.95, ptr @.str.4, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\012vcc==0x%lx\0A\00", [18 x i8] zeroinitializer }, align 32
@do_tx._entry_ptr.99 = internal global ptr @do_tx._entry.97, section ".printk_index", align 4
@do_tx._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.95, ptr @.str.4, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\012eni_dev==0x%lx\0A\00", [46 x i8] zeroinitializer }, align 32
@do_tx._entry_ptr.102 = internal global ptr @do_tx._entry.100, section ".printk_index", align 4
@do_tx._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.95, ptr @.str.4, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\012tx==0x%lx\0A\00", [19 x i8] zeroinitializer }, align 32
@do_tx._entry_ptr.105 = internal global ptr @do_tx._entry.103, section ".printk_index", align 4
@do_tx._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.95, ptr @.str.4, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\012eni(itf %d): needs %d DMA entries (got only %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@do_tx._entry_ptr.108 = internal global ptr @do_tx._entry.106, section ".printk_index", align 4
@do_tx._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.95, ptr @.str.4, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014eni(itf %d): TX DMA full\0A\00", [36 x i8] zeroinitializer }, align 32
@do_tx._entry_ptr.111 = internal global ptr @do_tx._entry.109, section ".printk_index", align 4
@queued = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"put_dma: 0x%lx+0x%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@eni_proc_read.signal = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.115], [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOST\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"okay\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"eni(itf %d) signal %s, %dkB, %d cps remaining\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%4sBursts: TX 16W 8W 4W 2W, RX 16W 8W 4W 2W\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%4sBuffer multipliers: tx %d%%, rx %d%%\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"tx[%d]:    0x%lx-0x%lx (%6ld bytes), rsv %d cps, shp %d cps%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" (UBR)\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%10sbacklog %u packets\0A\00", [40 x i8] zeroinitializer }, align 32
@vcc_sklist_lock = external dso_local global %struct.rwlock_t, align 4
@vcc_hash = external dso_local local_unnamed_addr global [32 x %struct.hlist_head], align 4
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vcc %4d: \00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%lx-0x%lx (%6ld bytes)\00", [39 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx[%d], txing %d bytes\00", [41 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"free      %p-%p (%6d bytes)\0A\00", [35 x i8] zeroinitializer }, align 32
@eni_do_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.4, i32 1721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013eni(itf %d): can't enable memory (0x%02x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eni_do_init\00", [20 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr = internal global ptr @eni_do_init._entry, section ".printk_index", align 4
@eni_do_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.4, i32 1725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015eni(itf %d): rev.%d,base=0x%lx,irq=%d,\00", [55 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr.132 = internal global ptr @eni_do_init._entry.130, section ".printk_index", align 4
@eni_do_init._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.4, i32 1727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr.135 = internal global ptr @eni_do_init._entry.133, section ".printk_index", align 4
@eni_do_init._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.129, ptr @.str.4, i32 1729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013eni(itf %d): can't set up page mapping\0A\00", [54 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr.138 = internal global ptr @eni_do_init._entry.136, section ".printk_index", align 4
@eni_do_init._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.4, i32 1738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr.140 = internal global ptr @eni_do_init._entry.139, section ".printk_index", align 4
@eni_do_init._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.129, ptr @.str.4, i32 1742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013eni(itf %d): bad magic - expected 0x%x, got 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr.143 = internal global ptr @eni_do_init._entry.141, section ".printk_index", align 4
@eni_do_init._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.129, ptr @.str.4, i32 1765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mem=%dkB (\00", [21 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr.146 = internal global ptr @eni_do_init._entry.144, section ".printk_index", align 4
@eni_do_init._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.129, ptr @.str.4, i32 1768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c")\0A\00", [29 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr.149 = internal global ptr @eni_do_init._entry.147, section ".printk_index", align 4
@eni_do_init._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.129, ptr @.str.4, i32 1770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013eni(itf %d): ERROR - wrong id 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr.152 = internal global ptr @eni_do_init._entry.150, section ".printk_index", align 4
@eni_do_init._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.129, ptr @.str.4, i32 1778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%02X\00", [25 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr.155 = internal global ptr @eni_do_init._entry.153, section ".printk_index", align 4
@.str.156 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@eni_do_init._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.129, ptr @.str.4, i32 1779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr.158 = internal global ptr @eni_do_init._entry.157, section ".printk_index", align 4
@eni_do_init._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.129, ptr @.str.4, i32 1782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015eni(itf %d): %s,%s\0A\00", [42 x i8] zeroinitializer }, align 32
@eni_do_init._entry_ptr.161 = internal global ptr @eni_do_init._entry.159, section ".printk_index", align 4
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ASIC\00", [27 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FPGA\00", [27 x i8] zeroinitializer }, align 32
@media_name = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.166, ptr @.str.167, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.166, ptr @.str.167, ptr @.str.181, ptr @.str.182, ptr @.str.169, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193], [32 x i8] zeroinitializer }, align 32
@get_esi_asic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.4, i32 1678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013eni(itf %d): error reading ESI (0x%02x)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_esi_asic\00", [19 x i8] zeroinitializer }, align 32
@get_esi_asic._entry_ptr = internal global ptr @get_esi_asic._entry, section ".printk_index", align 4
@.str.166 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MMF\00", [28 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SMF\00", [28 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"03?\00", [28 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UTP\00", [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"05?\00", [28 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"06?\00", [28 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"07?\00", [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TAXI\00", [27 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"09?\00", [28 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"10?\00", [28 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"11?\00", [28 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"12?\00", [28 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"13?\00", [28 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"14?\00", [28 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"15?\00", [28 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"18?\00", [28 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"19?\00", [28 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"21?\00", [28 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"22?\00", [28 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"23?\00", [28 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24?\00", [28 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"25?\00", [28 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"26?\00", [28 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"27?\00", [28 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"28?\00", [28 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"29?\00", [28 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"30?\00", [28 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"31?\00", [28 x i8] zeroinitializer }, align 32
@eni_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.4, i32 1815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013eni(itf %d): IRQ%d is already in use\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eni_start\00", [22 x i8] zeroinitializer }, align 32
@eni_start._entry_ptr = internal global ptr @eni_start._entry, section ".printk_index", align 4
@eni_start._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.195, ptr @.str.4, i32 1824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013eni(itf %d): can't enable memory+master (0x%02x)\0A\00", [44 x i8] zeroinitializer }, align 32
@eni_start._entry_ptr.198 = internal global ptr @eni_start._entry.196, section ".printk_index", align 4
@eni_start._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.195, ptr @.str.4, i32 1830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013eni(itf %d): can't set endian swap (0x%02x)\0A\00", [49 x i8] zeroinitializer }, align 32
@eni_start._entry_ptr.201 = internal global ptr @eni_start._entry.199, section ".printk_index", align 4
@eni_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.202 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&eni_dev->lock\00", [17 x i8] zeroinitializer }, align 32
@eni_start._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.195, ptr @.str.4, i32 1853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013eni(itf %d): couldn't get free page\0A\00", [57 x i8] zeroinitializer }, align 32
@eni_start._entry_ptr.205 = internal global ptr @eni_start._entry.203, section ".printk_index", align 4
@.str.206 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stat overflow\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SUNI int\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"INT: RX DMA complete, starting dequeue_rx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dequeue_rx done, starting poll_rx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"poll_rx done\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"INT: service, starting get_service\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"get_service done, starting poll_rx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"INT: TX DMA COMPLETE\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INT: TX COMPLETE\0A\00", [46 x i8] zeroinitializer }, align 32
@tx_complete = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bug interrupt\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nothing to dequeue\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dequeued (size=%ld,pos=0x%lx)\0A\00", [33 x i8] zeroinitializer }, align 32
@rx_dequeued = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.218 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"requeuing\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pushing (len=%ld)\0A\00", [45 x i8] zeroinitializer }, align 32
@pushed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.220 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"poll_rx.fast\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"poll_rx.slow\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_vcc(1)\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rx_vcc(2: host dsc=0x%lx, nic dsc=0x%lx)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rx_vcc(3)\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rx_vcc(4: host dsc=0x%lx, nic dsc=0x%lx)\0A\00", [54 x i8] zeroinitializer }, align 32
@get_service._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.4, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\012eni(itf %d): VCI %ld not found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_service\00", [20 x i8] zeroinitializer }, align 32
@get_service._entry_ptr = internal global ptr @get_service._entry, section ".printk_index", align 4
@.str.228 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"getting from service\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"double service\0A\00", [16 x i8] zeroinitializer }, align 32
@putting = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dequeue_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.4, i32 1213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\012dev==0x%lx\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dequeue_tx\00", [21 x i8] zeroinitializer }, align 32
@dequeue_tx._entry_ptr = internal global ptr @dequeue_tx._entry, section ".printk_index", align 4
@dequeue_tx._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.231, ptr @.str.4, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dequeue_tx._entry_ptr.233 = internal global ptr @dequeue_tx._entry.232, section ".printk_index", align 4
@dequeue_tx._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.231, ptr @.str.4, i32 1218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dequeue_tx._entry_ptr.235 = internal global ptr @dequeue_tx._entry.234, section ".printk_index", align 4
@dequeue_tx._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.231, ptr @.str.4, i32 1220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012ENI_VCC(vcc)->tx==0x%lx\0A\00", [37 x i8] zeroinitializer }, align 32
@dequeue_tx._entry_ptr.238 = internal global ptr @dequeue_tx._entry.236, section ".printk_index", align 4
@dma_complete = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bug_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.4, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\012eni(itf %d): driver error - DMA error\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bug_int\00", [24 x i8] zeroinitializer }, align 32
@bug_int._entry_ptr = internal global ptr @bug_int._entry, section ".printk_index", align 4
@bug_int._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.240, ptr @.str.4, i32 1480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\012eni(itf %d): driver error - ident mismatch\0A\00", [50 x i8] zeroinitializer }, align 32
@bug_int._entry_ptr.243 = internal global ptr @bug_int._entry.241, section ".printk_index", align 4
@bug_int._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.240, ptr @.str.4, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\012eni(itf %d): driver error - DMA overflow\0A\00", [52 x i8] zeroinitializer }, align 32
@bug_int._entry_ptr.246 = internal global ptr @bug_int._entry.244, section ".printk_index", align 4
@bug_int._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.240, ptr @.str.4, i32 1485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bug_int._entry_ptr.248 = internal global ptr @bug_int._entry.247, section ".printk_index", align 4
@requeued = internal global { i32, [28 x i8] } zeroinitializer, align 32
@start_tx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.249 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&eni_dev->tx_wait\00", [46 x i8] zeroinitializer }, align 32
@start_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.250, ptr @.str.4, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"start_rx\00", [23 x i8] zeroinitializer }, align 32
@start_rx._entry_ptr = internal global ptr @start_rx._entry, section ".printk_index", align 4
@start_rx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.251 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&eni_dev->rx_wait\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.252 = internal global [5 x i64] [i64 3, i64 32, i64 1074553184, i64 1074553191, i64 1074553227]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.255 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.256 = private unnamed_addr constant [11 x i8] c"eni_driver\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2301, i32 26 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2314, i32 9 }
@___asan_gen_.262 = private unnamed_addr constant [12 x i8] c"eni_pci_tbl\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2279, i32 35 }
@___asan_gen_.265 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2203, i32 32 }
@___asan_gen_.268 = private unnamed_addr constant [11 x i8] c"eni_boards\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 151, i32 24 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1918, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 103, i32 20 }
@___asan_gen_.277 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 105, i32 12 }
@___asan_gen_.280 = private unnamed_addr constant [5 x i8] c"ev_a\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 104, i32 22 }
@___asan_gen_.283 = private unnamed_addr constant [5 x i8] c"ev_b\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 104, i32 31 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 208, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 214, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 550, i32 8 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 560, i32 10 }
@___asan_gen_.310 = private unnamed_addr constant [8 x i8] c"silence\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 566, i32 25 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 569, i32 5 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 575, i32 10 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 590, i32 10 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 592, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 320, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 322, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 324, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 327, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 329, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 330, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 123, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 124, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1984, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 493, i32 8 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 494, i32 45 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 359, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 380, i32 10 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 447, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 459, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [12 x i8] c"rx_enqueued\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 148, i32 18 }
@___asan_gen_.428 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 326, i32 6 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 290, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant [8 x i8] c"pre_div\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1253, i32 19 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 824, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 858, i32 9 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 868, i32 10 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 870, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 884, i32 10 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 886, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2001, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 179, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 181, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 184, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 186, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 189, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 192, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 166, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.533, i32 156, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2045, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant [10 x i8] c"submitted\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 148, i32 61 }
@___asan_gen_.547 = private unnamed_addr constant [11 x i8] c"backlogged\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 148, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1040, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1041, i32 8 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1043, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1045, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1048, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1102, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1108, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant [7 x i8] c"queued\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 147, i32 45 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 934, i32 8 }
@___asan_gen_.598 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2086, i32 21 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2086, i32 34 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2086, i32 41 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2086, i32 51 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2093, i32 23 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2097, i32 23 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2138, i32 12 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2140, i32 23 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2147, i32 25 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2152, i32 29 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2155, i32 23 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2171, i32 26 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2173, i32 36 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2178, i32 52 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2181, i32 35 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 2195, i32 23 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1720, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1724, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1727, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1728, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1738, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1739, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1765, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1768, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1769, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1778, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1779, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1780, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant [11 x i8] c"media_name\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1573, i32 21 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1677, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1574, i32 5 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1574, i32 12 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1574, i32 26 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1575, i32 5 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1575, i32 12 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1575, i32 19 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1575, i32 26 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1576, i32 5 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1576, i32 12 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1576, i32 19 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1576, i32 26 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1577, i32 5 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1577, i32 12 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1577, i32 19 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1577, i32 26 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1578, i32 19 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1578, i32 26 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1579, i32 12 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1579, i32 19 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1579, i32 26 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1580, i32 5 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1580, i32 12 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1580, i32 19 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1580, i32 26 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1581, i32 5 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1581, i32 12 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1581, i32 19 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1581, i32 26 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1814, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1823, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1829, i32 3 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1842, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1852, i32 3 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1508, i32 9 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1512, i32 9 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1538, i32 9 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1540, i32 9 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1542, i32 9 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1546, i32 9 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1548, i32 9 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1553, i32 9 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1557, i32 9 }
@___asan_gen_.880 = private unnamed_addr constant [12 x i8] c"tx_complete\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 147, i32 12 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1563, i32 9 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 737, i32 11 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 741, i32 9 }
@___asan_gen_.892 = private unnamed_addr constant [12 x i8] c"rx_dequeued\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 148, i32 34 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 751, i32 10 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 761, i32 10 }
@___asan_gen_.901 = private unnamed_addr constant [7 x i8] c"pushed\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 148, i32 50 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 658, i32 9 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 666, i32 9 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 620, i32 8 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 623, i32 9 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 637, i32 8 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 640, i32 9 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 689, i32 4 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 694, i32 9 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 696, i32 10 }
@___asan_gen_.937 = private unnamed_addr constant [8 x i8] c"putting\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 149, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1213, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1215, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1218, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1220, i32 3 }
@___asan_gen_.961 = private unnamed_addr constant [13 x i8] c"dma_complete\00", align 1
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 147, i32 28 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1476, i32 3 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1479, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1482, i32 3 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1485, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant [9 x i8] c"requeued\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 147, i32 56 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1442, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 906, i32 3 }
@___asan_gen_.1003 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1007 = private constant [21 x i8] c"../drivers/atm/eni.c\00", align 1
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 914, i32 2 }
@llvm.compiler.used = appending global [314 x ptr] [ptr @__UNIQUE_ID_file468, ptr @__UNIQUE_ID_license469, ptr @__initcall__kmod_eni__467_2318_eni_init6, ptr @bug_int._entry, ptr @bug_int._entry.241, ptr @bug_int._entry.244, ptr @bug_int._entry.247, ptr @bug_int._entry_ptr, ptr @bug_int._entry_ptr.243, ptr @bug_int._entry_ptr.246, ptr @bug_int._entry_ptr.248, ptr @close_rx._entry, ptr @close_rx._entry.61, ptr @close_rx._entry_ptr, ptr @close_rx._entry_ptr.63, ptr @dequeue_tx._entry, ptr @dequeue_tx._entry.232, ptr @dequeue_tx._entry.234, ptr @dequeue_tx._entry.236, ptr @dequeue_tx._entry_ptr, ptr @dequeue_tx._entry_ptr.233, ptr @dequeue_tx._entry_ptr.235, ptr @dequeue_tx._entry_ptr.238, ptr @do_rx_dma._entry, ptr @do_rx_dma._entry.43, ptr @do_rx_dma._entry.46, ptr @do_rx_dma._entry_ptr, ptr @do_rx_dma._entry_ptr.45, ptr @do_rx_dma._entry_ptr.48, ptr @do_tx._entry, ptr @do_tx._entry.100, ptr @do_tx._entry.103, ptr @do_tx._entry.106, ptr @do_tx._entry.109, ptr @do_tx._entry.97, ptr @do_tx._entry_ptr, ptr @do_tx._entry_ptr.102, ptr @do_tx._entry_ptr.105, ptr @do_tx._entry_ptr.108, ptr @do_tx._entry_ptr.111, ptr @do_tx._entry_ptr.99, ptr @dump._entry, ptr @dump._entry.72, ptr @dump._entry.75, ptr @dump._entry.78, ptr @dump._entry.81, ptr @dump._entry.84, ptr @dump._entry_ptr, ptr @dump._entry_ptr.74, ptr @dump._entry_ptr.77, ptr @dump._entry_ptr.80, ptr @dump._entry_ptr.83, ptr @dump._entry_ptr.86, ptr @dump_mem._entry, ptr @dump_mem._entry_ptr, ptr @eni_do_init._entry, ptr @eni_do_init._entry.130, ptr @eni_do_init._entry.133, ptr @eni_do_init._entry.136, ptr @eni_do_init._entry.139, ptr @eni_do_init._entry.141, ptr @eni_do_init._entry.144, ptr @eni_do_init._entry.147, ptr @eni_do_init._entry.150, ptr @eni_do_init._entry.153, ptr @eni_do_init._entry.157, ptr @eni_do_init._entry.159, ptr @eni_do_init._entry_ptr, ptr @eni_do_init._entry_ptr.132, ptr @eni_do_init._entry_ptr.135, ptr @eni_do_init._entry_ptr.138, ptr @eni_do_init._entry_ptr.140, ptr @eni_do_init._entry_ptr.143, ptr @eni_do_init._entry_ptr.146, ptr @eni_do_init._entry_ptr.149, ptr @eni_do_init._entry_ptr.152, ptr @eni_do_init._entry_ptr.155, ptr @eni_do_init._entry_ptr.158, ptr @eni_do_init._entry_ptr.161, ptr @eni_free_mem._entry, ptr @eni_free_mem._entry_ptr, ptr @eni_ioctl._entry, ptr @eni_ioctl._entry_ptr, ptr @eni_put_free._entry, ptr @eni_put_free._entry.5, ptr @eni_put_free._entry_ptr, ptr @eni_put_free._entry_ptr.7, ptr @eni_send._entry, ptr @eni_send._entry_ptr, ptr @eni_start._entry, ptr @eni_start._entry.196, ptr @eni_start._entry.199, ptr @eni_start._entry.203, ptr @eni_start._entry_ptr, ptr @eni_start._entry_ptr.198, ptr @eni_start._entry_ptr.201, ptr @eni_start._entry_ptr.205, ptr @event_dump._entry, ptr @event_dump._entry.34, ptr @event_dump._entry_ptr, ptr @event_dump._entry_ptr.35, ptr @get_esi_asic._entry, ptr @get_esi_asic._entry_ptr, ptr @get_service._entry, ptr @get_service._entry_ptr, ptr @open_rx_second._entry, ptr @open_rx_second._entry_ptr, ptr @rx_aal5._entry, ptr @rx_aal5._entry.14, ptr @rx_aal5._entry_ptr, ptr @rx_aal5._entry_ptr.16, ptr @rx_ident_err._entry, ptr @rx_ident_err._entry.19, ptr @rx_ident_err._entry.22, ptr @rx_ident_err._entry.25, ptr @rx_ident_err._entry.29, ptr @rx_ident_err._entry_ptr, ptr @rx_ident_err._entry_ptr.21, ptr @rx_ident_err._entry_ptr.24, ptr @rx_ident_err._entry_ptr.27, ptr @rx_ident_err._entry_ptr.31, ptr @start_rx._entry, ptr @start_rx._entry_ptr, ptr @eni_driver, ptr @.str, ptr @eni_pci_tbl, ptr @ops, ptr @eni_boards, ptr @.str.1, ptr @ev, ptr @ec, ptr @ev_a, ptr @ev_b, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @rx_aal5.silence, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @skb_queue_head_init.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @rx_enqueued, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @comp_tx.pre_div, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @submitted, ptr @backlogged, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @queued, ptr @.str.112, ptr @eni_proc_read.signal, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.156, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @media_name, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.197, ptr @.str.200, ptr @eni_start.__key, ptr @.str.202, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @tx_complete, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @rx_dequeued, ptr @.str.218, ptr @.str.219, ptr @pushed, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @putting, ptr @.str.230, ptr @.str.231, ptr @.str.237, ptr @dma_complete, ptr @.str.239, ptr @.str.240, ptr @.str.242, ptr @.str.245, ptr @requeued, ptr @start_tx.__key, ptr @.str.249, ptr @.str.250, ptr @start_rx.__key, ptr @.str.251], section "llvm.metadata"
@0 = internal global [251 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_boards to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ev to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ev_a to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ev_b to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_put_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_put_free._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_aal5.silence to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_aal5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_aal5._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_ident_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_ident_err._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_ident_err._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_ident_err._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_ident_err._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dump._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_dma._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_dma._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_enqueued to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_free_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_tx.pre_div to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_rx_second._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @close_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @close_rx._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submitted to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backlogged to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_tx._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_tx._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_tx._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_tx._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_tx._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queued to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_proc_read.signal to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_do_init._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_name to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_esi_asic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_start._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_start._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eni_start._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_complete to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_dequeued to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pushed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_service._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @putting to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_tx._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_tx._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dequeue_tx._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_complete to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bug_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bug_int._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bug_int._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bug_int._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @requeued to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_tx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_rx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eni_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @eni_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eni_init_one(ptr noundef %pci_dev, ptr nocapture noundef readonly %ent) #3 align 64 {
entry:
  %tonga.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %dma_set_mask_and_coherent.exit.thread, label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #13
  br label %if.end5

dma_set_mask_and_coherent.exit:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %dma_set_mask_and_coherent.exit.err_disable_crit_edge, label %dma_set_mask_and_coherent.exit.if.end5_crit_edge

dma_set_mask_and_coherent.exit.if.end5_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

dma_set_mask_and_coherent.exit.err_disable_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_disable

if.end5:                                          ; preds = %dma_set_mask_and_coherent.exit.if.end5_crit_edge, %dma_set_mask_and_coherent.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1912) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end5.err_disable_crit_edge, label %if.end8

if.end5.err_disable_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_disable

if.end8:                                          ; preds = %if.end5
  %zero9 = getelementptr inbounds %struct.eni_dev, ptr %call7.i, i32 0, i32 17
  %dma = getelementptr inbounds %struct.eni_dev, ptr %call7.i, i32 0, i32 17, i32 1
  %call.i63 = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 4, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #13
  %1 = ptrtoint ptr %zero9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i63, ptr %zero9, align 4
  %tobool13.not = icmp eq ptr %call.i63, null
  br i1 %tobool13.not, label %if.end8.err_kfree_crit_edge, label %if.end15

if.end8.err_kfree_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_kfree

if.end15:                                         ; preds = %if.end8
  %call17 = tail call ptr @atm_dev_register(ptr noundef nonnull @.str, ptr noundef %dev1, ptr noundef nonnull @ops, i32 noundef -1, ptr noundef null) #13
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.err_free_consistent_crit_edge, label %if.end20

if.end15.err_free_consistent_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_consistent

if.end20:                                         ; preds = %if.end15
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %call17, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %dev_data, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call17, ptr %driver_data.i.i, align 4
  %pci_dev21 = getelementptr inbounds %struct.eni_dev, ptr %call7.i, i32 0, i32 37
  %4 = ptrtoint ptr %pci_dev21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pci_dev, ptr %pci_dev21, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %asic = getelementptr inbounds %struct.eni_dev, ptr %call7.i, i32 0, i32 35
  %7 = ptrtoint ptr %asic to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %asic, align 4
  %ci_range.i = getelementptr inbounds %struct.atm_dev, ptr %call17, i32 0, i32 10
  %8 = ptrtoint ptr %ci_range.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ci_range.i, align 2
  %vci_bits.i = getelementptr inbounds %struct.atm_dev, ptr %call17, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %vci_bits.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 10, ptr %vci_bits.i, align 1
  %link_rate.i = getelementptr inbounds %struct.atm_dev, ptr %call17, i32 0, i32 13
  %10 = ptrtoint ptr %link_rate.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 353207, ptr %link_rate.i, align 4
  %11 = load ptr, ptr %dev_data, align 8
  %pci_dev2.i = getelementptr inbounds %struct.eni_dev, ptr %11, i32 0, i32 37
  %12 = ptrtoint ptr %pci_dev2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev2.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resource.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  %irq3.i = getelementptr inbounds %struct.eni_dev, ptr %11, i32 0, i32 36
  %18 = ptrtoint ptr %irq3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %irq3.i, align 4
  %asic.i = getelementptr inbounds %struct.eni_dev, ptr %11, i32 0, i32 35
  %19 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %asic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  %conv.i = select i1 %tobool.not.i, i16 2, i16 322
  %call.i64 = tail call i32 @pci_write_config_word(ptr noundef %13, i32 noundef 4, i16 noundef zeroext %conv.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool4.not.i = icmp eq i32 %call.i64, 0
  %number10.i = getelementptr inbounds %struct.atm_dev, ptr %call17, i32 0, i32 3
  %21 = ptrtoint ptr %number10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number10.i, align 4
  br i1 %tobool4.not.i, label %do.end8.i, label %do.end.i

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %22, i32 noundef %call.i64) #17
  br label %err_unregister

do.end8.i:                                        ; preds = %if.end20
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 12
  %23 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %revision.i, align 4
  %conv11.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq3.i, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %22, i32 noundef %conv11.i, i32 noundef %15, i32 noundef %26) #17
  %call14.i = tail call ptr @ioremap(i32 noundef %15, i32 noundef 4194304) #13
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %do.end19.i, label %if.end28.i

do.end19.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #17
  %27 = ptrtoint ptr %number10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %number10.i, align 4
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %28) #17
  br label %err_unregister

if.end28.i:                                       ; preds = %do.end8.i
  %ioaddr.i = getelementptr inbounds %struct.eni_dev, ptr %11, i32 0, i32 3
  %29 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call14.i, ptr %ioaddr.i, align 4
  %30 = ptrtoint ptr %call14.i to i32
  %sub.i = sub i32 %15, %30
  %base_diff.i = getelementptr inbounds %struct.eni_dev, ptr %11, i32 0, i32 29
  %31 = ptrtoint ptr %base_diff.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i, ptr %base_diff.i, align 4
  %32 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %asic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool30.not.i = icmp eq i32 %33, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end28.i.if.end56.i_crit_edge

if.end28.i.if.end56.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

if.then31.i:                                      ; preds = %if.end28.i
  %magic.i = getelementptr i8, ptr %call14.i, i32 65528
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %magic.i) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !515
  call void @__sanitizer_cov_trace_const_cmp4(i32 763841445, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 763841445
  br i1 %cmp.not.i, label %if.then31.i.if.end56.i_crit_edge, label %do.end40.i

if.then31.i.if.end56.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

do.end40.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #15
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #17
  %35 = ptrtoint ptr %number10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %number10.i, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %magic.i) #13, !srcloc !514
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !516
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %36, i32 noundef -1521776851, i32 noundef %38) #17
  br label %eni_do_init.exit.thread106

if.end56.i:                                       ; preds = %if.then31.i.if.end56.i_crit_edge, %if.end28.i.if.end56.i_crit_edge
  %add.ptr57.i = getelementptr i8, ptr %call14.i, i32 131072
  %phy.i = getelementptr inbounds %struct.eni_dev, ptr %11, i32 0, i32 4
  %39 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr57.i, ptr %phy.i, align 4
  %add.ptr58.i = getelementptr i8, ptr %call14.i, i32 262144
  %reg.i = getelementptr inbounds %struct.eni_dev, ptr %11, i32 0, i32 5
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr58.i, ptr %reg.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %call14.i, i32 2097152
  %ram.i = getelementptr inbounds %struct.eni_dev, ptr %11, i32 0, i32 6
  %41 = ptrtoint ptr %ram.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr59.i, ptr %ram.i, align 4
  br label %do.body63.i

for.cond102.preheader.i:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last.1.i)
  %cmp103317.i = icmp sgt i32 %last.1.i, 0
  br i1 %cmp103317.i, label %for.cond102.preheader.i.for.body105.i_crit_edge, label %for.cond102.preheader.i.for.end118.i_crit_edge

for.cond102.preheader.i.for.end118.i_crit_edge:   ; preds = %for.cond102.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end118.i

for.cond102.preheader.i.for.body105.i_crit_edge:  ; preds = %for.cond102.preheader.i
  br label %for.body105.i

do.body63.i:                                      ; preds = %for.inc.i.do.body63.i_crit_edge, %if.end56.i
  %i.0315.i = phi i32 [ 1966080, %if.end56.i ], [ %sub101.i, %for.inc.i.do.body63.i_crit_edge ]
  %last.0314.i = phi i32 [ 2097152, %if.end56.i ], [ %last.1.i, %for.inc.i.do.body63.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !517
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %ram.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ram.i, align 4
  %add.ptr67.i = getelementptr i8, ptr %43, i32 %i.0315.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 1431655765) #13, !srcloc !518
  %44 = ptrtoint ptr %ram.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ram.i, align 4
  %add.ptr71.i = getelementptr i8, ptr %45, i32 %i.0315.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71.i) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !519
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %46)
  %cmp75.not.i = icmp eq i32 %46, 1431655765
  br i1 %cmp75.not.i, label %do.body78.i, label %do.body63.i.for.inc.i_crit_edge

do.body63.i.for.inc.i_crit_edge:                  ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.body78.i:                                      ; preds = %do.body63.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !520
  tail call void @arm_heavy_mb() #13
  %47 = ptrtoint ptr %ram.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ram.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %48, i32 %i.0315.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 -1431655766) #13, !srcloc !518
  %49 = ptrtoint ptr %ram.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ram.i, align 4
  %add.ptr86.i = getelementptr i8, ptr %50, i32 %i.0315.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86.i) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !521
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431655766, i32 %51)
  %cmp90.not.i = icmp eq i32 %51, -1431655766
  br i1 %cmp90.not.i, label %do.body94.i, label %do.body78.i.for.inc.i_crit_edge

do.body78.i.for.inc.i_crit_edge:                  ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.body94.i:                                      ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !522
  tail call void @arm_heavy_mb() #13
  %52 = tail call i32 @llvm.bswap.i32(i32 %i.0315.i) #13
  %53 = ptrtoint ptr %ram.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ram.i, align 4
  %add.ptr98.i = getelementptr i8, ptr %54, i32 %i.0315.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 %52) #13, !srcloc !518
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body94.i, %do.body78.i.for.inc.i_crit_edge, %do.body63.i.for.inc.i_crit_edge
  %last.1.i = phi i32 [ %last.0314.i, %do.body94.i ], [ %i.0315.i, %do.body63.i.for.inc.i_crit_edge ], [ %i.0315.i, %do.body78.i.for.inc.i_crit_edge ]
  %sub101.i = add nsw i32 %i.0315.i, -131072
  %cmp61.not.i = icmp eq i32 %i.0315.i, 0
  br i1 %cmp61.not.i, label %for.cond102.preheader.i, label %for.inc.i.do.body63.i_crit_edge

for.inc.i.do.body63.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body63.i

for.body105.i:                                    ; preds = %for.inc117.i.for.body105.i_crit_edge, %for.cond102.preheader.i.for.body105.i_crit_edge
  %i.1318.i = phi i32 [ %add.i, %for.inc117.i.for.body105.i_crit_edge ], [ 0, %for.cond102.preheader.i.for.body105.i_crit_edge ]
  %55 = ptrtoint ptr %ram.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ram.i, align 4
  %add.ptr109.i = getelementptr i8, ptr %56, i32 %i.1318.i
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109.i) #13, !srcloc !514
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !523
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %i.1318.i)
  %cmp113.not.i = icmp eq i32 %58, %i.1318.i
  br i1 %cmp113.not.i, label %for.inc117.i, label %for.body105.i.for.end118.i_crit_edge

for.body105.i.for.end118.i_crit_edge:             ; preds = %for.body105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end118.i

for.inc117.i:                                     ; preds = %for.body105.i
  %add.i = add i32 %i.1318.i, 131072
  %cmp103.i = icmp slt i32 %add.i, %last.1.i
  br i1 %cmp103.i, label %for.inc117.i.for.body105.i_crit_edge, label %for.inc117.i.for.end118.i_crit_edge

for.inc117.i.for.end118.i_crit_edge:              ; preds = %for.inc117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end118.i

for.inc117.i.for.body105.i_crit_edge:             ; preds = %for.inc117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body105.i

for.end118.i:                                     ; preds = %for.inc117.i.for.end118.i_crit_edge, %for.body105.i.for.end118.i_crit_edge, %for.cond102.preheader.i.for.end118.i_crit_edge
  %i.1.lcssa.i = phi i32 [ 0, %for.cond102.preheader.i.for.end118.i_crit_edge ], [ %add.i, %for.inc117.i.for.end118.i_crit_edge ], [ %i.1318.i, %for.body105.i.for.end118.i_crit_edge ]
  %mem.i = getelementptr inbounds %struct.eni_dev, ptr %11, i32 0, i32 34
  %59 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %i.1.lcssa.i, ptr %mem.i, align 4
  %60 = ptrtoint ptr %ram.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ram.i, align 4
  tail call void @mmioset(ptr noundef %61, i32 noundef 0, i32 noundef %i.1.lcssa.i) #13
  %62 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mem.i, align 4
  %shr.i = ashr i32 %63, 10
  %call126.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef %shr.i) #17
  %64 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg.i, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !524
  %67 = lshr i32 %66, 17
  %.lobit.i = and i32 %67, 1
  %68 = xor i32 %.lobit.i, 1
  %69 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %asic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool136.not.i = icmp eq i32 %70, 0
  %lnot.ext138.i = zext i1 %tobool136.not.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %lnot.ext138.i)
  %cmp139.not.i = icmp eq i32 %68, %lnot.ext138.i
  br i1 %cmp139.not.i, label %if.end160.i, label %do.end144.i

do.end144.i:                                      ; preds = %for.end118.i
  call void @__sanitizer_cov_trace_pc() #15
  %call146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #17
  %71 = ptrtoint ptr %number10.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %number10.i, align 4
  %73 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg.i, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #13, !srcloc !514
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !525
  %call159.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %72, i32 noundef %76) #17
  br label %eni_do_init.exit.thread106

if.end160.i:                                      ; preds = %for.end118.i
  br i1 %tobool136.not.i, label %cond.end.thread.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end160.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tonga.i.i) #13
  %77 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_data, align 8
  %79 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 15, ptr %tonga.i.i, align 1
  %pci_dev.i.i = getelementptr inbounds %struct.eni_dev, ptr %78, i32 0, i32 37
  %80 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pci_dev.i.i, align 4
  %call.i.i = tail call i32 @pci_write_config_byte(ptr noundef %81, i32 noundef 96, i8 noundef zeroext 15) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 2147480) #13
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc284.i.i.land.rhs.i.i_crit_edge, %cond.true.i
  %i.0432.i.i = phi i32 [ 0, %cond.true.i ], [ %inc.i.i, %for.inc284.i.i.land.rhs.i.i_crit_edge ]
  %pci_error.1431.i.i = phi i32 [ %call.i.i, %cond.true.i ], [ %pci_error.28.i.i, %for.inc284.i.i.land.rhs.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.1431.i.i)
  %cond389.i.i = icmp eq i32 %pci_error.1431.i.i, 0
  br i1 %cond389.i.i, label %for.body.i.i, label %land.rhs.i.i.cond.end.thread325.i_crit_edge

land.rhs.i.i.cond.end.thread325.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.thread325.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %83 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %tonga.i.i, align 1
  %85 = or i8 %84, 2
  store i8 %85, ptr %tonga.i.i, align 1
  %86 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pci_dev.i.i, align 4
  %call11.i.i = call i32 @pci_write_config_byte(ptr noundef %87, i32 noundef 96, i8 noundef zeroext %85) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 2147480) #13
  %89 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tonga.i.i, align 1
  %91 = or i8 %90, 1
  store i8 %91, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool18.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end22.i.i, label %if.end22.thread.i.i

if.end22.thread.i.i:                              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %92 = and i8 %91, -3
  %93 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %tonga.i.i, align 1
  br label %if.end31.thread.i.i

if.end22.i.i:                                     ; preds = %for.body.i.i
  %94 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pci_dev.i.i, align 4
  %call21.i.i = call i32 @pci_write_config_byte(ptr noundef %95, i32 noundef 96, i8 noundef zeroext %91) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %96(i32 noundef 2147480) #13
  %97 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %tonga.i.i, align 1
  %99 = and i8 %98, -3
  store i8 %99, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool27.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end31.i.i, label %if.end22.i.i.if.end31.thread.i.i_crit_edge

if.end22.i.i.if.end31.thread.i.i_crit_edge:       ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.thread.i.i

if.end31.thread.i.i:                              ; preds = %if.end22.i.i.if.end31.thread.i.i_crit_edge, %if.end22.thread.i.i
  %pci_error.4.ph.i.i = phi i32 [ %call11.i.i, %if.end22.thread.i.i ], [ %call21.i.i, %if.end22.i.i.if.end31.thread.i.i_crit_edge ]
  %100 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %tonga.i.i, align 1
  %102 = and i8 %101, -2
  store i8 %102, ptr %tonga.i.i, align 1
  br label %if.end41.i.i

if.end31.i.i:                                     ; preds = %if.end22.i.i
  %103 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pci_dev.i.i, align 4
  %call30.i.i = call i32 @pci_write_config_byte(ptr noundef %104, i32 noundef 96, i8 noundef zeroext %99) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %105(i32 noundef 2147480) #13
  %106 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %tonga.i.i, align 1
  %108 = and i8 %107, -2
  store i8 %108, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool37.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool37.not.i.i, label %if.then38.i.i, label %if.end31.i.i.if.end41.i.i_crit_edge

if.end31.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

if.then38.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pci_dev.i.i, align 4
  %call40.i.i = call i32 @pci_write_config_byte(ptr noundef %110, i32 noundef 96, i8 noundef zeroext %108) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %111(i32 noundef 2147480) #13
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then38.i.i, %if.end31.i.i.if.end41.i.i_crit_edge, %if.end31.thread.i.i
  %pci_error.5.i.i = phi i32 [ %call30.i.i, %if.end31.i.i.if.end41.i.i_crit_edge ], [ %call40.i.i, %if.then38.i.i ], [ %pci_error.4.ph.i.i, %if.end31.thread.i.i ]
  %add.i.i = shl nuw nsw i32 %i.0432.i.i, 1
  %add42.i.i = add nuw nsw i32 %add.i.i, 129
  br label %for.body46.i.i

for.body46.i.i:                                   ; preds = %for.inc.i.i.for.body46.i.i_crit_edge, %if.end41.i.i
  %j.0428.i.i = phi i32 [ 7, %if.end41.i.i ], [ %dec.i.i, %for.inc.i.i.for.body46.i.i_crit_edge ]
  %pci_error.6427.i.i = phi i32 [ %pci_error.5.i.i, %if.end41.i.i ], [ %pci_error.9.i.i, %for.inc.i.i.for.body46.i.i_crit_edge ]
  %112 = shl nuw i32 1, %j.0428.i.i
  %113 = and i32 %112, %add42.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool48.not.i.i = icmp eq i32 %113, 0
  %114 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %tonga.i.i, align 1
  %116 = and i8 %115, -3
  %masksel.i.i = select i1 %tobool48.not.i.i, i8 0, i8 2
  %cond.i.i = or i8 %masksel.i.i, %116
  store i8 %cond.i.i, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.6427.i.i)
  %tobool56.not.i.i = icmp eq i32 %pci_error.6427.i.i, 0
  br i1 %tobool56.not.i.i, label %if.end60.i.i, label %if.end60.thread.i.i

if.end60.thread.i.i:                              ; preds = %for.body46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %117 = or i8 %cond.i.i, 1
  %118 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %tonga.i.i, align 1
  br label %if.end70.thread.i.i

if.end60.i.i:                                     ; preds = %for.body46.i.i
  %119 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pci_dev.i.i, align 4
  %call59.i.i = call i32 @pci_write_config_byte(ptr noundef %120, i32 noundef 96, i8 noundef zeroext %cond.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %121(i32 noundef 2147480) #13
  %122 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %tonga.i.i, align 1
  %124 = or i8 %123, 1
  store i8 %124, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool66.not.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool66.not.i.i, label %if.end70.i.i, label %if.end60.i.i.if.end70.thread.i.i_crit_edge

if.end60.i.i.if.end70.thread.i.i_crit_edge:       ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.thread.i.i

if.end70.thread.i.i:                              ; preds = %if.end60.i.i.if.end70.thread.i.i_crit_edge, %if.end60.thread.i.i
  %pci_error.8.ph.i.i = phi i32 [ %pci_error.6427.i.i, %if.end60.thread.i.i ], [ %call59.i.i, %if.end60.i.i.if.end70.thread.i.i_crit_edge ]
  %125 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %tonga.i.i, align 1
  %127 = and i8 %126, -2
  store i8 %127, ptr %tonga.i.i, align 1
  br label %for.inc.i.i

if.end70.i.i:                                     ; preds = %if.end60.i.i
  %128 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pci_dev.i.i, align 4
  %call69.i.i = call i32 @pci_write_config_byte(ptr noundef %129, i32 noundef 96, i8 noundef zeroext %124) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %130(i32 noundef 2147480) #13
  %131 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %tonga.i.i, align 1
  %133 = and i8 %132, -2
  store i8 %133, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i.i)
  %tobool76.not.i.i = icmp eq i32 %call69.i.i, 0
  br i1 %tobool76.not.i.i, label %if.then77.i.i, label %if.end70.i.i.for.inc.i.i_crit_edge

if.end70.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then77.i.i:                                    ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %134 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pci_dev.i.i, align 4
  %call79.i.i = call i32 @pci_write_config_byte(ptr noundef %135, i32 noundef 96, i8 noundef zeroext %133) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %136(i32 noundef 2147480) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then77.i.i, %if.end70.i.i.for.inc.i.i_crit_edge, %if.end70.thread.i.i
  %pci_error.9.i.i = phi i32 [ %call69.i.i, %if.end70.i.i.for.inc.i.i_crit_edge ], [ %call79.i.i, %if.then77.i.i ], [ %pci_error.8.ph.i.i, %if.end70.thread.i.i ]
  %dec.i.i = add nsw i32 %j.0428.i.i, -1
  %cmp44.not.i.i = icmp eq i32 %j.0428.i.i, 0
  br i1 %cmp44.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body46.i.i_crit_edge

for.inc.i.i.for.body46.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body46.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %137 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %tonga.i.i, align 1
  %139 = or i8 %138, 2
  store i8 %139, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.9.i.i)
  %tobool86.not.i.i = icmp eq i32 %pci_error.9.i.i, 0
  br i1 %tobool86.not.i.i, label %if.end90.i.i, label %if.end90.thread.i.i

if.end90.thread.i.i:                              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %140 = or i8 %138, 3
  %141 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %tonga.i.i, align 1
  br label %if.end107.thread.i.i

if.end90.i.i:                                     ; preds = %for.end.i.i
  %142 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pci_dev.i.i, align 4
  %call89.i.i = call i32 @pci_write_config_byte(ptr noundef %143, i32 noundef 96, i8 noundef zeroext %139) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %144(i32 noundef 2147480) #13
  %145 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %tonga.i.i, align 1
  %147 = or i8 %146, 1
  store i8 %147, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i.i)
  %tobool96.not.i.i = icmp eq i32 %call89.i.i, 0
  br i1 %tobool96.not.i.i, label %land.lhs.true102.i.i, label %if.end90.i.i.if.end107.thread.i.i_crit_edge

if.end90.i.i.if.end107.thread.i.i_crit_edge:      ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107.thread.i.i

land.lhs.true102.i.i:                             ; preds = %if.end90.i.i
  %148 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pci_dev.i.i, align 4
  %call99.i.i = call i32 @pci_write_config_byte(ptr noundef %149, i32 noundef 96, i8 noundef zeroext %147) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %150(i32 noundef 2147480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i.i)
  %tobool103.not.i.i = icmp eq i32 %call99.i.i, 0
  br i1 %tobool103.not.i.i, label %if.end107.i.i, label %land.lhs.true102.i.i.if.end107.thread.i.i_crit_edge

land.lhs.true102.i.i.if.end107.thread.i.i_crit_edge: ; preds = %land.lhs.true102.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107.thread.i.i

if.end107.thread.i.i:                             ; preds = %land.lhs.true102.i.i.if.end107.thread.i.i_crit_edge, %if.end90.i.i.if.end107.thread.i.i_crit_edge, %if.end90.thread.i.i
  %pci_error.12.ph.i.i = phi i32 [ %call99.i.i, %land.lhs.true102.i.i.if.end107.thread.i.i_crit_edge ], [ %pci_error.9.i.i, %if.end90.thread.i.i ], [ %call89.i.i, %if.end90.i.i.if.end107.thread.i.i_crit_edge ]
  %151 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %tonga.i.i, align 1
  %153 = and i8 %152, 2
  %and111403.i.i = and i8 %152, -2
  store i8 %and111403.i.i, ptr %tonga.i.i, align 1
  br label %if.end119.thread.i.i

if.end107.i.i:                                    ; preds = %land.lhs.true102.i.i
  %154 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pci_dev.i.i, align 4
  %call106.i.i = call i32 @pci_read_config_byte(ptr noundef %155, i32 noundef 96, ptr noundef nonnull %tonga.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %156(i32 noundef 2147480) #13
  %157 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %tonga.i.i, align 1
  %159 = and i8 %158, 2
  %and111.i.i = and i8 %158, -2
  store i8 %and111.i.i, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i.i)
  %tobool115.not.i.i = icmp eq i32 %call106.i.i, 0
  br i1 %tobool115.not.i.i, label %if.end119.i.i, label %if.end107.i.i.if.end119.thread.i.i_crit_edge

if.end107.i.i.if.end119.thread.i.i_crit_edge:     ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119.thread.i.i

if.end119.thread.i.i:                             ; preds = %if.end107.i.i.if.end119.thread.i.i_crit_edge, %if.end107.thread.i.i
  %.ph.i.i = phi i8 [ %153, %if.end107.thread.i.i ], [ %159, %if.end107.i.i.if.end119.thread.i.i_crit_edge ]
  %pci_error.13.ph.i.i = phi i32 [ %pci_error.12.ph.i.i, %if.end107.thread.i.i ], [ %call106.i.i, %if.end107.i.i.if.end119.thread.i.i_crit_edge ]
  %160 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %tonga.i.i, align 1
  %162 = or i8 %161, 2
  store i8 %162, ptr %tonga.i.i, align 1
  br label %if.end129.i.i

if.end119.i.i:                                    ; preds = %if.end107.i.i
  %163 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pci_dev.i.i, align 4
  %call118.i.i = call i32 @pci_write_config_byte(ptr noundef %164, i32 noundef 96, i8 noundef zeroext %and111.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %165(i32 noundef 2147480) #13
  %166 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %tonga.i.i, align 1
  %168 = or i8 %167, 2
  store i8 %168, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i.i)
  %tobool125.not.i.i = icmp eq i32 %call118.i.i, 0
  br i1 %tobool125.not.i.i, label %if.then126.i.i, label %if.end119.i.i.if.end129.i.i_crit_edge

if.end119.i.i.if.end129.i.i_crit_edge:            ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129.i.i

if.then126.i.i:                                   ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %169 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pci_dev.i.i, align 4
  %call128.i.i = call i32 @pci_write_config_byte(ptr noundef %170, i32 noundef 96, i8 noundef zeroext %168) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %171 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %171(i32 noundef 2147480) #13
  br label %if.end129.i.i

if.end129.i.i:                                    ; preds = %if.then126.i.i, %if.end119.i.i.if.end129.i.i_crit_edge, %if.end119.thread.i.i
  %172 = phi i8 [ %159, %if.end119.i.i.if.end129.i.i_crit_edge ], [ %159, %if.then126.i.i ], [ %.ph.i.i, %if.end119.thread.i.i ]
  %pci_error.14.i.i = phi i32 [ %call118.i.i, %if.end119.i.i.if.end129.i.i_crit_edge ], [ %call128.i.i, %if.then126.i.i ], [ %pci_error.13.ph.i.i, %if.end119.thread.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool130.not.i.i = icmp eq i8 %172, 0
  br i1 %tobool130.not.i.i, label %if.else.i.i, label %if.end129.i.i.if.end253.thread.i.i_crit_edge

if.end129.i.i.if.end253.thread.i.i_crit_edge:     ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end253.thread.i.i

if.else.i.i:                                      ; preds = %if.end129.i.i
  %arrayidx.i.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 %i.0432.i.i
  %173 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %arrayidx.i.i, align 1
  br label %for.body135.i.i

for.body135.i.i:                                  ; preds = %for.inc198.i.i.for.body135.i.i_crit_edge, %if.else.i.i
  %j.1430.i.i = phi i32 [ 7, %if.else.i.i ], [ %dec199.i.i, %for.inc198.i.i.for.body135.i.i_crit_edge ]
  %pci_error.15429.i.i = phi i32 [ %pci_error.14.i.i, %if.else.i.i ], [ %pci_error.20.i.i, %for.inc198.i.i.for.body135.i.i_crit_edge ]
  %174 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.i.i, align 1
  %shl139.i.i = shl i8 %175, 1
  store i8 %shl139.i.i, ptr %arrayidx.i.i, align 1
  %176 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %tonga.i.i, align 1
  %178 = or i8 %177, 2
  store i8 %178, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.15429.i.i)
  %tobool146.not.i.i = icmp eq i32 %pci_error.15429.i.i, 0
  br i1 %tobool146.not.i.i, label %if.end150.i.i, label %if.end150.thread.i.i

if.end150.thread.i.i:                             ; preds = %for.body135.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %179 = or i8 %177, 3
  %180 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %tonga.i.i, align 1
  br label %if.end167.i.i

if.end150.i.i:                                    ; preds = %for.body135.i.i
  %181 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pci_dev.i.i, align 4
  %call149.i.i = call i32 @pci_write_config_byte(ptr noundef %182, i32 noundef 96, i8 noundef zeroext %178) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %183 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %183(i32 noundef 2147480) #13
  %184 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %tonga.i.i, align 1
  %186 = or i8 %185, 1
  store i8 %186, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool156.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool156.not.i.i, label %land.lhs.true162.i.i, label %if.end150.i.i.if.end167.i.i_crit_edge

if.end150.i.i.if.end167.i.i_crit_edge:            ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end167.i.i

land.lhs.true162.i.i:                             ; preds = %if.end150.i.i
  %187 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pci_dev.i.i, align 4
  %call159.i.i = call i32 @pci_write_config_byte(ptr noundef %188, i32 noundef 96, i8 noundef zeroext %186) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %189 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %189(i32 noundef 2147480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159.i.i)
  %tobool163.not.i.i = icmp eq i32 %call159.i.i, 0
  br i1 %tobool163.not.i.i, label %if.then164.i.i, label %land.lhs.true162.i.i.if.end167.i.i_crit_edge

land.lhs.true162.i.i.if.end167.i.i_crit_edge:     ; preds = %land.lhs.true162.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end167.i.i

if.then164.i.i:                                   ; preds = %land.lhs.true162.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %190 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pci_dev.i.i, align 4
  %call166.i.i = call i32 @pci_read_config_byte(ptr noundef %191, i32 noundef 96, ptr noundef nonnull %tonga.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %192(i32 noundef 2147480) #13
  br label %if.end167.i.i

if.end167.i.i:                                    ; preds = %if.then164.i.i, %land.lhs.true162.i.i.if.end167.i.i_crit_edge, %if.end150.i.i.if.end167.i.i_crit_edge, %if.end150.thread.i.i
  %pci_error.18.i.i = phi i32 [ %call159.i.i, %land.lhs.true162.i.i.if.end167.i.i_crit_edge ], [ %call166.i.i, %if.then164.i.i ], [ %pci_error.15429.i.i, %if.end150.thread.i.i ], [ %call149.i.i, %if.end150.i.i.if.end167.i.i_crit_edge ]
  %193 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %tonga.i.i, align 1
  %195 = and i8 %194, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool170.not.i.i = icmp eq i8 %195, 0
  br i1 %tobool170.not.i.i, label %if.end167.i.i.if.end177.i.i_crit_edge, label %if.then171.i.i

if.end167.i.i.if.end177.i.i_crit_edge:            ; preds = %if.end167.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177.i.i

if.then171.i.i:                                   ; preds = %if.end167.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %196 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx.i.i, align 1
  %198 = or i8 %197, 1
  store i8 %198, ptr %arrayidx.i.i, align 1
  br label %if.end177.i.i

if.end177.i.i:                                    ; preds = %if.then171.i.i, %if.end167.i.i.if.end177.i.i_crit_edge
  %199 = and i8 %194, -2
  %200 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.18.i.i)
  %tobool183.not.i.i = icmp eq i32 %pci_error.18.i.i, 0
  br i1 %tobool183.not.i.i, label %if.end187.i.i, label %if.end187.thread.i.i

if.end187.thread.i.i:                             ; preds = %if.end177.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %201 = or i8 %199, 2
  %202 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %tonga.i.i, align 1
  br label %for.inc198.i.i

if.end187.i.i:                                    ; preds = %if.end177.i.i
  %203 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pci_dev.i.i, align 4
  %call186.i.i = call i32 @pci_write_config_byte(ptr noundef %204, i32 noundef 96, i8 noundef zeroext %199) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %205 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %205(i32 noundef 2147480) #13
  %206 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %tonga.i.i, align 1
  %208 = or i8 %207, 2
  store i8 %208, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.i.i)
  %tobool193.not.i.i = icmp eq i32 %call186.i.i, 0
  br i1 %tobool193.not.i.i, label %if.then194.i.i, label %if.end187.i.i.for.inc198.i.i_crit_edge

if.end187.i.i.for.inc198.i.i_crit_edge:           ; preds = %if.end187.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc198.i.i

if.then194.i.i:                                   ; preds = %if.end187.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %209 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pci_dev.i.i, align 4
  %call196.i.i = call i32 @pci_write_config_byte(ptr noundef %210, i32 noundef 96, i8 noundef zeroext %208) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %211(i32 noundef 2147480) #13
  br label %for.inc198.i.i

for.inc198.i.i:                                   ; preds = %if.then194.i.i, %if.end187.i.i.for.inc198.i.i_crit_edge, %if.end187.thread.i.i
  %pci_error.20.i.i = phi i32 [ %call186.i.i, %if.end187.i.i.for.inc198.i.i_crit_edge ], [ %call196.i.i, %if.then194.i.i ], [ %pci_error.18.i.i, %if.end187.thread.i.i ]
  %dec199.i.i = add nsw i32 %j.1430.i.i, -1
  %cmp133.not.i.i = icmp eq i32 %j.1430.i.i, 0
  br i1 %cmp133.not.i.i, label %for.end200.i.i, label %for.inc198.i.i.for.body135.i.i_crit_edge

for.inc198.i.i.for.body135.i.i_crit_edge:         ; preds = %for.inc198.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body135.i.i

for.end200.i.i:                                   ; preds = %for.inc198.i.i
  %212 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %tonga.i.i, align 1
  %214 = or i8 %213, 2
  store i8 %214, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.20.i.i)
  %tobool206.not.i.i = icmp eq i32 %pci_error.20.i.i, 0
  br i1 %tobool206.not.i.i, label %if.end210.i.i, label %if.end210.thread.i.i

if.end210.thread.i.i:                             ; preds = %for.end200.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %215 = or i8 %213, 3
  %216 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %tonga.i.i, align 1
  br label %if.end227.i.i

if.end210.i.i:                                    ; preds = %for.end200.i.i
  %217 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pci_dev.i.i, align 4
  %call209.i.i = call i32 @pci_write_config_byte(ptr noundef %218, i32 noundef 96, i8 noundef zeroext %214) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %219 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %219(i32 noundef 2147480) #13
  %220 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %tonga.i.i, align 1
  %222 = or i8 %221, 1
  store i8 %222, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209.i.i)
  %tobool216.not.i.i = icmp eq i32 %call209.i.i, 0
  br i1 %tobool216.not.i.i, label %land.lhs.true222.i.i, label %if.end210.i.i.if.end227.i.i_crit_edge

if.end210.i.i.if.end227.i.i_crit_edge:            ; preds = %if.end210.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end227.i.i

land.lhs.true222.i.i:                             ; preds = %if.end210.i.i
  %223 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %pci_dev.i.i, align 4
  %call219.i.i = call i32 @pci_write_config_byte(ptr noundef %224, i32 noundef 96, i8 noundef zeroext %222) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %225 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %225(i32 noundef 2147480) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219.i.i)
  %tobool223.not.i.i = icmp eq i32 %call219.i.i, 0
  br i1 %tobool223.not.i.i, label %if.then224.i.i, label %land.lhs.true222.i.i.if.end227.i.i_crit_edge

land.lhs.true222.i.i.if.end227.i.i_crit_edge:     ; preds = %land.lhs.true222.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end227.i.i

if.then224.i.i:                                   ; preds = %land.lhs.true222.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %226 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pci_dev.i.i, align 4
  %call226.i.i = call i32 @pci_read_config_byte(ptr noundef %227, i32 noundef 96, ptr noundef nonnull %tonga.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %228 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %228(i32 noundef 2147480) #13
  br label %if.end227.i.i

if.end227.i.i:                                    ; preds = %if.then224.i.i, %land.lhs.true222.i.i.if.end227.i.i_crit_edge, %if.end210.i.i.if.end227.i.i_crit_edge, %if.end210.thread.i.i
  %pci_error.23.i.i = phi i32 [ %call219.i.i, %land.lhs.true222.i.i.if.end227.i.i_crit_edge ], [ %call226.i.i, %if.then224.i.i ], [ %pci_error.20.i.i, %if.end210.thread.i.i ], [ %call209.i.i, %if.end210.i.i.if.end227.i.i_crit_edge ]
  %229 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %tonga.i.i, align 1
  %231 = and i8 %230, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool230.not.i.i = icmp eq i8 %231, 0
  %232 = and i8 %230, -2
  %233 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %tonga.i.i, align 1
  %tobool230.not.not.i.i = xor i1 %tobool230.not.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.23.i.i)
  %tobool238.not.i.i = icmp eq i32 %pci_error.23.i.i, 0
  %or.cond385.i.i = select i1 %tobool230.not.not.i.i, i1 %tobool238.not.i.i, i1 false
  br i1 %or.cond385.i.i, label %if.then239.i.i, label %if.end227.i.i.if.end242.i.i_crit_edge

if.end227.i.i.if.end242.i.i_crit_edge:            ; preds = %if.end227.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242.i.i

if.then239.i.i:                                   ; preds = %if.end227.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %234 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pci_dev.i.i, align 4
  %call241.i.i = call i32 @pci_write_config_byte(ptr noundef %235, i32 noundef 96, i8 noundef zeroext %232) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %236 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %236(i32 noundef 2147480) #13
  br label %if.end242.i.i

if.end242.i.i:                                    ; preds = %if.then239.i.i, %if.end227.i.i.if.end242.i.i_crit_edge
  %pci_error.24.i.i = phi i32 [ %pci_error.23.i.i, %if.end227.i.i.if.end242.i.i_crit_edge ], [ %call241.i.i, %if.then239.i.i ]
  %237 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %tonga.i.i, align 1
  %239 = or i8 %238, 2
  store i8 %239, ptr %tonga.i.i, align 1
  br i1 %tobool230.not.i.i, label %for.end285.i.i.thread, label %land.lhs.true247.i.i

land.lhs.true247.i.i:                             ; preds = %if.end242.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.24.i.i)
  %tobool248.not.i.i = icmp eq i32 %pci_error.24.i.i, 0
  br i1 %tobool248.not.i.i, label %if.end253.i.i, label %land.lhs.true247.i.i.if.end253.thread.i.i_crit_edge

land.lhs.true247.i.i.if.end253.thread.i.i_crit_edge: ; preds = %land.lhs.true247.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end253.thread.i.i

if.end253.thread.i.i:                             ; preds = %land.lhs.true247.i.i.if.end253.thread.i.i_crit_edge, %if.end129.i.i.if.end253.thread.i.i_crit_edge
  %error.2.ph.i.i = phi i32 [ -5, %if.end129.i.i.if.end253.thread.i.i_crit_edge ], [ 0, %land.lhs.true247.i.i.if.end253.thread.i.i_crit_edge ]
  %pci_error.25.ph.i.i = phi i32 [ %pci_error.14.i.i, %if.end129.i.i.if.end253.thread.i.i_crit_edge ], [ %pci_error.24.i.i, %land.lhs.true247.i.i.if.end253.thread.i.i_crit_edge ]
  %240 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %tonga.i.i, align 1
  %242 = and i8 %241, -3
  store i8 %242, ptr %tonga.i.i, align 1
  br label %if.end263.i.i

if.end253.i.i:                                    ; preds = %land.lhs.true247.i.i
  %243 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %pci_dev.i.i, align 4
  %call251.i.i = call i32 @pci_write_config_byte(ptr noundef %244, i32 noundef 96, i8 noundef zeroext %239) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %245(i32 noundef 2147480) #13
  %246 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %tonga.i.i, align 1
  %248 = and i8 %247, -3
  store i8 %248, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251.i.i)
  %tobool259.not.i.i = icmp eq i32 %call251.i.i, 0
  br i1 %tobool259.not.i.i, label %if.then260.i.i, label %if.end273.i.thread.i

if.end273.i.thread.i:                             ; preds = %if.end253.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %249 = or i8 %247, 3
  %250 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %249, ptr %tonga.i.i, align 1
  br label %for.inc284.i.i

if.then260.i.i:                                   ; preds = %if.end253.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %251 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %pci_dev.i.i, align 4
  %call262.i.i = call i32 @pci_write_config_byte(ptr noundef %252, i32 noundef 96, i8 noundef zeroext %248) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %253(i32 noundef 2147480) #13
  br label %if.end263.i.i

if.end263.i.i:                                    ; preds = %if.then260.i.i, %if.end253.thread.i.i
  %tobool257.not423.i.i = phi i1 [ true, %if.then260.i.i ], [ %tobool130.not.i.i, %if.end253.thread.i.i ]
  %error.2422.i.i = phi i32 [ 0, %if.then260.i.i ], [ %error.2.ph.i.i, %if.end253.thread.i.i ]
  %pci_error.26.i.i = phi i32 [ %call262.i.i, %if.then260.i.i ], [ %pci_error.25.ph.i.i, %if.end253.thread.i.i ]
  %254 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %tonga.i.i, align 1
  %256 = or i8 %255, 1
  store i8 %256, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.26.i.i)
  %tobool269.not.i.i = icmp eq i32 %pci_error.26.i.i, 0
  %or.cond387.i.i = select i1 %tobool257.not423.i.i, i1 %tobool269.not.i.i, i1 false
  br i1 %or.cond387.i.i, label %if.then270.i.i, label %if.end263.i.i.if.end273.i.i_crit_edge

if.end263.i.i.if.end273.i.i_crit_edge:            ; preds = %if.end263.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273.i.i

if.then270.i.i:                                   ; preds = %if.end263.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %257 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %pci_dev.i.i, align 4
  %call272.i.i = call i32 @pci_write_config_byte(ptr noundef %258, i32 noundef 96, i8 noundef zeroext %256) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %259 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %259(i32 noundef 2147480) #13
  br label %if.end273.i.i

if.end273.i.i:                                    ; preds = %if.then270.i.i, %if.end263.i.i.if.end273.i.i_crit_edge
  %pci_error.27.i.i = phi i32 [ %pci_error.26.i.i, %if.end263.i.i.if.end273.i.i_crit_edge ], [ %call272.i.i, %if.then270.i.i ]
  %260 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %tonga.i.i, align 1
  %262 = or i8 %261, 2
  store i8 %262, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.27.i.i)
  %tobool279.not.i.i = icmp eq i32 %pci_error.27.i.i, 0
  %or.cond388.i.i = select i1 %tobool257.not423.i.i, i1 %tobool279.not.i.i, i1 false
  br i1 %or.cond388.i.i, label %if.then280.i.i, label %if.end273.i.i.for.inc284.i.i_crit_edge

if.end273.i.i.for.inc284.i.i_crit_edge:           ; preds = %if.end273.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc284.i.i

if.then280.i.i:                                   ; preds = %if.end273.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %263 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %pci_dev.i.i, align 4
  %call282.i.i = call i32 @pci_write_config_byte(ptr noundef %264, i32 noundef 96, i8 noundef zeroext %262) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %265(i32 noundef 2147480) #13
  br label %for.inc284.i.i

for.inc284.i.i:                                   ; preds = %if.then280.i.i, %if.end273.i.i.for.inc284.i.i_crit_edge, %if.end273.i.thread.i
  %error.2422.i305311.i = phi i32 [ %error.2422.i.i, %if.end273.i.i.for.inc284.i.i_crit_edge ], [ %error.2422.i.i, %if.then280.i.i ], [ 0, %if.end273.i.thread.i ]
  %pci_error.28.i.i = phi i32 [ %pci_error.27.i.i, %if.end273.i.i.for.inc284.i.i_crit_edge ], [ %call282.i.i, %if.then280.i.i ], [ %call251.i.i, %if.end273.i.thread.i ]
  %inc.i.i = add nuw nsw i32 %i.0432.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0432.i.i)
  %cmp.i.i = icmp ult i32 %i.0432.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2422.i305311.i)
  %tobool3.not.i.i = icmp eq i32 %error.2422.i305311.i, 0
  %or.cond.i.i = and i1 %cmp.i.i, %tobool3.not.i.i
  br i1 %or.cond.i.i, label %for.inc284.i.i.land.rhs.i.i_crit_edge, label %for.end285.i.i

for.inc284.i.i.land.rhs.i.i_crit_edge:            ; preds = %for.inc284.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

for.end285.i.i:                                   ; preds = %for.inc284.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.28.i.i)
  %tobool286.not.i.i = icmp eq i32 %pci_error.28.i.i, 0
  br i1 %tobool286.not.i.i, label %cond.end.i, label %for.end285.i.i.cond.end.thread325.i_crit_edge

for.end285.i.i.cond.end.thread325.i_crit_edge:    ; preds = %for.end285.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.thread325.i

for.end285.i.i.thread:                            ; preds = %if.end242.i.i
  %266 = or i8 %238, 3
  %267 = ptrtoint ptr %tonga.i.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %266, ptr %tonga.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pci_error.24.i.i)
  %tobool286.not.i.i96 = icmp eq i32 %pci_error.24.i.i, 0
  br i1 %tobool286.not.i.i96, label %cond.end.i.thread, label %for.end285.i.i.thread.cond.end.thread325.i_crit_edge

for.end285.i.i.thread.cond.end.thread325.i_crit_edge: ; preds = %for.end285.i.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.thread325.i

cond.end.i.thread:                                ; preds = %for.end285.i.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tonga.i.i) #13
  br label %eni_do_init.exit.thread106

cond.end.thread325.i:                             ; preds = %for.end285.i.i.thread.cond.end.thread325.i_crit_edge, %for.end285.i.i.cond.end.thread325.i_crit_edge, %land.rhs.i.i.cond.end.thread325.i_crit_edge
  %pci_error.1425.i.i = phi i32 [ %pci_error.28.i.i, %for.end285.i.i.cond.end.thread325.i_crit_edge ], [ %pci_error.24.i.i, %for.end285.i.i.thread.cond.end.thread325.i_crit_edge ], [ %pci_error.1431.i.i, %land.rhs.i.i.cond.end.thread325.i_crit_edge ]
  %268 = ptrtoint ptr %number10.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %number10.i, align 4
  %call288.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %269, i32 noundef %pci_error.1425.i.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tonga.i.i) #13
  br label %eni_do_init.exit.thread106

cond.end.thread.i:                                ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr1.i.i = getelementptr i8, ptr %call14.i, i32 65472
  %add.ptr2.i.i = getelementptr i8, ptr %call14.i, i32 65475
  %270 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i.i) #13, !srcloc !526
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !527
  %arrayidx.i298.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 0
  %271 = ptrtoint ptr %arrayidx.i298.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %270, ptr %arrayidx.i298.i, align 1
  %add.ptr2.1.i.i = getelementptr i8, ptr %call14.i, i32 65474
  %272 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.1.i.i) #13, !srcloc !526
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !527
  %arrayidx.1.i.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 1
  %273 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %272, ptr %arrayidx.1.i.i, align 1
  %add.ptr2.2.i.i = getelementptr i8, ptr %call14.i, i32 65473
  %274 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.2.i.i) #13, !srcloc !526
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !527
  %arrayidx.2.i.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 2
  %275 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %274, ptr %arrayidx.2.i.i, align 1
  %276 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i.i) #13, !srcloc !526
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !527
  %arrayidx.3.i.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 3
  %277 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %arrayidx.3.i.i, align 1
  %add.ptr2.4.i.i = getelementptr i8, ptr %call14.i, i32 65479
  %278 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.4.i.i) #13, !srcloc !526
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !527
  %arrayidx.4.i.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 4
  %279 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %278, ptr %arrayidx.4.i.i, align 1
  %add.ptr2.5.i.i = getelementptr i8, ptr %call14.i, i32 65478
  %280 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.5.i.i) #13, !srcloc !526
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !527
  %arrayidx.5.i.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 5
  %281 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %280, ptr %arrayidx.5.i.i, align 1
  br label %do.end175.preheader.i

cond.end.i:                                       ; preds = %for.end285.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tonga.i.i) #13
  br i1 %tobool3.not.i.i, label %cond.end.i.do.end175.preheader.i_crit_edge, label %cond.end.i.eni_do_init.exit.thread106_crit_edge

cond.end.i.eni_do_init.exit.thread106_crit_edge:  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %eni_do_init.exit.thread106

cond.end.i.do.end175.preheader.i_crit_edge:       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end175.preheader.i

do.end175.preheader.i:                            ; preds = %cond.end.i.do.end175.preheader.i_crit_edge, %cond.end.thread.i
  %arrayidx179.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 0
  %282 = ptrtoint ptr %arrayidx179.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx179.i, align 1
  %conv180.i = zext i8 %283 to i32
  %call181.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.118, i32 noundef %conv180.i) #17
  %arrayidx179.1.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 1
  %284 = ptrtoint ptr %arrayidx179.1.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx179.1.i, align 1
  %conv180.1.i = zext i8 %285 to i32
  %call181.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.156, i32 noundef %conv180.1.i) #17
  %arrayidx179.2.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 2
  %286 = ptrtoint ptr %arrayidx179.2.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx179.2.i, align 1
  %conv180.2.i = zext i8 %287 to i32
  %call181.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.156, i32 noundef %conv180.2.i) #17
  %arrayidx179.3.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 3
  %288 = ptrtoint ptr %arrayidx179.3.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx179.3.i, align 1
  %conv180.3.i = zext i8 %289 to i32
  %call181.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.156, i32 noundef %conv180.3.i) #17
  %arrayidx179.4.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 4
  %290 = ptrtoint ptr %arrayidx179.4.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx179.4.i, align 1
  %conv180.4.i = zext i8 %291 to i32
  %call181.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.156, i32 noundef %conv180.4.i) #17
  %arrayidx179.5.i = getelementptr %struct.atm_dev, ptr %call17, i32 0, i32 9, i32 5
  %292 = ptrtoint ptr %arrayidx179.5.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx179.5.i, align 1
  %conv180.5.i = zext i8 %293 to i32
  %call181.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.156, i32 noundef %conv180.5.i) #17
  %call188.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #17
  %294 = ptrtoint ptr %number10.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %number10.i, align 4
  %296 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %reg.i, align 4
  %298 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %297) #13, !srcloc !514
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !528
  %299 = and i32 %298, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool202.not.i = icmp eq i32 %299, 0
  %cond203.i = select i1 %tobool202.not.i, ptr @.str.163, ptr @.str.162
  %300 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %reg.i, align 4
  %302 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %301) #13, !srcloc !514
  %303 = lshr i32 %302, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !529
  %and211.i = and i32 %303, 31
  %arrayidx212.i = getelementptr [32 x ptr], ptr @media_name, i32 0, i32 %and211.i
  %304 = ptrtoint ptr %arrayidx212.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx212.i, align 4
  %call213.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %295, ptr noundef nonnull %cond203.i, ptr noundef %305) #17
  %call214.i = call i32 @suni_init(ptr noundef %call17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214.i)
  %tobool215.not.i = icmp eq i32 %call214.i, 0
  br i1 %tobool215.not.i, label %do.end175.preheader.i.if.end25_crit_edge, label %eni_do_init.exit

do.end175.preheader.i.if.end25_crit_edge:         ; preds = %do.end175.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

eni_do_init.exit.thread106:                       ; preds = %cond.end.i.eni_do_init.exit.thread106_crit_edge, %cond.end.thread325.i, %cond.end.i.thread, %do.end144.i, %do.end40.i
  %error.1.i.ph = phi i32 [ -5, %cond.end.i.thread ], [ -5, %cond.end.thread325.i ], [ -22, %do.end40.i ], [ %error.2422.i305311.i, %cond.end.i.eni_do_init.exit.thread106_crit_edge ], [ -22, %do.end144.i ]
  call void @iounmap(ptr noundef nonnull %call14.i) #13
  br label %err_unregister

eni_do_init.exit:                                 ; preds = %do.end175.preheader.i
  call void @iounmap(ptr noundef nonnull %call14.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214.i)
  %cmp23 = icmp slt i32 %call214.i, 0
  br i1 %cmp23, label %eni_do_init.exit.err_unregister_crit_edge, label %eni_do_init.exit.if.end25_crit_edge

eni_do_init.exit.if.end25_crit_edge:              ; preds = %eni_do_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

eni_do_init.exit.err_unregister_crit_edge:        ; preds = %eni_do_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_unregister

if.end25:                                         ; preds = %eni_do_init.exit.if.end25_crit_edge, %do.end175.preheader.i.if.end25_crit_edge
  %306 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev_data, align 8
  %irq.i66 = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 36
  %308 = ptrtoint ptr %irq.i66 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %irq.i66, align 4
  %call.i.i67 = call i32 @request_threaded_irq(i32 noundef %309, ptr noundef nonnull @eni_int, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %tobool.not.i68 = icmp eq i32 %call.i.i67, 0
  br i1 %tobool.not.i68, label %if.end.i, label %eni_start.exit.thread

eni_start.exit.thread:                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %310 = ptrtoint ptr %number10.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %number10.i, align 4
  %312 = ptrtoint ptr %irq.i66 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %irq.i66, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, i32 noundef %311, i32 noundef %313) #17
  br label %err_eni_release

if.end.i:                                         ; preds = %if.end25
  %pci_dev.i = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 37
  %314 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %pci_dev.i, align 4
  call void @pci_set_master(ptr noundef %315) #13
  %316 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %pci_dev.i, align 4
  %asic.i70 = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 35
  %318 = ptrtoint ptr %asic.i70 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %asic.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %tobool4.not.i71 = icmp eq i32 %319, 0
  %conv.i72 = select i1 %tobool4.not.i71, i16 6, i16 326
  %call5.i73 = call i32 @pci_write_config_word(ptr noundef %317, i32 noundef 4, i16 noundef zeroext %conv.i72) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i73)
  %tobool6.not.i = icmp eq i32 %call5.i73, 0
  br i1 %tobool6.not.i, label %if.end14.i, label %do.end10.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %320 = ptrtoint ptr %number10.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %number10.i, align 4
  %call13.i74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %321, i32 noundef %call5.i73) #17
  br label %eni_start.exit

if.end14.i:                                       ; preds = %if.end.i
  %322 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %pci_dev.i, align 4
  %call16.i = call i32 @pci_write_config_byte(ptr noundef %323, i32 noundef 96, i8 noundef zeroext -128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end25.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %324 = ptrtoint ptr %number10.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %number10.i, align 4
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, i32 noundef %325, i32 noundef %call16.i) #17
  br label %eni_start.exit

if.end25.i:                                       ; preds = %if.end14.i
  %ram.i75 = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 6
  %326 = ptrtoint ptr %ram.i75 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %ram.i75, align 4
  %vci.i = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 7
  %328 = ptrtoint ptr %vci.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %327, ptr %vci.i, align 4
  %add.ptr.i = getelementptr i8, ptr %327, i32 16384
  %rx_dma.i = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 8
  %329 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %add.ptr.i, ptr %rx_dma.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %327, i32 20480
  %tx_dma.i = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 9
  %330 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %add.ptr28.i, ptr %tx_dma.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %327, i32 24576
  %service.i = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 10
  %331 = ptrtoint ptr %service.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %add.ptr30.i, ptr %service.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %327, i32 28672
  call void @__raw_spin_lock_init(ptr noundef %307, ptr noundef nonnull @.str.202, ptr noundef nonnull @eni_start.__key, i16 noundef signext 3) #13
  %task.i = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 1
  %332 = ptrtoint ptr %call17 to i32
  call void @tasklet_init(ptr noundef %task.i, ptr noundef nonnull @eni_tasklet, i32 noundef %332) #13
  %events.i = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 2
  %333 = ptrtoint ptr %events.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 0, ptr %events.i, align 4
  %mem.i76 = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 34
  %334 = ptrtoint ptr %mem.i76 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %mem.i76, align 4
  %336 = ptrtoint ptr %ram.i75 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ram.i75, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr32.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %337 to i32
  %sub.ptr.sub.neg.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %sub.i77 = add i32 %sub.ptr.sub.neg.i, %335
  %div38148.i = lshr i32 %sub.i77, 11
  %free_list_size.i = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 32
  %338 = ptrtoint ptr %free_list_size.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %div38148.i, ptr %free_list_size.i, align 4
  %add.i78 = shl nuw nsw i32 %div38148.i, 3
  %339 = add nuw nsw i32 %add.i78, 8
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %339, i32 noundef 3264) #18
  %free_list.i = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 31
  %340 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %call8.i.i, ptr %free_list.i, align 4
  %tobool42.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool42.not.i, label %eni_start.exit.thread116, label %if.end50.i

eni_start.exit.thread116:                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %341 = ptrtoint ptr %number10.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %number10.i, align 4
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %342) #17
  %343 = ptrtoint ptr %irq.i66 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %irq.i66, align 4
  %call93.i118 = call ptr @free_irq(i32 noundef %344, ptr noundef %call17) #13
  br label %err_eni_release

if.end50.i:                                       ; preds = %if.end25.i
  %free_len.i = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 30
  %345 = ptrtoint ptr %free_len.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 0, ptr %free_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i77)
  %tobool.not48.i.i = icmp eq i32 %sub.i77, 0
  br i1 %tobool.not48.i.i, label %if.end50.i.eni_put_free.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end50.i.eni_put_free.exit.i_crit_edge:         ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %eni_put_free.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end50.i
  %base_diff.i.i = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 29
  %346 = ptrtoint ptr %base_diff.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %base_diff.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr32.i, i32 %347
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end10.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %start.addr.051.i.i = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i.i ], [ %add.ptr16.i.i, %if.end10.i.i.while.body.i.i_crit_edge ]
  %size.addr.050.i.i = phi i32 [ %sub.i77, %while.body.lr.ph.i.i ], [ %sub.i.i, %if.end10.i.i.while.body.i.i_crit_edge ]
  %len.049.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc14.i.i, %if.end10.i.i.while.body.i.i_crit_edge ]
  %348 = ptrtoint ptr %free_list_size.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %free_list_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.049.i.i, i32 %349)
  %cmp.not.i.i = icmp slt i32 %len.049.i.i, %349
  br i1 %cmp.not.i.i, label %for.cond.preheader.i.i, label %do.end.i.i

for.cond.preheader.i.i:                           ; preds = %while.body.i.i
  %350 = ptrtoint ptr %start.addr.051.i.i to i32
  %or.i.i = or i32 %size.addr.050.i.i, %350
  br label %for.cond.i.i

do.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i149.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %start.addr.051.i.i, i32 noundef %size.addr.050.i.i) #17
  br label %eni_put_free.exit.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %for.cond.preheader.i.i
  %order.0.i.i = phi i32 [ %inc.i.i79, %for.cond.i.i.for.cond.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i ]
  %shl.i.i = shl nuw i32 1, %order.0.i.i
  %and.i.i = and i32 %shl.i.i, %or.i.i
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  %inc.i.i79 = add i32 %order.0.i.i, 1
  br i1 %tobool1.not.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge, label %for.end.i.i80

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

for.end.i.i80:                                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %shl.i.i)
  %cmp3.i.i = icmp slt i32 %shl.i.i, 1024
  br i1 %cmp3.i.i, label %do.end7.i.i, label %if.end10.i.i

do.end7.i.i:                                      ; preds = %for.end.i.i80
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %order.0.i.i) #17
  br label %eni_put_free.exit.i

if.end10.i.i:                                     ; preds = %for.end.i.i80
  %arrayidx.i.i81 = getelementptr %struct.eni_free, ptr %call8.i.i, i32 %len.049.i.i
  %351 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %start.addr.051.i.i, ptr %arrayidx.i.i81, align 8
  %order13.i.i = getelementptr %struct.eni_free, ptr %call8.i.i, i32 %len.049.i.i, i32 1
  %352 = ptrtoint ptr %order13.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %order.0.i.i, ptr %order13.i.i, align 4
  %inc14.i.i = add nuw i32 %len.049.i.i, 1
  %add.ptr16.i.i = getelementptr i8, ptr %start.addr.051.i.i, i32 %shl.i.i
  %sub.i.i = sub i32 %size.addr.050.i.i, %shl.i.i
  %tobool.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i.i, label %if.end10.i.i.eni_put_free.exit.i_crit_edge, label %if.end10.i.i.while.body.i.i_crit_edge

if.end10.i.i.while.body.i.i_crit_edge:            ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end10.i.i.eni_put_free.exit.i_crit_edge:       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %eni_put_free.exit.i

eni_put_free.exit.i:                              ; preds = %if.end10.i.i.eni_put_free.exit.i_crit_edge, %do.end7.i.i, %do.end.i.i, %if.end50.i.eni_put_free.exit.i_crit_edge
  %len.047.i.i = phi i32 [ %len.049.i.i, %do.end7.i.i ], [ %len.049.i.i, %do.end.i.i ], [ 0, %if.end50.i.eni_put_free.exit.i_crit_edge ], [ %inc14.i.i, %if.end10.i.i.eni_put_free.exit.i_crit_edge ]
  %353 = ptrtoint ptr %free_len.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %len.047.i.i, ptr %free_len.i, align 4
  %354 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %vci.i, align 4
  call void @mmioset(ptr noundef %355, i32 noundef 0, i32 noundef 16384) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !530
  call void @arm_heavy_mb() #13
  %reg.i82 = getelementptr inbounds %struct.eni_dev, ptr %307, i32 0, i32 5
  %356 = ptrtoint ptr %reg.i82 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %reg.i82, align 4
  %add.ptr55.i = getelementptr i8, ptr %357, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 -1) #13, !srcloc !518
  %358 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %dev_data, align 8
  %lost.i.i = getelementptr inbounds %struct.eni_dev, ptr %359, i32 0, i32 28
  %360 = ptrtoint ptr %lost.i.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 0, ptr %lost.i.i, align 4
  %tx_bw.i.i = getelementptr inbounds %struct.eni_dev, ptr %359, i32 0, i32 15
  %361 = ptrtoint ptr %tx_bw.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 353207, ptr %tx_bw.i.i, align 4
  %tx_mult.i.i = getelementptr inbounds %struct.eni_dev, ptr %359, i32 0, i32 18
  %362 = ptrtoint ptr %tx_mult.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 300, ptr %tx_mult.i.i, align 4
  %tx_wait.i.i = getelementptr inbounds %struct.eni_dev, ptr %359, i32 0, i32 14
  call void @__init_waitqueue_head(ptr noundef %tx_wait.i.i, ptr noundef nonnull @.str.249, ptr noundef nonnull @start_tx.__key) #13
  %ubr.i.i = getelementptr inbounds %struct.eni_dev, ptr %359, i32 0, i32 12
  %363 = ptrtoint ptr %ubr.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr null, ptr %ubr.i.i, align 4
  %tx_queue.i.i = getelementptr inbounds %struct.eni_dev, ptr %359, i32 0, i32 13
  %lock.i.i.i = getelementptr inbounds %struct.eni_dev, ptr %359, i32 0, i32 13, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %364 = ptrtoint ptr %tx_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %tx_queue.i.i, ptr %tx_queue.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.eni_dev, ptr %359, i32 0, i32 13, i32 0, i32 0, i32 1
  %365 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %tx_queue.i.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.eni_dev, ptr %359, i32 0, i32 13, i32 1
  %366 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !531
  call void @arm_heavy_mb() #13
  %reg.i.i = getelementptr inbounds %struct.eni_dev, ptr %359, i32 0, i32 5
  %367 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i150.i = getelementptr i8, ptr %368, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i, i32 0) #13, !srcloc !518
  %arrayidx.i151.i = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 0
  %369 = ptrtoint ptr %arrayidx.i151.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr null, ptr %arrayidx.i151.i, align 4
  %index.i.i = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 0, i32 5
  %370 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 0, ptr %index.i.i, align 4
  %arrayidx.1.i.i83 = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 1
  %371 = ptrtoint ptr %arrayidx.1.i.i83 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr null, ptr %arrayidx.1.i.i83, align 4
  %index.1.i.i = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 1, i32 5
  %372 = ptrtoint ptr %index.1.i.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 1, ptr %index.1.i.i, align 4
  %arrayidx.2.i.i84 = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 2
  %373 = ptrtoint ptr %arrayidx.2.i.i84 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr null, ptr %arrayidx.2.i.i84, align 4
  %index.2.i.i = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 2, i32 5
  %374 = ptrtoint ptr %index.2.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 2, ptr %index.2.i.i, align 4
  %arrayidx.3.i.i85 = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 3
  %375 = ptrtoint ptr %arrayidx.3.i.i85 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr null, ptr %arrayidx.3.i.i85, align 4
  %index.3.i.i = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 3, i32 5
  %376 = ptrtoint ptr %index.3.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 3, ptr %index.3.i.i, align 4
  %arrayidx.4.i.i86 = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 4
  %377 = ptrtoint ptr %arrayidx.4.i.i86 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr null, ptr %arrayidx.4.i.i86, align 4
  %index.4.i.i = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 4, i32 5
  %378 = ptrtoint ptr %index.4.i.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 4, ptr %index.4.i.i, align 4
  %arrayidx.5.i.i87 = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 5
  %379 = ptrtoint ptr %arrayidx.5.i.i87 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr null, ptr %arrayidx.5.i.i87, align 4
  %index.5.i.i = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 5, i32 5
  %380 = ptrtoint ptr %index.5.i.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 5, ptr %index.5.i.i, align 4
  %arrayidx.6.i.i = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 6
  %381 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr null, ptr %arrayidx.6.i.i, align 4
  %index.6.i.i = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 6, i32 5
  %382 = ptrtoint ptr %index.6.i.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 6, ptr %index.6.i.i, align 4
  %arrayidx.7.i.i = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 7
  %383 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr null, ptr %arrayidx.7.i.i, align 4
  %index.7.i.i = getelementptr %struct.eni_dev, ptr %359, i32 0, i32 11, i32 7, i32 5
  %384 = ptrtoint ptr %index.7.i.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 7, ptr %index.7.i.i, align 4
  %385 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dev_data, align 8
  %call.i153.i = call i32 @get_zeroed_page(i32 noundef 3264) #13
  %387 = inttoptr i32 %call.i153.i to ptr
  %rx_map.i.i = getelementptr inbounds %struct.eni_dev, ptr %386, i32 0, i32 24
  %388 = ptrtoint ptr %rx_map.i.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %387, ptr %rx_map.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153.i)
  %tobool.not.i154.i = icmp eq i32 %call.i153.i, 0
  br i1 %tobool.not.i154.i, label %start_rx.exit.i, label %if.end63.i

start_rx.exit.i:                                  ; preds = %eni_put_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %389 = ptrtoint ptr %number10.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %number10.i, align 4
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %390) #17
  %free_list.i155.i = getelementptr inbounds %struct.eni_dev, ptr %386, i32 0, i32 31
  %391 = ptrtoint ptr %free_list.i155.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %free_list.i155.i, align 4
  %393 = ptrtoint ptr %392 to i32
  call void @free_pages(i32 noundef %393, i32 noundef 0) #13
  br label %free_list90.i

if.end63.i:                                       ; preds = %eni_put_free.exit.i
  %rx_mult.i.i = getelementptr inbounds %struct.eni_dev, ptr %386, i32 0, i32 27
  %394 = ptrtoint ptr %rx_mult.i.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 300, ptr %rx_mult.i.i, align 4
  %fast.i.i = getelementptr inbounds %struct.eni_dev, ptr %386, i32 0, i32 20
  %rx_wait.i.i = getelementptr inbounds %struct.eni_dev, ptr %386, i32 0, i32 26
  %395 = call ptr @memset(ptr %fast.i.i, i32 0, i32 16)
  call void @__init_waitqueue_head(ptr noundef %rx_wait.i.i, ptr noundef nonnull @.str.251, ptr noundef nonnull @start_rx.__key) #13
  %rx_queue.i.i = getelementptr inbounds %struct.eni_dev, ptr %386, i32 0, i32 25
  %lock.i.i157.i = getelementptr inbounds %struct.eni_dev, ptr %386, i32 0, i32 25, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i157.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %396 = ptrtoint ptr %rx_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr %rx_queue.i.i, ptr %rx_queue.i.i, align 4
  %prev.i.i.i158.i = getelementptr inbounds %struct.eni_dev, ptr %386, i32 0, i32 25, i32 0, i32 0, i32 1
  %397 = ptrtoint ptr %prev.i.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %rx_queue.i.i, ptr %prev.i.i.i158.i, align 4
  %qlen.i.i.i159.i = getelementptr inbounds %struct.eni_dev, ptr %386, i32 0, i32 25, i32 1
  %398 = ptrtoint ptr %qlen.i.i.i159.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 0, ptr %qlen.i.i.i159.i, align 4
  %reg.i160.i = getelementptr inbounds %struct.eni_dev, ptr %386, i32 0, i32 5
  %399 = ptrtoint ptr %reg.i160.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %reg.i160.i, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %400, i32 24
  %401 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161.i) #13, !srcloc !514
  %402 = call i32 @llvm.bswap.i32(i32 %401) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !532
  %serv_read.i.i = getelementptr inbounds %struct.eni_dev, ptr %386, i32 0, i32 19
  %403 = ptrtoint ptr %serv_read.i.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %402, ptr %serv_read.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !533
  call void @arm_heavy_mb() #13
  %404 = ptrtoint ptr %reg.i160.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %reg.i160.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %405, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 0) #13, !srcloc !518
  %phy.i88 = getelementptr inbounds %struct.atm_dev, ptr %call17, i32 0, i32 1
  %406 = ptrtoint ptr %phy.i88 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %phy.i88, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %407, align 4
  %call64.i = call i32 %409(ptr noundef %call17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %eni_start.exit.thread112, label %if.end63.i.free_list90.i_crit_edge

if.end63.i.free_list90.i_crit_edge:               ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_list90.i

eni_start.exit.thread112:                         ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !534
  call void @arm_heavy_mb() #13
  %410 = ptrtoint ptr %reg.i82 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %reg.i82, align 4
  %add.ptr72.i = getelementptr i8, ptr %411, i32 16
  %412 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72.i) #13, !srcloc !514
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !535
  %413 = or i32 %412, 2080374784
  %414 = ptrtoint ptr %reg.i82 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %reg.i82, align 4
  %add.ptr82.i89 = getelementptr i8, ptr %415, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i89, i32 %413) #13, !srcloc !518
  %416 = ptrtoint ptr %reg.i82 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %reg.i82, align 4
  %add.ptr86.i90 = getelementptr i8, ptr %417, i32 4
  %418 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86.i90) #13, !srcloc !514
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !536
  br label %if.end29

free_list90.i:                                    ; preds = %if.end63.i.free_list90.i_crit_edge, %start_rx.exit.i
  %error.0.i = phi i32 [ -12, %start_rx.exit.i ], [ %call64.i, %if.end63.i.free_list90.i_crit_edge ]
  %419 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %free_list.i, align 4
  call void @kfree(ptr noundef %420) #13
  br label %eni_start.exit

eni_start.exit:                                   ; preds = %free_list90.i, %do.end21.i, %do.end10.i
  %error.1.i91 = phi i32 [ %call5.i73, %do.end10.i ], [ %call16.i, %do.end21.i ], [ %error.0.i, %free_list90.i ]
  %421 = ptrtoint ptr %irq.i66 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %irq.i66, align 4
  %call93.i = call ptr @free_irq(i32 noundef %422, ptr noundef %call17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.i91)
  %cmp27 = icmp slt i32 %error.1.i91, 0
  br i1 %cmp27, label %eni_start.exit.err_eni_release_crit_edge, label %eni_start.exit.if.end29_crit_edge

eni_start.exit.if.end29_crit_edge:                ; preds = %eni_start.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

eni_start.exit.err_eni_release_crit_edge:         ; preds = %eni_start.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_eni_release

if.end29:                                         ; preds = %eni_start.exit.if.end29_crit_edge, %eni_start.exit.thread112
  %retval.0.i92115 = phi i32 [ 0, %eni_start.exit.thread112 ], [ %error.1.i91, %eni_start.exit.if.end29_crit_edge ]
  %423 = load ptr, ptr @eni_boards, align 4
  %more = getelementptr inbounds %struct.eni_dev, ptr %call7.i, i32 0, i32 33
  %424 = ptrtoint ptr %more to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %423, ptr %more, align 4
  store ptr %call17, ptr @eni_boards, align 4
  br label %out

out:                                              ; preds = %err_disable, %if.end29, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %rc.4, %err_disable ], [ %retval.0.i92115, %if.end29 ]
  ret i32 %rc.0

err_eni_release:                                  ; preds = %eni_start.exit.err_eni_release_crit_edge, %eni_start.exit.thread116, %eni_start.exit.thread
  %retval.0.i92111 = phi i32 [ -11, %eni_start.exit.thread ], [ %error.1.i91, %eni_start.exit.err_eni_release_crit_edge ], [ -12, %eni_start.exit.thread116 ]
  %phy = getelementptr inbounds %struct.atm_dev, ptr %call17, i32 0, i32 1
  %425 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr null, ptr %phy, align 4
  %426 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %dev_data, align 8
  %ioaddr = getelementptr inbounds %struct.eni_dev, ptr %427, i32 0, i32 3
  %428 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %ioaddr, align 4
  call void @iounmap(ptr noundef %429) #13
  br label %err_unregister

err_unregister:                                   ; preds = %err_eni_release, %eni_do_init.exit.err_unregister_crit_edge, %eni_do_init.exit.thread106, %do.end19.i, %do.end.i
  %rc.1 = phi i32 [ %call214.i, %eni_do_init.exit.err_unregister_crit_edge ], [ %retval.0.i92111, %err_eni_release ], [ %error.1.i.ph, %eni_do_init.exit.thread106 ], [ -12, %do.end19.i ], [ -5, %do.end.i ]
  call void @atm_dev_deregister(ptr noundef nonnull %call17) #13
  br label %err_free_consistent

err_free_consistent:                              ; preds = %err_unregister, %if.end15.err_free_consistent_crit_edge
  %rc.2 = phi i32 [ %rc.1, %err_unregister ], [ -12, %if.end15.err_free_consistent_crit_edge ]
  %430 = ptrtoint ptr %zero9 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %zero9, align 4
  %432 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %dma, align 8
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 4, ptr noundef %431, i32 noundef %433, i32 noundef 0) #13
  br label %err_kfree

err_kfree:                                        ; preds = %err_free_consistent, %if.end8.err_kfree_crit_edge
  %rc.3 = phi i32 [ %rc.2, %err_free_consistent ], [ -12, %if.end8.err_kfree_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %err_disable

err_disable:                                      ; preds = %err_kfree, %if.end5.err_disable_crit_edge, %dma_set_mask_and_coherent.exit.err_disable_crit_edge
  %rc.4 = phi i32 [ %call.i, %dma_set_mask_and_coherent.exit.err_disable_crit_edge ], [ %rc.3, %err_kfree ], [ -12, %if.end5.err_disable_crit_edge ]
  call void @pci_disable_device(ptr noundef %pci_dev) #13
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eni_remove_one(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %zero1 = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 17
  %phy.i = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy.i, align 4
  %stop.i = getelementptr inbounds %struct.atmphy_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stop.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1) #13
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %phy.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 4
  tail call void @iounmap(ptr noundef %10) #13
  tail call void @atm_dev_deregister(ptr noundef %1) #13
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %11 = ptrtoint ptr %zero1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %zero1, align 4
  %dma = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 4, ptr noundef %12, i32 noundef %14, i32 noundef 0) #13
  tail call void @kfree(ptr noundef %3) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eni_open(ptr noundef %vcc) #3 align 64 {
entry:
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vpi1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %0 = ptrtoint ptr %vpi1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vpi1, align 4
  %vci2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %2 = ptrtoint ptr %vci2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vci2, align 8
  %4 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.1, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %4
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %4
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx2.i, align 4
  %add.i = add i32 %4, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr @ec, align 4
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %11 = ptrtoint ptr %dev_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dev_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %3)
  %cmp.not = icmp eq i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %1)
  %cmp3.not = icmp eq i16 %1, -2
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp3.not
  br i1 %or.cond, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %aal, align 8
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end7.cleanup_crit_edge [
    i8 13, label %if.end7.if.end18_crit_edge
    i8 5, label %if.end7.if.end18_crit_edge113
  ]

if.end7.if.end18_crit_edge113:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %if.end7.if.end18_crit_edge, %if.end7.if.end18_crit_edge113
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.then22, label %if.end18.if.end36_crit_edge

if.end18.if.end36_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then22:                                        ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 56) #16
  %tobool24.not = icmp eq ptr %call7.i, null
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %if.end26

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.then22
  %dev_data27 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %19 = ptrtoint ptr %dev_data27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %dev_data27, align 8
  %tx = getelementptr inbounds %struct.eni_vcc, ptr %call7.i, i32 0, i32 5
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #13
  %dev.i = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %dev_data.i = getelementptr inbounds %struct.atm_dev, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %dev_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_data.i, align 8
  %25 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %call7.i, align 8
  %rxtp.i = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %rxtp.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rxtp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.i = icmp eq i8 %27, 0
  br i1 %cmp.i, label %if.end26.if.end31_crit_edge, label %if.end.i

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.end.i:                                         ; preds = %if.end26
  %max_sdu.i = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 1, i32 5
  %28 = ptrtoint ptr %max_sdu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_sdu.i, align 4
  %rx_mult.i = getelementptr inbounds %struct.eni_dev, ptr %24, i32 0, i32 27
  %30 = ptrtoint ptr %rx_mult.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_mult.i, align 4
  %mul.i = mul i32 %31, %29
  %div.i = sdiv i32 %mul.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %div.i)
  %cmp5.i = icmp ugt i32 %div.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %29)
  %cmp10.i = icmp slt i32 %29, 131073
  %or.cond.i = select i1 %cmp5.i, i1 %cmp10.i, i1 false
  %spec.store.select.i = select i1 %or.cond.i, i32 131072, i32 %div.i
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.store.select.i, ptr %size.i, align 4
  %call.i = call fastcc ptr @eni_alloc_mem(ptr noundef %24, ptr noundef nonnull %size.i) #13
  %recv.i = getelementptr inbounds %struct.eni_vcc, ptr %call7.i, i32 0, i32 1
  %33 = ptrtoint ptr %recv.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %recv.i, align 4
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i, align 4
  %shr.i83 = lshr i32 %35, 2
  %words.i = getelementptr inbounds %struct.eni_vcc, ptr %call7.i, i32 0, i32 2
  %36 = ptrtoint ptr %words.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr.i83, ptr %words.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then30, label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %38)
  %cmp19.i = icmp eq i8 %38, 5
  %cond.i = select i1 %cmp19.i, ptr @rx_aal5, ptr @rx_aal0
  %39 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cond.i, ptr %call7.i, align 8
  %descr.i = getelementptr inbounds %struct.eni_vcc, ptr %call7.i, i32 0, i32 3
  %40 = ptrtoint ptr %descr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %descr.i, align 4
  %rx_pos.i = getelementptr inbounds %struct.eni_vcc, ptr %call7.i, i32 0, i32 4
  %41 = ptrtoint ptr %rx_pos.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %rx_pos.i, align 8
  %rxing.i = getelementptr inbounds %struct.eni_vcc, ptr %call7.i, i32 0, i32 6
  %42 = ptrtoint ptr %rxing.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rxing.i, align 8
  %servicing.i = getelementptr inbounds %struct.eni_vcc, ptr %call7.i, i32 0, i32 7
  %43 = ptrtoint ptr %servicing.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %servicing.i, align 4
  %next.i = getelementptr inbounds %struct.eni_vcc, ptr %call7.i, i32 0, i32 10
  %44 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 1 to ptr), ptr %next.i, align 8
  br label %if.end31

if.then30:                                        ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #13
  %45 = ptrtoint ptr %dev_data27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_data27, align 8
  %tobool.not.i85 = icmp eq ptr %46, null
  br i1 %tobool.not.i85, label %if.then30.cleanup_crit_edge, label %if.end.i86

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i86:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #13
  tail call fastcc void @close_rx(ptr noundef %vcc) #13
  tail call fastcc void @close_tx(ptr noundef %vcc) #13
  %47 = ptrtoint ptr %dev_data27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_data27, align 8
  tail call void @kfree(ptr noundef %48) #13
  %49 = ptrtoint ptr %dev_data27 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %dev_data27, align 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end16.i, %if.end26.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #13
  %50 = ptrtoint ptr %dev_data27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_data27, align 8
  %tx.i = getelementptr inbounds %struct.eni_vcc, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %tx.i, align 4
  %qos.i = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %53 = ptrtoint ptr %qos.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %qos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp.i88 = icmp eq i8 %54, 0
  br i1 %cmp.i88, label %if.end31.if.end36_crit_edge, label %open_tx_first.exit

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

open_tx_first.exit:                               ; preds = %if.end31
  %55 = ptrtoint ptr %dev_data27 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_data27, align 8
  %txing.i = getelementptr inbounds %struct.eni_vcc, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %txing.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %txing.i, align 8
  %call.i89 = tail call fastcc i32 @reserve_or_set_tx(ptr noundef %vcc, ptr noundef %qos.i, i32 noundef 1, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool33.not = icmp eq i32 %call.i89, 0
  br i1 %tobool33.not, label %open_tx_first.exit.if.end36_crit_edge, label %if.then34

open_tx_first.exit.if.end36_crit_edge:            ; preds = %open_tx_first.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then34:                                        ; preds = %open_tx_first.exit
  %58 = ptrtoint ptr %dev_data27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_data27, align 8
  %tobool.not.i93 = icmp eq ptr %59, null
  br i1 %tobool.not.i93, label %if.then34.cleanup_crit_edge, label %if.end.i95

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i95:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #13
  tail call fastcc void @close_rx(ptr noundef %vcc) #13
  tail call fastcc void @close_tx(ptr noundef %vcc) #13
  %60 = ptrtoint ptr %dev_data27 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_data27, align 8
  tail call void @kfree(ptr noundef %61) #13
  %62 = ptrtoint ptr %dev_data27 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %dev_data27, align 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %cleanup

if.end36:                                         ; preds = %open_tx_first.exit.if.end36_crit_edge, %if.end31.if.end36_crit_edge, %if.end18.if.end36_crit_edge
  br i1 %or.cond, label %if.end36.cleanup_crit_edge, label %if.end43

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %dev.i97 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %63 = ptrtoint ptr %dev.i97 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i97, align 4
  %dev_data.i98 = getelementptr inbounds %struct.atm_dev, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %dev_data.i98 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_data.i98, align 8
  %dev_data1.i99 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %67 = ptrtoint ptr %dev_data1.i99 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_data1.i99, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %tobool.not.i100 = icmp eq ptr %70, null
  br i1 %tobool.not.i100, label %if.end43.open_rx_second.exit_crit_edge, label %if.end.i103

if.end43.open_rx_second.exit_crit_edge:           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_rx_second.exit

if.end.i103:                                      ; preds = %if.end43
  %vci.i = getelementptr inbounds %struct.eni_dev, ptr %66, i32 0, i32 7
  %71 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vci.i, align 4
  %73 = ptrtoint ptr %vci2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vci2, align 8
  %mul.i101 = shl i32 %74, 4
  %add.ptr.i = getelementptr i8, ptr %72, i32 %mul.i101
  %words.i102 = getelementptr inbounds %struct.eni_vcc, ptr %68, i32 0, i32 2
  %75 = ptrtoint ptr %words.i102 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %words.i102, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %76)
  %tobool3.not1.i = icmp ult i32 %76, 256
  br i1 %tobool3.not1.i, label %if.end.i103.do.body.i_crit_edge, label %for.body.preheader.i

if.end.i103.do.body.i_crit_edge:                  ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.body.preheader.i:                             ; preds = %if.end.i103
  %shr.i104 = lshr i32 %76, 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %order.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ -1, %for.body.preheader.i ]
  %size.02.i = phi i32 [ %shr4.i, %for.body.i.for.body.i_crit_edge ], [ %shr.i104, %for.body.preheader.i ]
  %shr4.i = lshr i32 %size.02.i, 1
  %inc.i = add nsw i32 %order.03.i, 1
  %tobool3.not.i = icmp ult i32 %size.02.i, 2
  br i1 %tobool3.not.i, label %do.body.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.body.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo.i = shl i32 %inc.i, 15
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.loopexit.i, %if.end.i103.do.body.i_crit_edge
  %order.0.lcssa.i = phi i32 [ -32768, %if.end.i103.do.body.i_crit_edge ], [ %phi.bo.i, %do.body.loopexit.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !537
  tail call void @arm_heavy_mb() #13
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #13, !srcloc !518
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !538
  tail call void @arm_heavy_mb() #13
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 0) #13, !srcloc !518
  %rx_map.i = getelementptr inbounds %struct.eni_dev, ptr %66, i32 0, i32 24
  %77 = ptrtoint ptr %rx_map.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_map.i, align 4
  %79 = ptrtoint ptr %vci2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vci2, align 8
  %arrayidx.i105 = getelementptr ptr, ptr %78, i32 %80
  %81 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i105, align 4
  %tobool11.not.i = icmp eq ptr %82, null
  br i1 %tobool11.not.i, label %do.body.i.if.end18.i_crit_edge, label %do.end15.i

do.body.i.if.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

do.end15.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %dev.i97 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i97, align 4
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %number.i, align 4
  %call.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %86, i32 noundef %80) #17
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end15.i, %do.body.i.if.end18.i_crit_edge
  %87 = ptrtoint ptr %rx_map.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rx_map.i, align 4
  %89 = ptrtoint ptr %vci2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vci2, align 8
  %arrayidx21.i = getelementptr ptr, ptr %88, i32 %90
  %91 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %vcc, ptr %arrayidx21.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !539
  tail call void @arm_heavy_mb() #13
  %92 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %93)
  %cmp.not.i = icmp eq i8 %93, 5
  %or.i = select i1 %cmp.not.i, i32 -1610612736, i32 1610612736
  %recv.i108 = getelementptr inbounds %struct.eni_vcc, ptr %68, i32 0, i32 1
  %94 = ptrtoint ptr %recv.i108 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %recv.i108, align 4
  %ram.i = getelementptr inbounds %struct.eni_dev, ptr %66, i32 0, i32 6
  %96 = ptrtoint ptr %ram.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ram.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %97 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %98 = shl i32 %sub.ptr.sub.i, 8
  %shl27.i = and i32 %98, -262144
  %or28.i = or i32 %or.i, %order.0.lcssa.i
  %or30.i = or i32 %or28.i, %shl27.i
  %99 = tail call i32 @llvm.bswap.i32(i32 %or30.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %99) #13, !srcloc !518
  br label %open_rx_second.exit

open_rx_second.exit:                              ; preds = %if.end18.i, %if.end43.open_rx_second.exit_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  br label %cleanup

cleanup:                                          ; preds = %open_rx_second.exit, %if.end36.cleanup_crit_edge, %if.end.i95, %if.then34.cleanup_crit_edge, %if.end.i86, %if.then30.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %open_rx_second.exit ], [ -22, %if.end7.cleanup_crit_edge ], [ -12, %if.then22.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ -105, %if.then30.cleanup_crit_edge ], [ -105, %if.end.i86 ], [ %call.i89, %if.then34.cleanup_crit_edge ], [ %call.i89, %if.end.i95 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eni_close(ptr noundef %vcc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #13
  tail call fastcc void @close_rx(ptr noundef %vcc)
  tail call fastcc void @close_tx(ptr noundef %vcc)
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  tail call void @kfree(ptr noundef %3) #13
  %4 = ptrtoint ptr %dev_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dev_data, align 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eni_ioctl(ptr noundef %dev, i32 noundef %cmd, ptr noundef %arg) #3 align 64 {
entry:
  %mult = alloca %struct.eni_multipliers, align 4
  %ci = alloca %struct.atm_cirange, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %cmd, label %if.end63 [
    i32 1074553184, label %if.then
    i32 1074553191, label %if.then5
    i32 1074553227, label %if.then39
  ]

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call, label %do.end, label %if.then.cleanup70_crit_edge

if.then.cleanup70_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup70

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %number = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %number, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %4) #17
  tail call fastcc void @dump(ptr noundef %dev)
  br label %cleanup70

if.then5:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mult) #13
  %5 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mult, align 4, !annotation !540
  %6 = getelementptr inbounds %struct.eni_multipliers, ptr %mult, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !540
  %call6 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %call6, label %if.end59.i.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.then5
  tail call void @__might_fault(ptr noundef nonnull @.str.91, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #19, !srcloc !541
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !542

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mult, i32 noundef 8) #13
  %9 = call i32 @llvm.read_register.i32(metadata !504) #13
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !543
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !544
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !545
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mult, ptr noundef %arg, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #13, !srcloc !544
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !545
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !542

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i112 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i112
  %add.ptr.i.i = getelementptr i8, ptr %mult, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i112)
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.i
  %13 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mult, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %14)
  %cmp14 = icmp slt i32 %14, 101
  %or.cond = and i1 %tobool12.not, %cmp14
  br i1 %or.cond, label %if.end11.cleanup_crit_edge, label %lor.lhs.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %16)
  %cmp18 = icmp slt i32 %16, 101
  %or.cond86 = and i1 %tobool15.not, %cmp18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %14)
  %cmp21 = icmp ugt i32 %14, 65536
  %or.cond120 = select i1 %or.cond86, i1 true, i1 %cmp21
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %16)
  %cmp24 = icmp ugt i32 %16, 65536
  %or.cond121 = select i1 %or.cond120, i1 true, i1 %cmp24
  br i1 %or.cond121, label %lor.lhs.false.cleanup_crit_edge, label %if.end26

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool28.not = icmp eq i32 %14, 0
  br i1 %tobool28.not, label %if.end26.if.end31_crit_edge, label %if.then29

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %tx_mult = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %tx_mult to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %tx_mult, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool33.not = icmp eq i32 %16, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.then34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %rx_mult = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 27
  %18 = ptrtoint ptr %rx_mult to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %rx_mult, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end31.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then11.i.i, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %if.end31.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mult) #13
  br label %cleanup70

if.then39:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ci) #13
  %19 = ptrtoint ptr %ci to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %ci, align 1, !annotation !540
  %20 = getelementptr inbounds %struct.atm_cirange, ptr %ci, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %20, align 1, !annotation !540
  tail call void @__might_fault(ptr noundef nonnull @.str.91, i32 noundef 156) #13
  %call.i.i91 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i91, label %if.then39.if.then11.i.i107_crit_edge, label %land.lhs.true.i.i94

if.then39.if.then11.i.i107_crit_edge:             ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i107

land.lhs.true.i.i94:                              ; preds = %if.then39
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 2, i32 -1226833920) #19, !srcloc !541
  %asmresult.i.i92 = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i92)
  %cmp.i6.i93 = icmp eq i32 %asmresult.i.i92, 0
  br i1 %cmp.i6.i93, label %if.end.i.i104, label %land.lhs.true.i.i94.if.then11.i.i107_crit_edge, !prof !542

land.lhs.true.i.i94.if.then11.i.i107_crit_edge:   ; preds = %land.lhs.true.i.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i107

if.end.i.i104:                                    ; preds = %land.lhs.true.i.i94
  %call.i.i.i95 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ci, i32 noundef 2) #13
  %23 = call i32 @llvm.read_register.i32(metadata !504) #13
  %and.i.i.i.i.i.i96 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i96 to ptr
  %cpu_domain.i.i.i.i.i97 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i97) #9, !srcloc !543
  %and.i.i.i.i98 = and i32 %25, -13
  %or.i.i.i.i99 = or i32 %and.i.i.i.i98, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i99) #13, !srcloc !544
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !545
  %call1.i.i.i100 = call i32 @arm_copy_from_user(ptr noundef nonnull %ci, ptr noundef %arg, i32 noundef 2) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #13, !srcloc !544
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !545
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i100)
  %tobool4.not.i.i103 = icmp eq i32 %call1.i.i.i100, 0
  br i1 %tobool4.not.i.i103, label %if.end43, label %if.end.i.i104.if.then11.i.i107_crit_edge, !prof !542

if.end.i.i104.if.then11.i.i107_crit_edge:         ; preds = %if.end.i.i104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i107

if.then11.i.i107:                                 ; preds = %if.end.i.i104.if.then11.i.i107_crit_edge, %land.lhs.true.i.i94.if.then11.i.i107_crit_edge, %if.then39.if.then11.i.i107_crit_edge
  %res.0.i.i102117 = phi i32 [ %call1.i.i.i100, %if.end.i.i104.if.then11.i.i107_crit_edge ], [ 2, %if.then39.if.then11.i.i107_crit_edge ], [ 2, %land.lhs.true.i.i94.if.then11.i.i107_crit_edge ]
  %sub.i.i105 = sub i32 2, %res.0.i.i102117
  %add.ptr.i.i106 = getelementptr i8, ptr %ci, i32 %sub.i.i105
  %26 = call ptr @memset(ptr %add.ptr.i.i106, i32 0, i32 %res.0.i.i102117)
  br label %cleanup62

if.end43:                                         ; preds = %if.end.i.i104
  %27 = ptrtoint ptr %ci to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ci, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.253)
  switch i8 %28, label %if.end43.if.end61_crit_edge [
    i8 0, label %if.end43.land.lhs.true51_crit_edge
    i8 -1, label %if.end43.land.lhs.true51_crit_edge123
  ]

if.end43.land.lhs.true51_crit_edge123:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true51

if.end43.land.lhs.true51_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true51

if.end43.if.end61_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

land.lhs.true51:                                  ; preds = %if.end43.land.lhs.true51_crit_edge, %if.end43.land.lhs.true51_crit_edge123
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %31)
  %cmp53 = icmp eq i8 %31, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp58 = icmp eq i8 %28, -1
  %or.cond122 = select i1 %cmp53, i1 true, i1 %cmp58
  br i1 %or.cond122, label %land.lhs.true51.cleanup62_crit_edge, label %land.lhs.true51.if.end61_crit_edge

land.lhs.true51.if.end61_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

land.lhs.true51.cleanup62_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

if.end61:                                         ; preds = %land.lhs.true51.if.end61_crit_edge, %if.end43.if.end61_crit_edge
  br label %cleanup62

cleanup62:                                        ; preds = %if.end61, %land.lhs.true51.cleanup62_crit_edge, %if.then11.i.i107
  %retval.1 = phi i32 [ -22, %if.end61 ], [ 0, %land.lhs.true51.cleanup62_crit_edge ], [ -14, %if.then11.i.i107 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ci) #13
  br label %cleanup70

if.end63:                                         ; preds = %entry
  %phy = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 1
  %32 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy, align 4
  %ioctl = getelementptr inbounds %struct.atmphy_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioctl, align 4
  %tobool64.not = icmp eq ptr %35, null
  br i1 %tobool64.not, label %if.end63.cleanup70_crit_edge, label %if.end66

if.end63.cleanup70_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup70

if.end66:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %call69 = tail call i32 %35(ptr noundef %dev, i32 noundef %cmd, ptr noundef %arg) #13
  br label %cleanup70

cleanup70:                                        ; preds = %if.end66, %if.end63.cleanup70_crit_edge, %cleanup62, %cleanup, %do.end, %if.then.cleanup70_crit_edge
  %retval.2 = phi i32 [ 0, %do.end ], [ %retval.0, %cleanup ], [ %retval.1, %cleanup62 ], [ %call69, %if.end66 ], [ -1, %if.then.cleanup70_crit_edge ], [ -515, %if.end63.cleanup70_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eni_send(ptr noundef %vcc, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %tx = getelementptr inbounds %struct.eni_vcc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %4 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pop, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %5(ptr noundef %vcc, ptr noundef %skb) #13
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  %tobool5.not = icmp eq ptr %skb, null
  br i1 %tobool5.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #17
  %pop7 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %6 = ptrtoint ptr %pop7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pop7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.then9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %7(ptr noundef %vcc, ptr noundef null) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %9)
  %cmp = icmp eq i8 %9, 13
  br i1 %cmp, label %if.then14, label %if.end12.if.end26_crit_edge

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then14:                                        ; preds = %if.end12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %11)
  %cmp15.not = icmp eq i32 %11, 52
  br i1 %cmp15.not, label %if.then14.if.end26_crit_edge, label %if.then17

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then17:                                        ; preds = %if.then14
  %pop18 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %12 = ptrtoint ptr %pop18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pop18, align 4
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %if.else22, label %if.then20

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %13(ptr noundef %vcc, ptr noundef nonnull %skb) #13
  br label %cleanup

if.else22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef nonnull %skb) #13
  br label %cleanup

if.end26:                                         ; preds = %if.then14.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %14 = load i32, ptr @submitted, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr @submitted, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %15 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vcc, ptr %cb, align 8
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dev_data28 = getelementptr inbounds %struct.atm_dev, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %dev_data28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_data28, align 8
  %task = getelementptr inbounds %struct.eni_dev, ptr %19, i32 0, i32 1
  %count.i.i = getelementptr inbounds %struct.eni_dev, ptr %19, i32 0, i32 1, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !546
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !547
  tail call void @tasklet_unlock_spin_wait(ptr noundef %task) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !548
  %call29 = tail call fastcc i32 @do_tx(ptr noundef nonnull %skb)
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %dev_data31 = getelementptr inbounds %struct.atm_dev, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %dev_data31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_data31, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !549
  %count.i = getelementptr inbounds %struct.eni_dev, ptr %24, i32 0, i32 1, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !550
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp33 = icmp eq i32 %call29, 0
  br i1 %cmp33, label %if.end26.cleanup_crit_edge, label %if.end36

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  %26 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_data, align 8
  %tx38 = getelementptr inbounds %struct.eni_vcc, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %tx38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx38, align 4
  %backlog = getelementptr inbounds %struct.eni_tx, ptr %29, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %backlog, ptr noundef nonnull %skb) #13
  %30 = load i32, ptr @backlogged, align 4
  %inc39 = add i32 %30, 1
  store i32 %inc39, ptr @backlogged, align 4
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %dev_data41 = getelementptr inbounds %struct.atm_dev, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %dev_data41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_data41, align 8
  %state.i = getelementptr inbounds %struct.eni_dev, ptr %34, i32 0, i32 1, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %task42 = getelementptr inbounds %struct.eni_dev, ptr %34, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task42) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end36.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.else22, %if.then20, %if.then9, %do.end.cleanup_crit_edge, %if.else, %if.then2
  %retval.0 = phi i32 [ -22, %if.else ], [ -22, %if.then2 ], [ -22, %if.then9 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.else22 ], [ -22, %if.then20 ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eni_phy_put(ptr nocapture noundef readonly %dev, i8 noundef zeroext %value, i32 noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !551
  tail call void @arm_heavy_mb() #13
  %conv = zext i8 %value to i32
  %0 = shl nuw i32 %conv, 24
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_data, align 8
  %phy = getelementptr inbounds %struct.eni_dev, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 4
  %mul = shl i32 %addr, 2
  %add.ptr = getelementptr i8, ptr %4, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #13, !srcloc !518
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @eni_phy_get(ptr nocapture noundef readonly %dev, i32 noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %phy = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %mul = shl i32 %addr, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !514
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !552
  %conv = trunc i32 %5 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eni_change_qos(ptr noundef readonly %vcc, ptr noundef %qos, i32 noundef %flgs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %dev_data1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %4 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data1, align 8
  %tx2 = getelementptr inbounds %struct.eni_vcc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx2, align 4
  %8 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %qos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %entry.cleanup80_crit_edge, label %if.end

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end:                                           ; preds = %entry
  %ubr = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %ubr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ubr, align 4
  %cmp4 = icmp eq ptr %7, %11
  br i1 %cmp4, label %if.end.cleanup80_crit_edge, label %if.end7

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end7:                                          ; preds = %if.end
  %call = tail call i32 @atm_pcr_goal(ptr noundef %qos) #13
  %12 = tail call i32 @llvm.abs.i32(i32 %call, i1 false)
  %and = and i32 %flgs, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %if.end7.if.end18_crit_edge, label %land.lhs.true14

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true14:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %reserved = getelementptr inbounds %struct.eni_tx, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reserved, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp15 = icmp slt i32 %12, %14
  %spec.select124 = zext i1 %cmp15 to i32
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true14, %if.end7.if.end18_crit_edge
  %rsv.0 = phi i32 [ 0, %if.end7.if.end18_crit_edge ], [ %spec.select124, %land.lhs.true14 ]
  %and19 = and i32 %flgs, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end27_crit_edge, label %land.lhs.true21

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true21:                                  ; preds = %if.end18
  br i1 %tobool13.not, label %land.lhs.true21.if.then26_crit_edge, label %lor.lhs.false

land.lhs.true21.if.then26_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %reserved23 = getelementptr inbounds %struct.eni_tx, ptr %7, i32 0, i32 6
  %15 = ptrtoint ptr %reserved23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reserved23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %16)
  %cmp24 = icmp sgt i32 %12, %16
  br i1 %cmp24, label %lor.lhs.false.if.then26_crit_edge, label %lor.lhs.false.if.end27_crit_edge

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %land.lhs.true21.if.then26_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %lor.lhs.false.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %rsv.1 = phi i32 [ 1, %if.then26 ], [ %rsv.0, %lor.lhs.false.if.end27_crit_edge ], [ %rsv.0, %if.end18.if.end27_crit_edge ]
  %and28 = and i32 %flgs, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond125 = select i1 %tobool29.not, i1 true, i1 %tobool13.not
  br i1 %or.cond125, label %if.end27.if.end36_crit_edge, label %land.lhs.true32

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true32:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %shaping = getelementptr inbounds %struct.eni_tx, ptr %7, i32 0, i32 7
  %17 = ptrtoint ptr %shaping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shaping, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %18)
  %cmp33 = icmp slt i32 %12, %18
  %spec.select126 = zext i1 %cmp33 to i32
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true32, %if.end27.if.end36_crit_edge
  %shp.0 = phi i32 [ 0, %if.end27.if.end36_crit_edge ], [ %spec.select126, %land.lhs.true32 ]
  %and37 = and i32 %flgs, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end46_crit_edge, label %land.lhs.true39

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

land.lhs.true39:                                  ; preds = %if.end36
  br i1 %tobool13.not, label %land.lhs.true39.if.end51_crit_edge, label %lor.lhs.false41

land.lhs.true39.if.end51_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

lor.lhs.false41:                                  ; preds = %land.lhs.true39
  %shaping42 = getelementptr inbounds %struct.eni_tx, ptr %7, i32 0, i32 7
  %19 = ptrtoint ptr %shaping42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shaping42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %20)
  %cmp43 = icmp sgt i32 %12, %20
  br i1 %cmp43, label %lor.lhs.false41.if.end51_crit_edge, label %lor.lhs.false41.if.end46_crit_edge

lor.lhs.false41.if.end46_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

lor.lhs.false41.if.end51_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end46:                                         ; preds = %lor.lhs.false41.if.end46_crit_edge, %if.end36.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsv.1)
  %tobool47.not = icmp eq i32 %rsv.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shp.0)
  %tobool49.not = icmp eq i32 %shp.0, 0
  %or.cond127 = select i1 %tobool47.not, i1 %tobool49.not, i1 false
  br i1 %or.cond127, label %if.end46.cleanup80_crit_edge, label %if.end46.if.end51_crit_edge

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end46.cleanup80_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end51:                                         ; preds = %if.end46.if.end51_crit_edge, %lor.lhs.false41.if.end51_crit_edge, %land.lhs.true39.if.end51_crit_edge
  %shp.1133 = phi i32 [ %shp.0, %if.end46.if.end51_crit_edge ], [ 1, %land.lhs.true39.if.end51_crit_edge ], [ 1, %lor.lhs.false41.if.end51_crit_edge ]
  %call53 = tail call fastcc i32 @reserve_or_set_tx(ptr noundef %vcc, ptr noundef %qos, i32 noundef %rsv.1, i32 noundef %shp.1133)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.cleanup80_crit_edge

if.end51.cleanup80_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shp.1133)
  %tobool57.not = icmp ne i32 %shp.1133, 0
  %and59 = and i32 %flgs, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %or.cond128 = and i1 %tobool60.not, %tobool57.not
  br i1 %or.cond128, label %if.end56.cleanup80_crit_edge, label %if.end62

if.end56.cleanup80_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end62:                                         ; preds = %if.end56
  %task = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 1
  %count.i.i = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 1, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !546
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !547
  tail call void @tasklet_unlock_wait(ptr noundef %task) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !553
  %tx_queue = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 13
  %22 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %skb.0134 = load ptr, ptr %tx_queue, align 4
  %cmp64.not135 = icmp eq ptr %skb.0134, %tx_queue
  br i1 %cmp64.not135, label %if.end62.for.end_crit_edge, label %for.body.lr.ph

if.end62.for.end_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end62
  %prescaler = getelementptr inbounds %struct.eni_tx, ptr %7, i32 0, i32 1
  %resolution = getelementptr inbounds %struct.eni_tx, ptr %7, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %skb.0136 = phi ptr [ %skb.0134, %for.body.lr.ph ], [ %skb.0, %cleanup.for.body_crit_edge ]
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.0136, i32 0, i32 3
  %23 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cb, align 8
  %cmp67.not = icmp eq ptr %24, %vcc
  br i1 %cmp67.not, label %if.end70, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end70:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 4
  %pos = getelementptr inbounds %struct.sk_buff, ptr %skb.0136, i32 0, i32 3, i32 12
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pos, align 4
  %mul = shl i32 %28, 2
  %add.ptr = getelementptr i8, ptr %26, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !554
  tail call void @arm_heavy_mb() #13
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !555
  %30 = and i32 %29, -63496
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %prescaler to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %prescaler, align 4
  %shl = shl i32 %33, 25
  %or = or i32 %shl, %31
  %34 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resolution, align 4
  %shl76 = shl i32 %35, 19
  %or77 = or i32 %or, %shl76
  %36 = tail call i32 @llvm.bswap.i32(i32 %or77)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %36) #13, !srcloc !518
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %for.body.cleanup_crit_edge
  %37 = ptrtoint ptr %skb.0136 to i32
  call void @__asan_load4_noabort(i32 %37)
  %skb.0 = load ptr, ptr %skb.0136, align 4
  %cmp64.not = icmp eq ptr %skb.0, %tx_queue
  br i1 %cmp64.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end62.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !549
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !550
  br label %cleanup80

cleanup80:                                        ; preds = %for.end, %if.end56.cleanup80_crit_edge, %if.end51.cleanup80_crit_edge, %if.end46.cleanup80_crit_edge, %if.end.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %entry.cleanup80_crit_edge ], [ -77, %if.end.cleanup80_crit_edge ], [ 0, %if.end46.cleanup80_crit_edge ], [ %call53, %if.end51.cleanup80_crit_edge ], [ 0, %if.end56.cleanup80_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eni_proc_read(ptr noundef readonly %dev, ptr nocapture noundef readonly %pos, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %conv, label %if.end5 [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %number = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number, align 4
  %signal = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 12
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %signal, align 8
  %conv1 = zext i8 %8 to i32
  %arrayidx = getelementptr [3 x ptr], ptr @eni_proc_read.signal, i32 0, i32 %conv1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %mem = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 34
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem, align 4
  %shr = ashr i32 %12, 10
  %tx_bw = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %tx_bw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_bw, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.116, i32 noundef %6, ptr noundef %10, i32 noundef %shr, i32 noundef %14)
  br label %cleanup145

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118)
  br label %cleanup145

if.end5:                                          ; preds = %entry
  %dec6 = add i32 %conv, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec6)
  %tobool7.not = icmp eq i32 %dec6, 0
  br i1 %tobool7.not, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %tx12 = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %tx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx12, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %for.cond.preheader.for.inc_crit_edge, label %if.end15

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %tx_mult = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %tx_mult to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_mult, align 4
  %rx_mult = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 27
  %19 = ptrtoint ptr %rx_mult to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_mult, align 4
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.118, i32 noundef %18, i32 noundef %20)
  br label %cleanup145

if.end15:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec6)
  %tobool17.not = icmp eq i32 %dec6, 1
  br i1 %tobool17.not, label %if.end15.if.then18_crit_edge, label %if.end30

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18

if.then18:                                        ; preds = %if.end15.7.if.then18_crit_edge, %if.end15.6.if.then18_crit_edge, %if.end15.5.if.then18_crit_edge, %if.end15.4.if.then18_crit_edge, %if.end15.3.if.then18_crit_edge, %if.end15.2.if.then18_crit_edge, %if.end15.1.if.then18_crit_edge, %if.end15.if.then18_crit_edge
  %i.0264.lcssa = phi i32 [ 0, %if.end15.if.then18_crit_edge ], [ 1, %if.end15.1.if.then18_crit_edge ], [ 2, %if.end15.2.if.then18_crit_edge ], [ 3, %if.end15.3.if.then18_crit_edge ], [ 4, %if.end15.4.if.then18_crit_edge ], [ 5, %if.end15.5.if.then18_crit_edge ], [ 6, %if.end15.6.if.then18_crit_edge ], [ 7, %if.end15.7.if.then18_crit_edge ]
  %add.ptr.lcssa = phi ptr [ %tx12, %if.end15.if.then18_crit_edge ], [ %add.ptr.1, %if.end15.1.if.then18_crit_edge ], [ %add.ptr.2, %if.end15.2.if.then18_crit_edge ], [ %add.ptr.3, %if.end15.3.if.then18_crit_edge ], [ %add.ptr.4, %if.end15.4.if.then18_crit_edge ], [ %add.ptr.5, %if.end15.5.if.then18_crit_edge ], [ %add.ptr.6, %if.end15.6.if.then18_crit_edge ], [ %add.ptr.7, %if.end15.7.if.then18_crit_edge ]
  %.lcssa = phi ptr [ %16, %if.end15.if.then18_crit_edge ], [ %34, %if.end15.1.if.then18_crit_edge ], [ %36, %if.end15.2.if.then18_crit_edge ], [ %38, %if.end15.3.if.then18_crit_edge ], [ %40, %if.end15.4.if.then18_crit_edge ], [ %42, %if.end15.5.if.then18_crit_edge ], [ %44, %if.end15.6.if.then18_crit_edge ], [ %46, %if.end15.7.if.then18_crit_edge ]
  %ram = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ram, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %words = getelementptr %struct.eni_tx, ptr %tx12, i32 %i.0264.lcssa, i32 4
  %23 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %words, align 4
  %mul = shl i32 %24, 2
  %add = add i32 %mul, -1
  %sub = add i32 %add, %sub.ptr.sub
  %reserved = getelementptr %struct.eni_tx, ptr %tx12, i32 %i.0264.lcssa, i32 6
  %25 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reserved, align 4
  %shaping = getelementptr %struct.eni_tx, ptr %tx12, i32 %i.0264.lcssa, i32 7
  %27 = ptrtoint ptr %shaping to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %shaping, align 4
  %ubr = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %ubr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ubr, align 4
  %cmp27 = icmp eq ptr %add.ptr.lcssa, %30
  %cond = select i1 %cmp27, ptr @.str.121, ptr @.str.118
  %call29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.120, i32 noundef %i.0264.lcssa, i32 noundef %sub.ptr.sub, i32 noundef %sub, i32 noundef %mul, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %cond)
  br label %cleanup145

if.end30:                                         ; preds = %if.end15
  %dec31 = add i32 %conv, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec31)
  %tobool32.not = icmp eq i32 %dec31, 0
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.end34:                                         ; preds = %if.end30.7.if.end34_crit_edge, %if.end30.6.if.end34_crit_edge, %if.end30.5.if.end34_crit_edge, %if.end30.4.if.end34_crit_edge, %if.end30.3.if.end34_crit_edge, %if.end30.2.if.end34_crit_edge, %if.end30.1.if.end34_crit_edge, %if.end30.if.end34_crit_edge
  %i.0264.lcssa282 = phi i32 [ 0, %if.end30.if.end34_crit_edge ], [ 1, %if.end30.1.if.end34_crit_edge ], [ 2, %if.end30.2.if.end34_crit_edge ], [ 3, %if.end30.3.if.end34_crit_edge ], [ 4, %if.end30.4.if.end34_crit_edge ], [ 5, %if.end30.5.if.end34_crit_edge ], [ 6, %if.end30.6.if.end34_crit_edge ], [ 7, %if.end30.7.if.end34_crit_edge ]
  %qlen.i = getelementptr %struct.eni_tx, ptr %tx12, i32 %i.0264.lcssa282, i32 8, i32 1
  %31 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen.i, align 4
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.118, i32 noundef %32)
  br label %cleanup145

for.inc:                                          ; preds = %if.end30.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %left.1.ph = phi i32 [ %dec31, %if.end30.for.inc_crit_edge ], [ %dec6, %for.cond.preheader.for.inc_crit_edge ]
  %add.ptr.1 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 1
  %33 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.1, align 4
  %tobool13.not.1 = icmp eq ptr %34, null
  br i1 %tobool13.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end15.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end15.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %left.1.ph)
  %tobool17.not.1 = icmp eq i32 %left.1.ph, 1
  br i1 %tobool17.not.1, label %if.end15.1.if.then18_crit_edge, label %if.end30.1

if.end15.1.if.then18_crit_edge:                   ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18

if.end30.1:                                       ; preds = %if.end15.1
  %dec31.1 = add i32 %left.1.ph, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec31.1)
  %tobool32.not.1 = icmp eq i32 %dec31.1, 0
  br i1 %tobool32.not.1, label %if.end30.1.if.end34_crit_edge, label %if.end30.1.for.inc.1_crit_edge

if.end30.1.for.inc.1_crit_edge:                   ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.end30.1.if.end34_crit_edge:                    ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

for.inc.1:                                        ; preds = %if.end30.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %left.1.ph.1 = phi i32 [ %dec31.1, %if.end30.1.for.inc.1_crit_edge ], [ %left.1.ph, %for.inc.for.inc.1_crit_edge ]
  %add.ptr.2 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 2
  %35 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.2, align 4
  %tobool13.not.2 = icmp eq ptr %36, null
  br i1 %tobool13.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end15.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.end15.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %left.1.ph.1)
  %tobool17.not.2 = icmp eq i32 %left.1.ph.1, 1
  br i1 %tobool17.not.2, label %if.end15.2.if.then18_crit_edge, label %if.end30.2

if.end15.2.if.then18_crit_edge:                   ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18

if.end30.2:                                       ; preds = %if.end15.2
  %dec31.2 = add i32 %left.1.ph.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec31.2)
  %tobool32.not.2 = icmp eq i32 %dec31.2, 0
  br i1 %tobool32.not.2, label %if.end30.2.if.end34_crit_edge, label %if.end30.2.for.inc.2_crit_edge

if.end30.2.for.inc.2_crit_edge:                   ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.end30.2.if.end34_crit_edge:                    ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

for.inc.2:                                        ; preds = %if.end30.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %left.1.ph.2 = phi i32 [ %dec31.2, %if.end30.2.for.inc.2_crit_edge ], [ %left.1.ph.1, %for.inc.1.for.inc.2_crit_edge ]
  %add.ptr.3 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 3
  %37 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.3, align 4
  %tobool13.not.3 = icmp eq ptr %38, null
  br i1 %tobool13.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end15.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.end15.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %left.1.ph.2)
  %tobool17.not.3 = icmp eq i32 %left.1.ph.2, 1
  br i1 %tobool17.not.3, label %if.end15.3.if.then18_crit_edge, label %if.end30.3

if.end15.3.if.then18_crit_edge:                   ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18

if.end30.3:                                       ; preds = %if.end15.3
  %dec31.3 = add i32 %left.1.ph.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec31.3)
  %tobool32.not.3 = icmp eq i32 %dec31.3, 0
  br i1 %tobool32.not.3, label %if.end30.3.if.end34_crit_edge, label %if.end30.3.for.inc.3_crit_edge

if.end30.3.for.inc.3_crit_edge:                   ; preds = %if.end30.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.end30.3.if.end34_crit_edge:                    ; preds = %if.end30.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

for.inc.3:                                        ; preds = %if.end30.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %left.1.ph.3 = phi i32 [ %dec31.3, %if.end30.3.for.inc.3_crit_edge ], [ %left.1.ph.2, %for.inc.2.for.inc.3_crit_edge ]
  %add.ptr.4 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 4
  %39 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.4, align 4
  %tobool13.not.4 = icmp eq ptr %40, null
  br i1 %tobool13.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end15.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

if.end15.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %left.1.ph.3)
  %tobool17.not.4 = icmp eq i32 %left.1.ph.3, 1
  br i1 %tobool17.not.4, label %if.end15.4.if.then18_crit_edge, label %if.end30.4

if.end15.4.if.then18_crit_edge:                   ; preds = %if.end15.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18

if.end30.4:                                       ; preds = %if.end15.4
  %dec31.4 = add i32 %left.1.ph.3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec31.4)
  %tobool32.not.4 = icmp eq i32 %dec31.4, 0
  br i1 %tobool32.not.4, label %if.end30.4.if.end34_crit_edge, label %if.end30.4.for.inc.4_crit_edge

if.end30.4.for.inc.4_crit_edge:                   ; preds = %if.end30.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

if.end30.4.if.end34_crit_edge:                    ; preds = %if.end30.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

for.inc.4:                                        ; preds = %if.end30.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %left.1.ph.4 = phi i32 [ %dec31.4, %if.end30.4.for.inc.4_crit_edge ], [ %left.1.ph.3, %for.inc.3.for.inc.4_crit_edge ]
  %add.ptr.5 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 5
  %41 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.5, align 4
  %tobool13.not.5 = icmp eq ptr %42, null
  br i1 %tobool13.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end15.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

if.end15.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %left.1.ph.4)
  %tobool17.not.5 = icmp eq i32 %left.1.ph.4, 1
  br i1 %tobool17.not.5, label %if.end15.5.if.then18_crit_edge, label %if.end30.5

if.end15.5.if.then18_crit_edge:                   ; preds = %if.end15.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18

if.end30.5:                                       ; preds = %if.end15.5
  %dec31.5 = add i32 %left.1.ph.4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec31.5)
  %tobool32.not.5 = icmp eq i32 %dec31.5, 0
  br i1 %tobool32.not.5, label %if.end30.5.if.end34_crit_edge, label %if.end30.5.for.inc.5_crit_edge

if.end30.5.for.inc.5_crit_edge:                   ; preds = %if.end30.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

if.end30.5.if.end34_crit_edge:                    ; preds = %if.end30.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

for.inc.5:                                        ; preds = %if.end30.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %left.1.ph.5 = phi i32 [ %dec31.5, %if.end30.5.for.inc.5_crit_edge ], [ %left.1.ph.4, %for.inc.4.for.inc.5_crit_edge ]
  %add.ptr.6 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 6
  %43 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.6, align 4
  %tobool13.not.6 = icmp eq ptr %44, null
  br i1 %tobool13.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end15.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

if.end15.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %left.1.ph.5)
  %tobool17.not.6 = icmp eq i32 %left.1.ph.5, 1
  br i1 %tobool17.not.6, label %if.end15.6.if.then18_crit_edge, label %if.end30.6

if.end15.6.if.then18_crit_edge:                   ; preds = %if.end15.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18

if.end30.6:                                       ; preds = %if.end15.6
  %dec31.6 = add i32 %left.1.ph.5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec31.6)
  %tobool32.not.6 = icmp eq i32 %dec31.6, 0
  br i1 %tobool32.not.6, label %if.end30.6.if.end34_crit_edge, label %if.end30.6.for.inc.6_crit_edge

if.end30.6.for.inc.6_crit_edge:                   ; preds = %if.end30.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

if.end30.6.if.end34_crit_edge:                    ; preds = %if.end30.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

for.inc.6:                                        ; preds = %if.end30.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %left.1.ph.6 = phi i32 [ %dec31.6, %if.end30.6.for.inc.6_crit_edge ], [ %left.1.ph.5, %for.inc.5.for.inc.6_crit_edge ]
  %add.ptr.7 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 7
  %45 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.7, align 4
  %tobool13.not.7 = icmp eq ptr %46, null
  br i1 %tobool13.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end15.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7

if.end15.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %left.1.ph.6)
  %tobool17.not.7 = icmp eq i32 %left.1.ph.6, 1
  br i1 %tobool17.not.7, label %if.end15.7.if.then18_crit_edge, label %if.end30.7

if.end15.7.if.then18_crit_edge:                   ; preds = %if.end15.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18

if.end30.7:                                       ; preds = %if.end15.7
  %dec31.7 = add i32 %left.1.ph.6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec31.7)
  %tobool32.not.7 = icmp eq i32 %dec31.7, 0
  br i1 %tobool32.not.7, label %if.end30.7.if.end34_crit_edge, label %if.end30.7.for.inc.7_crit_edge

if.end30.7.for.inc.7_crit_edge:                   ; preds = %if.end30.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7

if.end30.7.if.end34_crit_edge:                    ; preds = %if.end30.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

for.inc.7:                                        ; preds = %if.end30.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %left.1.ph.7 = phi i32 [ %dec31.7, %if.end30.7.for.inc.7_crit_edge ], [ %left.1.ph.6, %for.inc.6.for.inc.7_crit_edge ]
  tail call void @_raw_read_lock(ptr noundef nonnull @vcc_sklist_lock) #13
  br label %for.body40

for.body40:                                       ; preds = %for.inc116.for.body40_crit_edge, %for.inc.7
  %left.2272 = phi i32 [ %left.1.ph.7, %for.inc.7 ], [ %left.3.lcssa, %for.inc116.for.body40_crit_edge ]
  %i.1271 = phi i32 [ 0, %for.inc.7 ], [ %inc117, %for.inc116.for.body40_crit_edge ]
  %arrayidx41 = getelementptr [32 x %struct.hlist_head], ptr @vcc_hash, i32 0, i32 %i.1271
  %47 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %48, null
  %add.ptr44 = getelementptr i8, ptr %48, i32 -84
  %tobool47.not267284 = icmp eq ptr %add.ptr44, null
  %tobool47.not267 = or i1 %tobool42.not, %tobool47.not267284
  br i1 %tobool47.not267, label %for.body40.for.inc116_crit_edge, label %for.body40.for.body48_crit_edge

for.body40.for.body48_crit_edge:                  ; preds = %for.body40
  br label %for.body48

for.body40.for.inc116_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc116

for.body48:                                       ; preds = %for.inc102.for.body48_crit_edge, %for.body40.for.body48_crit_edge
  %s.0269 = phi ptr [ %add.ptr109, %for.inc102.for.body48_crit_edge ], [ %add.ptr44, %for.body40.for.body48_crit_edge ]
  %left.3268 = phi i32 [ %left.4.ph, %for.inc102.for.body48_crit_edge ], [ %left.2272, %for.body40.for.body48_crit_edge ]
  %dev50 = getelementptr inbounds %struct.atm_vcc, ptr %s.0269, i32 0, i32 6
  %49 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev50, align 4
  %cmp51.not = icmp eq ptr %50, %dev
  br i1 %cmp51.not, label %if.end54, label %for.body48.for.inc102_crit_edge

for.body48.for.inc102_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc102

if.end54:                                         ; preds = %for.body48
  %dec56 = add i32 %left.3268, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec56)
  %tobool57.not = icmp eq i32 %dec56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.for.inc102_crit_edge

if.end54.for.inc102_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc102

if.end59:                                         ; preds = %if.end54
  %dev_data55.le = getelementptr inbounds %struct.atm_vcc, ptr %s.0269, i32 0, i32 14
  %51 = ptrtoint ptr %dev_data55.le to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_data55.le, align 8
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %s.0269, i32 0, i32 3
  %53 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vci, align 8
  %call60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.123, i32 noundef %54)
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 8
  %tobool61.not = icmp eq ptr %56, null
  br i1 %tobool61.not, label %if.end59.if.end88_crit_edge, label %if.then62

if.end59.if.end88_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then62:                                        ; preds = %if.end59
  %add.ptr63 = getelementptr i8, ptr %page, i32 %call60
  %recv = getelementptr inbounds %struct.eni_vcc, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %recv, align 4
  %ram64 = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %ram64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ram64, align 4
  %sub.ptr.lhs.cast65 = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast66 = ptrtoint ptr %60 to i32
  %sub.ptr.sub67 = sub i32 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %words73 = getelementptr inbounds %struct.eni_vcc, ptr %52, i32 0, i32 2
  %61 = ptrtoint ptr %words73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %words73, align 8
  %mul74 = shl i32 %62, 2
  %add75 = add i32 %mul74, -1
  %sub76 = add i32 %add75, %sub.ptr.sub67
  %call79 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr63, ptr noundef nonnull @.str.124, i32 noundef %sub.ptr.sub67, i32 noundef %sub76, i32 noundef %mul74)
  %add80 = add i32 %call79, %call60
  %tx81 = getelementptr inbounds %struct.eni_vcc, ptr %52, i32 0, i32 5
  %63 = ptrtoint ptr %tx81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx81, align 4
  %tobool82.not = icmp eq ptr %64, null
  br i1 %tobool82.not, label %if.then62.if.end88_crit_edge, label %if.then83

if.then62.if.end88_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then83:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr84 = getelementptr i8, ptr %page, i32 %add80
  %65 = call ptr @memcpy(ptr %add.ptr84, ptr @.str.125, i32 3)
  %add86 = add i32 %add80, 2
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %if.then62.if.end88_crit_edge, %if.end59.if.end88_crit_edge
  %length.0 = phi i32 [ %add86, %if.then83 ], [ %add80, %if.then62.if.end88_crit_edge ], [ %call60, %if.end59.if.end88_crit_edge ]
  %tx89 = getelementptr inbounds %struct.eni_vcc, ptr %52, i32 0, i32 5
  %66 = ptrtoint ptr %tx89 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx89, align 4
  %tobool90.not = icmp eq ptr %67, null
  br i1 %tobool90.not, label %if.end88.cleanup114_crit_edge, label %if.then91

if.end88.cleanup114_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup114

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr92 = getelementptr i8, ptr %page, i32 %length.0
  %index = getelementptr inbounds %struct.eni_tx, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index, align 4
  %txing = getelementptr inbounds %struct.eni_vcc, ptr %52, i32 0, i32 8
  %70 = ptrtoint ptr %txing to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %txing, align 8
  %call94 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr92, ptr noundef nonnull @.str.126, i32 noundef %69, i32 noundef %71)
  %add95 = add i32 %call94, %length.0
  br label %cleanup114

for.inc102:                                       ; preds = %if.end54.for.inc102_crit_edge, %for.body48.for.inc102_crit_edge
  %left.4.ph = phi i32 [ %dec56, %if.end54.for.inc102_crit_edge ], [ %left.3268, %for.body48.for.inc102_crit_edge ]
  %72 = getelementptr inbounds %struct.sock_common, ptr %s.0269, i32 0, i32 15
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %tobool105.not = icmp eq ptr %74, null
  %add.ptr109 = getelementptr i8, ptr %74, i32 -84
  %tobool47.not287 = icmp eq ptr %add.ptr109, null
  %tobool47.not = or i1 %tobool105.not, %tobool47.not287
  br i1 %tobool47.not, label %for.inc102.for.inc116_crit_edge, label %for.inc102.for.body48_crit_edge

for.inc102.for.body48_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body48

for.inc102.for.inc116_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc116

cleanup114:                                       ; preds = %if.then91, %if.end88.cleanup114_crit_edge
  %length.1 = phi i32 [ %add95, %if.then91 ], [ %length.0, %if.end88.cleanup114_crit_edge ]
  %arrayidx97 = getelementptr i8, ptr %page, i32 %length.1
  %75 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 10, ptr %arrayidx97, align 1
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #13
  %add98 = add i32 %length.1, 1
  br label %cleanup145

for.inc116:                                       ; preds = %for.inc102.for.inc116_crit_edge, %for.body40.for.inc116_crit_edge
  %left.3.lcssa = phi i32 [ %left.2272, %for.body40.for.inc116_crit_edge ], [ %left.4.ph, %for.inc102.for.inc116_crit_edge ]
  %inc117 = add nuw nsw i32 %i.1271, 1
  %exitcond.not = icmp eq i32 %inc117, 32
  br i1 %exitcond.not, label %for.end118, label %for.inc116.for.body40_crit_edge

for.inc116.for.body40_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body40

for.end118:                                       ; preds = %for.inc116
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #13
  %free_len = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 30
  %76 = ptrtoint ptr %free_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %free_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp120273 = icmp sgt i32 %77, 0
  br i1 %cmp120273, label %for.body122, label %for.end118.cleanup145_crit_edge

for.end118.cleanup145_crit_edge:                  ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup145

for.body122:                                      ; preds = %for.end118
  %78 = add i32 %left.3.lcssa, -1
  %79 = add nsw i32 %77, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %79)
  %.not = icmp ugt i32 %78, %79
  br i1 %.not, label %for.body122.cleanup145_crit_edge, label %cleanup139.thread

for.body122.cleanup145_crit_edge:                 ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup145

cleanup139.thread:                                ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #15
  %free_list = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 31
  %80 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %free_list, align 4
  %add.ptr123 = getelementptr %struct.eni_free, ptr %81, i32 %78
  %ram128 = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 6
  %82 = ptrtoint ptr %ram128 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ram128, align 4
  %84 = ptrtoint ptr %83 to i32
  %base_diff = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 29
  %85 = ptrtoint ptr %base_diff to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %base_diff, align 4
  %add129 = add i32 %86, %84
  %87 = ptrtoint ptr %add.ptr123 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr123, align 4
  %idx.neg = sub i32 0, %add129
  %add.ptr130 = getelementptr i8, ptr %88, i32 %idx.neg
  %order = getelementptr %struct.eni_free, ptr %81, i32 %78, i32 1
  %89 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %order, align 4
  %shl = shl nuw i32 1, %90
  %add.ptr134 = getelementptr i8, ptr %add.ptr130, i32 %shl
  %add.ptr135 = getelementptr i8, ptr %add.ptr134, i32 -1
  %call138 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.127, ptr noundef %add.ptr130, ptr noundef %add.ptr135, i32 noundef %shl)
  br label %cleanup145

cleanup145:                                       ; preds = %cleanup139.thread, %for.body122.cleanup145_crit_edge, %for.end118.cleanup145_crit_edge, %cleanup114, %if.end34, %if.then18, %if.then8, %if.then3, %if.then
  %retval.8 = phi i32 [ %add98, %cleanup114 ], [ %call9, %if.then8 ], [ %call4, %if.then3 ], [ %call, %if.then ], [ %call36, %if.end34 ], [ %call29, %if.then18 ], [ %call138, %cleanup139.thread ], [ 0, %for.end118.cleanup145_crit_edge ], [ 0, %for.body122.cleanup145_crit_edge ]
  ret i32 %retval.8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @eni_alloc_mem(ptr nocapture noundef %eni_dev, ptr nocapture noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %free_list = getelementptr inbounds %struct.eni_dev, ptr %eni_dev, i32 0, i32 31
  %0 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_list, align 4
  %free_len = getelementptr inbounds %struct.eni_dev, ptr %eni_dev, i32 0, i32 30
  %2 = ptrtoint ptr %free_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_len, align 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %5)
  %cmp = icmp ult i32 %5, 1024
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1024, ptr %size, align 4
  br label %for.cond.preheader

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %5)
  %cmp1 = icmp ugt i32 %5, 131072
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end.for.cond.preheader_crit_edge

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end.for.cond.preheader_crit_edge, %if.end.thread
  %7 = phi i32 [ 1024, %if.end.thread ], [ %5, %if.end.for.cond.preheader_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %for.cond.preheader
  %order.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %shl = shl nuw i32 1, %order.0
  %cmp4 = icmp ult i32 %shl, %7
  %inc = add i32 %order.0, 1
  br i1 %cmp4, label %for.cond.for.cond_crit_edge, label %for.cond5.preheader

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.cond5.preheader:                              ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp685 = icmp sgt i32 %3, 0
  br i1 %cmp685, label %for.cond5.preheader.for.body7_crit_edge, label %for.cond5.preheader.cleanup_crit_edge

for.cond5.preheader.cleanup_crit_edge:            ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond5.preheader.for.body7_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body7

for.body7:                                        ; preds = %if.else.for.body7_crit_edge, %for.cond5.preheader.for.body7_crit_edge
  %index.088 = phi i32 [ %index.1, %if.else.for.body7_crit_edge ], [ 0, %for.cond5.preheader.for.body7_crit_edge ]
  %best_order.087 = phi i32 [ %best_order.1, %if.else.for.body7_crit_edge ], [ 65, %for.cond5.preheader.for.body7_crit_edge ]
  %i.086 = phi i32 [ %inc23, %if.else.for.body7_crit_edge ], [ 0, %for.cond5.preheader.for.body7_crit_edge ]
  %order8 = getelementptr %struct.eni_free, ptr %1, i32 %i.086, i32 1
  %8 = ptrtoint ptr %order8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %order8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %order.0)
  %cmp9 = icmp eq i32 %9, %order.0
  br i1 %cmp9, label %for.body7.for.end24_crit_edge, label %if.else

for.body7.for.end24_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

if.else:                                          ; preds = %for.body7
  call void @__sanitizer_cov_trace_cmp4(i32 %best_order.087, i32 %9)
  %cmp13 = icmp sgt i32 %best_order.087, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %order.0)
  %cmp16 = icmp sgt i32 %9, %order.0
  %or.cond = select i1 %cmp13, i1 %cmp16, i1 false
  %best_order.1 = select i1 %or.cond, i32 %9, i32 %best_order.087
  %index.1 = select i1 %or.cond, i32 %i.086, i32 %index.088
  %inc23 = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc23, %3
  br i1 %exitcond.not, label %if.else.for.end24_crit_edge, label %if.else.for.body7_crit_edge

if.else.for.body7_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7

if.else.for.end24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

for.end24:                                        ; preds = %if.else.for.end24_crit_edge, %for.body7.for.end24_crit_edge
  %best_order.2 = phi i32 [ %best_order.1, %if.else.for.end24_crit_edge ], [ %order.0, %for.body7.for.end24_crit_edge ]
  %index.2 = phi i32 [ %index.1, %if.else.for.end24_crit_edge ], [ %i.086, %for.body7.for.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %best_order.2)
  %cmp25 = icmp eq i32 %best_order.2, 65
  br i1 %cmp25, label %for.end24.cleanup_crit_edge, label %if.end27

for.end24.cleanup_crit_edge:                      ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %for.end24
  %arrayidx28 = getelementptr %struct.eni_free, ptr %1, i32 %index.2
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx28, align 4
  %base_diff = getelementptr inbounds %struct.eni_dev, ptr %eni_dev, i32 0, i32 29
  %12 = ptrtoint ptr %base_diff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_diff, align 4
  %idx.neg = sub i32 0, %13
  %add.ptr = getelementptr i8, ptr %11, i32 %idx.neg
  %dec = add i32 %3, -1
  %arrayidx31 = getelementptr %struct.eni_free, ptr %1, i32 %dec
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %arrayidx31, align 4
  store i64 %15, ptr %arrayidx28, align 4
  %16 = ptrtoint ptr %free_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec, ptr %free_len, align 4
  %17 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl, ptr %size, align 4
  %shl35 = shl nuw i32 1, %best_order.2
  %sub = sub i32 %shl35, %shl
  %18 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %free_list, align 4
  %20 = load i32, ptr %free_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not48.i = icmp eq i32 %sub, 0
  br i1 %tobool.not48.i, label %if.end27.eni_put_free.exit_crit_edge, label %while.body.lr.ph.i

if.end27.eni_put_free.exit_crit_edge:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %eni_put_free.exit

while.body.lr.ph.i:                               ; preds = %if.end27
  %add.ptr34 = getelementptr i8, ptr %add.ptr, i32 %shl
  %21 = ptrtoint ptr %base_diff to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base_diff, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr34, i32 %22
  %free_list_size.i = getelementptr inbounds %struct.eni_dev, ptr %eni_dev, i32 0, i32 32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %start.addr.051.i = phi ptr [ %add.ptr.i, %while.body.lr.ph.i ], [ %add.ptr16.i, %if.end10.i.while.body.i_crit_edge ]
  %size.addr.050.i = phi i32 [ %sub, %while.body.lr.ph.i ], [ %sub.i, %if.end10.i.while.body.i_crit_edge ]
  %len.049.i = phi i32 [ %20, %while.body.lr.ph.i ], [ %inc14.i, %if.end10.i.while.body.i_crit_edge ]
  %23 = ptrtoint ptr %free_list_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %free_list_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.049.i, i32 %24)
  %cmp.not.i = icmp slt i32 %len.049.i, %24
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %while.body.i
  %25 = ptrtoint ptr %start.addr.051.i to i32
  %or.i = or i32 %size.addr.050.i, %25
  br label %for.cond.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %start.addr.051.i, i32 noundef %size.addr.050.i) #17
  br label %eni_put_free.exit

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %order.0.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %for.cond.preheader.i ]
  %shl.i = shl nuw i32 1, %order.0.i
  %and.i = and i32 %shl.i, %or.i
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %inc.i = add i32 %order.0.i, 1
  br i1 %tobool1.not.i, label %for.cond.i.for.cond.i_crit_edge, label %for.end.i

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %shl.i)
  %cmp3.i = icmp slt i32 %shl.i, 1024
  br i1 %cmp3.i, label %do.end7.i, label %if.end10.i

do.end7.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %order.0.i) #17
  br label %eni_put_free.exit

if.end10.i:                                       ; preds = %for.end.i
  %arrayidx.i = getelementptr %struct.eni_free, ptr %19, i32 %len.049.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %start.addr.051.i, ptr %arrayidx.i, align 4
  %order13.i = getelementptr %struct.eni_free, ptr %19, i32 %len.049.i, i32 1
  %27 = ptrtoint ptr %order13.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %order.0.i, ptr %order13.i, align 4
  %inc14.i = add i32 %len.049.i, 1
  %add.ptr16.i = getelementptr i8, ptr %start.addr.051.i, i32 %shl.i
  %sub.i = sub i32 %size.addr.050.i, %shl.i
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end10.i.eni_put_free.exit_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end10.i.eni_put_free.exit_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %eni_put_free.exit

eni_put_free.exit:                                ; preds = %if.end10.i.eni_put_free.exit_crit_edge, %do.end7.i, %do.end.i, %if.end27.eni_put_free.exit_crit_edge
  %len.047.i = phi i32 [ %len.049.i, %do.end7.i ], [ %len.049.i, %do.end.i ], [ %20, %if.end27.eni_put_free.exit_crit_edge ], [ %inc14.i, %if.end10.i.eni_put_free.exit_crit_edge ]
  %28 = ptrtoint ptr %free_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %len.047.i, ptr %free_len, align 4
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size, align 4
  tail call void @mmioset(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %30) #13
  br label %cleanup

cleanup:                                          ; preds = %eni_put_free.exit, %for.end24.cleanup_crit_edge, %for.cond5.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %eni_put_free.exit ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.end24.cleanup_crit_edge ], [ null, %for.cond5.preheader.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_aal5(ptr noundef %vcc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.8, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %0
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %0
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx2.i, align 4
  %add.i = add i32 %0, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr @ec, align 4
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %4 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data, align 8
  %recv = getelementptr inbounds %struct.eni_vcc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recv, align 4
  %descr1 = getelementptr inbounds %struct.eni_vcc, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %descr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %descr1, align 4
  %mul = shl i32 %9, 2
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !514
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !556
  %and = and i32 %11, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 905969664, i32 %and)
  %cmp.not = icmp eq i32 %and, 905969664
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rx_ident_err(ptr noundef %vcc)
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %11, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.else17, label %if.then4

if.then4:                                         ; preds = %if.end
  %and5 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %if.then4.if.end16_crit_edge

if.then4.if.end16_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.else:                                          ; preds = %if.then4
  %12 = load i32, ptr @rx_aal5.silence, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp8 = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9 = icmp eq i32 %12, 0
  %or.cond = or i1 %cmp9, %cmp8
  br i1 %or.cond, label %do.end, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %number, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %17) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, 200
  %or = or i32 %add, 1
  store i32 %or, ptr @rx_aal5.silence, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.else.if.end13_crit_edge
  %and14 = and i32 %11, 2047
  %mul15 = mul nuw nsw i32 %and14, 12
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %if.then4.if.end16_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %if.end13 ], [ @.str.9, %if.then4.if.end16_crit_edge ]
  %mul15.sink = phi i32 [ %mul15, %if.end13 ], [ 0, %if.then4.if.end16_crit_edge ]
  %.sink137 = load i32, ptr @ec, align 4
  %arrayidx.i113 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %.sink137
  %19 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.str.12.sink, ptr %arrayidx.i113, align 4
  %arrayidx1.i114 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %.sink137
  %20 = ptrtoint ptr %arrayidx1.i114 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %11, ptr %arrayidx1.i114, align 4
  %arrayidx2.i115 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %.sink137
  %21 = ptrtoint ptr %arrayidx2.i115 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul15.sink, ptr %arrayidx2.i115, align 4
  %storemerge.in = add i32 %.sink137, 1
  %storemerge = srem i32 %storemerge.in, 64
  store i32 %storemerge, ptr @ec, align 4
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %22 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stats, align 8
  %rx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %23, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_err, i32 1, i32 3, i32 1) #13
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err, ptr %rx_err, i32 1, ptr elementtype(i32) %rx_err) #13, !srcloc !546
  br label %if.then58

if.else17:                                        ; preds = %if.end
  %and18 = and i32 %11, 2047
  %mul19 = mul nuw nsw i32 %and18, 12
  %25 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %recv, align 4
  %27 = ptrtoint ptr %descr1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %descr1, align 4
  %add24 = add nuw nsw i32 %mul19, 1073741823
  %sub25 = add i32 %add24, %28
  %words = getelementptr inbounds %struct.eni_vcc, ptr %5, i32 0, i32 2
  %29 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %words, align 8
  %sub26 = add i32 %30, 1073741823
  %and27 = and i32 %sub26, %sub25
  %mul28 = shl i32 %and27, 2
  %add.ptr29 = getelementptr i8, ptr %26, i32 %mul28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !557
  %32 = and i32 %31, -65536
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool34.not = icmp eq i32 %32, 0
  %.pre = mul nuw nsw i32 %and18, 48
  %sub35 = add nsw i32 %.pre, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %sub35)
  %cmp36.not = icmp ugt i32 %33, %sub35
  %or.cond138 = select i1 %tobool34.not, i1 true, i1 %cmp36.not
  br i1 %or.cond138, label %if.else41, label %if.end53

if.else41:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #15
  %34 = load i32, ptr @ec, align 4
  %arrayidx.i118 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.13, ptr %arrayidx.i118, align 4
  %arrayidx1.i119 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %34
  %36 = ptrtoint ptr %arrayidx1.i119 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %11, ptr %arrayidx1.i119, align 4
  %arrayidx2.i120 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %34
  %37 = ptrtoint ptr %arrayidx2.i120 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %33, ptr %arrayidx2.i120, align 4
  %add.i121 = add i32 %34, 1
  %rem.i122 = srem i32 %add.i121, 64
  store i32 %rem.i122, ptr @ec, align 4
  %dev46 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %38 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev46, align 4
  %number47 = getelementptr inbounds %struct.atm_dev, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %number47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %number47, align 4
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %42 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vci, align 8
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %41, i32 noundef %43, i32 noundef %33, i32 noundef %.pre, i32 noundef %11) #17
  %stats50 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %44 = ptrtoint ptr %stats50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stats50, align 8
  %rx_err51 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %45, i32 0, i32 3
  %call.i.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err51, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_err51, i32 1, i32 3, i32 1) #13
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err51, ptr %rx_err51, i32 1, ptr elementtype(i32) %rx_err51) #13, !srcloc !546
  br label %if.then58

if.end53:                                         ; preds = %if.else17
  %add40 = add nuw nsw i32 %33, 3
  %shl55 = and i32 %add40, 131068
  %call56 = tail call ptr @atm_alloc_charge(ptr noundef %vcc, i32 noundef %shl55, i32 noundef 2592) #13
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.end53.if.then58_crit_edge, label %if.end59

if.end53.if.then58_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58

if.then58:                                        ; preds = %if.end53.if.then58_crit_edge, %if.else41, %if.end16
  %size.1129135 = phi i32 [ %mul19, %if.end53.if.then58_crit_edge ], [ %mul19, %if.else41 ], [ %mul15.sink, %if.end16 ]
  tail call fastcc void @discard(ptr noundef %vcc, i32 noundef %size.1129135)
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  %shr = lshr i32 %add40, 2
  %call60 = tail call ptr @skb_put(ptr noundef nonnull %call56, i32 noundef %33) #13
  %call61 = tail call fastcc i32 @do_rx_dma(ptr noundef %vcc, ptr noundef nonnull %call56, i32 noundef %mul19, i32 noundef %shr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  %rxing = getelementptr inbounds %struct.eni_vcc, ptr %5, i32 0, i32 6
  %47 = ptrtoint ptr %rxing to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rxing, align 8
  %inc = add i32 %48, 1
  store i32 %inc, ptr %rxing, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end59.cleanup_crit_edge, %if.then58, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end64 ], [ 0, %if.then58 ], [ 1, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_aal0(ptr noundef %vcc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %recv = getelementptr inbounds %struct.eni_vcc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv, align 4
  %descr1 = getelementptr inbounds %struct.eni_vcc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %descr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %descr1, align 4
  %mul = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !514
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !558
  %and = and i32 %7, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 905969664, i32 %and)
  %cmp.not = icmp eq i32 %and, 905969664
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rx_ident_err(ptr noundef %vcc)
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats, align 8
  %rx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %9, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_err, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx_err, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_err, ptr %rx_err, i32 1, ptr elementtype(i32) %rx_err) #13, !srcloc !546
  br label %if.then9

cond.end:                                         ; preds = %if.end
  %call7 = tail call ptr @atm_alloc_charge(ptr noundef %vcc, i32 noundef 52, i32 noundef 2592) #13
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %cond.end.if.then9_crit_edge, label %if.end10

cond.end.if.then9_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then9:                                         ; preds = %cond.end.if.then9_crit_edge, %cond.end.thread
  %length.03944 = phi i32 [ 0, %cond.end.thread ], [ 13, %cond.end.if.then9_crit_edge ]
  tail call fastcc void @discard(ptr noundef %vcc, i32 noundef %length.03944)
  br label %cleanup

if.end10:                                         ; preds = %cond.end
  %call11 = tail call ptr @skb_put(ptr noundef nonnull %call7, i32 noundef 52) #13
  %timestamp = getelementptr inbounds %struct.eni_vcc, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %timestamp, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %12, ptr %13, align 8
  %call14 = tail call fastcc i32 @do_rx_dma(ptr noundef %vcc, ptr noundef nonnull %call7, i32 noundef 13, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %rxing = getelementptr inbounds %struct.eni_vcc, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %rxing to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rxing, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %rxing, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end10.cleanup_crit_edge, %if.then9, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end17 ], [ 0, %if.then9 ], [ 1, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_ident_err(ptr nocapture noundef readonly %vcc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !559
  tail call void @arm_heavy_mb() #13
  %reg = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !560
  %7 = and i32 %6, -469762049
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #13, !srcloc !518
  %dev_data5 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %10 = ptrtoint ptr %dev_data5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_data5, align 8
  %number = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %number, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %13) #17
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %14 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vci, align 8
  %rxing = getelementptr inbounds %struct.eni_vcc, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %rxing to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rxing, align 8
  %words = getelementptr inbounds %struct.eni_vcc, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %words, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %15, i32 noundef %17, i32 noundef %19) #17
  %descr = getelementptr inbounds %struct.eni_vcc, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %descr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %descr, align 4
  %rx_pos = getelementptr inbounds %struct.eni_vcc, ptr %11, i32 0, i32 4
  %22 = ptrtoint ptr %rx_pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_pos, align 8
  %recv = getelementptr inbounds %struct.eni_vcc, ptr %11, i32 0, i32 1
  %24 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %recv, align 4
  %mul = shl i32 %21, 2
  %add.ptr23 = getelementptr i8, ptr %25, i32 %mul
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #13, !srcloc !514
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !561
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %21, i32 noundef %23, i32 noundef %27) #17
  %last = getelementptr inbounds %struct.eni_vcc, ptr %11, i32 0, i32 11
  %28 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %last, align 4
  %servicing = getelementptr inbounds %struct.eni_vcc, ptr %11, i32 0, i32 7
  %30 = ptrtoint ptr %servicing to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %servicing, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %29, i32 noundef %31) #17
  %32 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.28, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %32
  %34 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %32
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx2.i, align 4
  %add.i = add i32 %32, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr @ec, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #17
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %n.014.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %36 = load i32, ptr @ec, align 4
  %add.i55 = add i32 %36, %n.014.i
  %rem.i56 = srem i32 %add.i55, 64
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #17
  %arrayidx.i57 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %rem.i56
  %37 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i57, align 4
  %tobool.not.i = icmp eq ptr %38, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.36, ptr %38
  %arrayidx6.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %rem.i56
  %39 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %rem.i56
  %41 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx7.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %spec.select.i, i32 noundef %40, i32 noundef %42) #17
  %inc.i = add nuw nsw i32 %n.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %event_dump.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

event_dump.exit:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_data, align 8
  %fast = getelementptr inbounds %struct.eni_dev, ptr %44, i32 0, i32 20
  %45 = ptrtoint ptr %fast to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %fast, align 4
  %46 = load ptr, ptr %dev_data, align 8
  %slow = getelementptr inbounds %struct.eni_dev, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %slow to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %slow, align 4
  %48 = load ptr, ptr %dev_data, align 8
  %rx_queue = getelementptr inbounds %struct.eni_dev, ptr %48, i32 0, i32 25
  %lock.i = getelementptr inbounds %struct.eni_dev, ptr %48, i32 0, i32 25, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %49 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %rx_queue, ptr %rx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.eni_dev, ptr %48, i32 0, i32 25, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %rx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.eni_dev, ptr %48, i32 0, i32 25, i32 1
  %51 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %qlen.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_alloc_charge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @discard(ptr noundef %vcc, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %2 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.38, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %2
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %2
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx2.i, align 4
  %storemerge.in19 = add i32 %2, 1
  %storemerge20 = srem i32 %storemerge.in19, 64
  store i32 %storemerge20, ptr @ec, align 4
  %call21 = tail call fastcc i32 @do_rx_dma(ptr noundef %vcc, ptr noundef null, i32 noundef %size, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not22 = icmp eq i32 %call21, 0
  br i1 %tobool.not22, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %6 = load i32, ptr @ec, align 4
  %arrayidx.i14 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.39, ptr %arrayidx.i14, align 4
  %arrayidx1.i15 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %6
  %8 = ptrtoint ptr %arrayidx1.i15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx1.i15, align 4
  %arrayidx2.i16 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %6
  %9 = ptrtoint ptr %arrayidx2.i16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx2.i16, align 4
  %storemerge.in = add i32 %6, 1
  %storemerge = srem i32 %storemerge.in, 64
  store i32 %storemerge, ptr @ec, align 4
  %call = tail call fastcc i32 @do_rx_dma(ptr noundef %vcc, ptr noundef null, i32 noundef %size, i32 noundef 0)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %rxing = getelementptr inbounds %struct.eni_vcc, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %rxing to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i32 %size, 1
  %last = getelementptr inbounds %struct.eni_vcc, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %last, align 4
  %pos = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos, align 4
  %add2 = add i32 %add, %15
  store i32 %add2, ptr %pos, align 4
  br label %if.end

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %rx_pos = getelementptr inbounds %struct.eni_vcc, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %rx_pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_pos, align 8
  %add3 = add i32 %size, 1
  %add4 = add i32 %add3, %17
  %words = getelementptr inbounds %struct.eni_vcc, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %words, align 8
  %sub = add i32 %19, -1
  %and = and i32 %sub, %add4
  store i32 %and, ptr %rx_pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_rx_dma(ptr noundef %vcc, ptr noundef %skb, i32 noundef %size, i32 noundef %eff) unnamed_addr #3 align 64 {
entry:
  %dma = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dma) #13
  %0 = call ptr @memset(ptr %dma, i32 255, i32 64)
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_data, align 8
  %dev_data1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %5 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_data1, align 8
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = add i32 %size, 1
  br label %if.end20

if.then:                                          ; preds = %entry
  %pci_dev = getelementptr inbounds %struct.eni_dev, ptr %4, i32 0, i32 37
  %7 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %10) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !542

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev2) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.50, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev2, ptr noundef %10, i32 noundef %12) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %10 to i32
  %sub.i = add i32 %18, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %17, i32 %shr.i
  %and.i = and i32 %18, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev2, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %12, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %19 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev4, i32 noundef %retval.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then256_crit_edge, label %if.end

dma_map_single_attrs.exit.if.then256_crit_edge:   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then256

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %paddr8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %21 = ptrtoint ptr %paddr8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %paddr8, align 4
  %and = and i32 %retval.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %do.end

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number, align 4
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %26 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vci, align 8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %25, i32 noundef %27, i32 noundef %retval.0.i) #17
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  %add = add i32 %size, 1
  %size16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %28 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %size16, align 8
  %29 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %vcc, ptr %cb, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end13, %entry.if.end20_crit_edge
  %add33.pre-phi = phi i32 [ %.pre, %entry.if.end20_crit_edge ], [ %add, %if.end13 ]
  %paddr.0 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ %retval.0.i, %if.end13 ]
  %descr = getelementptr inbounds %struct.eni_vcc, ptr %6, i32 0, i32 3
  %30 = ptrtoint ptr %descr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %descr, align 4
  %add24 = add i32 %31, 1
  %words = getelementptr inbounds %struct.eni_vcc, ptr %6, i32 0, i32 2
  %32 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %words, align 8
  %sub = add i32 %33, 65535
  %and25 = and i32 %sub, %add24
  %shl = shl i32 %and25, 16
  %vci26 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %34 = ptrtoint ptr %vci26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vci26, align 8
  %shl27 = shl i32 %35, 6
  %or = or i32 %shl27, %shl
  %or28 = or i32 %or, 3
  %36 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or28, ptr %dma, align 4
  %arrayidx30 = getelementptr inbounds [16 x i32], ptr %dma, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx30, align 4
  %add34 = add i32 %add33.pre-phi, %31
  %sub36 = add i32 %33, -1
  %and37 = and i32 %sub36, %add34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eff)
  %tobool38.not = icmp eq i32 %eff, 0
  br i1 %tobool38.not, label %if.end20.if.end149_crit_edge, label %if.else

if.end20.if.end149_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end149

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool42.not = icmp eq i32 %size, 0
  br i1 %tobool42.not, label %if.then43, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %38 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.42, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %38
  %40 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %38
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %eff, ptr %arrayidx2.i, align 4
  %add.i = add i32 %38, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr @ec, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.else.if.end44_crit_edge
  %and45 = and i32 %paddr.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end64_crit_edge, label %if.then47

if.end44.if.end64_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %shr = lshr i32 %and45, 2
  %sub49 = sub nuw nsw i32 4, %shr
  %42 = tail call i32 @llvm.umin.i32(i32 %sub49, i32 %eff)
  %shl52 = shl nuw nsw i32 %42, 16
  %or56 = or i32 %shl52, %shl27
  %arrayidx58 = getelementptr inbounds [16 x i32], ptr %dma, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or56, ptr %arrayidx58, align 4
  %arrayidx60 = getelementptr inbounds [16 x i32], ptr %dma, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %paddr.0, ptr %arrayidx60, align 4
  %shl61 = shl nuw nsw i32 %42, 2
  %add62 = add i32 %shl61, %paddr.0
  %sub63 = sub i32 %eff, %42
  br label %if.end64

if.end64:                                         ; preds = %if.then47, %if.end44.if.end64_crit_edge
  %words41.0 = phi i32 [ %sub63, %if.then47 ], [ %eff, %if.end44.if.end64_crit_edge ]
  %j.0 = phi i32 [ 4, %if.then47 ], [ 2, %if.end44.if.end64_crit_edge ]
  %paddr.1 = phi i32 [ %add62, %if.then47 ], [ %paddr.0, %if.end44.if.end64_crit_edge ]
  %and65 = and i32 %words41.0, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end82_crit_edge, label %if.then67

if.end64.if.end82_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  %45 = shl i32 %words41.0, 12
  %shl69 = and i32 %45, -65536
  %or70 = or i32 %shl27, %shl69
  %or73 = or i32 %or70, 6
  %inc74 = or i32 %j.0, 1
  %arrayidx75 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %j.0
  %46 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or73, ptr %arrayidx75, align 4
  %inc76 = add nuw nsw i32 %j.0, 2
  %arrayidx77 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %inc74
  %47 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %paddr.1, ptr %arrayidx77, align 4
  %shl79 = shl i32 %and65, 2
  %add80 = add i32 %paddr.1, %shl79
  %and81 = and i32 %words41.0, 15
  br label %if.end82

if.end82:                                         ; preds = %if.then67, %if.end64.if.end82_crit_edge
  %words41.1 = phi i32 [ %and81, %if.then67 ], [ %words41.0, %if.end64.if.end82_crit_edge ]
  %j.1 = phi i32 [ %inc76, %if.then67 ], [ %j.0, %if.end64.if.end82_crit_edge ]
  %paddr.2 = phi i32 [ %add80, %if.then67 ], [ %paddr.1, %if.end64.if.end82_crit_edge ]
  %and83 = and i32 %words41.1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end100_crit_edge, label %if.then85

if.end82.if.end100_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  %48 = shl nuw nsw i32 %words41.1, 13
  %shl87 = and i32 %48, -65536
  %or88 = or i32 %shl27, %shl87
  %or91 = or i32 %or88, 5
  %inc92 = add nuw nsw i32 %j.1, 1
  %arrayidx93 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %j.1
  %49 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or91, ptr %arrayidx93, align 4
  %inc94 = add nuw nsw i32 %j.1, 2
  %arrayidx95 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %inc92
  %50 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %paddr.2, ptr %arrayidx95, align 4
  %shl97 = shl nuw nsw i32 %and83, 2
  %add98 = add i32 %paddr.2, %shl97
  %and99 = and i32 %words41.1, 7
  br label %if.end100

if.end100:                                        ; preds = %if.then85, %if.end82.if.end100_crit_edge
  %words41.2 = phi i32 [ %and99, %if.then85 ], [ %words41.1, %if.end82.if.end100_crit_edge ]
  %j.2 = phi i32 [ %inc94, %if.then85 ], [ %j.1, %if.end82.if.end100_crit_edge ]
  %paddr.3 = phi i32 [ %add98, %if.then85 ], [ %paddr.2, %if.end82.if.end100_crit_edge ]
  %and101 = and i32 %words41.2, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end118_crit_edge, label %if.then103

if.end100.if.end118_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  %51 = shl nuw nsw i32 %words41.2, 14
  %shl105 = and i32 %51, -65536
  %or106 = or i32 %shl27, %shl105
  %or109 = or i32 %or106, 4
  %inc110 = add nuw nsw i32 %j.2, 1
  %arrayidx111 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %j.2
  %52 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or109, ptr %arrayidx111, align 4
  %inc112 = add nuw nsw i32 %j.2, 2
  %arrayidx113 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %inc110
  %53 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %paddr.3, ptr %arrayidx113, align 4
  %shl115 = shl nuw nsw i32 %and101, 2
  %add116 = add i32 %paddr.3, %shl115
  %and117 = and i32 %words41.2, 3
  br label %if.end118

if.end118:                                        ; preds = %if.then103, %if.end100.if.end118_crit_edge
  %words41.3 = phi i32 [ %and117, %if.then103 ], [ %words41.2, %if.end100.if.end118_crit_edge ]
  %j.3 = phi i32 [ %inc112, %if.then103 ], [ %j.2, %if.end100.if.end118_crit_edge ]
  %paddr.4 = phi i32 [ %add116, %if.then103 ], [ %paddr.3, %if.end100.if.end118_crit_edge ]
  %and119 = and i32 %words41.3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end136_crit_edge, label %if.then121

if.end118.if.end136_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  %54 = shl nuw nsw i32 %words41.3, 15
  %shl123 = and i32 %54, -65536
  %or124 = or i32 %shl27, %shl123
  %or127 = or i32 %or124, 7
  %inc128 = add nuw nsw i32 %j.3, 1
  %arrayidx129 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %j.3
  %55 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or127, ptr %arrayidx129, align 4
  %inc130 = add nuw nsw i32 %j.3, 2
  %arrayidx131 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %inc128
  %56 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %paddr.4, ptr %arrayidx131, align 4
  %shl133 = shl nuw nsw i32 %and119, 2
  %add134 = add i32 %paddr.4, %shl133
  %and135 = and i32 %words41.3, 1
  br label %if.end136

if.end136:                                        ; preds = %if.then121, %if.end118.if.end136_crit_edge
  %words41.4 = phi i32 [ %and135, %if.then121 ], [ %words41.3, %if.end118.if.end136_crit_edge ]
  %j.4 = phi i32 [ %inc130, %if.then121 ], [ %j.3, %if.end118.if.end136_crit_edge ]
  %paddr.5 = phi i32 [ %add134, %if.then121 ], [ %paddr.4, %if.end118.if.end136_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words41.4)
  %tobool137.not = icmp eq i32 %words41.4, 0
  br i1 %tobool137.not, label %if.end136.if.end149_crit_edge, label %if.then138

if.end136.if.end149_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end149

if.then138:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  %shl139 = shl nuw nsw i32 %words41.4, 16
  %or143 = or i32 %shl139, %shl27
  %inc144 = add nuw nsw i32 %j.4, 1
  %arrayidx145 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %j.4
  %57 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or143, ptr %arrayidx145, align 4
  %inc146 = add nuw nsw i32 %j.4, 2
  %arrayidx147 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %inc144
  %58 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %paddr.5, ptr %arrayidx147, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then138, %if.end136.if.end149_crit_edge, %if.end20.if.end149_crit_edge
  %j.6 = phi i32 [ %inc146, %if.then138 ], [ %j.4, %if.end136.if.end149_crit_edge ], [ 2, %if.end20.if.end149_crit_edge ]
  %paddr.6 = phi i32 [ %paddr.5, %if.then138 ], [ %paddr.5, %if.end136.if.end149_crit_edge ], [ %paddr.0, %if.end20.if.end149_crit_edge ]
  %size.addr.0 = phi i32 [ %size, %if.then138 ], [ %size, %if.end136.if.end149_crit_edge ], [ %add33.pre-phi, %if.end20.if.end149_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.0, i32 %eff)
  %cmp150.not = icmp eq i32 %size.addr.0, %eff
  br i1 %cmp150.not, label %if.end149.if.end171_crit_edge, label %if.then151

if.end149.if.end171_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

if.then151:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #15
  %shl152 = shl i32 %and37, 16
  %or155 = or i32 %shl27, %shl152
  %or156 = or i32 %or155, 3
  %inc157 = add nuw nsw i32 %j.6, 1
  %arrayidx158 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %j.6
  %59 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or156, ptr %arrayidx158, align 4
  %inc159 = add nuw nsw i32 %j.6, 2
  %arrayidx160 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %inc157
  %60 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx160, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then151, %if.end149.if.end171_crit_edge
  %j.7 = phi i32 [ %inc159, %if.then151 ], [ %j.6, %if.end149.if.end171_crit_edge ]
  %sub172 = add nsw i32 %j.7, -2
  %arrayidx173 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %sub172
  %61 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx173, align 4
  %or174 = or i32 %62, 32
  store i32 %or174, ptr %arrayidx173, align 4
  %shr1754 = lshr i32 %j.7, 1
  %reg = getelementptr inbounds %struct.eni_dev, ptr %4, i32 0, i32 5
  %63 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %64, i32 32
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !514
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !562
  %67 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg, align 4
  %add.ptr182 = getelementptr i8, ptr %68, i32 36
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr182) #13, !srcloc !514
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !563
  %add187 = or i32 %j.7, 1
  %add188 = add i32 %add187, %66
  %and189 = and i32 %add188, 511
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %and189)
  %cmp190 = icmp ult i32 %66, %and189
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %66)
  %cmp191.not = icmp ule i32 %70, %66
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %and189)
  %cmp197 = icmp ugt i32 %70, %and189
  br i1 %cmp190, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end171
  %or.cond1 = select i1 %cmp191.not, i1 true, i1 %cmp197
  br i1 %or.cond1, label %cond.true.do.body215.lr.ph_crit_edge, label %cond.true.do.end208_crit_edge

cond.true.do.end208_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end208

cond.true.do.body215.lr.ph_crit_edge:             ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body215.lr.ph

cond.false:                                       ; preds = %if.end171
  %or.cond2 = select i1 %cmp191.not, i1 %cmp197, i1 false
  br i1 %or.cond2, label %cond.false.do.body215.lr.ph_crit_edge, label %cond.false.do.end208_crit_edge

cond.false.do.end208_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end208

cond.false.do.body215.lr.ph_crit_edge:            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body215.lr.ph

do.end208:                                        ; preds = %cond.false.do.end208_crit_edge, %cond.true.do.end208_crit_edge
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %number211 = getelementptr inbounds %struct.atm_dev, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %number211 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %number211, align 4
  %call212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %74) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %paddr.6)
  %tobool249.not = icmp eq i32 %paddr.6, 0
  br i1 %tobool249.not, label %do.end208.dma_map_error_crit_edge, label %if.then250

do.end208.dma_map_error_crit_edge:                ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_error

do.body215.lr.ph:                                 ; preds = %cond.false.do.body215.lr.ph_crit_edge, %cond.true.do.body215.lr.ph_crit_edge
  %rx_dma = getelementptr inbounds %struct.eni_dev, ptr %4, i32 0, i32 8
  br label %do.body215

do.body215:                                       ; preds = %do.body215.do.body215_crit_edge, %do.body215.lr.ph
  %dma_wr.07 = phi i32 [ %66, %do.body215.lr.ph ], [ %and232, %do.body215.do.body215_crit_edge ]
  %i.06 = phi i32 [ 0, %do.body215.lr.ph ], [ %inc233, %do.body215.do.body215_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !564
  tail call void @arm_heavy_mb() #13
  %mul = shl nuw i32 %i.06, 1
  %arrayidx218 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %mul
  %75 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx218, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %78 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_dma, align 4
  %mul219 = shl i32 %dma_wr.07, 3
  %add.ptr220 = getelementptr i8, ptr %79, i32 %mul219
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr220, i32 %77) #13, !srcloc !518
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !565
  tail call void @arm_heavy_mb() #13
  %add225 = or i32 %mul, 1
  %arrayidx226 = getelementptr [16 x i32], ptr %dma, i32 0, i32 %add225
  %80 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx226, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %83 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rx_dma, align 4
  %add.ptr229 = getelementptr i8, ptr %84, i32 4
  %add.ptr230 = getelementptr i8, ptr %add.ptr229, i32 %mul219
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr230, i32 %82) #13, !srcloc !518
  %add231 = add i32 %dma_wr.07, 1
  %and232 = and i32 %add231, 511
  %inc233 = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc233, %shr1754
  br i1 %exitcond.not, label %for.end, label %do.body215.do.body215_crit_edge

do.body215.do.body215_crit_edge:                  ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body215

for.end:                                          ; preds = %do.body215
  br i1 %tobool.not, label %for.end.if.end242_crit_edge, label %if.then235

for.end.if.end242_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242

if.then235:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %descr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %descr, align 4
  %add237 = add i32 %size.addr.0, 1
  %add238 = add i32 %add237, %86
  %pos = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %87 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add238, ptr %pos, align 4
  %rx_queue = getelementptr inbounds %struct.eni_dev, ptr %4, i32 0, i32 25
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef nonnull %skb) #13
  %last = getelementptr inbounds %struct.eni_vcc, ptr %6, i32 0, i32 11
  %88 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %skb, ptr %last, align 4
  %89 = load i32, ptr @rx_enqueued, align 4
  %inc241 = add i32 %89, 1
  store i32 %inc241, ptr @rx_enqueued, align 4
  br label %if.end242

if.end242:                                        ; preds = %if.then235, %for.end.if.end242_crit_edge
  %90 = ptrtoint ptr %descr to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and37, ptr %descr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !566
  tail call void @arm_heavy_mb() #13
  %91 = tail call i32 @llvm.bswap.i32(i32 %and232)
  %92 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg, align 4
  %add.ptr248 = getelementptr i8, ptr %93, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr248, i32 %91) #13, !srcloc !518
  br label %cleanup

if.then250:                                       ; preds = %do.end208
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev251 = getelementptr inbounds %struct.eni_dev, ptr %4, i32 0, i32 37
  %94 = ptrtoint ptr %pci_dev251 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pci_dev251, align 4
  %dev252 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  %len253 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %96 = ptrtoint ptr %len253 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len253, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev252, i32 noundef %paddr.6, i32 noundef %97, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_error

dma_map_error:                                    ; preds = %if.then250, %do.end208.dma_map_error_crit_edge
  br i1 %tobool.not, label %dma_map_error.cleanup_crit_edge, label %dma_map_error.if.then256_crit_edge

dma_map_error.if.then256_crit_edge:               ; preds = %dma_map_error
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then256

dma_map_error.cleanup_crit_edge:                  ; preds = %dma_map_error
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then256:                                       ; preds = %dma_map_error.if.then256_crit_edge, %dma_map_single_attrs.exit.if.then256_crit_edge
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %skb, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then256, %dma_map_error.cleanup_crit_edge, %if.end242
  %retval.0 = phi i32 [ 0, %if.end242 ], [ -1, %if.then256 ], [ -1, %dma_map_error.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dma) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reserve_or_set_tx(ptr nocapture noundef readonly %vcc, ptr noundef %txtp, i32 noundef %set_rsv, i32 noundef %set_shp) unnamed_addr #3 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %dev_data1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %4 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #13
  %call = tail call i32 @atm_pcr_goal(ptr noundef %txtp) #13
  %6 = ptrtoint ptr %txtp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %txtp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %land.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %8 = add i32 %call, -353207
  call void @__sanitizer_cov_trace_const_cmp4(i32 -706413, i32 %8)
  %9 = icmp ult i32 %8, -706413
  %10 = or i1 %tobool3.not, %9
  br i1 %10, label %if.else, label %land.end.if.then_crit_edge

land.end.if.then_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %land.end.if.then_crit_edge, %entry.if.then_crit_edge
  %max_sdu = getelementptr inbounds %struct.atm_trafprm, ptr %txtp, i32 0, i32 5
  %11 = ptrtoint ptr %max_sdu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_sdu, align 4
  %tx_mult = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 18
  %13 = ptrtoint ptr %tx_mult to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_mult, align 4
  %mul = mul i32 %14, %12
  %div = sdiv i32 %mul, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %div)
  %cmp9 = icmp ugt i32 %div, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %12)
  %cmp12 = icmp slt i32 %12, 131073
  %or.cond352 = select i1 %cmp9, i1 %cmp12, i1 false
  %spec.store.select = select i1 %or.cond352, i32 131072, i32 %div
  br label %if.end21

if.else:                                          ; preds = %land.end
  %ubr15 = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %ubr15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ubr15, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %if.else.if.end21_crit_edge, label %if.then17

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %tx19 = getelementptr inbounds %struct.eni_vcc, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %tx19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %tx19, align 4
  %pcr = getelementptr inbounds %struct.atm_trafprm, ptr %txtp, i32 0, i32 2
  %18 = ptrtoint ptr %pcr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 353207, ptr %pcr, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.then
  %storemerge = phi i32 [ %spec.store.select, %if.then ], [ 131072, %if.else.if.end21_crit_edge ]
  %tobool.not.i245 = phi i1 [ true, %if.then ], [ false, %if.else.if.end21_crit_edge ]
  %19 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %size, align 4
  %tx22 = getelementptr inbounds %struct.eni_vcc, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %tx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx22, align 4
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %if.else27, label %if.end21.if.end52_crit_edge

if.end21.if.end52_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.else27:                                        ; preds = %if.end21
  %call28 = call fastcc ptr @eni_alloc_mem(ptr noundef %3, ptr noundef nonnull %size)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.else27.cleanup_crit_edge, label %for.body.i

if.else27.cleanup_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %if.else27
  %lnot.ext.i = zext i1 %tobool.not.i245 to i32
  %arrayidx.i = getelementptr %struct.eni_dev, ptr %3, i32 0, i32 11, i32 %lnot.ext.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i, label %for.body.i.alloc_tx.exit_crit_edge, label %for.inc.i

for.body.i.alloc_tx.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_tx.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = select i1 %tobool.not.i245, i32 2, i32 1
  %arrayidx.i.1 = getelementptr %struct.eni_dev, ptr %3, i32 0, i32 11, i32 %inc.i
  %24 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool1.not.i.1 = icmp eq ptr %25, null
  br i1 %tobool1.not.i.1, label %for.inc.i.alloc_tx.exit_crit_edge, label %for.body.i.2

for.inc.i.alloc_tx.exit_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_tx.exit

for.body.i.2:                                     ; preds = %for.inc.i
  %inc.i.1 = add nuw nsw i32 %inc.i, 1
  %arrayidx.i.2 = getelementptr %struct.eni_dev, ptr %3, i32 0, i32 11, i32 %inc.i.1
  %26 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.2, align 4
  %tobool1.not.i.2 = icmp eq ptr %27, null
  br i1 %tobool1.not.i.2, label %for.body.i.2.alloc_tx.exit_crit_edge, label %for.body.i.3

for.body.i.2.alloc_tx.exit_crit_edge:             ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_tx.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %inc.i.2 = add nuw nsw i32 %inc.i, 2
  %arrayidx.i.3 = getelementptr %struct.eni_dev, ptr %3, i32 0, i32 11, i32 %inc.i.2
  %28 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.3, align 4
  %tobool1.not.i.3 = icmp eq ptr %29, null
  br i1 %tobool1.not.i.3, label %for.body.i.3.alloc_tx.exit_crit_edge, label %for.body.i.4

for.body.i.3.alloc_tx.exit_crit_edge:             ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_tx.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %inc.i.3 = add nuw nsw i32 %inc.i, 3
  %arrayidx.i.4 = getelementptr %struct.eni_dev, ptr %3, i32 0, i32 11, i32 %inc.i.3
  %30 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.4, align 4
  %tobool1.not.i.4 = icmp eq ptr %31, null
  br i1 %tobool1.not.i.4, label %for.body.i.4.alloc_tx.exit_crit_edge, label %for.body.i.5

for.body.i.4.alloc_tx.exit_crit_edge:             ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_tx.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %inc.i.4 = or i32 %inc.i, 4
  %arrayidx.i.5 = getelementptr %struct.eni_dev, ptr %3, i32 0, i32 11, i32 %inc.i.4
  %32 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.5, align 4
  %tobool1.not.i.5 = icmp eq ptr %33, null
  br i1 %tobool1.not.i.5, label %for.body.i.5.alloc_tx.exit_crit_edge, label %for.inc.i.5

for.body.i.5.alloc_tx.exit_crit_edge:             ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_tx.exit

for.inc.i.5:                                      ; preds = %for.body.i.5
  %inc.i.5 = add nuw nsw i32 %inc.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.5)
  %exitcond.not.i.5 = icmp eq i32 %inc.i.5, 8
  br i1 %exitcond.not.i.5, label %for.inc.i.5.if.then34_crit_edge, label %for.body.i.6

for.inc.i.5.if.then34_crit_edge:                  ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

for.body.i.6:                                     ; preds = %for.inc.i.5
  %arrayidx.i.6 = getelementptr %struct.eni_dev, ptr %3, i32 0, i32 11, i32 %inc.i.5
  %34 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.6, align 4
  %tobool1.not.i.6 = icmp eq ptr %35, null
  br i1 %tobool1.not.i.6, label %for.body.i.6.alloc_tx.exit_crit_edge, label %for.inc.i.6

for.body.i.6.alloc_tx.exit_crit_edge:             ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_tx.exit

for.inc.i.6:                                      ; preds = %for.body.i.6
  %inc.i.6 = add nuw nsw i32 %inc.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.6)
  %exitcond.not.i.6 = icmp eq i32 %inc.i.6, 8
  br i1 %exitcond.not.i.6, label %for.inc.i.6.if.then34_crit_edge, label %for.body.i.7

for.inc.i.6.if.then34_crit_edge:                  ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

for.body.i.7:                                     ; preds = %for.inc.i.6
  %arrayidx.i.7 = getelementptr %struct.eni_dev, ptr %3, i32 0, i32 11, i32 %inc.i.6
  %36 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.7, align 4
  %tobool1.not.i.7 = icmp eq ptr %37, null
  br i1 %tobool1.not.i.7, label %for.body.i.7.alloc_tx.exit_crit_edge, label %for.body.i.7.if.then34_crit_edge

for.body.i.7.if.then34_crit_edge:                 ; preds = %for.body.i.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

for.body.i.7.alloc_tx.exit_crit_edge:             ; preds = %for.body.i.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_tx.exit

alloc_tx.exit:                                    ; preds = %for.body.i.7.alloc_tx.exit_crit_edge, %for.body.i.6.alloc_tx.exit_crit_edge, %for.body.i.5.alloc_tx.exit_crit_edge, %for.body.i.4.alloc_tx.exit_crit_edge, %for.body.i.3.alloc_tx.exit_crit_edge, %for.body.i.2.alloc_tx.exit_crit_edge, %for.inc.i.alloc_tx.exit_crit_edge, %for.body.i.alloc_tx.exit_crit_edge
  %i.08.i.lcssa = phi i32 [ %lnot.ext.i, %for.body.i.alloc_tx.exit_crit_edge ], [ %inc.i, %for.inc.i.alloc_tx.exit_crit_edge ], [ %inc.i.1, %for.body.i.2.alloc_tx.exit_crit_edge ], [ %inc.i.2, %for.body.i.3.alloc_tx.exit_crit_edge ], [ %inc.i.3, %for.body.i.4.alloc_tx.exit_crit_edge ], [ %inc.i.4, %for.body.i.5.alloc_tx.exit_crit_edge ], [ %inc.i.5, %for.body.i.6.alloc_tx.exit_crit_edge ], [ %inc.i.6, %for.body.i.7.alloc_tx.exit_crit_edge ]
  %tx.i = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 11
  %add.ptr.i = getelementptr %struct.eni_tx, ptr %tx.i, i32 %i.08.i.lcssa
  %tobool33.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool33.not, label %alloc_tx.exit.if.then34_crit_edge, label %if.end35

alloc_tx.exit.if.then34_crit_edge:                ; preds = %alloc_tx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

if.then34:                                        ; preds = %alloc_tx.exit.if.then34_crit_edge, %for.body.i.7.if.then34_crit_edge, %for.inc.i.6.if.then34_crit_edge, %for.inc.i.5.if.then34_crit_edge
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  %base_diff.i = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 29
  %40 = ptrtoint ptr %base_diff.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base_diff.i, align 4
  %add.ptr.i239 = getelementptr i8, ptr %call28, i32 %41
  %free_list.i = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 31
  %42 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %free_list.i, align 4
  %free_len.i = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 30
  %44 = ptrtoint ptr %free_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %free_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not55.i = icmp eq i32 %39, 0
  br i1 %tobool.not55.i, label %if.then34.for.cond1.preheader.i_crit_edge, label %if.then34.for.body.i242_crit_edge

if.then34.for.body.i242_crit_edge:                ; preds = %if.then34
  br label %for.body.i242

if.then34.for.cond1.preheader.i_crit_edge:        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.body.i242.for.cond1.preheader.i_crit_edge, %if.then34.for.cond1.preheader.i_crit_edge
  %order.0.lcssa.i = phi i32 [ -1, %if.then34.for.cond1.preheader.i_crit_edge ], [ %inc.i240, %for.body.i242.for.cond1.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp58.i = icmp sgt i32 %45, 0
  br i1 %cmp58.i, label %for.cond1.preheader.i.for.body2.i_crit_edge, label %for.cond1.preheader.i.for.end14.i_crit_edge

for.cond1.preheader.i.for.end14.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end14.i

for.cond1.preheader.i.for.body2.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body2.i

for.body.i242:                                    ; preds = %for.body.i242.for.body.i242_crit_edge, %if.then34.for.body.i242_crit_edge
  %order.057.i = phi i32 [ %inc.i240, %for.body.i242.for.body.i242_crit_edge ], [ -1, %if.then34.for.body.i242_crit_edge ]
  %size.addr.056.i = phi i32 [ %shr.i, %for.body.i242.for.body.i242_crit_edge ], [ %39, %if.then34.for.body.i242_crit_edge ]
  %shr.i = lshr i32 %size.addr.056.i, 1
  %inc.i240 = add nsw i32 %order.057.i, 1
  %tobool.not.i241 = icmp ult i32 %size.addr.056.i, 2
  br i1 %tobool.not.i241, label %for.body.i242.for.cond1.preheader.i_crit_edge, label %for.body.i242.for.body.i242_crit_edge

for.body.i242.for.body.i242_crit_edge:            ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i242

for.body.i242.for.cond1.preheader.i_crit_edge:    ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

for.body2.i:                                      ; preds = %for.inc12.i.for.body2.i_crit_edge, %for.cond1.preheader.i.for.body2.i_crit_edge
  %start.addr.062.i = phi ptr [ %start.addr.1.i, %for.inc12.i.for.body2.i_crit_edge ], [ %add.ptr.i239, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %order.161.i = phi i32 [ %order.2.i, %for.inc12.i.for.body2.i_crit_edge ], [ %order.0.lcssa.i, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %i.060.i = phi i32 [ %inc13.i, %for.inc12.i.for.body2.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %len.059.i = phi i32 [ %len.1.i, %for.inc12.i.for.body2.i_crit_edge ], [ %45, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %arrayidx.i243 = getelementptr %struct.eni_free, ptr %43, i32 %i.060.i
  %46 = ptrtoint ptr %arrayidx.i243 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i243, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = ptrtoint ptr %start.addr.062.i to i32
  %shl.i = shl nuw i32 1, %order.161.i
  %xor.i = xor i32 %shl.i, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i, i32 %48)
  %cmp4.i = icmp eq i32 %xor.i, %48
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body2.i.for.inc12.i_crit_edge

for.body2.i.for.inc12.i_crit_edge:                ; preds = %for.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12.i

land.lhs.true.i:                                  ; preds = %for.body2.i
  %order6.i = getelementptr %struct.eni_free, ptr %43, i32 %i.060.i, i32 1
  %50 = ptrtoint ptr %order6.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %order6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %order.161.i)
  %cmp7.i = icmp eq i32 %51, %order.161.i
  br i1 %cmp7.i, label %if.then.i244, label %land.lhs.true.i.for.inc12.i_crit_edge

land.lhs.true.i.for.inc12.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12.i

if.then.i244:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dec.i = add nsw i32 %len.059.i, -1
  %arrayidx9.i = getelementptr %struct.eni_free, ptr %43, i32 %dec.i
  %52 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %arrayidx9.i, align 4
  %54 = ptrtoint ptr %arrayidx.i243 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %53, ptr %arrayidx.i243, align 4
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %neg.i, %49
  %55 = inttoptr i32 %and.i to ptr
  %inc11.i = add i32 %order.161.i, 1
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.then.i244, %land.lhs.true.i.for.inc12.i_crit_edge, %for.body2.i.for.inc12.i_crit_edge
  %len.1.i = phi i32 [ %dec.i, %if.then.i244 ], [ %len.059.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %len.059.i, %for.body2.i.for.inc12.i_crit_edge ]
  %i.1.i = phi i32 [ -1, %if.then.i244 ], [ %i.060.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %i.060.i, %for.body2.i.for.inc12.i_crit_edge ]
  %order.2.i = phi i32 [ %inc11.i, %if.then.i244 ], [ %order.161.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %order.161.i, %for.body2.i.for.inc12.i_crit_edge ]
  %start.addr.1.i = phi ptr [ %55, %if.then.i244 ], [ %start.addr.062.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %start.addr.062.i, %for.body2.i.for.inc12.i_crit_edge ]
  %inc13.i = add nsw i32 %i.1.i, 1
  %cmp.i = icmp slt i32 %inc13.i, %len.1.i
  br i1 %cmp.i, label %for.inc12.i.for.body2.i_crit_edge, label %for.inc12.i.for.end14.i_crit_edge

for.inc12.i.for.end14.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end14.i

for.inc12.i.for.body2.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body2.i

for.end14.i:                                      ; preds = %for.inc12.i.for.end14.i_crit_edge, %for.cond1.preheader.i.for.end14.i_crit_edge
  %len.0.lcssa.i = phi i32 [ %45, %for.cond1.preheader.i.for.end14.i_crit_edge ], [ %len.1.i, %for.inc12.i.for.end14.i_crit_edge ]
  %order.1.lcssa.i = phi i32 [ %order.0.lcssa.i, %for.cond1.preheader.i.for.end14.i_crit_edge ], [ %order.2.i, %for.inc12.i.for.end14.i_crit_edge ]
  %start.addr.0.lcssa.i = phi ptr [ %add.ptr.i239, %for.cond1.preheader.i.for.end14.i_crit_edge ], [ %start.addr.1.i, %for.inc12.i.for.end14.i_crit_edge ]
  %free_list_size.i = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 32
  %56 = ptrtoint ptr %free_list_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %free_list_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.lcssa.i, i32 %57)
  %cmp15.not.i = icmp slt i32 %len.0.lcssa.i, %57
  br i1 %cmp15.not.i, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %for.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %start.addr.0.lcssa.i, i32 noundef %order.1.lcssa.i) #17
  br label %cleanup

if.end17.i:                                       ; preds = %for.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx18.i = getelementptr %struct.eni_free, ptr %43, i32 %len.0.lcssa.i
  %58 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %start.addr.0.lcssa.i, ptr %arrayidx18.i, align 4
  %order21.i = getelementptr %struct.eni_free, ptr %43, i32 %len.0.lcssa.i, i32 1
  %59 = ptrtoint ptr %order21.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %order.1.lcssa.i, ptr %order21.i, align 4
  %add.i = add nsw i32 %len.0.lcssa.i, 1
  %60 = ptrtoint ptr %free_len.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i, ptr %free_len.i, align 4
  br label %cleanup

if.end35:                                         ; preds = %alloc_tx.exit
  %shaping = getelementptr %struct.eni_tx, ptr %tx.i, i32 %i.08.i.lcssa, i32 7
  %61 = ptrtoint ptr %shaping to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %shaping, align 4
  %reserved = getelementptr %struct.eni_tx, ptr %tx.i, i32 %i.08.i.lcssa, i32 6
  %62 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %reserved, align 4
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call28, ptr %add.ptr.i, align 4
  %64 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size, align 4
  %shr = lshr i32 %65, 2
  %words = getelementptr %struct.eni_tx, ptr %tx.i, i32 %i.08.i.lcssa, i32 4
  %66 = ptrtoint ptr %words to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shr, ptr %words, align 4
  %backlog = getelementptr %struct.eni_tx, ptr %tx.i, i32 %i.08.i.lcssa, i32 8
  %lock.i = getelementptr %struct.eni_tx, ptr %tx.i, i32 %i.08.i.lcssa, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %67 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %backlog, ptr %backlog, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.95, ptr %backlog, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %backlog, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.eni_tx, ptr %tx.i, i32 %i.08.i.lcssa, i32 8, i32 1
  %69 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %qlen.i.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end35
  %order.0 = phi i32 [ 0, %if.end35 ], [ %inc, %for.cond.for.cond_crit_edge ]
  %add = add i32 %order.0, 10
  %shl = shl nuw i32 1, %add
  %cmp36 = icmp ugt i32 %65, %shl
  %inc = add i32 %order.0, 1
  br i1 %cmp36, label %for.cond.for.cond_crit_edge, label %do.body

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

do.body:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !567
  tail call void @arm_heavy_mb() #13
  %shl38 = shl i32 %order.0, 11
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 4
  %ram = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 6
  %72 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ram, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %73 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shr40 = ashr i32 %sub.ptr.sub, 10
  %or = or i32 %shr40, %shl38
  %74 = tail call i32 @llvm.bswap.i32(i32 %or)
  %reg = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 5
  %75 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg, align 4
  %index = getelementptr %struct.eni_tx, ptr %tx.i, i32 %i.08.i.lcssa, i32 5
  %77 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %index, align 4
  %mul41 = shl i32 %78, 4
  %mul43 = add i32 %mul41, 64
  %add.ptr = getelementptr i8, ptr %76, i32 %mul43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %74) #13, !srcloc !518
  %79 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg, align 4
  %81 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index, align 4
  %mul46 = shl i32 %82, 4
  %mul48 = add i32 %mul46, 72
  %add.ptr49 = getelementptr i8, ptr %80, i32 %mul48
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !568
  %84 = and i32 %83, -8454144
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %tx_pos = getelementptr %struct.eni_tx, ptr %tx.i, i32 %i.08.i.lcssa, i32 3
  %86 = ptrtoint ptr %tx_pos to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tx_pos, align 4
  br label %if.end52

if.end52:                                         ; preds = %do.body, %if.end21.if.end52_crit_edge
  %mem.0 = phi ptr [ %call28, %do.body ], [ null, %if.end21.if.end52_crit_edge ]
  %tx.0 = phi ptr [ %add.ptr.i, %do.body ], [ %21, %if.end21.if.end52_crit_edge ]
  %reserved53 = getelementptr inbounds %struct.eni_tx, ptr %tx.0, i32 0, i32 6
  %87 = ptrtoint ptr %reserved53 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reserved53, align 4
  br i1 %tobool.not.i245, label %if.else.i, label %if.end52.comp_tx.exit_crit_edge

if.end52.comp_tx.exit_crit_edge:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %comp_tx.exit

if.else.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.i247 = icmp sgt i32 %call, 0
  br i1 %cmp.i247, label %for.cond.preheader.i, label %if.else9.i

for.cond.preheader.i:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 97656, i32 %call)
  %cmp5.not.i = icmp ult i32 %call, 97656
  br i1 %cmp5.not.i, label %for.inc.i248, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i248:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24414, i32 %call)
  %cmp5.not.1.i = icmp ult i32 %call, 24414
  br i1 %cmp5.not.1.i, label %for.inc.1.i, label %for.inc.i248.for.end.i_crit_edge

for.inc.i248.for.end.i_crit_edge:                 ; preds = %for.inc.i248
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i248
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3051, i32 %call)
  %cmp5.not.2.i = icmp ult i32 %call, 3051
  %spec.store.select.i = select i1 %cmp5.not.2.i, i32 3, i32 2
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.1.i, %for.inc.i248.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %pre.0 = phi i32 [ %spec.store.select.i, %for.inc.1.i ], [ 1, %for.inc.i248.for.end.i_crit_edge ], [ 0, %for.cond.preheader.i.for.end.i_crit_edge ]
  %arrayidx7.i = getelementptr [4 x i32], ptr @comp_tx.pre_div, i32 0, i32 %pre.0
  %89 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx7.i, align 4
  %mul.i = mul i32 %90, %call
  %div8.i = sdiv i32 25000000, %mul.i
  br label %if.end37.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not.i = icmp eq i32 %call, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else9.i.if.end13.i_crit_edge

if.else9.i.if.end13.i_crit_edge:                  ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #15
  %tx_bw.i = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 15
  %91 = ptrtoint ptr %tx_bw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_bw.i, align 4
  %add.i249 = add i32 %92, %88
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.else9.i.if.end13.i_crit_edge
  %rate.0 = phi i32 [ %add.i249, %if.then12.i ], [ %call, %if.else9.i.if.end13.i_crit_edge ]
  %notsub.i = add i32 %rate.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3052, i32 %notsub.i)
  %93 = icmp sgt i32 %notsub.i, -3052
  br i1 %93, label %if.end13.i.if.end29.i_crit_edge, label %for.inc24.1.i

if.end13.i.if.end29.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

for.inc24.1.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -24415, i32 %notsub.i)
  %cmp21.2.i = icmp ugt i32 %notsub.i, -24415
  br i1 %cmp21.2.i, label %for.inc24.1.i.if.end29.i_crit_edge, label %for.inc24.2.i

for.inc24.1.i.if.end29.i_crit_edge:               ; preds = %for.inc24.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

for.inc24.2.i:                                    ; preds = %for.inc24.1.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -97657, i32 %notsub.i)
  %cmp21.3.i = icmp ugt i32 %notsub.i, -97657
  %phi.bo.i = zext i1 %cmp21.3.i to i32
  br label %if.end29.i

if.end29.i:                                       ; preds = %for.inc24.2.i, %for.inc24.1.i.if.end29.i_crit_edge, %if.end13.i.if.end29.i_crit_edge
  %pre.1 = phi i32 [ 3, %if.end13.i.if.end29.i_crit_edge ], [ 2, %for.inc24.1.i.if.end29.i_crit_edge ], [ %phi.bo.i, %for.inc24.2.i ]
  %arrayidx30.i = getelementptr [4 x i32], ptr @comp_tx.pre_div, i32 0, i32 %pre.1
  %94 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx30.i, align 4
  %96 = mul i32 %95, %rate.0
  %mul32.i = sub i32 0, %96
  %sub34.i = sub i32 24999999, %96
  %div35.i = sdiv i32 %sub34.i, %mul32.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end29.i, %for.end.i
  %pre.2 = phi i32 [ %pre.0, %for.end.i ], [ %pre.1, %if.end29.i ]
  %storemerge1.in.i = phi i32 [ %div8.i, %for.end.i ], [ %div35.i, %if.end29.i ]
  %storemerge1.i = add i32 %storemerge1.in.i, -1
  %97 = tail call i32 @llvm.smax.i32(i32 %storemerge1.i, i32 0) #13
  %98 = tail call i32 @llvm.umin.i32(i32 %97, i32 63) #13
  br label %comp_tx.exit

comp_tx.exit:                                     ; preds = %if.end37.i, %if.end52.comp_tx.exit_crit_edge
  %pre.3 = phi i32 [ %pre.2, %if.end37.i ], [ 0, %if.end52.comp_tx.exit_crit_edge ]
  %res.0 = phi i32 [ %98, %if.end37.i ], [ 0, %if.end52.comp_tx.exit_crit_edge ]
  %arrayidx45.i = getelementptr [4 x i32], ptr @comp_tx.pre_div, i32 0, i32 %pre.3
  %99 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx45.i, align 4
  %div46.i = sdiv i32 25000000, %100
  %add47.i = add nuw nsw i32 %res.0, 1
  %div48.i = sdiv i32 %div46.i, %add47.i
  %min_pcr = getelementptr inbounds %struct.atm_trafprm, ptr %txtp, i32 0, i32 3
  %101 = ptrtoint ptr %min_pcr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %min_pcr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %div48.i)
  %cmp57 = icmp sgt i32 %102, %div48.i
  br i1 %cmp57, label %comp_tx.exit.if.then107_crit_edge, label %land.lhs.true62

comp_tx.exit.if.then107_crit_edge:                ; preds = %comp_tx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then107

land.lhs.true62:                                  ; preds = %comp_tx.exit
  %max_pcr = getelementptr inbounds %struct.atm_trafprm, ptr %txtp, i32 0, i32 1
  %103 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max_pcr, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %104, label %land.lhs.true68 [
    i32 0, label %land.lhs.true62.if.end73_crit_edge
    i32 -1, label %land.lhs.true62.if.end73_crit_edge365
  ]

land.lhs.true62.if.end73_crit_edge365:            ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

land.lhs.true62.if.end73_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

land.lhs.true68:                                  ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %div48.i)
  %cmp70 = icmp slt i32 %104, %div48.i
  %spec.select = select i1 %cmp70, i32 -22, i32 0
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true68, %land.lhs.true62.if.end73_crit_edge, %land.lhs.true62.if.end73_crit_edge365
  %error.1 = phi i32 [ 0, %land.lhs.true62.if.end73_crit_edge ], [ 0, %land.lhs.true62.if.end73_crit_edge365 ], [ %spec.select, %land.lhs.true68 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool74.not = icmp ne i32 %error.1, 0
  %brmerge = select i1 %tobool74.not, i1 true, i1 %cmp
  br i1 %brmerge, label %if.end83, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.end73
  %tx_bw = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 15
  %106 = ptrtoint ptr %tx_bw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_bw, align 4
  %add79 = add i32 %107, %88
  call void @__sanitizer_cov_trace_cmp4(i32 %div48.i, i32 %add79)
  %cmp80 = icmp sgt i32 %div48.i, %add79
  br i1 %cmp80, label %land.lhs.true77.if.then107_crit_edge, label %land.lhs.true77.land.lhs.true85_crit_edge

land.lhs.true77.land.lhs.true85_crit_edge:        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true85

land.lhs.true77.if.then107_crit_edge:             ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then107

if.end83:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool84.not = icmp eq i32 %error.1, 0
  br i1 %tobool84.not, label %if.end83.land.lhs.true85_crit_edge, label %if.end83.if.then107_crit_edge

if.end83.if.then107_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then107

if.end83.land.lhs.true85_crit_edge:               ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true85

land.lhs.true85:                                  ; preds = %if.end83.land.lhs.true85_crit_edge, %land.lhs.true77.land.lhs.true85_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_rsv)
  %tobool86.not = icmp ne i32 %set_rsv, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_shp)
  %tobool88.not = icmp eq i32 %set_shp, 0
  %or.cond229 = and i1 %tobool86.not, %tobool88.not
  br i1 %or.cond229, label %land.lhs.true89, label %land.lhs.true96

land.lhs.true89:                                  ; preds = %land.lhs.true85
  %shaping90 = getelementptr inbounds %struct.eni_tx, ptr %tx.0, i32 0, i32 7
  %108 = ptrtoint ptr %shaping90 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %shaping90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div48.i, i32 %109)
  %cmp91 = icmp slt i32 %div48.i, %109
  br i1 %cmp91, label %land.lhs.true89.if.then107_crit_edge, label %land.lhs.true89.if.end112_crit_edge

land.lhs.true89.if.end112_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

land.lhs.true89.if.then107_crit_edge:             ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then107

land.lhs.true96:                                  ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_rsv)
  %tobool97.not = icmp eq i32 %set_rsv, 0
  br i1 %tobool97.not, label %land.lhs.true98, label %land.lhs.true96.if.end112_crit_edge

land.lhs.true96.if.end112_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

land.lhs.true98:                                  ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_cmp4(i32 %div48.i, i32 %88)
  %cmp100 = icmp sgt i32 %div48.i, %88
  br i1 %cmp100, label %if.end105, label %if.end112.thread348

if.end112.thread348:                              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #15
  %pcr113349 = getelementptr inbounds %struct.atm_trafprm, ptr %txtp, i32 0, i32 2
  %110 = ptrtoint ptr %pcr113349 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %div48.i, ptr %pcr113349, align 4
  br label %if.end123

if.end105:                                        ; preds = %land.lhs.true98
  br i1 %cmp, label %if.end112.thread, label %if.end105.if.then107_crit_edge

if.end105.if.then107_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then107

if.end112.thread:                                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  %pcr113345 = getelementptr inbounds %struct.atm_trafprm, ptr %txtp, i32 0, i32 2
  %111 = ptrtoint ptr %pcr113345 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %div48.i, ptr %pcr113345, align 4
  br label %if.end123

if.then107:                                       ; preds = %if.end105.if.then107_crit_edge, %land.lhs.true89.if.then107_crit_edge, %if.end83.if.then107_crit_edge, %land.lhs.true77.if.then107_crit_edge, %comp_tx.exit.if.then107_crit_edge
  %error.4344 = phi i32 [ -22, %if.end105.if.then107_crit_edge ], [ %error.1, %if.end83.if.then107_crit_edge ], [ -22, %land.lhs.true77.if.then107_crit_edge ], [ -22, %land.lhs.true89.if.then107_crit_edge ], [ -22, %comp_tx.exit.if.then107_crit_edge ]
  br i1 %tobool23.not, label %if.then109, label %if.then107.cleanup_crit_edge

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then109:                                       ; preds = %if.then107
  %112 = ptrtoint ptr %tx.0 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %tx.0, align 4
  %113 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %size, align 4
  %base_diff.i250 = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 29
  %115 = ptrtoint ptr %base_diff.i250 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %base_diff.i250, align 4
  %add.ptr.i251 = getelementptr i8, ptr %mem.0, i32 %116
  %free_list.i252 = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 31
  %117 = ptrtoint ptr %free_list.i252 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %free_list.i252, align 4
  %free_len.i253 = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 30
  %119 = ptrtoint ptr %free_len.i253 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %free_len.i253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not55.i254 = icmp eq i32 %114, 0
  br i1 %tobool.not55.i254, label %if.then109.for.cond1.preheader.i257_crit_edge, label %if.then109.for.body.i263_crit_edge

if.then109.for.body.i263_crit_edge:               ; preds = %if.then109
  br label %for.body.i263

if.then109.for.cond1.preheader.i257_crit_edge:    ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i257

for.cond1.preheader.i257:                         ; preds = %for.body.i263.for.cond1.preheader.i257_crit_edge, %if.then109.for.cond1.preheader.i257_crit_edge
  %order.0.lcssa.i255 = phi i32 [ -1, %if.then109.for.cond1.preheader.i257_crit_edge ], [ %inc.i261, %for.body.i263.for.cond1.preheader.i257_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp58.i256 = icmp sgt i32 %120, 0
  br i1 %cmp58.i256, label %for.cond1.preheader.i257.for.body2.i272_crit_edge, label %for.cond1.preheader.i257.for.end14.i294_crit_edge

for.cond1.preheader.i257.for.end14.i294_crit_edge: ; preds = %for.cond1.preheader.i257
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end14.i294

for.cond1.preheader.i257.for.body2.i272_crit_edge: ; preds = %for.cond1.preheader.i257
  br label %for.body2.i272

for.body.i263:                                    ; preds = %for.body.i263.for.body.i263_crit_edge, %if.then109.for.body.i263_crit_edge
  %order.057.i258 = phi i32 [ %inc.i261, %for.body.i263.for.body.i263_crit_edge ], [ -1, %if.then109.for.body.i263_crit_edge ]
  %size.addr.056.i259 = phi i32 [ %shr.i260, %for.body.i263.for.body.i263_crit_edge ], [ %114, %if.then109.for.body.i263_crit_edge ]
  %shr.i260 = lshr i32 %size.addr.056.i259, 1
  %inc.i261 = add nsw i32 %order.057.i258, 1
  %tobool.not.i262 = icmp ult i32 %size.addr.056.i259, 2
  br i1 %tobool.not.i262, label %for.body.i263.for.cond1.preheader.i257_crit_edge, label %for.body.i263.for.body.i263_crit_edge

for.body.i263.for.body.i263_crit_edge:            ; preds = %for.body.i263
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i263

for.body.i263.for.cond1.preheader.i257_crit_edge: ; preds = %for.body.i263
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i257

for.body2.i272:                                   ; preds = %for.inc12.i288.for.body2.i272_crit_edge, %for.cond1.preheader.i257.for.body2.i272_crit_edge
  %start.addr.062.i264 = phi ptr [ %start.addr.1.i285, %for.inc12.i288.for.body2.i272_crit_edge ], [ %add.ptr.i251, %for.cond1.preheader.i257.for.body2.i272_crit_edge ]
  %order.161.i265 = phi i32 [ %order.2.i284, %for.inc12.i288.for.body2.i272_crit_edge ], [ %order.0.lcssa.i255, %for.cond1.preheader.i257.for.body2.i272_crit_edge ]
  %i.060.i266 = phi i32 [ %inc13.i286, %for.inc12.i288.for.body2.i272_crit_edge ], [ 0, %for.cond1.preheader.i257.for.body2.i272_crit_edge ]
  %len.059.i267 = phi i32 [ %len.1.i282, %for.inc12.i288.for.body2.i272_crit_edge ], [ %120, %for.cond1.preheader.i257.for.body2.i272_crit_edge ]
  %arrayidx.i268 = getelementptr %struct.eni_free, ptr %118, i32 %i.060.i266
  %121 = ptrtoint ptr %arrayidx.i268 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i268, align 4
  %123 = ptrtoint ptr %122 to i32
  %124 = ptrtoint ptr %start.addr.062.i264 to i32
  %shl.i269 = shl nuw i32 1, %order.161.i265
  %xor.i270 = xor i32 %shl.i269, %124
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i270, i32 %123)
  %cmp4.i271 = icmp eq i32 %xor.i270, %123
  br i1 %cmp4.i271, label %land.lhs.true.i275, label %for.body2.i272.for.inc12.i288_crit_edge

for.body2.i272.for.inc12.i288_crit_edge:          ; preds = %for.body2.i272
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12.i288

land.lhs.true.i275:                               ; preds = %for.body2.i272
  %order6.i273 = getelementptr %struct.eni_free, ptr %118, i32 %i.060.i266, i32 1
  %125 = ptrtoint ptr %order6.i273 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %order6.i273, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %order.161.i265)
  %cmp7.i274 = icmp eq i32 %126, %order.161.i265
  br i1 %cmp7.i274, label %if.then.i281, label %land.lhs.true.i275.for.inc12.i288_crit_edge

land.lhs.true.i275.for.inc12.i288_crit_edge:      ; preds = %land.lhs.true.i275
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12.i288

if.then.i281:                                     ; preds = %land.lhs.true.i275
  call void @__sanitizer_cov_trace_pc() #15
  %dec.i276 = add nsw i32 %len.059.i267, -1
  %arrayidx9.i277 = getelementptr %struct.eni_free, ptr %118, i32 %dec.i276
  %127 = ptrtoint ptr %arrayidx9.i277 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 8)
  %128 = load i64, ptr %arrayidx9.i277, align 4
  %129 = ptrtoint ptr %arrayidx.i268 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 8)
  store i64 %128, ptr %arrayidx.i268, align 4
  %neg.i278 = xor i32 %shl.i269, -1
  %and.i279 = and i32 %neg.i278, %124
  %130 = inttoptr i32 %and.i279 to ptr
  %inc11.i280 = add i32 %order.161.i265, 1
  br label %for.inc12.i288

for.inc12.i288:                                   ; preds = %if.then.i281, %land.lhs.true.i275.for.inc12.i288_crit_edge, %for.body2.i272.for.inc12.i288_crit_edge
  %len.1.i282 = phi i32 [ %dec.i276, %if.then.i281 ], [ %len.059.i267, %land.lhs.true.i275.for.inc12.i288_crit_edge ], [ %len.059.i267, %for.body2.i272.for.inc12.i288_crit_edge ]
  %i.1.i283 = phi i32 [ -1, %if.then.i281 ], [ %i.060.i266, %land.lhs.true.i275.for.inc12.i288_crit_edge ], [ %i.060.i266, %for.body2.i272.for.inc12.i288_crit_edge ]
  %order.2.i284 = phi i32 [ %inc11.i280, %if.then.i281 ], [ %order.161.i265, %land.lhs.true.i275.for.inc12.i288_crit_edge ], [ %order.161.i265, %for.body2.i272.for.inc12.i288_crit_edge ]
  %start.addr.1.i285 = phi ptr [ %130, %if.then.i281 ], [ %start.addr.062.i264, %land.lhs.true.i275.for.inc12.i288_crit_edge ], [ %start.addr.062.i264, %for.body2.i272.for.inc12.i288_crit_edge ]
  %inc13.i286 = add nsw i32 %i.1.i283, 1
  %cmp.i287 = icmp slt i32 %inc13.i286, %len.1.i282
  br i1 %cmp.i287, label %for.inc12.i288.for.body2.i272_crit_edge, label %for.inc12.i288.for.end14.i294_crit_edge

for.inc12.i288.for.end14.i294_crit_edge:          ; preds = %for.inc12.i288
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end14.i294

for.inc12.i288.for.body2.i272_crit_edge:          ; preds = %for.inc12.i288
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body2.i272

for.end14.i294:                                   ; preds = %for.inc12.i288.for.end14.i294_crit_edge, %for.cond1.preheader.i257.for.end14.i294_crit_edge
  %len.0.lcssa.i289 = phi i32 [ %120, %for.cond1.preheader.i257.for.end14.i294_crit_edge ], [ %len.1.i282, %for.inc12.i288.for.end14.i294_crit_edge ]
  %order.1.lcssa.i290 = phi i32 [ %order.0.lcssa.i255, %for.cond1.preheader.i257.for.end14.i294_crit_edge ], [ %order.2.i284, %for.inc12.i288.for.end14.i294_crit_edge ]
  %start.addr.0.lcssa.i291 = phi ptr [ %add.ptr.i251, %for.cond1.preheader.i257.for.end14.i294_crit_edge ], [ %start.addr.1.i285, %for.inc12.i288.for.end14.i294_crit_edge ]
  %free_list_size.i292 = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 32
  %131 = ptrtoint ptr %free_list_size.i292 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %free_list_size.i292, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.lcssa.i289, i32 %132)
  %cmp15.not.i293 = icmp slt i32 %len.0.lcssa.i289, %132
  br i1 %cmp15.not.i293, label %if.end17.i300, label %do.end.i296

do.end.i296:                                      ; preds = %for.end14.i294
  call void @__sanitizer_cov_trace_pc() #15
  %call.i295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %start.addr.0.lcssa.i291, i32 noundef %order.1.lcssa.i290) #17
  br label %cleanup

if.end17.i300:                                    ; preds = %for.end14.i294
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx18.i297 = getelementptr %struct.eni_free, ptr %118, i32 %len.0.lcssa.i289
  %133 = ptrtoint ptr %arrayidx18.i297 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %start.addr.0.lcssa.i291, ptr %arrayidx18.i297, align 4
  %order21.i298 = getelementptr %struct.eni_free, ptr %118, i32 %len.0.lcssa.i289, i32 1
  %134 = ptrtoint ptr %order21.i298 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %order.1.lcssa.i290, ptr %order21.i298, align 4
  %add.i299 = add nsw i32 %len.0.lcssa.i289, 1
  %135 = ptrtoint ptr %free_len.i253 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %add.i299, ptr %free_len.i253, align 4
  br label %cleanup

if.end112:                                        ; preds = %land.lhs.true96.if.end112_crit_edge, %land.lhs.true89.if.end112_crit_edge
  %pcr113 = getelementptr inbounds %struct.atm_trafprm, ptr %txtp, i32 0, i32 2
  %136 = ptrtoint ptr %pcr113 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %div48.i, ptr %pcr113, align 4
  br i1 %cmp, label %if.end112.if.end123_crit_edge, label %if.then117

if.end112.if.end123_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.then117:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %137 = ptrtoint ptr %reserved53 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %reserved53, align 4
  %tx_bw119 = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 15
  %139 = ptrtoint ptr %tx_bw119 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tx_bw119, align 4
  %add120 = add i32 %140, %138
  store i32 %add120, ptr %tx_bw119, align 4
  store i32 %div48.i, ptr %reserved53, align 4
  %141 = load i32, ptr %tx_bw119, align 4
  %sub = sub i32 %141, %div48.i
  store i32 %sub, ptr %tx_bw119, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then117, %if.end112.if.end123_crit_edge, %if.end112.thread, %if.end112.thread348
  %tobool23.not.not = xor i1 %tobool23.not, true
  %brmerge233 = select i1 %tobool.not.i245, i1 true, i1 %tobool23.not.not
  %or.cond = select i1 %tobool88.not, i1 %brmerge233, i1 false
  br i1 %or.cond, label %if.end123.cleanup_crit_edge, label %if.then129

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then129:                                       ; preds = %if.end123
  br i1 %brmerge233, label %if.then129.if.end135_crit_edge, label %if.then133

if.then129.if.end135_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

if.then133:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  %ubr134 = getelementptr inbounds %struct.eni_dev, ptr %3, i32 0, i32 12
  %142 = ptrtoint ptr %ubr134 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %tx.0, ptr %ubr134, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.then129.if.end135_crit_edge
  %prescaler = getelementptr inbounds %struct.eni_tx, ptr %tx.0, i32 0, i32 1
  %143 = ptrtoint ptr %prescaler to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %pre.3, ptr %prescaler, align 4
  %resolution = getelementptr inbounds %struct.eni_tx, ptr %tx.0, i32 0, i32 2
  %144 = ptrtoint ptr %resolution to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %res.0, ptr %resolution, align 4
  %shaping136 = getelementptr inbounds %struct.eni_tx, ptr %tx.0, i32 0, i32 7
  %145 = ptrtoint ptr %shaping136 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %div48.i, ptr %shaping136, align 4
  br i1 %tobool88.not, label %if.end135.cleanup_crit_edge, label %if.then139

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #15
  %146 = ptrtoint ptr %tx22 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %tx.0, ptr %tx22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %if.end135.cleanup_crit_edge, %if.end123.cleanup_crit_edge, %if.end17.i300, %do.end.i296, %if.then107.cleanup_crit_edge, %if.end17.i, %do.end.i, %if.else27.cleanup_crit_edge, %if.then17
  %retval.0 = phi i32 [ 0, %if.then17 ], [ -105, %if.else27.cleanup_crit_edge ], [ %error.4344, %if.then107.cleanup_crit_edge ], [ 0, %if.then139 ], [ 0, %if.end135.cleanup_crit_edge ], [ -16, %do.end.i ], [ -16, %if.end17.i ], [ %error.4344, %do.end.i296 ], [ %error.4344, %if.end17.i300 ], [ 0, %if.end123.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_pcr_goal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @close_rx(ptr nocapture noundef readonly %vcc) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !504) #13
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
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %13 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_data, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.cleanup380_crit_edge, label %if.end

entry.cleanup380_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup380

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %dev_data2 = getelementptr inbounds %struct.atm_dev, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %dev_data2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_data2, align 8
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %21 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vpi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %22)
  %cmp.not = icmp eq i16 %22, -2
  br i1 %cmp.not, label %if.end.if.end378_crit_edge, label %land.lhs.true

if.end.if.end378_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end378

land.lhs.true:                                    ; preds = %if.end
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %23 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vci, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %24)
  %cmp4.not = icmp eq i32 %24, -2
  br i1 %cmp4.not, label %land.lhs.true.if.end378_crit_edge, label %if.then6

land.lhs.true.if.end378_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end378

if.then6:                                         ; preds = %land.lhs.true
  %vci7 = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 7
  %25 = ptrtoint ptr %vci7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vci7, align 4
  %mul = shl i32 %24, 4
  %add.ptr = getelementptr i8, ptr %26, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !569
  tail call void @arm_heavy_mb() #13
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !570
  %28 = and i32 %27, -193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %28) #13, !srcloc !518
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 5798196) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !571
  tail call void @arm_heavy_mb() #13
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !572
  %31 = and i32 %30, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %31) #13, !srcloc !518
  %rx_map = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 24
  %32 = ptrtoint ptr %rx_map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_map, align 4
  %34 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vci, align 8
  %arrayidx = getelementptr ptr, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx, align 4
  %37 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.55, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %37
  %39 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %37
  %40 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx2.i, align 4
  %add.i = add i32 %37, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr @ec, align 4
  %rx_wait = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 26
  call void @add_wait_queue(ptr noundef %rx_wait, ptr noundef nonnull %wait) #13
  br label %__here

__here:                                           ; preds = %if.then6
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 212
  %43 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 ptrtoint (ptr blockaddress(@close_rx, %__here) to i32), ptr %task_state_change, align 4
  %44 = load ptr, ptr %task, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 2, ptr %44, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !573
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !574
  %servicing = getelementptr inbounds %struct.eni_vcc, ptr %14, i32 0, i32 7
  %rxing = getelementptr inbounds %struct.eni_vcc, ptr %14, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %__here156, %__here
  %46 = ptrtoint ptr %servicing to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %servicing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool90.not = icmp eq i32 %47, 0
  br i1 %tobool90.not, label %if.then91, label %for.cond.if.end95_crit_edge

for.cond.if.end95_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then91:                                        ; preds = %for.cond
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !575
  %48 = ptrtoint ptr %rxing to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rxing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool92.not = icmp eq i32 %49, 0
  br i1 %tobool92.not, label %for.cond186.preheader, label %if.then91.if.end95_crit_edge

if.then91.if.end95_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

for.cond186.preheader:                            ; preds = %if.then91
  %task188 = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 1
  %count.i.i = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 1, i32 2
  %rx_pos = getelementptr inbounds %struct.eni_vcc, ptr %14, i32 0, i32 4
  br label %for.cond186

if.end95:                                         ; preds = %if.then91.if.end95_crit_edge, %for.cond.if.end95_crit_edge
  %50 = ptrtoint ptr %rxing to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rxing, align 8
  %52 = ptrtoint ptr %servicing to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %servicing, align 4
  %54 = load i32, ptr @ec, align 4
  %arrayidx.i424 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i424 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.56, ptr %arrayidx.i424, align 4
  %arrayidx1.i425 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %54
  %56 = ptrtoint ptr %arrayidx1.i425 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %51, ptr %arrayidx1.i425, align 4
  %arrayidx2.i426 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %54
  %57 = ptrtoint ptr %arrayidx2.i426 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %53, ptr %arrayidx2.i426, align 4
  %add.i427 = add i32 %54, 1
  %rem.i428 = srem i32 %add.i427, 64
  store i32 %rem.i428, ptr @ec, align 4
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %53, i32 noundef %51) #17
  call void @schedule() #13
  br label %__here156

__here156:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task, align 8
  %task_state_change160 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 212
  %60 = ptrtoint ptr %task_state_change160 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 ptrtoint (ptr blockaddress(@close_rx, %__here156) to i32), ptr %task_state_change160, align 4
  %61 = load ptr, ptr %task, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 2, ptr %61, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !576
  br label %for.cond

for.cond186:                                      ; preds = %cleanup, %for.cond186.preheader
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %63 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !546
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !547
  call void @tasklet_unlock_wait(ptr noundef %task188) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !553
  %64 = ptrtoint ptr %vci7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vci7, align 4
  %66 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vci, align 8
  %mul193 = shl i32 %67, 4
  %add.ptr194 = getelementptr i8, ptr %65, i32 4
  %add.ptr195 = getelementptr i8, ptr %add.ptr194, i32 %mul193
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #13, !srcloc !514
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !577
  %69 = and i32 %68, -8454144
  %70 = call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %rx_pos to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_pos, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %70)
  %cmp200 = icmp eq i32 %72, %70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !549
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %73 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !550
  br i1 %cmp200, label %__here347, label %if.end205

if.end205:                                        ; preds = %for.cond186
  %74 = ptrtoint ptr %rx_pos to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_pos, align 8
  %76 = load i32, ptr @ec, align 4
  %arrayidx.i429 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx.i429 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.60, ptr %arrayidx.i429, align 4
  %arrayidx1.i430 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %76
  %78 = ptrtoint ptr %arrayidx1.i430 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %75, ptr %arrayidx1.i430, align 4
  %arrayidx2.i431 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %76
  %79 = ptrtoint ptr %arrayidx2.i431 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %70, ptr %arrayidx2.i431, align 4
  %add.i432 = add i32 %76, 1
  %rem.i433 = srem i32 %add.i432, 64
  store i32 %rem.i433, ptr @ec, align 4
  %call212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %75, i32 noundef %70) #17
  call void @schedule() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task, align 8
  %task_state_change268 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 212
  %82 = ptrtoint ptr %task_state_change268 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 ptrtoint (ptr blockaddress(@close_rx, %cleanup) to i32), ptr %task_state_change268, align 4
  %83 = load ptr, ptr %task, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 2, ptr %83, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !578
  br label %for.cond186

__here347:                                        ; preds = %for.cond186
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task, align 8
  %task_state_change351 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 212
  %87 = ptrtoint ptr %task_state_change351 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 ptrtoint (ptr blockaddress(@close_rx, %__here347) to i32), ptr %task_state_change351, align 4
  %88 = load ptr, ptr %task, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 0, ptr %88, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !579
  call void @remove_wait_queue(ptr noundef %rx_wait, ptr noundef nonnull %wait) #13
  br label %if.end378

if.end378:                                        ; preds = %__here347, %land.lhs.true.if.end378_crit_edge, %if.end.if.end378_crit_edge
  %recv = getelementptr inbounds %struct.eni_vcc, ptr %14, i32 0, i32 1
  %90 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %recv, align 4
  %words = getelementptr inbounds %struct.eni_vcc, ptr %14, i32 0, i32 2
  %92 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %words, align 8
  %shl = shl i32 %93, 2
  %base_diff.i = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 29
  %94 = ptrtoint ptr %base_diff.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %base_diff.i, align 4
  %add.ptr.i = getelementptr i8, ptr %91, i32 %95
  %free_list.i = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 31
  %96 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %free_list.i, align 4
  %free_len.i = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 30
  %98 = ptrtoint ptr %free_len.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %free_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool.not55.i = icmp eq i32 %shl, 0
  br i1 %tobool.not55.i, label %if.end378.for.cond1.preheader.i_crit_edge, label %if.end378.for.body.i_crit_edge

if.end378.for.body.i_crit_edge:                   ; preds = %if.end378
  br label %for.body.i

if.end378.for.cond1.preheader.i_crit_edge:        ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.body.i.for.cond1.preheader.i_crit_edge, %if.end378.for.cond1.preheader.i_crit_edge
  %order.0.lcssa.i = phi i32 [ -1, %if.end378.for.cond1.preheader.i_crit_edge ], [ %inc.i, %for.body.i.for.cond1.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp58.i = icmp sgt i32 %99, 0
  br i1 %cmp58.i, label %for.cond1.preheader.i.for.body2.i_crit_edge, label %for.cond1.preheader.i.for.end14.i_crit_edge

for.cond1.preheader.i.for.end14.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end14.i

for.cond1.preheader.i.for.body2.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body2.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end378.for.body.i_crit_edge
  %order.057.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ -1, %if.end378.for.body.i_crit_edge ]
  %size.addr.056.i = phi i32 [ %shr.i, %for.body.i.for.body.i_crit_edge ], [ %shl, %if.end378.for.body.i_crit_edge ]
  %shr.i = lshr i32 %size.addr.056.i, 1
  %inc.i = add nsw i32 %order.057.i, 1
  %tobool.not.i = icmp ult i32 %size.addr.056.i, 2
  br i1 %tobool.not.i, label %for.body.i.for.cond1.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

for.body2.i:                                      ; preds = %for.inc12.i.for.body2.i_crit_edge, %for.cond1.preheader.i.for.body2.i_crit_edge
  %start.addr.062.i = phi ptr [ %start.addr.1.i, %for.inc12.i.for.body2.i_crit_edge ], [ %add.ptr.i, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %order.161.i = phi i32 [ %order.2.i, %for.inc12.i.for.body2.i_crit_edge ], [ %order.0.lcssa.i, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %i.060.i = phi i32 [ %inc13.i, %for.inc12.i.for.body2.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %len.059.i = phi i32 [ %len.1.i, %for.inc12.i.for.body2.i_crit_edge ], [ %99, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %arrayidx.i434 = getelementptr %struct.eni_free, ptr %97, i32 %i.060.i
  %100 = ptrtoint ptr %arrayidx.i434 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i434, align 4
  %102 = ptrtoint ptr %101 to i32
  %103 = ptrtoint ptr %start.addr.062.i to i32
  %shl.i = shl nuw i32 1, %order.161.i
  %xor.i = xor i32 %shl.i, %103
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i, i32 %102)
  %cmp4.i = icmp eq i32 %xor.i, %102
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body2.i.for.inc12.i_crit_edge

for.body2.i.for.inc12.i_crit_edge:                ; preds = %for.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12.i

land.lhs.true.i:                                  ; preds = %for.body2.i
  %order6.i = getelementptr %struct.eni_free, ptr %97, i32 %i.060.i, i32 1
  %104 = ptrtoint ptr %order6.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %order6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %order.161.i)
  %cmp7.i = icmp eq i32 %105, %order.161.i
  br i1 %cmp7.i, label %if.then.i, label %land.lhs.true.i.for.inc12.i_crit_edge

land.lhs.true.i.for.inc12.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dec.i = add nsw i32 %len.059.i, -1
  %arrayidx9.i = getelementptr %struct.eni_free, ptr %97, i32 %dec.i
  %106 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 8)
  %107 = load i64, ptr %arrayidx9.i, align 4
  %108 = ptrtoint ptr %arrayidx.i434 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 8)
  store i64 %107, ptr %arrayidx.i434, align 4
  %neg.i = xor i32 %shl.i, -1
  %and.i435 = and i32 %neg.i, %103
  %109 = inttoptr i32 %and.i435 to ptr
  %inc11.i = add i32 %order.161.i, 1
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.then.i, %land.lhs.true.i.for.inc12.i_crit_edge, %for.body2.i.for.inc12.i_crit_edge
  %len.1.i = phi i32 [ %dec.i, %if.then.i ], [ %len.059.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %len.059.i, %for.body2.i.for.inc12.i_crit_edge ]
  %i.1.i = phi i32 [ -1, %if.then.i ], [ %i.060.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %i.060.i, %for.body2.i.for.inc12.i_crit_edge ]
  %order.2.i = phi i32 [ %inc11.i, %if.then.i ], [ %order.161.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %order.161.i, %for.body2.i.for.inc12.i_crit_edge ]
  %start.addr.1.i = phi ptr [ %109, %if.then.i ], [ %start.addr.062.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %start.addr.062.i, %for.body2.i.for.inc12.i_crit_edge ]
  %inc13.i = add nsw i32 %i.1.i, 1
  %cmp.i = icmp slt i32 %inc13.i, %len.1.i
  br i1 %cmp.i, label %for.inc12.i.for.body2.i_crit_edge, label %for.inc12.i.for.end14.i_crit_edge

for.inc12.i.for.end14.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end14.i

for.inc12.i.for.body2.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body2.i

for.end14.i:                                      ; preds = %for.inc12.i.for.end14.i_crit_edge, %for.cond1.preheader.i.for.end14.i_crit_edge
  %len.0.lcssa.i = phi i32 [ %99, %for.cond1.preheader.i.for.end14.i_crit_edge ], [ %len.1.i, %for.inc12.i.for.end14.i_crit_edge ]
  %order.1.lcssa.i = phi i32 [ %order.0.lcssa.i, %for.cond1.preheader.i.for.end14.i_crit_edge ], [ %order.2.i, %for.inc12.i.for.end14.i_crit_edge ]
  %start.addr.0.lcssa.i = phi ptr [ %add.ptr.i, %for.cond1.preheader.i.for.end14.i_crit_edge ], [ %start.addr.1.i, %for.inc12.i.for.end14.i_crit_edge ]
  %free_list_size.i = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 32
  %110 = ptrtoint ptr %free_list_size.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %free_list_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.lcssa.i, i32 %111)
  %cmp15.not.i = icmp slt i32 %len.0.lcssa.i, %111
  br i1 %cmp15.not.i, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %for.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %start.addr.0.lcssa.i, i32 noundef %order.1.lcssa.i) #17
  br label %eni_free_mem.exit

if.end17.i:                                       ; preds = %for.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx18.i = getelementptr %struct.eni_free, ptr %97, i32 %len.0.lcssa.i
  %112 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %start.addr.0.lcssa.i, ptr %arrayidx18.i, align 4
  %order21.i = getelementptr %struct.eni_free, ptr %97, i32 %len.0.lcssa.i, i32 1
  %113 = ptrtoint ptr %order21.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %order.1.lcssa.i, ptr %order21.i, align 4
  %add.i436 = add nsw i32 %len.0.lcssa.i, 1
  %114 = ptrtoint ptr %free_len.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %add.i436, ptr %free_len.i, align 4
  br label %eni_free_mem.exit

eni_free_mem.exit:                                ; preds = %if.end17.i, %do.end.i
  %115 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %14, align 8
  br label %cleanup380

cleanup380:                                       ; preds = %eni_free_mem.exit, %entry.cleanup380_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @close_tx(ptr nocapture noundef readonly %vcc) #3 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !504) #13
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
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %13 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_data, align 8
  %tx = getelementptr inbounds %struct.eni_vcc, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.cleanup266_crit_edge, label %if.end

entry.cleanup266_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup266

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %dev_data2 = getelementptr inbounds %struct.atm_dev, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %dev_data2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_data2, align 8
  %tx_wait = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 14
  call void @add_wait_queue(ptr noundef %tx_wait, ptr noundef nonnull %wait) #13
  br label %__here

__here:                                           ; preds = %if.end
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@close_tx, %__here) to i32), ptr %task_state_change, align 4
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 2, ptr %24, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !580
  %txing71 = getelementptr inbounds %struct.eni_vcc, ptr %14, i32 0, i32 8
  %task67 = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 1
  %count.i.i = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 1, i32 2
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %__here
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %26 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !546
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !547
  call void @tasklet_unlock_wait(ptr noundef %task67) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !553
  %27 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx, align 4
  %backlog = getelementptr inbounds %struct.eni_tx, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %backlog, align 4
  %cmp.i = icmp eq ptr %30, %backlog
  %tobool70.not302 = icmp eq ptr %30, null
  %tobool70.not = or i1 %cmp.i, %tobool70.not302
  br i1 %tobool70.not, label %lor.rhs, label %if.end76.critedge

lor.rhs:                                          ; preds = %for.cond
  %31 = ptrtoint ptr %txing71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txing71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool72.not = icmp eq i32 %32, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !549
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %33 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !550
  br i1 %tobool72.not, label %__here207, label %lor.rhs.if.end76_crit_edge

lor.rhs.if.end76_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.end76.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !549
  %call.i.i.i297 = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #13
  %34 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #13, !srcloc !550
  br label %if.end76

if.end76:                                         ; preds = %if.end76.critedge, %lor.rhs.if.end76_crit_edge
  call void @schedule() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %task_state_change131 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 212
  %37 = ptrtoint ptr %task_state_change131 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 ptrtoint (ptr blockaddress(@close_tx, %cleanup) to i32), ptr %task_state_change131, align 4
  %38 = load ptr, ptr %task, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 2, ptr %38, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !581
  br label %for.cond

__here207:                                        ; preds = %lor.rhs
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %task_state_change211 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 212
  %42 = ptrtoint ptr %task_state_change211 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 ptrtoint (ptr blockaddress(@close_tx, %__here207) to i32), ptr %task_state_change211, align 4
  %43 = load ptr, ptr %task, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %43, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !582
  call void @remove_wait_queue(ptr noundef %tx_wait, ptr noundef nonnull %wait) #13
  %45 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx, align 4
  %ubr = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 12
  %47 = ptrtoint ptr %ubr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ubr, align 4
  %cmp.not = icmp eq ptr %46, %48
  br i1 %cmp.not, label %__here207.if.end264_crit_edge, label %while.cond.preheader

__here207.if.end264_crit_edge:                    ; preds = %__here207
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end264

while.cond.preheader:                             ; preds = %__here207
  %reg = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %while.cond.preheader
  %49 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg, align 4
  %51 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx, align 4
  %index = getelementptr inbounds %struct.eni_tx, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %index, align 4
  %mul = shl i32 %54, 4
  %mul241 = add i32 %mul, 68
  %add.ptr = getelementptr i8, ptr %50, i32 %mul241
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !514
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !583
  %56 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg, align 4
  %58 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx, align 4
  %index249 = getelementptr inbounds %struct.eni_tx, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %index249 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %index249, align 4
  %mul250 = shl i32 %61, 4
  %mul252 = add i32 %mul250, 72
  %add.ptr253 = getelementptr i8, ptr %57, i32 %mul252
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr253) #13, !srcloc !514
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !584
  %cmp257.not = icmp eq i32 %55, %62
  br i1 %cmp257.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  call void @schedule() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %63 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %words = getelementptr inbounds %struct.eni_tx, ptr %64, i32 0, i32 4
  %67 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %words, align 4
  %shl = shl i32 %68, 2
  %base_diff.i = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 29
  %69 = ptrtoint ptr %base_diff.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base_diff.i, align 4
  %add.ptr.i = getelementptr i8, ptr %66, i32 %70
  %free_list.i = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 31
  %71 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %free_list.i, align 4
  %free_len.i = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 30
  %73 = ptrtoint ptr %free_len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %free_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool.not55.i = icmp eq i32 %shl, 0
  br i1 %tobool.not55.i, label %while.end.for.cond1.preheader.i_crit_edge, label %while.end.for.body.i_crit_edge

while.end.for.body.i_crit_edge:                   ; preds = %while.end
  br label %for.body.i

while.end.for.cond1.preheader.i_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.body.i.for.cond1.preheader.i_crit_edge, %while.end.for.cond1.preheader.i_crit_edge
  %order.0.lcssa.i = phi i32 [ -1, %while.end.for.cond1.preheader.i_crit_edge ], [ %inc.i, %for.body.i.for.cond1.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp58.i = icmp sgt i32 %74, 0
  br i1 %cmp58.i, label %for.cond1.preheader.i.for.body2.i_crit_edge, label %for.cond1.preheader.i.for.end14.i_crit_edge

for.cond1.preheader.i.for.end14.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end14.i

for.cond1.preheader.i.for.body2.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body2.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.end.for.body.i_crit_edge
  %order.057.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ -1, %while.end.for.body.i_crit_edge ]
  %size.addr.056.i = phi i32 [ %shr.i, %for.body.i.for.body.i_crit_edge ], [ %shl, %while.end.for.body.i_crit_edge ]
  %shr.i = lshr i32 %size.addr.056.i, 1
  %inc.i = add nsw i32 %order.057.i, 1
  %tobool.not.i = icmp ult i32 %size.addr.056.i, 2
  br i1 %tobool.not.i, label %for.body.i.for.cond1.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

for.body2.i:                                      ; preds = %for.inc12.i.for.body2.i_crit_edge, %for.cond1.preheader.i.for.body2.i_crit_edge
  %start.addr.062.i = phi ptr [ %start.addr.1.i, %for.inc12.i.for.body2.i_crit_edge ], [ %add.ptr.i, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %order.161.i = phi i32 [ %order.2.i, %for.inc12.i.for.body2.i_crit_edge ], [ %order.0.lcssa.i, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %i.060.i = phi i32 [ %inc13.i, %for.inc12.i.for.body2.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %len.059.i = phi i32 [ %len.1.i, %for.inc12.i.for.body2.i_crit_edge ], [ %74, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.eni_free, ptr %72, i32 %i.060.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = ptrtoint ptr %start.addr.062.i to i32
  %shl.i = shl nuw i32 1, %order.161.i
  %xor.i = xor i32 %shl.i, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i, i32 %77)
  %cmp4.i = icmp eq i32 %xor.i, %77
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body2.i.for.inc12.i_crit_edge

for.body2.i.for.inc12.i_crit_edge:                ; preds = %for.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12.i

land.lhs.true.i:                                  ; preds = %for.body2.i
  %order6.i = getelementptr %struct.eni_free, ptr %72, i32 %i.060.i, i32 1
  %79 = ptrtoint ptr %order6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %order6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %order.161.i)
  %cmp7.i = icmp eq i32 %80, %order.161.i
  br i1 %cmp7.i, label %if.then.i, label %land.lhs.true.i.for.inc12.i_crit_edge

land.lhs.true.i.for.inc12.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dec.i = add nsw i32 %len.059.i, -1
  %arrayidx9.i = getelementptr %struct.eni_free, ptr %72, i32 %dec.i
  %81 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %arrayidx9.i, align 4
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 %82, ptr %arrayidx.i, align 4
  %neg.i = xor i32 %shl.i, -1
  %and.i298 = and i32 %neg.i, %78
  %84 = inttoptr i32 %and.i298 to ptr
  %inc11.i = add i32 %order.161.i, 1
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.then.i, %land.lhs.true.i.for.inc12.i_crit_edge, %for.body2.i.for.inc12.i_crit_edge
  %len.1.i = phi i32 [ %dec.i, %if.then.i ], [ %len.059.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %len.059.i, %for.body2.i.for.inc12.i_crit_edge ]
  %i.1.i = phi i32 [ -1, %if.then.i ], [ %i.060.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %i.060.i, %for.body2.i.for.inc12.i_crit_edge ]
  %order.2.i = phi i32 [ %inc11.i, %if.then.i ], [ %order.161.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %order.161.i, %for.body2.i.for.inc12.i_crit_edge ]
  %start.addr.1.i = phi ptr [ %84, %if.then.i ], [ %start.addr.062.i, %land.lhs.true.i.for.inc12.i_crit_edge ], [ %start.addr.062.i, %for.body2.i.for.inc12.i_crit_edge ]
  %inc13.i = add nsw i32 %i.1.i, 1
  %cmp.i299 = icmp slt i32 %inc13.i, %len.1.i
  br i1 %cmp.i299, label %for.inc12.i.for.body2.i_crit_edge, label %for.inc12.i.for.end14.i_crit_edge

for.inc12.i.for.end14.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end14.i

for.inc12.i.for.body2.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body2.i

for.end14.i:                                      ; preds = %for.inc12.i.for.end14.i_crit_edge, %for.cond1.preheader.i.for.end14.i_crit_edge
  %len.0.lcssa.i = phi i32 [ %74, %for.cond1.preheader.i.for.end14.i_crit_edge ], [ %len.1.i, %for.inc12.i.for.end14.i_crit_edge ]
  %order.1.lcssa.i = phi i32 [ %order.0.lcssa.i, %for.cond1.preheader.i.for.end14.i_crit_edge ], [ %order.2.i, %for.inc12.i.for.end14.i_crit_edge ]
  %start.addr.0.lcssa.i = phi ptr [ %add.ptr.i, %for.cond1.preheader.i.for.end14.i_crit_edge ], [ %start.addr.1.i, %for.inc12.i.for.end14.i_crit_edge ]
  %free_list_size.i = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 32
  %85 = ptrtoint ptr %free_list_size.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %free_list_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.lcssa.i, i32 %86)
  %cmp15.not.i = icmp slt i32 %len.0.lcssa.i, %86
  br i1 %cmp15.not.i, label %if.end17.i, label %do.end.i

do.end.i:                                         ; preds = %for.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %start.addr.0.lcssa.i, i32 noundef %order.1.lcssa.i) #17
  br label %eni_free_mem.exit

if.end17.i:                                       ; preds = %for.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx18.i = getelementptr %struct.eni_free, ptr %72, i32 %len.0.lcssa.i
  %87 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %start.addr.0.lcssa.i, ptr %arrayidx18.i, align 4
  %order21.i = getelementptr %struct.eni_free, ptr %72, i32 %len.0.lcssa.i, i32 1
  %88 = ptrtoint ptr %order21.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %order.1.lcssa.i, ptr %order21.i, align 4
  %add.i = add nsw i32 %len.0.lcssa.i, 1
  %89 = ptrtoint ptr %free_len.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add.i, ptr %free_len.i, align 4
  br label %eni_free_mem.exit

eni_free_mem.exit:                                ; preds = %if.end17.i, %do.end.i
  %90 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %91, align 4
  %93 = load ptr, ptr %tx, align 4
  %reserved = getelementptr inbounds %struct.eni_tx, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %reserved, align 4
  %tx_bw = getelementptr inbounds %struct.eni_dev, ptr %20, i32 0, i32 15
  %96 = ptrtoint ptr %tx_bw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_bw, align 4
  %add263 = add i32 %97, %95
  store i32 %add263, ptr %tx_bw, align 4
  br label %if.end264

if.end264:                                        ; preds = %eni_free_mem.exit, %__here207.if.end264_crit_edge
  %98 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %tx, align 4
  br label %cleanup266

cleanup266:                                       ; preds = %if.end264, %entry.cleanup266_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #17
  %free_len.i = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %free_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.i = icmp sgt i32 %3, 0
  br i1 %cmp9.i, label %do.end.lr.ph.i, label %entry.dump_mem.exit_crit_edge

entry.dump_mem.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_mem.exit

do.end.lr.ph.i:                                   ; preds = %entry
  %free_list.i = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 31
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.lr.ph.i
  %i.010.i = phi i32 [ 0, %do.end.lr.ph.i ], [ %inc.i, %do.end.i.do.end.i_crit_edge ]
  %4 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free_list.i, align 4
  %arrayidx.i = getelementptr %struct.eni_free, ptr %5, i32 %i.010.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %order.i = getelementptr %struct.eni_free, ptr %5, i32 %i.010.i, i32 1
  %8 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %order.i, align 4
  %shl.i = shl nuw i32 1, %9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %i.010.i, ptr noundef %7, i32 noundef %shl.i) #17
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %10 = ptrtoint ptr %free_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_len.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %11
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.dump_mem.exit_crit_edge

do.end.i.dump_mem.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dump_mem.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

dump_mem.exit:                                    ; preds = %do.end.i.dump_mem.exit_crit_edge, %entry.dump_mem.exit_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #17
  %arrayidx = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %dump_mem.exit.for.inc_crit_edge, label %do.end8

dump_mem.exit.for.inc_crit_edge:                  ; preds = %dump_mem.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end8:                                          ; preds = %dump_mem.exit
  call void @__sanitizer_cov_trace_pc() #15
  %words = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 0, i32 4
  %14 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %words, align 4
  %mul = shl i32 %15, 2
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef nonnull %13, i32 noundef %mul) #17
  br label %for.inc

for.inc:                                          ; preds = %do.end8, %dump_mem.exit.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %17, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end8.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

do.end8.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %words.1 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 1, i32 4
  %18 = ptrtoint ptr %words.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %words.1, align 4
  %mul.1 = shl i32 %19, 2
  %call15.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 1, ptr noundef nonnull %17, i32 noundef %mul.1) #17
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end8.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %21, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end8.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

do.end8.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %words.2 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 2, i32 4
  %22 = ptrtoint ptr %words.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %words.2, align 4
  %mul.2 = shl i32 %23, 2
  %call15.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 2, ptr noundef nonnull %21, i32 noundef %mul.2) #17
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end8.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %25, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end8.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

do.end8.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %words.3 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 3, i32 4
  %26 = ptrtoint ptr %words.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %words.3, align 4
  %mul.3 = shl i32 %27, 2
  %call15.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 3, ptr noundef nonnull %25, i32 noundef %mul.3) #17
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end8.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %29, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %do.end8.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

do.end8.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %words.4 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 4, i32 4
  %30 = ptrtoint ptr %words.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %words.4, align 4
  %mul.4 = shl i32 %31, 2
  %call15.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 4, ptr noundef nonnull %29, i32 noundef %mul.4) #17
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end8.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %33, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %do.end8.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

do.end8.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  %words.5 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 5, i32 4
  %34 = ptrtoint ptr %words.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %words.5, align 4
  %mul.5 = shl i32 %35, 2
  %call15.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 5, ptr noundef nonnull %33, i32 noundef %mul.5) #17
  br label %for.inc.5

for.inc.5:                                        ; preds = %do.end8.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %37, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %do.end8.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

do.end8.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  %words.6 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 6, i32 4
  %38 = ptrtoint ptr %words.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %words.6, align 4
  %mul.6 = shl i32 %39, 2
  %call15.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 6, ptr noundef nonnull %37, i32 noundef %mul.6) #17
  br label %for.inc.6

for.inc.6:                                        ; preds = %do.end8.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 7
  %40 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %41, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %do.end8.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7

do.end8.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  %words.7 = getelementptr %struct.eni_dev, ptr %1, i32 0, i32 11, i32 7, i32 4
  %42 = ptrtoint ptr %words.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %words.7, align 4
  %mul.7 = shl i32 %43, 2
  %call15.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef 7, ptr noundef nonnull %41, i32 noundef %mul.7) #17
  br label %for.inc.7

for.inc.7:                                        ; preds = %do.end8.7, %for.inc.6.for.inc.7_crit_edge
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #17
  %rx_map = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 24
  br label %for.body23

for.body23:                                       ; preds = %for.inc45.for.body23_crit_edge, %for.inc.7
  %i.175 = phi i32 [ 0, %for.inc.7 ], [ %inc46, %for.inc45.for.body23_crit_edge ]
  %44 = ptrtoint ptr %rx_map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_map, align 4
  %arrayidx24 = getelementptr ptr, ptr %45, i32 %i.175
  %46 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %47, null
  br i1 %tobool25.not, label %for.body23.for.inc45_crit_edge, label %land.lhs.true

for.body23.for.inc45_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc45

land.lhs.true:                                    ; preds = %for.body23
  %dev_data28 = getelementptr inbounds %struct.atm_vcc, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %dev_data28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_data28, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %tobool29.not = icmp eq ptr %51, null
  br i1 %tobool29.not, label %land.lhs.true.for.inc45_crit_edge, label %do.end33

land.lhs.true.for.inc45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc45

do.end33:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %recv = getelementptr inbounds %struct.eni_vcc, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %recv, align 4
  %words41 = getelementptr inbounds %struct.eni_vcc, ptr %49, i32 0, i32 2
  %54 = ptrtoint ptr %words41 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %words41, align 8
  %mul42 = shl i32 %55, 2
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %i.175, ptr noundef %53, i32 noundef %mul42) #17
  br label %for.inc45

for.inc45:                                        ; preds = %do.end33, %land.lhs.true.for.inc45_crit_edge, %for.body23.for.inc45_crit_edge
  %inc46 = add nuw nsw i32 %i.175, 1
  %exitcond.not = icmp eq i32 %inc46, 1024
  br i1 %exitcond.not, label %do.end50, label %for.inc45.for.body23_crit_edge

for.inc45.for.body23_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body23

do.end50:                                         ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #15
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_tx(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  %j = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j) #13
  %0 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %j, align 4, !annotation !540
  %1 = ptrtoint ptr %skb to i32
  %cmp = icmp ult ptr %skb, inttoptr (i32 48 to ptr)
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.96, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %4
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %4
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %arrayidx2.i, align 4
  %add.i = add i32 %4, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr @ec, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb, align 8
  %cmp2 = icmp ult ptr %9, inttoptr (i32 48 to ptr)
  br i1 %cmp2, label %do.end6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %9 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %10) #17
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %9, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_data, align 8
  %cmp10 = icmp ult ptr %14, inttoptr (i32 48 to ptr)
  br i1 %cmp10, label %do.end14, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %14 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %15) #17
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end9.if.end17_crit_edge
  %dev_data18 = getelementptr inbounds %struct.atm_vcc, ptr %9, i32 0, i32 14
  %16 = ptrtoint ptr %dev_data18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_data18, align 8
  %tx19 = getelementptr inbounds %struct.eni_vcc, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %tx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx19, align 4
  %cmp20 = icmp ult ptr %19, inttoptr (i32 48 to ptr)
  br i1 %cmp20, label %do.end24, label %if.end17.if.end27_crit_edge

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %19 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %20) #17
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end17.if.end27_crit_edge
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %9, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %22)
  %cmp28 = icmp eq i8 %22, 5
  br i1 %cmp28, label %if.else, label %if.end27.if.end35_crit_edge

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %sub = add i32 %24, 55
  %rem = urem i32 %sub, 48
  %sub33 = sub i32 %sub, %rem
  %shr = lshr i32 %sub33, 2
  %add34 = add nuw nsw i32 %shr, 2
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.end27.if.end35_crit_edge
  %size.0 = phi i32 [ %add34, %if.else ], [ 14, %if.end27.if.end35_crit_edge ]
  %tx_pos = getelementptr inbounds %struct.eni_tx, ptr %19, i32 0, i32 3
  %25 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_pos, align 4
  %add37 = add nuw nsw i32 %size.0, 8
  %add38 = add i32 %add37, %26
  %words = getelementptr inbounds %struct.eni_tx, ptr %19, i32 0, i32 4
  %27 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %words, align 4
  %sub39 = add i32 %28, -1
  %and = and i32 %sub39, %add38
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %and)
  %cmp40 = icmp ult i32 %26, %and
  %reg = getelementptr inbounds %struct.eni_dev, ptr %14, i32 0, i32 5
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg, align 4
  %index = getelementptr inbounds %struct.eni_tx, ptr %19, i32 0, i32 5
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index, align 4
  %mul = shl i32 %32, 4
  %mul43 = add i32 %mul, 68
  %add.ptr = getelementptr i8, ptr %30, i32 %mul43
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  %35 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp48.not = icmp ugt i32 %34, %36
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end35
  br i1 %cmp48.not, label %lor.lhs.false, label %cond.true.if.end103_crit_edge

cond.true.if.end103_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

lor.lhs.false:                                    ; preds = %cond.true
  %37 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg, align 4
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index, align 4
  %mul54 = shl i32 %40, 4
  %mul56 = add i32 %mul54, 68
  %add.ptr57 = getelementptr i8, ptr %38, i32 %mul56
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #13, !srcloc !514
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !585
  %43 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_pos, align 4
  %add63 = add i32 %add37, %44
  %45 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %words, align 4
  %sub65 = add i32 %46, -1
  %and66 = and i32 %sub65, %add63
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %and66)
  %cmp67 = icmp ugt i32 %42, %and66
  br i1 %cmp67, label %lor.lhs.false.if.end103_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.if.end103_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

cond.false:                                       ; preds = %if.end35
  br i1 %cmp48.not, label %cond.false.cleanup_crit_edge, label %land.lhs.true

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.false
  %47 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg, align 4
  %49 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index, align 4
  %mul87 = shl i32 %50, 4
  %mul89 = add i32 %mul87, 68
  %add.ptr90 = getelementptr i8, ptr %48, i32 %mul89
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #13, !srcloc !514
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !586
  %53 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_pos, align 4
  %add96 = add i32 %add37, %54
  %55 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %words, align 4
  %sub98 = add i32 %56, -1
  %and99 = and i32 %sub98, %add96
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %and99)
  %cmp100 = icmp ugt i32 %52, %and99
  br i1 %cmp100, label %land.lhs.true.if.end103_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end103_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.end103:                                        ; preds = %land.lhs.true.if.end103_crit_edge, %lor.lhs.false.if.end103_crit_edge, %cond.true.if.end103_crit_edge
  %reg106 = getelementptr inbounds %struct.eni_dev, ptr %14, i32 0, i32 5
  %57 = ptrtoint ptr %reg106 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg106, align 4
  %add.ptr107 = getelementptr i8, ptr %58, i32 40
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #13, !srcloc !514
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !587
  %61 = ptrtoint ptr %reg106 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg106, align 4
  %add.ptr114 = getelementptr i8, ptr %62, i32 44
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #13, !srcloc !514
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !588
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %65 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool119.not = icmp eq i8 %68, 0
  br i1 %tobool119.not, label %if.end103.if.end139_crit_edge, label %if.end129

if.end103.if.end139_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

if.end129:                                        ; preds = %if.end103
  %conv125 = zext i8 %68 to i32
  %69 = mul nuw nsw i32 %conv125, 5
  %add128 = add nuw nsw i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %69)
  %cmp130 = icmp ugt i32 %69, 92
  br i1 %cmp130, label %do.end135, label %if.end129.if.end139_crit_edge

if.end129.if.end139_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

do.end135:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %number, align 4
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %73, i32 noundef %add128, i32 noundef 100) #17
  br label %if.end139

if.end139:                                        ; preds = %do.end135, %if.end129.if.end139_crit_edge, %if.end103.if.end139_crit_edge
  %dma_size.0520 = phi i32 [ %add128, %do.end135 ], [ %add128, %if.end129.if.end139_crit_edge ], [ 8, %if.end103.if.end139_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %63)
  %cmp140.not = icmp eq i32 %59, %63
  br i1 %cmp140.not, label %if.end139.if.end156_crit_edge, label %land.lhs.true142

if.end139.if.end156_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156

land.lhs.true142:                                 ; preds = %if.end139
  %sub144 = sub i32 %64, %60
  %and145 = and i32 %sub144, 511
  call void @__sanitizer_cov_trace_cmp4(i32 %and145, i32 %dma_size.0520)
  %cmp146 = icmp ult i32 %and145, %dma_size.0520
  br i1 %cmp146, label %do.end151, label %land.lhs.true142.if.end156_crit_edge

land.lhs.true142.if.end156_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156

do.end151:                                        ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %number154 = getelementptr inbounds %struct.atm_dev, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %number154 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %number154, align 4
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %77) #17
  br label %cleanup

if.end156:                                        ; preds = %land.lhs.true142.if.end156_crit_edge, %if.end139.if.end156_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %79, i32 3
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx, align 1
  %pci_dev = getelementptr inbounds %struct.eni_dev, ptr %14, i32 0, i32 37
  %82 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pci_dev, align 4
  %dev157 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %79) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end156
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !542

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev157) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44, i32 3
  %86 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev157, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %89, %if.end.i.i ], [ %87, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.50, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev157, ptr noundef %79, i32 noundef %85) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %90 = load ptr, ptr @mem_map, align 4
  %91 = ptrtoint ptr %79 to i32
  %sub.i = add i32 %91, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %90, i32 %shr.i
  %and.i = and i32 %91, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev157, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %85, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %92 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pci_dev, align 4
  %dev162 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev162, i32 noundef %retval.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end166

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end166:                                        ; preds = %dma_map_single_attrs.exit
  %paddr169 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %94 = ptrtoint ptr %paddr169 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %retval.0.i, ptr %paddr169, align 4
  %95 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_pos, align 4
  %add171 = add i32 %96, 2
  %97 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %words, align 4
  %sub173 = add i32 %98, 65535
  %and174 = and i32 %sub173, %add171
  %shl = shl i32 %and174, 16
  %index175 = getelementptr inbounds %struct.eni_tx, ptr %19, i32 0, i32 5
  %99 = ptrtoint ptr %index175 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %index175, align 4
  %shl176 = shl i32 %100, 6
  %or = or i32 %shl176, %shl
  %or177 = or i32 %or, 3
  %dma = getelementptr inbounds %struct.eni_dev, ptr %14, i32 0, i32 16
  %101 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or177, ptr %dma, align 4
  %102 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %j, align 4
  %103 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end.i, align 4
  %nr_frags181 = getelementptr inbounds %struct.skb_shared_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %nr_frags181 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %nr_frags181, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool182.not = icmp eq i8 %106, 0
  br i1 %tobool182.not, label %if.then183, label %for.inc.peel

for.inc.peel:                                     ; preds = %if.end166
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %107 = ptrtoint ptr %index175 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %index175, align 4
  %109 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data, align 4
  %111 = ptrtoint ptr %110 to i32
  %112 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %len, align 4
  %114 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %data_len.i, align 8
  %sub.i514.peel = sub i32 %113, %115
  call fastcc void @put_dma(i32 noundef %108, ptr noundef %dma, ptr noundef nonnull %j, i32 noundef %111, i32 noundef %sub.i514.peel)
  %116 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %end.i, align 4
  %nr_frags200.peel = getelementptr inbounds %struct.skb_shared_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %nr_frags200.peel to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %nr_frags200.peel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp202.peel.not = icmp eq i8 %119, 0
  br i1 %cmp202.peel.not, label %for.inc.peel.if.end230_crit_edge, label %for.inc.peel.for.inc_crit_edge

for.inc.peel.for.inc_crit_edge:                   ; preds = %for.inc.peel
  br label %for.inc

for.inc.peel.if.end230_crit_edge:                 ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end230

if.then183:                                       ; preds = %if.end166
  %120 = ptrtoint ptr %index175 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %index175, align 4
  br i1 %cmp28, label %if.then185, label %if.else190

if.then185:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len, align 4
  call fastcc void @put_dma(i32 noundef %121, ptr noundef %dma, ptr noundef nonnull %j, i32 noundef %retval.0.i, i32 noundef %123)
  br label %if.end230

if.else190:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #15
  %add194 = add i32 %retval.0.i, 4
  %124 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len, align 4
  %sub196 = add i32 %125, -4
  call fastcc void @put_dma(i32 noundef %121, ptr noundef %dma, ptr noundef nonnull %j, i32 noundef %add194, i32 noundef %sub196)
  br label %if.end230

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.peel.for.inc_crit_edge
  %126 = phi ptr [ %137, %for.inc.for.inc_crit_edge ], [ %117, %for.inc.peel.for.inc_crit_edge ]
  %i.0524 = phi i32 [ %inc229, %for.inc.for.inc_crit_edge ], [ 0, %for.inc.peel.for.inc_crit_edge ]
  %127 = ptrtoint ptr %index175 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %index175, align 4
  %arrayidx217 = getelementptr %struct.skb_shared_info, ptr %126, i32 0, i32 12, i32 %i.0524
  %129 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx217, align 4
  %131 = ptrtoint ptr %130 to i32
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %126, i32 0, i32 12, i32 %i.0524, i32 2
  %132 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %bv_offset.i, align 4
  %add223 = add i32 %133, %131
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %126, i32 0, i32 12, i32 %i.0524, i32 1
  %134 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bv_len.i, align 4
  call fastcc void @put_dma(i32 noundef %128, ptr noundef %dma, ptr noundef nonnull %j, i32 noundef %add223, i32 noundef %135)
  %inc229 = add nuw nsw i32 %i.0524, 1
  %136 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %end.i, align 4
  %nr_frags200 = getelementptr inbounds %struct.skb_shared_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %nr_frags200 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nr_frags200, align 2
  %conv201 = zext i8 %139 to i32
  %cmp202 = icmp ult i32 %inc229, %conv201
  br i1 %cmp202, label %for.inc.for.inc_crit_edge, label %for.inc.if.end230_crit_edge, !llvm.loop !589

for.inc.if.end230_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end230

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end230:                                        ; preds = %for.inc.if.end230_crit_edge, %if.else190, %if.then185, %for.inc.peel.if.end230_crit_edge
  %140 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %len, align 4
  %and232 = and i32 %141, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %if.end230.if.end242_crit_edge, label %if.then234

if.end230.if.end242_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242

if.then234:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #15
  %142 = ptrtoint ptr %index175 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %index175, align 4
  %dma238 = getelementptr inbounds %struct.eni_dev, ptr %14, i32 0, i32 17, i32 1
  %144 = ptrtoint ptr %dma238 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dma238, align 4
  %sub241 = sub nuw nsw i32 4, %and232
  call fastcc void @put_dma(i32 noundef %143, ptr noundef %dma, ptr noundef nonnull %j, i32 noundef %145, i32 noundef %sub241)
  br label %if.end242

if.end242:                                        ; preds = %if.then234, %if.end230.if.end242_crit_edge
  %146 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tx_pos, align 4
  %add244 = add i32 %147, %size.0
  %148 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %words, align 4
  %sub246 = add i32 %149, 65535
  %and247 = and i32 %sub246, %add244
  %shl248 = shl i32 %and247, 16
  %150 = ptrtoint ptr %index175 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %index175, align 4
  %shl250 = shl i32 %151, 6
  %or251 = or i32 %shl250, %shl248
  %or253 = or i32 %or251, 35
  %152 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %j, align 4
  %inc255 = add i32 %153, 1
  store i32 %inc255, ptr %j, align 4
  %arrayidx256 = getelementptr %struct.eni_dev, ptr %14, i32 0, i32 16, i32 %153
  %154 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %or253, ptr %arrayidx256, align 4
  %155 = load i32, ptr %j, align 4
  %inc257 = add i32 %155, 1
  store i32 %inc257, ptr %j, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !591
  call void @arm_heavy_mb() #13
  %or262 = select i1 %cmp28, i32 -1207959552, i32 -1342177280
  %prescaler = getelementptr inbounds %struct.eni_tx, ptr %19, i32 0, i32 1
  %156 = ptrtoint ptr %prescaler to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %prescaler, align 4
  %shl263 = shl i32 %157, 25
  %resolution = getelementptr inbounds %struct.eni_tx, ptr %19, i32 0, i32 2
  %158 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %resolution, align 4
  %shl265 = shl i32 %159, 19
  %div = udiv i32 %size.0, 12
  %or264 = or i32 %div, %or262
  %or266 = or i32 %or264, %shl263
  %or267 = or i32 %or266, %shl265
  %160 = call i32 @llvm.bswap.i32(i32 %or267)
  %161 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %19, align 4
  %163 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %tx_pos, align 4
  %mul269 = shl i32 %164, 2
  %add.ptr270 = getelementptr i8, ptr %162, i32 %mul269
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr270, i32 %160) #13, !srcloc !518
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !592
  call void @arm_heavy_mb() #13
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %9, i32 0, i32 3
  %165 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %vci, align 8
  %shl274 = shl i32 %166, 4
  %167 = and i8 %81, 15
  %narrow = select i1 %cmp28, i8 0, i8 %167
  %cond280 = zext i8 %narrow to i32
  %or281 = or i32 %shl274, %cond280
  %atm_options = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %168 = ptrtoint ptr %atm_options to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %atm_options, align 4
  %and284 = and i32 %169, 1
  %or287 = or i32 %or281, %and284
  %170 = call i32 @llvm.bswap.i32(i32 %or287)
  %171 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %19, align 4
  %173 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %tx_pos, align 4
  %add290 = add i32 %174, 1
  %175 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %words, align 4
  %sub292 = add i32 %176, 1073741823
  %and293 = and i32 %sub292, %add290
  %mul294 = shl i32 %and293, 2
  %add.ptr295 = getelementptr i8, ptr %172, i32 %mul294
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr295, i32 %170) #13, !srcloc !518
  br i1 %cmp28, label %do.body298, label %if.end242.if.end311_crit_edge

if.end242.if.end311_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end311

do.body298:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !593
  call void @arm_heavy_mb() #13
  %177 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %len, align 4
  %179 = call i32 @llvm.bswap.i32(i32 %178)
  %180 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %19, align 4
  %182 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %tx_pos, align 4
  %add304 = add i32 %size.0, 1073741822
  %sub305 = add i32 %add304, %183
  %184 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %words, align 4
  %sub307 = add i32 %185, 1073741823
  %and308 = and i32 %sub307, %sub305
  %mul309 = shl i32 %and308, 2
  %add.ptr310 = getelementptr i8, ptr %181, i32 %mul309
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr310, i32 %179) #13, !srcloc !518
  br label %if.end311

if.end311:                                        ; preds = %do.body298, %if.end242.if.end311_crit_edge
  %186 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %j, align 4
  %shr312 = ashr i32 %187, 1
  store i32 %shr312, ptr %j, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %187)
  %cmp314526 = icmp sgt i32 %187, 1
  br i1 %cmp314526, label %do.body317.lr.ph, label %if.end311.for.end340_crit_edge

if.end311.for.end340_crit_edge:                   ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end340

do.body317.lr.ph:                                 ; preds = %if.end311
  %tx_dma = getelementptr inbounds %struct.eni_dev, ptr %14, i32 0, i32 9
  br label %do.body317

do.body317:                                       ; preds = %do.body317.do.body317_crit_edge, %do.body317.lr.ph
  %dma_wr.0528 = phi i32 [ %60, %do.body317.lr.ph ], [ %and337, %do.body317.do.body317_crit_edge ]
  %i.1527 = phi i32 [ 0, %do.body317.lr.ph ], [ %inc339, %do.body317.do.body317_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !594
  call void @arm_heavy_mb() #13
  %mul321 = shl nuw i32 %i.1527, 1
  %arrayidx322 = getelementptr %struct.eni_dev, ptr %14, i32 0, i32 16, i32 %mul321
  %188 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx322, align 4
  %190 = call i32 @llvm.bswap.i32(i32 %189)
  %191 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %tx_dma, align 4
  %mul323 = shl i32 %dma_wr.0528, 3
  %add.ptr324 = getelementptr i8, ptr %192, i32 %mul323
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr324, i32 %190) #13, !srcloc !518
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !595
  call void @arm_heavy_mb() #13
  %add330 = or i32 %mul321, 1
  %arrayidx331 = getelementptr %struct.eni_dev, ptr %14, i32 0, i32 16, i32 %add330
  %193 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx331, align 4
  %195 = call i32 @llvm.bswap.i32(i32 %194)
  %196 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %tx_dma, align 4
  %add.ptr334 = getelementptr i8, ptr %197, i32 4
  %add.ptr335 = getelementptr i8, ptr %add.ptr334, i32 %mul323
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr335, i32 %195) #13, !srcloc !518
  %add336 = add i32 %dma_wr.0528, 1
  %and337 = and i32 %add336, 511
  %inc339 = add nuw nsw i32 %i.1527, 1
  %198 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %j, align 4
  %cmp314 = icmp slt i32 %inc339, %199
  br i1 %cmp314, label %do.body317.do.body317_crit_edge, label %do.body317.for.end340_crit_edge

do.body317.for.end340_crit_edge:                  ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end340

do.body317.do.body317_crit_edge:                  ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body317

for.end340:                                       ; preds = %do.body317.for.end340_crit_edge, %if.end311.for.end340_crit_edge
  %dma_wr.0.lcssa = phi i32 [ %60, %if.end311.for.end340_crit_edge ], [ %and337, %do.body317.for.end340_crit_edge ]
  %200 = ptrtoint ptr %tx_pos to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %tx_pos, align 4
  %pos = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %202 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %pos, align 4
  %size346 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %203 = ptrtoint ptr %size346 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %size.0, ptr %size346, align 8
  %204 = ptrtoint ptr %dev_data18 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev_data18, align 8
  %txing = getelementptr inbounds %struct.eni_vcc, ptr %205, i32 0, i32 8
  %206 = ptrtoint ptr %txing to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %txing, align 8
  %add348 = add i32 %207, %size.0
  store i32 %add348, ptr %txing, align 8
  %208 = load i32, ptr %tx_pos, align 4
  %add350 = add i32 %208, %size.0
  %209 = ptrtoint ptr %words to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %words, align 4
  %sub352 = add i32 %210, -1
  %and353 = and i32 %sub352, %add350
  store i32 %and353, ptr %tx_pos, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !596
  call void @arm_heavy_mb() #13
  %211 = call i32 @llvm.bswap.i32(i32 %dma_wr.0.lcssa)
  %212 = ptrtoint ptr %reg106 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %reg106, align 4
  %add.ptr359 = getelementptr i8, ptr %213, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr359, i32 %211) #13, !srcloc !518
  %tx_queue = getelementptr inbounds %struct.eni_dev, ptr %14, i32 0, i32 13
  call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef %skb) #13
  %214 = load i32, ptr @queued, align 4
  %inc360 = add i32 %214, 1
  store i32 %inc360, ptr @queued, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end340, %dma_map_single_attrs.exit.cleanup_crit_edge, %do.end151, %land.lhs.true.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %do.end151 ], [ 0, %for.end340 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %cond.false.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_spin_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @put_dma(i32 noundef %chan, ptr nocapture noundef writeonly %dma, ptr noundef %j, i32 noundef %paddr, i32 noundef %size) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.112, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %0
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %paddr, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %0
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %size, ptr %arrayidx2.i, align 4
  %add.i = add i32 %0, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr @ec, align 4
  %and = and i32 %paddr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub nuw nsw i32 4, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %size)
  %cmp = icmp ugt i32 %sub, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp2 = icmp ult i32 %size, 7
  %or.cond = or i1 %cmp2, %cmp
  %init.0 = select i1 %or.cond, i32 %size, i32 %sub
  %shl = shl i32 %init.0, 16
  %shl4 = shl i32 %chan, 6
  %or = or i32 %shl4, %shl
  %or5 = or i32 %or, 1
  %4 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %j, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %j, align 4
  %arrayidx = getelementptr i32, ptr %dma, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or5, ptr %arrayidx, align 4
  %7 = load i32, ptr %j, align 4
  %inc6 = add i32 %7, 1
  store i32 %inc6, ptr %j, align 4
  %arrayidx7 = getelementptr i32, ptr %dma, i32 %7
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %paddr, ptr %arrayidx7, align 4
  %add = add i32 %init.0, %paddr
  %sub8 = sub i32 %size, %init.0
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %paddr.addr.0 = phi i32 [ %add, %if.then ], [ %paddr, %entry.if.end9_crit_edge ]
  %size.addr.0 = phi i32 [ %sub8, %if.then ], [ %size, %entry.if.end9_crit_edge ]
  %shr = lshr i32 %size.addr.0, 2
  %and10 = and i32 %size.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size.addr.0)
  %tobool11.not = icmp ult i32 %size.addr.0, 4
  br i1 %tobool11.not, label %if.end9.if.end113_crit_edge, label %land.lhs.true

if.end9.if.end113_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

land.lhs.true:                                    ; preds = %if.end9
  %and12 = and i32 %paddr.addr.0, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end32_crit_edge, label %if.then14

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %shr16 = lshr i32 %and12, 2
  %sub17 = sub nuw nsw i32 8, %shr16
  %9 = tail call i32 @llvm.umin.i32(i32 %sub17, i32 %shr)
  %shl21 = shl nuw nsw i32 %9, 16
  %shl23 = shl i32 %chan, 6
  %or24 = or i32 %shl21, %shl23
  %10 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %j, align 4
  %inc25 = add i32 %11, 1
  store i32 %inc25, ptr %j, align 4
  %arrayidx26 = getelementptr i32, ptr %dma, i32 %11
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or24, ptr %arrayidx26, align 4
  %13 = load i32, ptr %j, align 4
  %inc27 = add i32 %13, 1
  store i32 %inc27, ptr %j, align 4
  %arrayidx28 = getelementptr i32, ptr %dma, i32 %13
  %14 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %paddr.addr.0, ptr %arrayidx28, align 4
  %shl29 = shl nuw nsw i32 %9, 2
  %add30 = add i32 %shl29, %paddr.addr.0
  %sub31 = sub nsw i32 %shr, %9
  br label %if.end32

if.end32:                                         ; preds = %if.then14, %land.lhs.true.if.end32_crit_edge
  %paddr.addr.1 = phi i32 [ %add30, %if.then14 ], [ %paddr.addr.0, %land.lhs.true.if.end32_crit_edge ]
  %words.0 = phi i32 [ %sub31, %if.then14 ], [ %shr, %land.lhs.true.if.end32_crit_edge ]
  %and33 = and i32 %words.0, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end49_crit_edge, label %if.then35

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %15 = shl i32 %words.0, 12
  %shl37 = and i32 %15, -65536
  %shl39 = shl i32 %chan, 6
  %or38 = or i32 %shl39, %shl37
  %or40 = or i32 %or38, 6
  %16 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %j, align 4
  %inc41 = add i32 %17, 1
  store i32 %inc41, ptr %j, align 4
  %arrayidx42 = getelementptr i32, ptr %dma, i32 %17
  %18 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or40, ptr %arrayidx42, align 4
  %19 = load i32, ptr %j, align 4
  %inc43 = add i32 %19, 1
  store i32 %inc43, ptr %j, align 4
  %arrayidx44 = getelementptr i32, ptr %dma, i32 %19
  %20 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %paddr.addr.1, ptr %arrayidx44, align 4
  %shl46 = shl i32 %and33, 2
  %add47 = add i32 %shl46, %paddr.addr.1
  %and48 = and i32 %words.0, 15
  br label %if.end49

if.end49:                                         ; preds = %if.then35, %if.end32.if.end49_crit_edge
  %paddr.addr.2 = phi i32 [ %add47, %if.then35 ], [ %paddr.addr.1, %if.end32.if.end49_crit_edge ]
  %words.1 = phi i32 [ %and48, %if.then35 ], [ %words.0, %if.end32.if.end49_crit_edge ]
  %and50 = and i32 %words.1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end66_crit_edge, label %if.then52

if.end49.if.end66_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %21 = shl nuw nsw i32 %words.1, 13
  %shl54 = and i32 %21, -65536
  %shl56 = shl i32 %chan, 6
  %or55 = or i32 %shl56, %shl54
  %or57 = or i32 %or55, 5
  %22 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %j, align 4
  %inc58 = add i32 %23, 1
  store i32 %inc58, ptr %j, align 4
  %arrayidx59 = getelementptr i32, ptr %dma, i32 %23
  %24 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or57, ptr %arrayidx59, align 4
  %25 = load i32, ptr %j, align 4
  %inc60 = add i32 %25, 1
  store i32 %inc60, ptr %j, align 4
  %arrayidx61 = getelementptr i32, ptr %dma, i32 %25
  %26 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %paddr.addr.2, ptr %arrayidx61, align 4
  %shl63 = shl nuw nsw i32 %and50, 2
  %add64 = add i32 %shl63, %paddr.addr.2
  %and65 = and i32 %words.1, 7
  br label %if.end66

if.end66:                                         ; preds = %if.then52, %if.end49.if.end66_crit_edge
  %paddr.addr.3 = phi i32 [ %add64, %if.then52 ], [ %paddr.addr.2, %if.end49.if.end66_crit_edge ]
  %words.2 = phi i32 [ %and65, %if.then52 ], [ %words.1, %if.end49.if.end66_crit_edge ]
  %and67 = and i32 %words.2, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end83_crit_edge, label %if.then69

if.end66.if.end83_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %27 = shl nuw nsw i32 %words.2, 14
  %shl71 = and i32 %27, -65536
  %shl73 = shl i32 %chan, 6
  %or72 = or i32 %shl73, %shl71
  %or74 = or i32 %or72, 4
  %28 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %j, align 4
  %inc75 = add i32 %29, 1
  store i32 %inc75, ptr %j, align 4
  %arrayidx76 = getelementptr i32, ptr %dma, i32 %29
  %30 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or74, ptr %arrayidx76, align 4
  %31 = load i32, ptr %j, align 4
  %inc77 = add i32 %31, 1
  store i32 %inc77, ptr %j, align 4
  %arrayidx78 = getelementptr i32, ptr %dma, i32 %31
  %32 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %paddr.addr.3, ptr %arrayidx78, align 4
  %shl80 = shl nuw nsw i32 %and67, 2
  %add81 = add i32 %shl80, %paddr.addr.3
  %and82 = and i32 %words.2, 3
  br label %if.end83

if.end83:                                         ; preds = %if.then69, %if.end66.if.end83_crit_edge
  %paddr.addr.4 = phi i32 [ %add81, %if.then69 ], [ %paddr.addr.3, %if.end66.if.end83_crit_edge ]
  %words.3 = phi i32 [ %and82, %if.then69 ], [ %words.2, %if.end66.if.end83_crit_edge ]
  %and84 = and i32 %words.3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end100_crit_edge, label %if.then86

if.end83.if.end100_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %33 = shl nuw nsw i32 %words.3, 15
  %shl88 = and i32 %33, -65536
  %shl90 = shl i32 %chan, 6
  %or89 = or i32 %shl90, %shl88
  %or91 = or i32 %or89, 7
  %34 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %j, align 4
  %inc92 = add i32 %35, 1
  store i32 %inc92, ptr %j, align 4
  %arrayidx93 = getelementptr i32, ptr %dma, i32 %35
  %36 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or91, ptr %arrayidx93, align 4
  %37 = load i32, ptr %j, align 4
  %inc94 = add i32 %37, 1
  store i32 %inc94, ptr %j, align 4
  %arrayidx95 = getelementptr i32, ptr %dma, i32 %37
  %38 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %paddr.addr.4, ptr %arrayidx95, align 4
  %shl97 = shl nuw nsw i32 %and84, 2
  %add98 = add i32 %shl97, %paddr.addr.4
  %and99 = and i32 %words.3, 1
  br label %if.end100

if.end100:                                        ; preds = %if.then86, %if.end83.if.end100_crit_edge
  %paddr.addr.5 = phi i32 [ %add98, %if.then86 ], [ %paddr.addr.4, %if.end83.if.end100_crit_edge ]
  %words.4 = phi i32 [ %and99, %if.then86 ], [ %words.3, %if.end83.if.end100_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %words.4)
  %tobool101.not = icmp eq i32 %words.4, 0
  br i1 %tobool101.not, label %if.end100.if.end113_crit_edge, label %if.then102

if.end100.if.end113_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  %shl103 = shl nuw nsw i32 %words.4, 16
  %shl105 = shl i32 %chan, 6
  %or106 = or i32 %shl103, %shl105
  %39 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %j, align 4
  %inc107 = add i32 %40, 1
  store i32 %inc107, ptr %j, align 4
  %arrayidx108 = getelementptr i32, ptr %dma, i32 %40
  %41 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or106, ptr %arrayidx108, align 4
  %42 = load i32, ptr %j, align 4
  %inc109 = add i32 %42, 1
  store i32 %inc109, ptr %j, align 4
  %arrayidx110 = getelementptr i32, ptr %dma, i32 %42
  %43 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %paddr.addr.5, ptr %arrayidx110, align 4
  %shl111 = shl nuw nsw i32 %words.4, 2
  %add112 = add i32 %shl111, %paddr.addr.5
  br label %if.end113

if.end113:                                        ; preds = %if.then102, %if.end100.if.end113_crit_edge, %if.end9.if.end113_crit_edge
  %paddr.addr.6 = phi i32 [ %add112, %if.then102 ], [ %paddr.addr.5, %if.end100.if.end113_crit_edge ], [ %paddr.addr.0, %if.end9.if.end113_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool114.not = icmp eq i32 %and10, 0
  br i1 %tobool114.not, label %if.end113.if.end124_crit_edge, label %if.then115

if.end113.if.end124_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then115:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  %shl116 = shl nuw nsw i32 %and10, 16
  %shl118 = shl i32 %chan, 6
  %or117 = or i32 %shl118, %shl116
  %or119 = or i32 %or117, 1
  %44 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %j, align 4
  %inc120 = add i32 %45, 1
  store i32 %inc120, ptr %j, align 4
  %arrayidx121 = getelementptr i32, ptr %dma, i32 %45
  %46 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or119, ptr %arrayidx121, align 4
  %47 = load i32, ptr %j, align 4
  %inc122 = add i32 %47, 1
  store i32 %inc122, ptr %j, align 4
  %arrayidx123 = getelementptr i32, ptr %dma, i32 %47
  %48 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %paddr.addr.6, ptr %arrayidx123, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then115, %if.end113.if.end124_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suni_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eni_int(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %reg = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !514
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !597
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.206, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %6
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %6
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx2.i, align 4
  %add.i = add i32 %6, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr @ec, align 4
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !598
  %13 = and i32 %12, -65536
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %lost = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %lost to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lost, align 4
  %add = add i32 %16, %14
  store i32 %add, ptr %lost, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and10 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = load i32, ptr @ec, align 4
  %arrayidx.i25 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.207, ptr %arrayidx.i25, align 4
  %arrayidx1.i26 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %17
  %19 = ptrtoint ptr %arrayidx1.i26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx1.i26, align 4
  %arrayidx2.i27 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %17
  %20 = ptrtoint ptr %arrayidx2.i27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx2.i27, align 4
  %add.i28 = add i32 %17, 1
  %rem.i29 = srem i32 %add.i28, 64
  store i32 %rem.i29, ptr @ec, align 4
  %phy = getelementptr inbounds %struct.atm_dev, ptr %dev_id, i32 0, i32 1
  %21 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy, align 4
  %interrupt = getelementptr inbounds %struct.atmphy_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interrupt, align 4
  tail call void %24(ptr noundef %dev_id) #13
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %1) #13
  %events = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %events, align 4
  %or = or i32 %26, %5
  store i32 %or, ptr %events, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #13
  %state.i = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 1, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end13.tasklet_schedule.exit_crit_edge

if.end13.tasklet_schedule.exit_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %task = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task) #13
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end13.tasklet_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eni_tasklet(i32 noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_data, align 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #13
  %events5 = getelementptr inbounds %struct.eni_dev, ptr %2, i32 0, i32 2
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %events5, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !599
  tail call void @llvm.prefetch.p0(ptr %events5, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %events5) #13, !srcloc !600
  %asmresult.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !601
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call2) #13
  %and = and i32 %asmresult.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.208, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %4
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %4
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx2.i, align 4
  %add.i = add i32 %4, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr @ec, align 4
  %8 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_data, align 8
  %rx_queue.i = getelementptr inbounds %struct.eni_dev, ptr %9, i32 0, i32 25
  %call149.i = tail call ptr @skb_dequeue(ptr noundef %rx_queue.i) #13
  %tobool.not150.i = icmp eq ptr %call149.i, null
  br i1 %tobool.not150.i, label %if.then2.critedge.i, label %if.end3.lr.ph.i

if.end3.lr.ph.i:                                  ; preds = %if.then
  %vci.i = getelementptr inbounds %struct.eni_dev, ptr %9, i32 0, i32 7
  %pci_dev.i = getelementptr inbounds %struct.eni_dev, ptr %9, i32 0, i32 37
  br label %if.end3.i

if.then2.critedge.i:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %10 = load i32, ptr @ec, align 4
  %arrayidx.i.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.216, ptr %arrayidx.i.i, align 4
  %arrayidx1.i.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %10
  %12 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx1.i.i, align 4
  %arrayidx2.i.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %10
  %13 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx2.i.i, align 4
  %add.i.i = add i32 %10, 1
  %rem.i.i = srem i32 %add.i.i, 64
  store i32 %rem.i.i, ptr @ec, align 4
  br label %dequeue_rx.exit

if.end3.i:                                        ; preds = %if.end90.i.if.end3.i_crit_edge, %if.end3.lr.ph.i
  %call151.i = phi ptr [ %call149.i, %if.end3.lr.ph.i ], [ %call.i59, %if.end90.i.if.end3.i_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call151.i, i32 0, i32 3
  %size.i = getelementptr inbounds %struct.sk_buff, ptr %call151.i, i32 0, i32 3, i32 16
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  %pos.i = getelementptr inbounds %struct.sk_buff, ptr %call151.i, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pos.i, align 4
  %18 = load i32, ptr @ec, align 4
  %arrayidx.i131.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i131.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.217, ptr %arrayidx.i131.i, align 4
  %arrayidx1.i132.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %18
  %20 = ptrtoint ptr %arrayidx1.i132.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %15, ptr %arrayidx1.i132.i, align 4
  %arrayidx2.i133.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %18
  %21 = ptrtoint ptr %arrayidx2.i133.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %arrayidx2.i133.i, align 4
  %add.i134.i = add i32 %18, 1
  %rem.i135.i = srem i32 %add.i134.i, 64
  store i32 %rem.i135.i, ptr @ec, align 4
  %22 = load i32, ptr @rx_dequeued, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr @rx_dequeued, align 4
  %23 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cb.i, align 8
  %dev_data9.i = getelementptr inbounds %struct.atm_vcc, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %dev_data9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_data9.i, align 8
  %27 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vci.i, align 4
  %vci10.i = getelementptr inbounds %struct.atm_vcc, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %vci10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vci10.i, align 8
  %mul.i = shl i32 %30, 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  %rx_pos.i = getelementptr inbounds %struct.eni_vcc, ptr %26, i32 0, i32 4
  %31 = ptrtoint ptr %rx_pos.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_pos.i, align 8
  %add.i58 = add i32 %32, %15
  %words.i = getelementptr inbounds %struct.eni_vcc, ptr %26, i32 0, i32 2
  %33 = ptrtoint ptr %words.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %words.i, align 8
  %sub.i = add i32 %34, -1
  %and.i = and i32 %sub.i, %add.i58
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %and.i)
  %cmp.i = icmp ult i32 %32, %and.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  %36 = and i32 %35, -8454144
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #13
  %38 = ptrtoint ptr %rx_pos.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_pos.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp20.i = icmp ult i32 %37, %39
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end3.i
  br i1 %cmp20.i, label %cond.true.i.if.end67.i_crit_edge, label %lor.lhs.false.i

cond.true.i.if.end67.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67.i

lor.lhs.false.i:                                  ; preds = %cond.true.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !602
  %41 = and i32 %40, -8454144
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #13
  %43 = ptrtoint ptr %rx_pos.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_pos.i, align 8
  %45 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i, align 8
  %add33.i = add i32 %46, %44
  %47 = ptrtoint ptr %words.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %words.i, align 8
  %sub35.i = add i32 %48, -1
  %and36.i = and i32 %sub35.i, %add33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %and36.i)
  %cmp37.not.i = icmp ult i32 %42, %and36.i
  br i1 %cmp37.not.i, label %lor.lhs.false.i.if.then65.i_crit_edge, label %lor.lhs.false.i.if.end67.i_crit_edge

lor.lhs.false.i.if.end67.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67.i

lor.lhs.false.i.if.then65.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65.i

cond.false.i:                                     ; preds = %if.end3.i
  br i1 %cmp20.i, label %land.lhs.true.i, label %cond.false.i.if.then65.i_crit_edge

cond.false.i.if.then65.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65.i

land.lhs.true.i:                                  ; preds = %cond.false.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !603
  %50 = and i32 %49, -8454144
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #13
  %52 = ptrtoint ptr %rx_pos.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_pos.i, align 8
  %54 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size.i, align 8
  %add60.i = add i32 %55, %53
  %56 = ptrtoint ptr %words.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %words.i, align 8
  %sub62.i = add i32 %57, -1
  %and63.i = and i32 %sub62.i, %add60.i
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %and63.i)
  %cmp64.not.i = icmp ult i32 %51, %and63.i
  br i1 %cmp64.not.i, label %land.lhs.true.i.if.then65.i_crit_edge, label %land.lhs.true.i.if.end67.i_crit_edge

land.lhs.true.i.if.end67.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67.i

land.lhs.true.i.if.then65.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65.i

if.then65.i:                                      ; preds = %land.lhs.true.i.if.then65.i_crit_edge, %cond.false.i.if.then65.i_crit_edge, %lor.lhs.false.i.if.then65.i_crit_edge
  %58 = load i32, ptr @ec, align 4
  %arrayidx.i136.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i136.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.218, ptr %arrayidx.i136.i, align 4
  %arrayidx1.i137.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %58
  %60 = ptrtoint ptr %arrayidx1.i137.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx1.i137.i, align 4
  %arrayidx2.i138.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %58
  %61 = ptrtoint ptr %arrayidx2.i138.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx2.i138.i, align 4
  %add.i139.i = add i32 %58, 1
  %rem.i140.i = srem i32 %add.i139.i, 64
  store i32 %rem.i140.i, ptr @ec, align 4
  tail call void @skb_queue_head(ptr noundef %rx_queue.i, ptr noundef nonnull %call151.i) #13
  br label %dequeue_rx.exit

if.end67.i:                                       ; preds = %land.lhs.true.i.if.end67.i_crit_edge, %lor.lhs.false.i.if.end67.i_crit_edge, %cond.true.i.if.end67.i_crit_edge
  %rxing.i = getelementptr inbounds %struct.eni_vcc, ptr %26, i32 0, i32 6
  %62 = ptrtoint ptr %rxing.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rxing.i, align 8
  %dec.i = add i32 %63, -1
  store i32 %dec.i, ptr %rxing.i, align 8
  %64 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pos.i, align 4
  %66 = ptrtoint ptr %words.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %words.i, align 8
  %sub72.i = add i32 %67, -1
  %and73.i = and i32 %sub72.i, %65
  %68 = ptrtoint ptr %rx_pos.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and73.i, ptr %rx_pos.i, align 8
  %69 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pci_dev.i, align 4
  %dev75.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %paddr.i = getelementptr inbounds %struct.sk_buff, ptr %call151.i, i32 0, i32 3, i32 20
  %71 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %paddr.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call151.i, i32 0, i32 6
  %73 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev75.i, i32 noundef %72, i32 noundef %74, i32 noundef 1, i32 noundef 0) #13
  %75 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool79.not.i = icmp eq i32 %76, 0
  br i1 %tobool79.not.i, label %if.then80.i, label %if.else.i

if.then80.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %call151.i, i32 noundef 1) #13
  br label %if.end90.i

if.else.i:                                        ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #15
  %77 = load i32, ptr @ec, align 4
  %arrayidx.i141.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx.i141.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.219, ptr %arrayidx.i141.i, align 4
  %arrayidx1.i142.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %77
  %79 = ptrtoint ptr %arrayidx1.i142.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %76, ptr %arrayidx1.i142.i, align 4
  %arrayidx2.i143.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %77
  %80 = ptrtoint ptr %arrayidx2.i143.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %arrayidx2.i143.i, align 4
  %add.i144.i = add i32 %77, 1
  %rem.i145.i = srem i32 %add.i144.i, 64
  store i32 %rem.i145.i, ptr @ec, align 4
  %81 = call ptr @memset(ptr %cb.i, i32 0, i32 24)
  %push.i = getelementptr inbounds %struct.atm_vcc, ptr %24, i32 0, i32 10
  %82 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %push.i, align 8
  tail call void %83(ptr noundef %24, ptr noundef nonnull %call151.i) #13
  %84 = load i32, ptr @pushed, align 4
  %inc89.i = add i32 %84, 1
  store i32 %inc89.i, ptr @pushed, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.else.i, %if.then80.i
  %stats.i = getelementptr inbounds %struct.atm_vcc, ptr %24, i32 0, i32 16
  %85 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %stats.i, align 8
  %rx.i = getelementptr inbounds %struct.k_atm_aal_stats, ptr %86, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %rx.i, i32 1, i32 3, i32 1) #13
  %87 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx.i, ptr %rx.i, i32 1, ptr elementtype(i32) %rx.i) #13, !srcloc !546
  %call.i59 = tail call ptr @skb_dequeue(ptr noundef %rx_queue.i) #13
  %tobool.not.i = icmp eq ptr %call.i59, null
  br i1 %tobool.not.i, label %if.end90.i.dequeue_rx.exit_crit_edge, label %if.end90.i.if.end3.i_crit_edge

if.end90.i.if.end3.i_crit_edge:                   ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.end90.i.dequeue_rx.exit_crit_edge:             ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dequeue_rx.exit

dequeue_rx.exit:                                  ; preds = %if.end90.i.dequeue_rx.exit_crit_edge, %if.then65.i, %if.then2.critedge.i
  %rx_wait.i = getelementptr inbounds %struct.eni_dev, ptr %9, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %rx_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %88 = load i32, ptr @ec, align 4
  %arrayidx.i60 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.209, ptr %arrayidx.i60, align 4
  %arrayidx1.i61 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %88
  %90 = ptrtoint ptr %arrayidx1.i61 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %arrayidx1.i61, align 4
  %arrayidx2.i62 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %88
  %91 = ptrtoint ptr %arrayidx2.i62 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx2.i62, align 4
  %add.i63 = add i32 %88, 1
  %rem.i64 = srem i32 %add.i63, 64
  store i32 %rem.i64, ptr @ec, align 4
  tail call fastcc void @poll_rx(ptr noundef %0)
  %92 = load i32, ptr @ec, align 4
  %arrayidx.i65 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.210, ptr %arrayidx.i65, align 4
  %arrayidx1.i66 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %92
  %94 = ptrtoint ptr %arrayidx1.i66 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %arrayidx1.i66, align 4
  %arrayidx2.i67 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %92
  %95 = ptrtoint ptr %arrayidx2.i67 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %arrayidx2.i67, align 4
  %add.i68 = add i32 %92, 1
  %rem.i69 = srem i32 %add.i68, 64
  store i32 %rem.i69, ptr @ec, align 4
  br label %if.end

if.end:                                           ; preds = %dequeue_rx.exit, %entry.if.end_crit_edge
  %and26 = and i32 %asmresult.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end.if.end29_crit_edge, label %if.then28

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then28:                                        ; preds = %if.end
  %96 = load i32, ptr @ec, align 4
  %arrayidx.i70 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.211, ptr %arrayidx.i70, align 4
  %arrayidx1.i71 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %96
  %98 = ptrtoint ptr %arrayidx1.i71 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %arrayidx1.i71, align 4
  %arrayidx2.i72 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %96
  %99 = ptrtoint ptr %arrayidx2.i72 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx2.i72, align 4
  %add.i73 = add i32 %96, 1
  %rem.i74 = srem i32 %add.i73, 64
  store i32 %rem.i74, ptr @ec, align 4
  %100 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_data, align 8
  %reg.i = getelementptr inbounds %struct.eni_dev, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %103, i32 24
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #13, !srcloc !514
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !604
  %serv_read.i = getelementptr inbounds %struct.eni_dev, ptr %101, i32 0, i32 19
  %106 = ptrtoint ptr %serv_read.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %serv_read.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %107)
  %cmp.not79.i = icmp eq i32 %105, %107
  br i1 %cmp.not79.i, label %if.then28.get_service.exit_crit_edge, label %while.body.lr.ph.i

if.then28.get_service.exit_crit_edge:             ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_service.exit

while.body.lr.ph.i:                               ; preds = %if.then28
  %service.i = getelementptr inbounds %struct.eni_dev, ptr %101, i32 0, i32 10
  %rx_map.i = getelementptr inbounds %struct.eni_dev, ptr %101, i32 0, i32 24
  %slow.i = getelementptr inbounds %struct.eni_dev, ptr %101, i32 0, i32 22
  %last_slow.i = getelementptr inbounds %struct.eni_dev, ptr %101, i32 0, i32 23
  %fast.i = getelementptr inbounds %struct.eni_dev, ptr %101, i32 0, i32 20
  %last_fast.i = getelementptr inbounds %struct.eni_dev, ptr %101, i32 0, i32 21
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %0, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %108 = phi i32 [ %107, %while.body.lr.ph.i ], [ %126, %while.cond.backedge.i.while.body.i_crit_edge ]
  %109 = ptrtoint ptr %service.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %service.i, align 4
  %mul.i76 = shl i32 %108, 2
  %add.ptr5.i = getelementptr i8, ptr %110, i32 %mul.i76
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !514
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !605
  %113 = ptrtoint ptr %serv_read.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %serv_read.i, align 4
  %add.i77 = add i32 %114, 1
  %and.i78 = and i32 %add.i77, 1023
  store i32 %and.i78, ptr %serv_read.i, align 4
  %115 = ptrtoint ptr %rx_map.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rx_map.i, align 4
  %and11.i = and i32 %112, 1023
  %arrayidx.i79 = getelementptr ptr, ptr %116, i32 %and11.i
  %117 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i79, align 4
  %tobool.not.i80 = icmp eq ptr %118, null
  br i1 %tobool.not.i80, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %119 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %number.i, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, i32 noundef %120, i32 noundef %112) #17
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end41.i, %if.then16.i, %do.end.i
  %121 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %122, i32 24
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #13, !srcloc !514
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !604
  %125 = ptrtoint ptr %serv_read.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %serv_read.i, align 4
  %cmp.not.i = icmp eq i32 %124, %126
  br i1 %cmp.not.i, label %while.cond.backedge.i.get_service.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.backedge.i.get_service.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_service.exit

if.end.i:                                         ; preds = %while.body.i
  %127 = load i32, ptr @ec, align 4
  %arrayidx.i.i82 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %127
  %128 = ptrtoint ptr %arrayidx.i.i82 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str.228, ptr %arrayidx.i.i82, align 4
  %arrayidx1.i.i83 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %127
  %129 = ptrtoint ptr %arrayidx1.i.i83 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %arrayidx1.i.i83, align 4
  %arrayidx2.i.i84 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %127
  %130 = ptrtoint ptr %arrayidx2.i.i84 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %arrayidx2.i.i84, align 4
  %add.i.i85 = add i32 %127, 1
  %rem.i.i86 = srem i32 %add.i.i85, 64
  store i32 %rem.i.i86, ptr @ec, align 4
  %dev_data14.i = getelementptr inbounds %struct.atm_vcc, ptr %118, i32 0, i32 14
  %131 = ptrtoint ptr %dev_data14.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev_data14.i, align 8
  %next.i = getelementptr inbounds %struct.eni_vcc, ptr %132, i32 0, i32 10
  %133 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %next.i, align 8
  %cmp15.not.i = icmp eq ptr %134, inttoptr (i32 1 to ptr)
  br i1 %cmp15.not.i, label %if.end17.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i72.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %rem.i.i86
  %135 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.229, ptr %arrayidx.i72.i, align 4
  %arrayidx1.i73.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %rem.i.i86
  %136 = ptrtoint ptr %arrayidx1.i73.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %arrayidx1.i73.i, align 4
  %arrayidx2.i74.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %rem.i.i86
  %137 = ptrtoint ptr %arrayidx2.i74.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %arrayidx2.i74.i, align 4
  %138 = trunc i32 %rem.i.i86 to i8
  %rem.i76.lhs.trunc.i = add nsw i8 %138, 1
  %rem.i7677.i = srem i8 %rem.i76.lhs.trunc.i, 64
  %rem.i76.sext.i = sext i8 %rem.i7677.i to i32
  store i32 %rem.i76.sext.i, ptr @ec, align 4
  br label %while.cond.backedge.i

if.end17.i:                                       ; preds = %if.end.i
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %139 = ptrtoint ptr %dev_data14.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev_data14.i, align 8
  %timestamp.i = getelementptr inbounds %struct.eni_vcc, ptr %140, i32 0, i32 9
  %141 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %142 = load ptr, ptr %dev_data14.i, align 8
  %next21.i = getelementptr inbounds %struct.eni_vcc, ptr %142, i32 0, i32 10
  %143 = ptrtoint ptr %next21.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %next21.i, align 8
  %rxtp.i = getelementptr inbounds %struct.atm_vcc, ptr %118, i32 0, i32 7, i32 1
  %144 = ptrtoint ptr %rxtp.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %rxtp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %145)
  %cmp22.i = icmp eq i8 %145, 2
  br i1 %cmp22.i, label %if.then24.i, label %if.else32.i

if.then24.i:                                      ; preds = %if.end17.i
  %146 = ptrtoint ptr %fast.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %fast.i, align 4
  %tobool25.not.i = icmp eq ptr %147, null
  br i1 %tobool25.not.i, label %if.else.i87, label %if.then26.i

if.then26.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %last_fast.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %last_fast.i, align 4
  %dev_data27.i = getelementptr inbounds %struct.atm_vcc, ptr %149, i32 0, i32 14
  %150 = ptrtoint ptr %dev_data27.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev_data27.i, align 8
  %next28.i = getelementptr inbounds %struct.eni_vcc, ptr %151, i32 0, i32 10
  %152 = ptrtoint ptr %next28.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %118, ptr %next28.i, align 8
  br label %if.end41.i

if.else.i87:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #15
  %153 = ptrtoint ptr %fast.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %118, ptr %fast.i, align 4
  br label %if.end41.i

if.else32.i:                                      ; preds = %if.end17.i
  %154 = ptrtoint ptr %slow.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %slow.i, align 4
  %tobool33.not.i = icmp eq ptr %155, null
  br i1 %tobool33.not.i, label %if.else37.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #15
  %156 = ptrtoint ptr %last_slow.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %last_slow.i, align 4
  %dev_data35.i = getelementptr inbounds %struct.atm_vcc, ptr %157, i32 0, i32 14
  %158 = ptrtoint ptr %dev_data35.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev_data35.i, align 8
  %next36.i = getelementptr inbounds %struct.eni_vcc, ptr %159, i32 0, i32 10
  %160 = ptrtoint ptr %next36.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %118, ptr %next36.i, align 8
  br label %if.end41.i

if.else37.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #15
  %161 = ptrtoint ptr %slow.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %118, ptr %slow.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else37.i, %if.then34.i, %if.else.i87, %if.then26.i
  %last_slow.sink.i = phi ptr [ %last_fast.i, %if.else.i87 ], [ %last_fast.i, %if.then26.i ], [ %last_slow.i, %if.else37.i ], [ %last_slow.i, %if.then34.i ]
  %162 = ptrtoint ptr %last_slow.sink.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %118, ptr %last_slow.sink.i, align 4
  %163 = load i32, ptr @putting, align 4
  %inc.i88 = add i32 %163, 1
  store i32 %inc.i88, ptr @putting, align 4
  %164 = ptrtoint ptr %dev_data14.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev_data14.i, align 8
  %servicing.i = getelementptr inbounds %struct.eni_vcc, ptr %165, i32 0, i32 7
  %166 = ptrtoint ptr %servicing.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %servicing.i, align 4
  %inc43.i = add i32 %167, 1
  store i32 %inc43.i, ptr %servicing.i, align 4
  br label %while.cond.backedge.i

get_service.exit:                                 ; preds = %while.cond.backedge.i.get_service.exit_crit_edge, %if.then28.get_service.exit_crit_edge
  %168 = load i32, ptr @ec, align 4
  %arrayidx.i89 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %168
  %169 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @.str.212, ptr %arrayidx.i89, align 4
  %arrayidx1.i90 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %168
  %170 = ptrtoint ptr %arrayidx1.i90 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %arrayidx1.i90, align 4
  %arrayidx2.i91 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %168
  %171 = ptrtoint ptr %arrayidx2.i91 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %arrayidx2.i91, align 4
  %add.i92 = add i32 %168, 1
  %rem.i93 = srem i32 %add.i92, 64
  store i32 %rem.i93, ptr @ec, align 4
  tail call fastcc void @poll_rx(ptr noundef %0)
  %172 = load i32, ptr @ec, align 4
  %arrayidx.i94 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %172
  %173 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @.str.210, ptr %arrayidx.i94, align 4
  %arrayidx1.i95 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %172
  %174 = ptrtoint ptr %arrayidx1.i95 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %arrayidx1.i95, align 4
  %arrayidx2.i96 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %172
  %175 = ptrtoint ptr %arrayidx2.i96 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %arrayidx2.i96, align 4
  %add.i97 = add i32 %172, 1
  %rem.i98 = srem i32 %add.i97, 64
  store i32 %rem.i98, ptr @ec, align 4
  br label %if.end29

if.end29:                                         ; preds = %get_service.exit, %if.end.if.end29_crit_edge
  %and30 = and i32 %asmresult.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  %176 = load i32, ptr @ec, align 4
  %arrayidx.i99 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %176
  %177 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @.str.213, ptr %arrayidx.i99, align 4
  %arrayidx1.i100 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %176
  %178 = ptrtoint ptr %arrayidx1.i100 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %arrayidx1.i100, align 4
  %arrayidx2.i101 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %176
  %179 = ptrtoint ptr %arrayidx2.i101 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %arrayidx2.i101, align 4
  %add.i102 = add i32 %176, 1
  %rem.i103 = srem i32 %add.i102, 64
  store i32 %rem.i103, ptr @ec, align 4
  %cmp.i104 = icmp ult ptr %0, inttoptr (i32 48 to ptr)
  br i1 %cmp.i104, label %do.end.i106, label %if.then32.if.end.i108_crit_edge

if.then32.if.end.i108_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i108

do.end.i106:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  %call.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %data) #17
  br label %if.end.i108

if.end.i108:                                      ; preds = %do.end.i106, %if.then32.if.end.i108_crit_edge
  %180 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev_data, align 8
  %cmp1.i = icmp ult ptr %181, inttoptr (i32 48 to ptr)
  br i1 %cmp1.i, label %do.end5.i, label %if.end.i108.if.end8.i_crit_edge

if.end.i108.if.end8.i_crit_edge:                  ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

do.end5.i:                                        ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #15
  %182 = ptrtoint ptr %181 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %182) #17
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end5.i, %if.end.i108.if.end8.i_crit_edge
  %tx_queue.i = getelementptr inbounds %struct.eni_dev, ptr %181, i32 0, i32 13
  %call989.i = tail call ptr @skb_dequeue(ptr noundef %tx_queue.i) #13
  %tobool.not90.i = icmp eq ptr %call989.i, null
  br i1 %tobool.not90.i, label %if.end8.i.if.end33_crit_edge, label %while.body.lr.ph.i111

if.end8.i.if.end33_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

while.body.lr.ph.i111:                            ; preds = %if.end8.i
  %reg.i109 = getelementptr inbounds %struct.eni_dev, ptr %181, i32 0, i32 5
  %pci_dev.i110 = getelementptr inbounds %struct.eni_dev, ptr %181, i32 0, i32 37
  %tx_wait.i = getelementptr inbounds %struct.eni_dev, ptr %181, i32 0, i32 14
  br label %while.body.i113

while.body.i113:                                  ; preds = %if.end55.i.while.body.i113_crit_edge, %while.body.lr.ph.i111
  %call991.i = phi ptr [ %call989.i, %while.body.lr.ph.i111 ], [ %call9.i, %if.end55.i.while.body.i113_crit_edge ]
  %cb.i112 = getelementptr inbounds %struct.sk_buff, ptr %call991.i, i32 0, i32 3
  %183 = ptrtoint ptr %cb.i112 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cb.i112, align 8
  %cmp11.i = icmp ult ptr %184, inttoptr (i32 48 to ptr)
  br i1 %cmp11.i, label %do.end15.i, label %while.body.i113.if.end18.i_crit_edge

while.body.i113.if.end18.i_crit_edge:             ; preds = %while.body.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

do.end15.i:                                       ; preds = %while.body.i113
  call void @__sanitizer_cov_trace_pc() #15
  %185 = ptrtoint ptr %184 to i32
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %185) #17
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end15.i, %while.body.i113.if.end18.i_crit_edge
  %dev_data19.i = getelementptr inbounds %struct.atm_vcc, ptr %184, i32 0, i32 14
  %186 = ptrtoint ptr %dev_data19.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev_data19.i, align 8
  %tx20.i = getelementptr inbounds %struct.eni_vcc, ptr %187, i32 0, i32 5
  %188 = ptrtoint ptr %tx20.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %tx20.i, align 4
  %cmp23.i = icmp ult ptr %189, inttoptr (i32 48 to ptr)
  br i1 %cmp23.i, label %do.end27.i, label %if.end18.i.if.end32.i_crit_edge

if.end18.i.if.end32.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.i

do.end27.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %190 = ptrtoint ptr %189 to i32
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, i32 noundef %190) #17
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end27.i, %if.end18.i.if.end32.i_crit_edge
  %191 = ptrtoint ptr %dev_data19.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev_data19.i, align 8
  %txing.i = getelementptr inbounds %struct.eni_vcc, ptr %192, i32 0, i32 8
  %193 = ptrtoint ptr %txing.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %txing.i, align 8
  %words.i114 = getelementptr inbounds %struct.eni_tx, ptr %189, i32 0, i32 4
  %195 = ptrtoint ptr %words.i114 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %words.i114, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %196)
  %cmp34.i = icmp ult i32 %194, %196
  br i1 %cmp34.i, label %land.lhs.true.i118, label %if.end32.i.if.end44.i_crit_edge

if.end32.i.if.end44.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

land.lhs.true.i118:                               ; preds = %if.end32.i
  %pos.i115 = getelementptr inbounds %struct.sk_buff, ptr %call991.i, i32 0, i32 3, i32 12
  %197 = ptrtoint ptr %pos.i115 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %pos.i115, align 4
  %199 = ptrtoint ptr %reg.i109 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %reg.i109, align 4
  %index.i = getelementptr inbounds %struct.eni_tx, ptr %189, i32 0, i32 5
  %201 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %index.i, align 4
  %mul.i116 = shl i32 %202, 4
  %mul37.i = add i32 %mul.i116, 72
  %add.ptr.i117 = getelementptr i8, ptr %200, i32 %mul37.i
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #13, !srcloc !514
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !606
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %204)
  %cmp41.i = icmp eq i32 %198, %204
  br i1 %cmp41.i, label %if.then42.i, label %land.lhs.true.i118.if.end44.i_crit_edge

land.lhs.true.i118.if.end44.i_crit_edge:          ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

if.then42.i:                                      ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @skb_queue_head(ptr noundef %tx_queue.i, ptr noundef nonnull %call991.i) #13
  br label %if.end33

if.end44.i:                                       ; preds = %land.lhs.true.i118.if.end44.i_crit_edge, %if.end32.i.if.end44.i_crit_edge
  %size.i119 = getelementptr inbounds %struct.sk_buff, ptr %call991.i, i32 0, i32 3, i32 16
  %205 = ptrtoint ptr %size.i119 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %size.i119, align 8
  %207 = ptrtoint ptr %dev_data19.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev_data19.i, align 8
  %txing48.i = getelementptr inbounds %struct.eni_vcc, ptr %208, i32 0, i32 8
  %209 = ptrtoint ptr %txing48.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %txing48.i, align 8
  %sub.i120 = sub i32 %210, %206
  store i32 %sub.i120, ptr %txing48.i, align 8
  %211 = ptrtoint ptr %pci_dev.i110 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pci_dev.i110, align 4
  %dev49.i = getelementptr inbounds %struct.pci_dev, ptr %212, i32 0, i32 44
  %paddr.i121 = getelementptr inbounds %struct.sk_buff, ptr %call991.i, i32 0, i32 3, i32 20
  %213 = ptrtoint ptr %paddr.i121 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %paddr.i121, align 4
  %len.i122 = getelementptr inbounds %struct.sk_buff, ptr %call991.i, i32 0, i32 6
  %215 = ptrtoint ptr %len.i122 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %len.i122, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev49.i, i32 noundef %214, i32 noundef %216, i32 noundef 1, i32 noundef 0) #13
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %184, i32 0, i32 11
  %217 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pop.i, align 4
  %tobool52.not.i = icmp eq ptr %218, null
  br i1 %tobool52.not.i, label %if.else.i123, label %if.then53.i

if.then53.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %218(ptr noundef %184, ptr noundef nonnull %call991.i) #13
  br label %if.end55.i

if.else.i123:                                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %call991.i, i32 noundef 1) #13
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else.i123, %if.then53.i
  %stats.i124 = getelementptr inbounds %struct.atm_vcc, ptr %184, i32 0, i32 16
  %219 = ptrtoint ptr %stats.i124 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %stats.i124, align 8
  %call.i.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %220, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %220, i32 1, i32 3, i32 1) #13
  %221 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %220, ptr %220, i32 1, ptr elementtype(i32) %220) #13, !srcloc !546
  tail call void @__wake_up(ptr noundef %tx_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %222 = load i32, ptr @dma_complete, align 4
  %inc.i126 = add i32 %222, 1
  store i32 %inc.i126, ptr @dma_complete, align 4
  %call9.i = tail call ptr @skb_dequeue(ptr noundef %tx_queue.i) #13
  %tobool.not.i127 = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i127, label %if.end55.i.if.end33_crit_edge, label %if.end55.i.while.body.i113_crit_edge

if.end55.i.while.body.i113_crit_edge:             ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i113

if.end55.i.if.end33_crit_edge:                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.end33:                                         ; preds = %if.end55.i.if.end33_crit_edge, %if.then42.i, %if.end8.i.if.end33_crit_edge, %if.end29.if.end33_crit_edge
  %and34 = and i32 %asmresult.i, 130560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end37_crit_edge, label %if.then36

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %223 = load i32, ptr @ec, align 4
  %arrayidx.i128 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %223
  %224 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @.str.214, ptr %arrayidx.i128, align 4
  %arrayidx1.i129 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %223
  %225 = ptrtoint ptr %arrayidx1.i129 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %arrayidx1.i129, align 4
  %arrayidx2.i130 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %223
  %226 = ptrtoint ptr %arrayidx2.i130 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 0, ptr %arrayidx2.i130, align 4
  %add.i131 = add i32 %223, 1
  %rem.i132 = srem i32 %add.i131, 64
  store i32 %rem.i132, ptr @ec, align 4
  %227 = load i32, ptr @tx_complete, align 4
  %inc = add i32 %227, 1
  store i32 %inc, ptr @tx_complete, align 4
  %tx_wait = getelementptr inbounds %struct.eni_dev, ptr %2, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %tx_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33.if.end37_crit_edge
  %and38 = and i32 %asmresult.i, 416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.for.body.i.preheader_crit_edge, label %if.then40

if.end37.for.body.i.preheader_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.preheader

if.then40:                                        ; preds = %if.end37
  %228 = load i32, ptr @ec, align 4
  %arrayidx.i133 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %228
  %229 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @.str.215, ptr %arrayidx.i133, align 4
  %arrayidx1.i134 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %228
  %230 = ptrtoint ptr %arrayidx1.i134 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 0, ptr %arrayidx1.i134, align 4
  %arrayidx2.i135 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %228
  %231 = ptrtoint ptr %arrayidx2.i135 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %arrayidx2.i135, align 4
  %add.i136 = add i32 %228, 1
  %rem.i137 = srem i32 %add.i136, 64
  store i32 %rem.i137, ptr @ec, align 4
  %and.i138 = and i32 %asmresult.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.not.i139 = icmp eq i32 %and.i138, 0
  br i1 %tobool.not.i139, label %if.then40.if.end.i143_crit_edge, label %do.end.i142

if.then40.if.end.i143_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i143

do.end.i142:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  %number.i140 = getelementptr inbounds %struct.atm_dev, ptr %0, i32 0, i32 3
  %232 = ptrtoint ptr %number.i140 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %number.i140, align 4
  %call.i141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, i32 noundef %233) #17
  br label %if.end.i143

if.end.i143:                                      ; preds = %do.end.i142, %if.then40.if.end.i143_crit_edge
  %and1.i = and i32 %asmresult.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i143.if.end9.i_crit_edge, label %do.end5.i144

if.end.i143.if.end9.i_crit_edge:                  ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

do.end5.i144:                                     ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #15
  %number7.i = getelementptr inbounds %struct.atm_dev, ptr %0, i32 0, i32 3
  %234 = ptrtoint ptr %number7.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %number7.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, i32 noundef %235) #17
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end5.i144, %if.end.i143.if.end9.i_crit_edge
  %and10.i = and i32 %asmresult.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.if.end18.i151_crit_edge, label %do.end14.i

if.end9.i.if.end18.i151_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i151

do.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %number16.i = getelementptr inbounds %struct.atm_dev, ptr %0, i32 0, i32 3
  %236 = ptrtoint ptr %number16.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %number16.i, align 4
  %call17.i145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, i32 noundef %237) #17
  br label %if.end18.i151

if.end18.i151:                                    ; preds = %do.end14.i, %if.end9.i.if.end18.i151_crit_edge
  %238 = load i32, ptr @ec, align 4
  %arrayidx.i.i146 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %238
  %239 = ptrtoint ptr %arrayidx.i.i146 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr @.str.28, ptr %arrayidx.i.i146, align 4
  %arrayidx1.i.i147 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %238
  %240 = ptrtoint ptr %arrayidx1.i.i147 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 0, ptr %arrayidx1.i.i147, align 4
  %arrayidx2.i.i148 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %238
  %241 = ptrtoint ptr %arrayidx2.i.i148 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 0, ptr %arrayidx2.i.i148, align 4
  %add.i.i149 = add i32 %238, 1
  %rem.i.i150 = srem i32 %add.i.i149, 64
  store i32 %rem.i.i150, ptr @ec, align 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end18.i151
  %n.014.i.i = phi i32 [ 0, %if.end18.i151 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %242 = load i32, ptr @ec, align 4
  %add.i27.i = add i32 %242, %n.014.i.i
  %rem.i28.i = srem i32 %add.i27.i, 64
  %call.i.i152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #17
  %arrayidx.i29.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %rem.i28.i
  %243 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %arrayidx.i29.i, align 4
  %tobool.not.i.i = icmp eq ptr %244, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr @.str.36, ptr %244
  %arrayidx6.i.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %rem.i28.i
  %245 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx7.i.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %rem.i28.i
  %247 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx7.i.i, align 4
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %spec.select.i.i, i32 noundef %246, i32 noundef %248) #17
  %inc.i.i = add nuw nsw i32 %n.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.body.i.preheader_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.for.body.i.preheader_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.i.i.for.body.i.preheader_crit_edge, %if.end37.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body.i.preheader
  %i.022.i = phi i32 [ %i.022.i.be, %for.body.i.backedge ], [ 7, %for.body.i.preheader ]
  %249 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev_data, align 8
  %arrayidx.i154 = getelementptr %struct.eni_dev, ptr %250, i32 0, i32 11, i32 %i.022.i
  %251 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %arrayidx.i154, align 4
  %tobool.not.i155 = icmp eq ptr %252, null
  br i1 %tobool.not.i155, label %for.body.i.for.inc.i_crit_edge, label %while.cond.preheader.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

while.cond.preheader.i:                           ; preds = %for.body.i
  %backlog.i = getelementptr %struct.eni_dev, ptr %250, i32 0, i32 11, i32 %i.022.i, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i158.while.cond.i_crit_edge, %while.cond.preheader.i
  %call.i156 = tail call ptr @skb_dequeue(ptr noundef %backlog.i) #13
  %tobool2.not.i157 = icmp eq ptr %call.i156, null
  br i1 %tobool2.not.i157, label %while.cond.i.for.inc.i_crit_edge, label %while.body.i158

while.cond.i.for.inc.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

while.body.i158:                                  ; preds = %while.cond.i
  %call3.i = tail call fastcc i32 @do_tx(ptr noundef nonnull %call.i156) #13
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %while.body.i158.while.cond.i_crit_edge, label %if.end.i162

while.body.i158.while.cond.i_crit_edge:           ; preds = %while.body.i158
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

if.end.i162:                                      ; preds = %while.body.i158
  tail call void @skb_queue_head(ptr noundef %backlog.i, ptr noundef nonnull %call.i156) #13
  %253 = load i32, ptr @requeued, align 4
  %inc.i159 = add i32 %253, 1
  store i32 %inc.i159, ptr @requeued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3.i)
  %cmp7.i = icmp ne i32 %call3.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.022.i)
  %cmp.i161 = icmp sgt i32 %i.022.i, 0
  %or.cond.i = select i1 %cmp7.i, i1 %cmp.i161, i1 false
  br i1 %or.cond.i, label %if.end.i162.for.body.i.backedge_crit_edge, label %if.end.i162.poll_tx.exit_crit_edge

if.end.i162.poll_tx.exit_crit_edge:               ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_tx.exit

if.end.i162.for.body.i.backedge_crit_edge:        ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.i.for.body.i.backedge_crit_edge, %if.end.i162.for.body.i.backedge_crit_edge
  %i.022.i.be = add nsw i32 %i.022.i, -1
  br label %for.body.i

for.inc.i:                                        ; preds = %while.cond.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.022.i)
  %cmp.old.i = icmp sgt i32 %i.022.i, 0
  br i1 %cmp.old.i, label %for.inc.i.for.body.i.backedge_crit_edge, label %for.inc.i.poll_tx.exit_crit_edge

for.inc.i.poll_tx.exit_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_tx.exit

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.backedge

poll_tx.exit:                                     ; preds = %for.inc.i.poll_tx.exit_crit_edge, %if.end.i162.poll_tx.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @poll_rx(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %fast = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %fast to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fast, align 4
  %tobool.not41 = icmp eq ptr %3, null
  br i1 %tobool.not41, label %entry.while.cond7.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond7.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond7.preheader

while.cond7.preheader:                            ; preds = %if.end.while.cond7.preheader_crit_edge, %entry.while.cond7.preheader_crit_edge
  %slow = getelementptr inbounds %struct.eni_dev, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %slow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slow, align 4
  %tobool8.not42 = icmp eq ptr %5, null
  br i1 %tobool8.not42, label %while.cond7.preheader.cleanup_crit_edge, label %while.cond7.preheader.while.body9_crit_edge

while.cond7.preheader.while.body9_crit_edge:      ; preds = %while.cond7.preheader
  br label %while.body9

while.cond7.preheader.cleanup_crit_edge:          ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %6 = phi ptr [ %23, %if.end.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %7 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.220, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %7
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx2.i, align 4
  %add.i = add i32 %7, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr @ec, align 4
  %call = tail call fastcc i32 @rx_vcc(ptr noundef nonnull %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %while.body
  %dev_data2 = getelementptr inbounds %struct.atm_vcc, ptr %6, i32 0, i32 14
  %11 = ptrtoint ptr %dev_data2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_data2, align 8
  %next = getelementptr inbounds %struct.eni_vcc, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next, align 8
  %15 = ptrtoint ptr %fast to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %fast, align 4
  %16 = load ptr, ptr %dev_data2, align 8
  %next5 = getelementptr inbounds %struct.eni_vcc, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %next5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 1 to ptr), ptr %next5, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !607
  %18 = ptrtoint ptr %dev_data2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_data2, align 8
  %servicing = getelementptr inbounds %struct.eni_vcc, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %servicing to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %servicing, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %servicing, align 4
  %22 = ptrtoint ptr %fast to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fast, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.while.cond7.preheader_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.while.cond7.preheader_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond7.preheader

while.body9:                                      ; preds = %if.end13.while.body9_crit_edge, %while.cond7.preheader.while.body9_crit_edge
  %24 = phi ptr [ %41, %if.end13.while.body9_crit_edge ], [ %5, %while.cond7.preheader.while.body9_crit_edge ]
  %25 = load i32, ptr @ec, align 4
  %arrayidx.i35 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.221, ptr %arrayidx.i35, align 4
  %arrayidx1.i36 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %25
  %27 = ptrtoint ptr %arrayidx1.i36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx1.i36, align 4
  %arrayidx2.i37 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %25
  %28 = ptrtoint ptr %arrayidx2.i37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx2.i37, align 4
  %add.i38 = add i32 %25, 1
  %rem.i39 = srem i32 %add.i38, 64
  store i32 %rem.i39, ptr @ec, align 4
  %call10 = tail call fastcc i32 @rx_vcc(ptr noundef nonnull %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %while.body9.cleanup_crit_edge

while.body9.cleanup_crit_edge:                    ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %while.body9
  %dev_data14 = getelementptr inbounds %struct.atm_vcc, ptr %24, i32 0, i32 14
  %29 = ptrtoint ptr %dev_data14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_data14, align 8
  %next15 = getelementptr inbounds %struct.eni_vcc, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %next15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next15, align 8
  %33 = ptrtoint ptr %slow to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %slow, align 4
  %34 = load ptr, ptr %dev_data14, align 8
  %next18 = getelementptr inbounds %struct.eni_vcc, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %next18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 1 to ptr), ptr %next18, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !608
  %36 = ptrtoint ptr %dev_data14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_data14, align 8
  %servicing20 = getelementptr inbounds %struct.eni_vcc, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %servicing20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %servicing20, align 4
  %dec21 = add i32 %39, -1
  store i32 %dec21, ptr %servicing20, align 4
  %40 = ptrtoint ptr %slow to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %slow, align 4
  %tobool8.not = icmp eq ptr %41, null
  br i1 %tobool8.not, label %if.end13.cleanup_crit_edge, label %if.end13.while.body9_crit_edge

if.end13.while.body9_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body9

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %while.body9.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond7.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rx_vcc(ptr noundef %vcc) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev_data1 = getelementptr inbounds %struct.atm_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_data1, align 8
  %vci = getelementptr inbounds %struct.eni_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vci, align 4
  %vci2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %8 = ptrtoint ptr %vci2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vci2, align 8
  %mul = shl i32 %9, 4
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %10 = load i32, ptr @ec, align 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.222, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %10
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %10
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx2.i, align 4
  %add.i = add i32 %10, 1
  %rem.i = srem i32 %add.i, 64
  store i32 %rem.i, ptr @ec, align 4
  %descr = getelementptr inbounds %struct.eni_vcc, ptr %1, i32 0, i32 3
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %14 = ptrtoint ptr %descr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %descr, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !609
  %17 = and i32 %16, 65407
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %shr = lshr exact i32 %18, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %shr)
  %cmp.not = icmp eq i32 %15, %shr
  br i1 %cmp.not, label %do.body, label %while.body

while.body:                                       ; preds = %while.cond
  %19 = ptrtoint ptr %descr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %descr, align 4
  %21 = load i32, ptr @ec, align 4
  %arrayidx.i51 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.223, ptr %arrayidx.i51, align 4
  %arrayidx1.i52 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %21
  %23 = ptrtoint ptr %arrayidx1.i52 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %arrayidx1.i52, align 4
  %arrayidx2.i53 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %21
  %24 = ptrtoint ptr %arrayidx2.i53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr, ptr %arrayidx2.i53, align 4
  %add.i54 = add i32 %21, 1
  %rem.i55 = srem i32 %add.i54, 64
  store i32 %rem.i55, ptr @ec, align 4
  %25 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_data, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %call8 = tail call i32 %28(ptr noundef %vcc) #13
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %while.body.while.cond_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

do.body:                                          ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !610
  tail call void @arm_heavy_mb() #13
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !611
  %30 = and i32 %29, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %30) #13, !srcloc !518
  %31 = load i32, ptr @ec, align 4
  %arrayidx.i56 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.224, ptr %arrayidx.i56, align 4
  %arrayidx1.i57 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %31
  %33 = ptrtoint ptr %arrayidx1.i57 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx1.i57, align 4
  %arrayidx2.i58 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %31
  %34 = ptrtoint ptr %arrayidx2.i58 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx2.i58, align 4
  %add.i59 = add i32 %31, 1
  %rem.i60 = srem i32 %add.i59, 64
  store i32 %rem.i60, ptr @ec, align 4
  br label %while.cond15

while.cond15:                                     ; preds = %while.body27.while.cond15_crit_edge, %do.body
  %35 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_data, align 8
  %descr17 = getelementptr inbounds %struct.eni_vcc, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %descr17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %descr17, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #13, !srcloc !514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !612
  %40 = and i32 %39, 65407
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %shr25 = lshr exact i32 %41, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %shr25)
  %cmp26.not = icmp eq i32 %38, %shr25
  br i1 %cmp26.not, label %while.cond15.cleanup_crit_edge, label %while.body27

while.cond15.cleanup_crit_edge:                   ; preds = %while.cond15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body27:                                     ; preds = %while.cond15
  %42 = ptrtoint ptr %descr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %descr, align 4
  %44 = load i32, ptr @ec, align 4
  %arrayidx.i61 = getelementptr [64 x ptr], ptr @ev, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.225, ptr %arrayidx.i61, align 4
  %arrayidx1.i62 = getelementptr [64 x i32], ptr @ev_a, i32 0, i32 %44
  %46 = ptrtoint ptr %arrayidx1.i62 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %arrayidx1.i62, align 4
  %arrayidx2.i63 = getelementptr [64 x i32], ptr @ev_b, i32 0, i32 %44
  %47 = ptrtoint ptr %arrayidx2.i63 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr25, ptr %arrayidx2.i63, align 4
  %add.i64 = add i32 %44, 1
  %rem.i65 = srem i32 %add.i64, 64
  store i32 %rem.i65, ptr @ec, align 4
  %48 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_data, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %call31 = tail call i32 %51(ptr noundef %vcc) #13
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %while.body27.while.cond15_crit_edge, label %while.body27.cleanup_crit_edge

while.body27.cleanup_crit_edge:                   ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body27.while.cond15_crit_edge:              ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond15

cleanup:                                          ; preds = %while.body27.cleanup_crit_edge, %while.cond15.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.cond15.cleanup_crit_edge ], [ 1, %while.body27.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 251)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 251)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !89, !91, !93, !94, !95, !96, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !114, !115, !116, !117, !119, !121, !122, !123, !124, !126, !128, !130, !132, !133, !134, !135, !137, !139, !141, !142, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !193, !195, !197, !198, !199, !200, !202, !204, !205, !206, !207, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !308, !310, !311, !313, !314, !315, !316, !317, !319, !320, !321, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396, !398, !399, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !447, !448, !449, !451, !453, !455, !457, !458, !459, !460, !462, !463, !465, !466, !468, !469, !470, !472, !474, !476, !477, !478, !479, !481, !482, !483, !485, !486, !487, !489, !490, !492, !494, !495, !497, !498, !499, !501, !502}
!llvm.named.register.sp = !{!504}
!llvm.module.flags = !{!505, !506, !507, !508, !509, !510, !511, !512}
!llvm.ident = !{!513}

!0 = !{ptr @__initcall__kmod_eni__467_2318_eni_init6, !1, !"__initcall__kmod_eni__467_2318_eni_init6", i1 false, i1 false}
!1 = !{!"../drivers/atm/eni.c", i32 2318, i32 1}
!2 = !{ptr @__UNIQUE_ID_file468, !3, !"__UNIQUE_ID_file468", i1 false, i1 false}
!3 = !{!"../drivers/atm/eni.c", i32 2321, i32 1}
!4 = !{ptr @__UNIQUE_ID_license469, !3, !"__UNIQUE_ID_license469", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/atm/eni.c", i32 2314, i32 9}
!7 = !{ptr @eni_driver, !8, !"eni_driver", i1 false, i1 false}
!8 = !{!"../drivers/atm/eni.c", i32 2301, i32 26}
!9 = !{ptr @eni_pci_tbl, !10, !"eni_pci_tbl", i1 false, i1 false}
!10 = !{!"../drivers/atm/eni.c", i32 2279, i32 35}
!11 = !{ptr @ops, !12, !"ops", i1 false, i1 false}
!12 = !{!"../drivers/atm/eni.c", i32 2203, i32 32}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/atm/eni.c", i32 1918, i32 8}
!15 = !{ptr @ev, !16, !"ev", i1 false, i1 false}
!16 = !{!"../drivers/atm/eni.c", i32 103, i32 20}
!17 = !{ptr @ec, !18, !"ec", i1 false, i1 false}
!18 = !{!"../drivers/atm/eni.c", i32 105, i32 12}
!19 = !{ptr @ev_a, !20, !"ev_a", i1 false, i1 false}
!20 = !{!"../drivers/atm/eni.c", i32 104, i32 22}
!21 = !{ptr @ev_b, !22, !"ev_b", i1 false, i1 false}
!22 = !{!"../drivers/atm/eni.c", i32 104, i32 31}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/atm/eni.c", i32 208, i32 4}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @eni_put_free._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @eni_put_free._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/atm/eni.c", i32 214, i32 4}
!31 = !{ptr @eni_put_free._entry.5, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @eni_put_free._entry_ptr.7, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/atm/eni.c", i32 550, i32 8}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/atm/eni.c", i32 560, i32 10}
!37 = !{ptr @rx_aal5.silence, !38, !"silence", i1 false, i1 false}
!38 = !{!"../drivers/atm/eni.c", i32 566, i32 25}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/atm/eni.c", i32 569, i32 5}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rx_aal5._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @rx_aal5._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/atm/eni.c", i32 575, i32 10}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/atm/eni.c", i32 590, i32 10}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/atm/eni.c", i32 592, i32 4}
!50 = !{ptr @rx_aal5._entry.14, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rx_aal5._entry_ptr.16, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/atm/eni.c", i32 320, i32 2}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rx_ident_err._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @rx_ident_err._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/atm/eni.c", i32 322, i32 2}
!59 = !{ptr @rx_ident_err._entry.19, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rx_ident_err._entry_ptr.21, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/atm/eni.c", i32 324, i32 2}
!63 = !{ptr @rx_ident_err._entry.22, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rx_ident_err._entry_ptr.24, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/atm/eni.c", i32 327, i32 2}
!67 = !{ptr @rx_ident_err._entry.25, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rx_ident_err._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/atm/eni.c", i32 329, i32 8}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/atm/eni.c", i32 330, i32 2}
!73 = !{ptr @rx_ident_err._entry.29, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rx_ident_err._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/atm/eni.c", i32 123, i32 3}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @event_dump._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @event_dump._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @event_dump._entry.34, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/atm/eni.c", i32 124, i32 3}
!82 = !{ptr @event_dump._entry_ptr.35, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @skb_queue_head_init.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/atm/eni.c", i32 493, i32 8}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/atm/eni.c", i32 494, i32 45}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/atm/eni.c", i32 359, i32 4}
!93 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @do_rx_dma._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @do_rx_dma._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/atm/eni.c", i32 380, i32 10}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/atm/eni.c", i32 447, i32 3}
!100 = !{ptr @do_rx_dma._entry.43, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @do_rx_dma._entry_ptr.45, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/atm/eni.c", i32 459, i32 3}
!104 = !{ptr @do_rx_dma._entry.46, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @do_rx_dma._entry_ptr.48, !103, !"_entry_ptr", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @rx_enqueued, !111, !"rx_enqueued", i1 false, i1 false}
!111 = !{!"../drivers/atm/eni.c", i32 148, i32 18}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/atm/eni.c", i32 290, i32 3}
!114 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @eni_free_mem._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @eni_free_mem._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @comp_tx.pre_div, !118, !"pre_div", i1 false, i1 false}
!118 = !{!"../drivers/atm/eni.c", i32 1253, i32 19}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/atm/eni.c", i32 824, i32 3}
!121 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @open_rx_second._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @open_rx_second._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/atm/eni.c", i32 858, i32 9}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../drivers/atm/eni.c", i32 860, i32 3}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/atm/eni.c", i32 868, i32 10}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/atm/eni.c", i32 870, i32 4}
!132 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @close_rx._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @close_rx._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../drivers/atm/eni.c", i32 873, i32 4}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/atm/eni.c", i32 884, i32 10}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/atm/eni.c", i32 886, i32 4}
!141 = !{ptr @close_rx._entry.61, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @close_rx._entry_ptr.63, !140, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../drivers/atm/eni.c", i32 889, i32 4}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../drivers/atm/eni.c", i32 891, i32 3}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../drivers/atm/eni.c", i32 1402, i32 2}
!149 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!150 = !{!"../drivers/atm/eni.c", i32 1412, i32 3}
!151 = distinct !{null, !152, !"__already_done", i1 false, i1 false}
!152 = !{!"../drivers/atm/eni.c", i32 1414, i32 2}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/atm/eni.c", i32 2001, i32 3}
!155 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @eni_ioctl._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @eni_ioctl._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/atm/eni.c", i32 179, i32 2}
!160 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @dump._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @dump._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/atm/eni.c", i32 181, i32 2}
!165 = !{ptr @dump._entry.72, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @dump._entry_ptr.74, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/atm/eni.c", i32 184, i32 4}
!169 = !{ptr @dump._entry.75, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @dump._entry_ptr.77, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/atm/eni.c", i32 186, i32 2}
!173 = !{ptr @dump._entry.78, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @dump._entry_ptr.80, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/atm/eni.c", i32 189, i32 4}
!177 = !{ptr @dump._entry.81, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dump._entry_ptr.83, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/atm/eni.c", i32 192, i32 2}
!181 = !{ptr @dump._entry.84, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @dump._entry_ptr.86, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/atm/eni.c", i32 166, i32 3}
!185 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @dump_mem._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @dump_mem._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = distinct !{null, !189, !"__already_done", i1 false, i1 false}
!189 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!190 = distinct !{null, !189, !"<string literal>", i1 false, i1 false}
!191 = distinct !{null, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/atm/eni.c", i32 2045, i32 3}
!197 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @eni_send._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @eni_send._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @submitted, !201, !"submitted", i1 false, i1 false}
!201 = !{!"../drivers/atm/eni.c", i32 148, i32 61}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/atm/eni.c", i32 1040, i32 2}
!204 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @do_tx._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @do_tx._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/atm/eni.c", i32 1041, i32 8}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/atm/eni.c", i32 1043, i32 2}
!211 = !{ptr @do_tx._entry.97, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @do_tx._entry_ptr.99, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/atm/eni.c", i32 1045, i32 2}
!215 = !{ptr @do_tx._entry.100, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @do_tx._entry_ptr.102, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/atm/eni.c", i32 1048, i32 2}
!219 = !{ptr @do_tx._entry.103, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @do_tx._entry_ptr.105, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/atm/eni.c", i32 1102, i32 3}
!223 = !{ptr @do_tx._entry.106, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @do_tx._entry_ptr.108, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/atm/eni.c", i32 1108, i32 3}
!227 = !{ptr @do_tx._entry.109, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @do_tx._entry_ptr.111, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/atm/eni.c", i32 934, i32 8}
!231 = !{ptr @queued, !232, !"queued", i1 false, i1 false}
!232 = !{!"../drivers/atm/eni.c", i32 147, i32 45}
!233 = !{ptr @backlogged, !234, !"backlogged", i1 false, i1 false}
!234 = !{!"../drivers/atm/eni.c", i32 148, i32 3}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/atm/eni.c", i32 2086, i32 34}
!237 = !{ptr @.str.114, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/atm/eni.c", i32 2086, i32 41}
!239 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/atm/eni.c", i32 2086, i32 51}
!241 = !{ptr @eni_proc_read.signal, !242, !"signal", i1 false, i1 false}
!242 = !{!"../drivers/atm/eni.c", i32 2086, i32 21}
!243 = !{ptr @.str.116, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/atm/eni.c", i32 2093, i32 23}
!245 = !{ptr @.str.117, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/atm/eni.c", i32 2097, i32 23}
!247 = !{ptr @.str.118, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/atm/eni.c", i32 2138, i32 12}
!249 = !{ptr @.str.119, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/atm/eni.c", i32 2140, i32 23}
!251 = !{ptr @.str.120, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/atm/eni.c", i32 2147, i32 25}
!253 = !{ptr @.str.121, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/atm/eni.c", i32 2152, i32 29}
!255 = !{ptr @.str.122, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/atm/eni.c", i32 2155, i32 23}
!257 = !{ptr @.str.123, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/atm/eni.c", i32 2171, i32 26}
!259 = !{ptr @.str.124, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/atm/eni.c", i32 2173, i32 36}
!261 = !{ptr @.str.125, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/atm/eni.c", i32 2178, i32 52}
!263 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/atm/eni.c", i32 2181, i32 35}
!265 = !{ptr @.str.127, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/atm/eni.c", i32 2195, i32 23}
!267 = !{ptr @.str.128, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/atm/eni.c", i32 1720, i32 3}
!269 = !{ptr @.str.129, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @eni_do_init._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @eni_do_init._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.131, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/atm/eni.c", i32 1724, i32 2}
!274 = !{ptr @eni_do_init._entry.130, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @eni_do_init._entry_ptr.132, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.134, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/atm/eni.c", i32 1727, i32 3}
!278 = !{ptr @eni_do_init._entry.133, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @eni_do_init._entry_ptr.135, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.137, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/atm/eni.c", i32 1728, i32 3}
!282 = !{ptr @eni_do_init._entry.136, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @eni_do_init._entry_ptr.138, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @eni_do_init._entry.139, !285, !"_entry", i1 false, i1 false}
!285 = !{!"../drivers/atm/eni.c", i32 1738, i32 4}
!286 = !{ptr @eni_do_init._entry_ptr.140, !285, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.142, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/atm/eni.c", i32 1739, i32 4}
!289 = !{ptr @eni_do_init._entry.141, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @eni_do_init._entry_ptr.143, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.145, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/atm/eni.c", i32 1765, i32 2}
!293 = !{ptr @eni_do_init._entry.144, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @eni_do_init._entry_ptr.146, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.148, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/atm/eni.c", i32 1768, i32 3}
!297 = !{ptr @eni_do_init._entry.147, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @eni_do_init._entry_ptr.149, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.151, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/atm/eni.c", i32 1769, i32 3}
!301 = !{ptr @eni_do_init._entry.150, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @eni_do_init._entry_ptr.152, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.154, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/atm/eni.c", i32 1778, i32 3}
!305 = !{ptr @eni_do_init._entry.153, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @eni_do_init._entry_ptr.155, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.156, !304, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @eni_do_init._entry.157, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../drivers/atm/eni.c", i32 1779, i32 2}
!310 = !{ptr @eni_do_init._entry_ptr.158, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.160, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/atm/eni.c", i32 1780, i32 2}
!313 = !{ptr @eni_do_init._entry.159, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @eni_do_init._entry_ptr.161, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.162, !312, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.163, !312, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.164, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/atm/eni.c", i32 1677, i32 3}
!319 = !{ptr @.str.165, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @get_esi_asic._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @get_esi_asic._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.166, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/atm/eni.c", i32 1574, i32 5}
!324 = !{ptr @.str.167, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/atm/eni.c", i32 1574, i32 12}
!326 = !{ptr @.str.168, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/atm/eni.c", i32 1574, i32 26}
!328 = !{ptr @.str.169, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/atm/eni.c", i32 1575, i32 5}
!330 = !{ptr @.str.170, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/atm/eni.c", i32 1575, i32 12}
!332 = !{ptr @.str.171, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/atm/eni.c", i32 1575, i32 19}
!334 = !{ptr @.str.172, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/atm/eni.c", i32 1575, i32 26}
!336 = !{ptr @.str.173, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/atm/eni.c", i32 1576, i32 5}
!338 = !{ptr @.str.174, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/atm/eni.c", i32 1576, i32 12}
!340 = !{ptr @.str.175, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/atm/eni.c", i32 1576, i32 19}
!342 = !{ptr @.str.176, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/atm/eni.c", i32 1576, i32 26}
!344 = !{ptr @.str.177, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/atm/eni.c", i32 1577, i32 5}
!346 = !{ptr @.str.178, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/atm/eni.c", i32 1577, i32 12}
!348 = !{ptr @.str.179, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/atm/eni.c", i32 1577, i32 19}
!350 = !{ptr @.str.180, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/atm/eni.c", i32 1577, i32 26}
!352 = !{ptr @.str.181, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/atm/eni.c", i32 1578, i32 19}
!354 = !{ptr @.str.182, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/atm/eni.c", i32 1578, i32 26}
!356 = !{ptr @.str.183, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/atm/eni.c", i32 1579, i32 12}
!358 = !{ptr @.str.184, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/atm/eni.c", i32 1579, i32 19}
!360 = !{ptr @.str.185, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/atm/eni.c", i32 1579, i32 26}
!362 = !{ptr @.str.186, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/atm/eni.c", i32 1580, i32 5}
!364 = !{ptr @.str.187, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/atm/eni.c", i32 1580, i32 12}
!366 = !{ptr @.str.188, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/atm/eni.c", i32 1580, i32 19}
!368 = !{ptr @.str.189, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/atm/eni.c", i32 1580, i32 26}
!370 = !{ptr @.str.190, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/atm/eni.c", i32 1581, i32 5}
!372 = !{ptr @.str.191, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/atm/eni.c", i32 1581, i32 12}
!374 = !{ptr @.str.192, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/atm/eni.c", i32 1581, i32 19}
!376 = !{ptr @.str.193, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/atm/eni.c", i32 1581, i32 26}
!378 = !{ptr @media_name, !379, !"media_name", i1 false, i1 false}
!379 = !{!"../drivers/atm/eni.c", i32 1573, i32 21}
!380 = !{ptr @.str.194, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/atm/eni.c", i32 1814, i32 3}
!382 = !{ptr @.str.195, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @eni_start._entry, !381, !"_entry", i1 false, i1 false}
!384 = !{ptr @eni_start._entry_ptr, !381, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.197, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/atm/eni.c", i32 1823, i32 3}
!387 = !{ptr @eni_start._entry.196, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @eni_start._entry_ptr.198, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.200, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/atm/eni.c", i32 1829, i32 3}
!391 = !{ptr @eni_start._entry.199, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @eni_start._entry_ptr.201, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @eni_start.__key, !394, !"__key", i1 false, i1 false}
!394 = !{!"../drivers/atm/eni.c", i32 1842, i32 2}
!395 = !{ptr @.str.202, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @.str.204, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/atm/eni.c", i32 1852, i32 3}
!398 = !{ptr @eni_start._entry.203, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @eni_start._entry_ptr.205, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.206, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/atm/eni.c", i32 1508, i32 9}
!402 = !{ptr @.str.207, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/atm/eni.c", i32 1512, i32 9}
!404 = !{ptr @.str.208, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/atm/eni.c", i32 1538, i32 9}
!406 = !{ptr @.str.209, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/atm/eni.c", i32 1540, i32 9}
!408 = !{ptr @.str.210, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/atm/eni.c", i32 1542, i32 9}
!410 = !{ptr @.str.211, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/atm/eni.c", i32 1546, i32 9}
!412 = !{ptr @.str.212, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/atm/eni.c", i32 1548, i32 9}
!414 = !{ptr @.str.213, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/atm/eni.c", i32 1553, i32 9}
!416 = !{ptr @.str.214, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/atm/eni.c", i32 1557, i32 9}
!418 = !{ptr @.str.215, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/atm/eni.c", i32 1563, i32 9}
!420 = !{ptr @.str.216, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/atm/eni.c", i32 737, i32 11}
!422 = !{ptr @.str.217, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/atm/eni.c", i32 741, i32 9}
!424 = !{ptr @.str.218, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/atm/eni.c", i32 751, i32 10}
!426 = !{ptr @.str.219, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/atm/eni.c", i32 761, i32 10}
!428 = !{ptr @rx_dequeued, !429, !"rx_dequeued", i1 false, i1 false}
!429 = !{!"../drivers/atm/eni.c", i32 148, i32 34}
!430 = !{ptr @pushed, !431, !"pushed", i1 false, i1 false}
!431 = !{!"../drivers/atm/eni.c", i32 148, i32 50}
!432 = !{ptr @.str.220, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/atm/eni.c", i32 658, i32 9}
!434 = !{ptr @.str.221, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/atm/eni.c", i32 666, i32 9}
!436 = !{ptr @.str.222, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/atm/eni.c", i32 620, i32 8}
!438 = !{ptr @.str.223, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/atm/eni.c", i32 623, i32 9}
!440 = !{ptr @.str.224, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/atm/eni.c", i32 637, i32 8}
!442 = !{ptr @.str.225, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/atm/eni.c", i32 640, i32 9}
!444 = !{ptr @.str.226, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/atm/eni.c", i32 689, i32 4}
!446 = !{ptr @.str.227, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @get_service._entry, !445, !"_entry", i1 false, i1 false}
!448 = !{ptr @get_service._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.228, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/atm/eni.c", i32 694, i32 9}
!451 = !{ptr @.str.229, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/atm/eni.c", i32 696, i32 10}
!453 = !{ptr @putting, !454, !"putting", i1 false, i1 false}
!454 = !{!"../drivers/atm/eni.c", i32 149, i32 3}
!455 = !{ptr @.str.230, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/atm/eni.c", i32 1213, i32 2}
!457 = !{ptr @.str.231, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @dequeue_tx._entry, !456, !"_entry", i1 false, i1 false}
!459 = !{ptr @dequeue_tx._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @dequeue_tx._entry.232, !461, !"_entry", i1 false, i1 false}
!461 = !{!"../drivers/atm/eni.c", i32 1215, i32 2}
!462 = !{ptr @dequeue_tx._entry_ptr.233, !461, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @dequeue_tx._entry.234, !464, !"_entry", i1 false, i1 false}
!464 = !{!"../drivers/atm/eni.c", i32 1218, i32 3}
!465 = !{ptr @dequeue_tx._entry_ptr.235, !464, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.237, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/atm/eni.c", i32 1220, i32 3}
!468 = !{ptr @dequeue_tx._entry.236, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @dequeue_tx._entry_ptr.238, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @dma_complete, !471, !"dma_complete", i1 false, i1 false}
!471 = !{!"../drivers/atm/eni.c", i32 147, i32 28}
!472 = !{ptr @tx_complete, !473, !"tx_complete", i1 false, i1 false}
!473 = !{!"../drivers/atm/eni.c", i32 147, i32 12}
!474 = !{ptr @.str.239, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/atm/eni.c", i32 1476, i32 3}
!476 = !{ptr @.str.240, !475, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @bug_int._entry, !475, !"_entry", i1 false, i1 false}
!478 = !{ptr @bug_int._entry_ptr, !475, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.242, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/atm/eni.c", i32 1479, i32 3}
!481 = !{ptr @bug_int._entry.241, !480, !"_entry", i1 false, i1 false}
!482 = !{ptr @bug_int._entry_ptr.243, !480, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.245, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/atm/eni.c", i32 1482, i32 3}
!485 = !{ptr @bug_int._entry.244, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @bug_int._entry_ptr.246, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @bug_int._entry.247, !488, !"_entry", i1 false, i1 false}
!488 = !{!"../drivers/atm/eni.c", i32 1485, i32 2}
!489 = !{ptr @bug_int._entry_ptr.248, !488, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @requeued, !491, !"requeued", i1 false, i1 false}
!491 = !{!"../drivers/atm/eni.c", i32 147, i32 56}
!492 = !{ptr @start_tx.__key, !493, !"__key", i1 false, i1 false}
!493 = !{!"../drivers/atm/eni.c", i32 1442, i32 2}
!494 = !{ptr @.str.249, !493, !"<string literal>", i1 false, i1 false}
!495 = !{ptr @.str.250, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/atm/eni.c", i32 906, i32 3}
!497 = !{ptr @start_rx._entry, !496, !"_entry", i1 false, i1 false}
!498 = !{ptr @start_rx._entry_ptr, !496, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @start_rx.__key, !500, !"__key", i1 false, i1 false}
!500 = !{!"../drivers/atm/eni.c", i32 914, i32 2}
!501 = !{ptr @.str.251, !500, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @eni_boards, !503, !"eni_boards", i1 false, i1 false}
!503 = !{!"../drivers/atm/eni.c", i32 151, i32 24}
!504 = !{!"sp"}
!505 = !{i32 1, !"wchar_size", i32 2}
!506 = !{i32 1, !"min_enum_size", i32 4}
!507 = !{i32 8, !"branch-target-enforcement", i32 0}
!508 = !{i32 8, !"sign-return-address", i32 0}
!509 = !{i32 8, !"sign-return-address-all", i32 0}
!510 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!511 = !{i32 7, !"uwtable", i32 1}
!512 = !{i32 7, !"frame-pointer", i32 2}
!513 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!514 = !{i64 6447702}
!515 = !{i64 2157449784}
!516 = !{i64 2157453180}
!517 = !{i64 2157453478}
!518 = !{i64 6447284}
!519 = !{i64 2157454145}
!520 = !{i64 2157454363}
!521 = !{i64 2157455030}
!522 = !{i64 2157455239}
!523 = !{i64 2157455890}
!524 = !{i64 2157457758}
!525 = !{i64 2157461088}
!526 = !{i64 6447482}
!527 = !{i64 2157443117}
!528 = !{i64 2157465740}
!529 = !{i64 2157466286}
!530 = !{i64 2157473614}
!531 = !{i64 2157409410}
!532 = !{i64 2157365198}
!533 = !{i64 2157365463}
!534 = !{i64 2157475317}
!535 = !{i64 2157476374}
!536 = !{i64 2157476998}
!537 = !{i64 2157332544}
!538 = !{i64 2157332903}
!539 = !{i64 2157335052}
!540 = !{!"auto-init"}
!541 = !{i64 2153023562, i64 2153023587}
!542 = !{!"branch_weights", i32 2000, i32 1}
!543 = !{i64 5519117}
!544 = !{i64 5519314}
!545 = !{i64 2153004547}
!546 = !{i64 2148400616, i64 2148400642, i64 2148400671, i64 2148400705, i64 2148400736, i64 2148400759}
!547 = !{i64 2154192989}
!548 = !{i64 2154193310}
!549 = !{i64 2154193978}
!550 = !{i64 2148403081, i64 2148403107, i64 2148403136, i64 2148403170, i64 2148403201, i64 2148403224}
!551 = !{i64 2157486775}
!552 = !{i64 2157487651}
!553 = !{i64 2154193631}
!554 = !{i64 2157479112}
!555 = !{i64 2157480147}
!556 = !{i64 2157317657}
!557 = !{i64 2157320459}
!558 = !{i64 2157316869}
!559 = !{i64 2157298668}
!560 = !{i64 2157299695}
!561 = !{i64 2157305265}
!562 = !{i64 2157312415}
!563 = !{i64 2157312961}
!564 = !{i64 2157314934}
!565 = !{i64 2157315361}
!566 = !{i64 2157315891}
!567 = !{i64 2157391726}
!568 = !{i64 2157392759}
!569 = !{i64 2157336887}
!570 = !{i64 2157337798}
!571 = !{i64 2157339275}
!572 = !{i64 2157340148}
!573 = !{i64 2157344909}
!574 = !{i64 2157344993}
!575 = !{i64 2157345031}
!576 = !{i64 2157351139}
!577 = !{i64 2157351661}
!578 = !{i64 2157357904}
!579 = !{i64 2157362626}
!580 = !{i64 2157398001}
!581 = !{i64 2157402724}
!582 = !{i64 2157407447}
!583 = !{i64 2157408155}
!584 = !{i64 2157408863}
!585 = !{i64 2157373752}
!586 = !{i64 2157374350}
!587 = !{i64 2157374949}
!588 = !{i64 2157375495}
!589 = distinct !{!589, !590}
!590 = !{!"llvm.loop.peeled.count", i32 1}
!591 = !{i64 2157379610}
!592 = !{i64 2157380589}
!593 = !{i64 2157381521}
!594 = !{i64 2157382006}
!595 = !{i64 2157382469}
!596 = !{i64 2157383112}
!597 = !{i64 2157416447}
!598 = !{i64 2157417004}
!599 = !{i64 2157418252}
!600 = !{i64 907384, i64 907401, i64 907425, i64 907451, i64 907469}
!601 = !{i64 2157418595}
!602 = !{i64 2157330856}
!603 = !{i64 2157331486}
!604 = !{i64 2157326616}
!605 = !{i64 2157327182}
!606 = !{i64 2157390548}
!607 = !{i64 2157325856}
!608 = !{i64 2157326037}
!609 = !{i64 2157323209}
!610 = !{i64 2157324172}
!611 = !{i64 2157325057}
!612 = !{i64 2157325577}
