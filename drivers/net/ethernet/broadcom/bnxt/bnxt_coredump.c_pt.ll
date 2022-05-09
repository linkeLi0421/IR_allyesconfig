; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnxt/bnxt_coredump.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnxt/bnxt_coredump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timezone = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnxt_hwrm_dbg_dma_info = type { ptr, i32, i16, i16, i16, i16, i32, i32 }
%struct.bnxt = type { ptr, ptr, ptr, i32, i16, i8, [32 x i8], [32 x i8], ptr, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i16, i32, i16, i8, i8, [8 x %struct.bnxt_queue_info], [8 x i8], [8 x i8], i8, i32, %struct.timer_list, i32, ptr, i32, [6 x i8], ptr, ptr, i8, i8, i8, i32, i32, i32, i32, i16, i16, ptr, %struct.hlist_head, %struct.rtnl_link_stats64, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, i16, i16, i16, [8 x i8], i8, i16, i16, i32, i32, %struct.mutex, %struct.hwrm_ver_get_output, [32 x i8], [32 x i8], [32 x i8], i64, i16, i16, i16, i16, i8, i8, i16, %struct.bnxt_coal_cap, %struct.bnxt_coal, %struct.bnxt_coal, i32, %struct.work_struct, i32, %struct.delayed_work, i32, i16, i16, i32, ptr, %struct.bnxt_hw_resc, %struct.bnxt_pf_info, ptr, i32, %struct.bnxt_vf_info, %struct.wait_queue_head, i8, %struct.mutex, %struct.spinlock, i32, [512 x %struct.hlist_head], %struct.spinlock, ptr, i32, %struct.mutex, %struct.bnxt_link_info, %struct.ethtool_eee, i32, i32, i8, i8, ptr, i8, i8, i8, [4 x %struct.bnxt_led_info], i16, ptr, ptr, ptr, %struct.devlink_port, i32, ptr, ptr, [8 x i8], ptr, %struct.list_head, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.bnxt_queue_info = type { i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnxt_stats_mem = type { ptr, ptr, ptr, i32, i32 }
%struct.hwrm_ver_get_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i8, [2 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i8], i8 }
%struct.bnxt_coal_cap = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_coal = type { i16, i16, i16, i16, i16, i8, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bnxt_hw_resc = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_pf_info = type { i16, i16, [6 x i8], i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, ptr, i16, i8, [4 x ptr], [4 x i32], ptr }
%struct.bnxt_vf_info = type { i16, [6 x i8], [6 x i8], i16, i16, i32, i32, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnxt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, %struct.hwrm_port_phy_qcfg_output }
%struct.hwrm_port_phy_qcfg_output = type { i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, i32, i16, i8, i8, [16 x i8], [16 x i8], i16, i16, i16, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bnxt_led_info = type { i8, i8, i8, i8, i16, i16 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.156, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.156 = type { ptr }
%struct.coredump_segment_record = type { i16, i16, i16, i8, i8, i8, i8, [2 x i8], i32 }
%struct.hwrm_dbg_coredump_initiate_input = type { i16, i16, i16, i16, i64, i16, i16, i16, i16, i8, [7 x i8] }
%struct.hwrm_dbg_coredump_retrieve_input = type { i16, i16, i16, i16, i64, i64, i32, i32, i16, i16, i16, i16, i8, i8, i16, i32, i32, i32 }
%struct.bnxt_coredump_record = type { [4 x i8], i32, i8, i8, i8, [5 x i8], [32 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [256 x i8], i32, i32, i32, i32, [32 x i8], i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i8, i8, [313 x i16] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.anon.21 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.hwrm_dbg_qcfg_input = type { i16, i16, i16, i16, i64, i16, i16, i32 }
%struct.hwrm_dbg_qcfg_output = type { i16, i16, i16, i16, i16, [2 x i8], i32, i32, i16, [2 x i8], i32, [3 x i8], i8 }
%struct.hwrm_dbg_cmn_input = type { i16, i16, i16, i16, i64, i64, i32 }
%struct.hwrm_dbg_cmn_output = type { i16, i16, i16, i16, i8 }

@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get coredump segment list\0A\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to initiate coredump for seg = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to retrieve coredump for seg = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Firmware returned large coredump buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u.%u\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown OS release in coredump\0A\00", [32 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 303, i32 23 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 329, i32 8 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 342, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 371, i32 23 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 249, i32 33 }
@___asan_gen_.27 = private constant [54 x i8] c"../drivers/net/ethernet/broadcom/bnxt/bnxt_coredump.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 250, i32 24 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 230, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 214, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 156, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_get_coredump(ptr noundef %bp, i16 noundef zeroext %dump_type, ptr noundef %buf, ptr nocapture noundef %dump_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %dump_type)
  %cmp = icmp eq i16 %dump_type, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dump_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dump_len, align 4
  %call = tail call i32 @tee_bnxt_copy_coredump(ptr noundef %buf, i32 noundef 0, i32 noundef %1) #8
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @__bnxt_get_coredump(ptr noundef %bp, ptr noundef %buf, ptr noundef %dump_len)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_bnxt_copy_coredump(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bnxt_get_coredump(ptr noundef %bp, ptr noundef %buf, ptr nocapture noundef %dump_len) unnamed_addr #0 align 64 {
entry:
  %os_ver_major.i = alloca i32, align 4
  %os_ver_minor.i = alloca i32, align 4
  %tm.i = alloca %struct.tm, align 4
  %req.i150 = alloca ptr, align 4
  %info.i151 = alloca %struct.bnxt_hwrm_dbg_dma_info, align 4
  %req.i145 = alloca ptr, align 4
  %info.i = alloca %struct.bnxt_hwrm_dbg_dma_info, align 4
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dump_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dump_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %buf_len.0 = phi i32 [ %1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call = tail call i64 @ktime_get_real_seconds() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %2 = load i32, ptr @sys_tz, align 4
  %3 = trunc i32 %2 to i16
  %conv = mul i16 %3, 60
  %4 = ptrtoint ptr %dump_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 240, ptr %dump_len, align 4
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devfn.i, align 4
  %conv7.i = trunc i32 %8 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv7.i) #8
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 1933928269, ptr %buf, align 1
  %seg_hdr.sroa.7.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 4
  %11 = ptrtoint ptr %seg_hdr.sroa.7.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 33554432, ptr %seg_hdr.sroa.7.0.buf.sroa_idx, align 1
  %seg_hdr.sroa.12.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 8
  %seg_hdr.sroa.18.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 18
  %12 = call ptr @memset(ptr %seg_hdr.sroa.12.0.buf.sroa_idx, i32 0, i32 10)
  %13 = ptrtoint ptr %seg_hdr.sroa.18.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %9, ptr %seg_hdr.sroa.18.0.buf.sroa_idx, align 1
  %seg_hdr.sroa.20.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 20
  %14 = ptrtoint ptr %seg_hdr.sroa.20.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %seg_hdr.sroa.20.0.buf.sroa_idx, align 1
  %seg_hdr.sroa.20198.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 24
  %15 = ptrtoint ptr %seg_hdr.sroa.20198.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 -1342177280, ptr %seg_hdr.sroa.20198.0.buf.sroa_idx, align 1
  %seg_hdr.sroa.22.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 28
  %16 = ptrtoint ptr %seg_hdr.sroa.22.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %seg_hdr.sroa.22.0.buf.sroa_idx, align 1
  %seg_hdr.sroa.24.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 32
  %17 = ptrtoint ptr %seg_hdr.sroa.24.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %seg_hdr.sroa.24.0.buf.sroa_idx, align 1
  %seg_hdr.sroa.26.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 36
  %18 = ptrtoint ptr %seg_hdr.sroa.26.0.buf.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 1073741824, ptr %seg_hdr.sroa.26.0.buf.sroa_idx, align 1
  %seg_hdr.sroa.28.0.buf.sroa_idx = getelementptr inbounds i8, ptr %buf, i32 40
  %add.ptr4 = getelementptr i8, ptr %buf, i32 64
  %ver_resp = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 95
  %19 = call ptr @memset(ptr %seg_hdr.sroa.28.0.buf.sroa_idx, i32 0, i32 24)
  %20 = call ptr @memcpy(ptr %add.ptr4, ptr %ver_resp, i32 176)
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %offset.0 = phi i32 [ 240, %if.then2 ], [ 0, %if.end.if.end6_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info.i) #8
  %21 = call ptr @memset(ptr %info.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #8
  %22 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !33
  %call.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i, i16 noundef zeroext -233, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.if.then9_crit_edge

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.end.i:                                         ; preds = %if.end6
  %dma_len.i = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info.i, i32 0, i32 2
  %23 = ptrtoint ptr %dma_len.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2048, ptr %dma_len.i, align 4
  %seq_off.i = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info.i, i32 0, i32 3
  %24 = ptrtoint ptr %seq_off.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 28, ptr %seq_off.i, align 2
  %data_len_off.i = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info.i, i32 0, i32 4
  %25 = ptrtoint ptr %data_len_off.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 12, ptr %data_len_off.i, align 4
  %26 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %req.i, align 4
  %call1.i = call fastcc i32 @bnxt_hwrm_dbg_dma_data(ptr noundef %bp, ptr noundef %27, ptr noundef nonnull %info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10, label %if.end.i.if.then9_crit_edge

if.end.i.if.then9_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %if.end.i.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.end.i.if.then9_crit_edge ], [ %call.i, %if.end6.if.then9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info.i) #8
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str) #11
  br label %err

if.end10:                                         ; preds = %if.end.i
  %30 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info.i, align 4
  %segs.i = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info.i, i32 0, i32 5
  %32 = ptrtoint ptr %segs.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %segs.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info.i) #8
  %conv11 = zext i16 %33 to i32
  %mul12 = shl nuw nsw i32 %conv11, 6
  %34 = ptrtoint ptr %dump_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dump_len, align 4
  %add13 = add i32 %35, %mul12
  store i32 %add13, ptr %dump_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp292.not = icmp eq i16 %33, 0
  br i1 %cmp292.not, label %if.end10.err_crit_edge, label %for.body.lr.ph

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.body.lr.ph:                                   ; preds = %if.end10
  %sub = add i32 %buf_len.0, -1024
  %hwrm_cmd_max_timeout.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 93
  %dev26 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %dma_len.i156 = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info.i151, i32 0, i32 2
  %seq_off.i157 = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info.i151, i32 0, i32 3
  %data_len_off.i158 = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info.i151, i32 0, i32 4
  %buf_len5.i = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info.i151, i32 0, i32 7
  %seg_start.i = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info.i151, i32 0, i32 6
  %dest_buf_size.i160 = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info.i151, i32 0, i32 1
  %pdev.i166 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %tobool.not.not = xor i1 %tobool.not, true
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0298 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %seg_record.0296 = phi ptr [ %31, %for.body.lr.ph ], [ %add.ptr53, %for.inc.for.body_crit_edge ]
  %offset.1293 = phi i32 [ %offset.0, %for.body.lr.ph ], [ %offset.2, %for.inc.for.body_crit_edge ]
  %36 = ptrtoint ptr %seg_record.0296 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %seg_record.0296, align 4
  %segment_id = getelementptr inbounds %struct.coredump_segment_record, ptr %seg_record.0296, i32 0, i32 1
  %38 = ptrtoint ptr %segment_id to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %segment_id, align 2
  %add18 = add i32 %offset.1293, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %sub)
  %cmp19 = icmp ugt i32 %add18, %sub
  %or.cond = select i1 %tobool.not.not, i1 %cmp19, i1 false
  br i1 %or.cond, label %for.body.if.then60_crit_edge, label %if.end22

for.body.if.then60_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

if.end22:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i145) #8
  %41 = ptrtoint ptr %req.i145 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i145, align 4, !annotation !33
  %call.i146 = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i145, i16 noundef zeroext -232, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i147 = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i147, label %bnxt_hwrm_dbg_coredump_initiate.exit, label %bnxt_hwrm_dbg_coredump_initiate.exit.thread

bnxt_hwrm_dbg_coredump_initiate.exit.thread:      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i145) #8
  br label %if.then25

bnxt_hwrm_dbg_coredump_initiate.exit:             ; preds = %if.end22
  %42 = ptrtoint ptr %req.i145 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %req.i145, align 4
  %44 = ptrtoint ptr %hwrm_cmd_max_timeout.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hwrm_cmd_max_timeout.i, align 4
  call void @hwrm_req_timeout(ptr noundef %bp, ptr noundef %43, i32 noundef %45) #8
  %46 = ptrtoint ptr %req.i145 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %req.i145, align 4
  %component_id1.i = getelementptr inbounds %struct.hwrm_dbg_coredump_initiate_input, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %component_id1.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %37, ptr %component_id1.i, align 8
  %segment_id2.i = getelementptr inbounds %struct.hwrm_dbg_coredump_initiate_input, ptr %47, i32 0, i32 6
  %49 = ptrtoint ptr %segment_id2.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %39, ptr %segment_id2.i, align 2
  %call3.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %47) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i145) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool24.not = icmp eq i32 %call3.i, 0
  br i1 %tobool24.not, label %if.end29, label %bnxt_hwrm_dbg_coredump_initiate.exit.if.then25_crit_edge

bnxt_hwrm_dbg_coredump_initiate.exit.if.then25_crit_edge: ; preds = %bnxt_hwrm_dbg_coredump_initiate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

if.then25:                                        ; preds = %bnxt_hwrm_dbg_coredump_initiate.exit.if.then25_crit_edge, %bnxt_hwrm_dbg_coredump_initiate.exit.thread
  %retval.0.i149252 = phi i32 [ %call.i146, %bnxt_hwrm_dbg_coredump_initiate.exit.thread ], [ %call3.i, %bnxt_hwrm_dbg_coredump_initiate.exit.if.then25_crit_edge ]
  %50 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev26, align 4
  %52 = ptrtoint ptr %segment_id to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %segment_id, align 2
  %conv28 = zext i16 %53 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.1, i32 noundef %conv28) #11
  br label %next_seg

if.end29:                                         ; preds = %bnxt_hwrm_dbg_coredump_initiate.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i150) #8
  %54 = ptrtoint ptr %req.i150 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i150, align 4, !annotation !33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info.i151) #8
  %55 = call ptr @memset(ptr %info.i151, i32 0, i32 24)
  %call.i152 = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i150, i16 noundef zeroext -231, i32 noundef 56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i153 = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i153, label %if.end.i159, label %if.end29.bnxt_hwrm_dbg_coredump_retrieve.exit_crit_edge

if.end29.bnxt_hwrm_dbg_coredump_retrieve.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_dbg_coredump_retrieve.exit

if.end.i159:                                      ; preds = %if.end29
  %56 = ptrtoint ptr %req.i150 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %req.i150, align 4
  %component_id1.i154 = getelementptr inbounds %struct.hwrm_dbg_coredump_retrieve_input, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %component_id1.i154 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %37, ptr %component_id1.i154, align 8
  %segment_id2.i155 = getelementptr inbounds %struct.hwrm_dbg_coredump_retrieve_input, ptr %57, i32 0, i32 9
  %59 = ptrtoint ptr %segment_id2.i155 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %39, ptr %segment_id2.i155, align 2
  %60 = ptrtoint ptr %dma_len.i156 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 4096, ptr %dma_len.i156, align 4
  %61 = ptrtoint ptr %seq_off.i157 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 48, ptr %seq_off.i157, align 2
  %62 = ptrtoint ptr %data_len_off.i158 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 10, ptr %data_len_off.i158, align 4
  br i1 %tobool.not, label %if.end.i159.if.end6.i_crit_edge, label %if.then4.i

if.end.i159.if.end6.i_crit_edge:                  ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %add18
  %63 = ptrtoint ptr %info.i151 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i, ptr %info.i151, align 4
  %64 = ptrtoint ptr %buf_len5.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %buf_len.0, ptr %buf_len5.i, align 4
  %65 = ptrtoint ptr %seg_start.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add18, ptr %seg_start.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i159.if.end6.i_crit_edge
  %call7.i = call fastcc i32 @bnxt_hwrm_dbg_dma_data(ptr noundef %bp, ptr noundef %57, ptr noundef nonnull %info.i151) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.else.thread, label %if.end6.i.bnxt_hwrm_dbg_coredump_retrieve.exit_crit_edge

if.end6.i.bnxt_hwrm_dbg_coredump_retrieve.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_dbg_coredump_retrieve.exit

if.else.thread:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %dest_buf_size.i160 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dest_buf_size.i160, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info.i151) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i150) #8
  br label %next_seg

bnxt_hwrm_dbg_coredump_retrieve.exit:             ; preds = %if.end6.i.bnxt_hwrm_dbg_coredump_retrieve.exit_crit_edge, %if.end29.bnxt_hwrm_dbg_coredump_retrieve.exit_crit_edge
  %retval.0.i161 = phi i32 [ %call.i152, %if.end29.bnxt_hwrm_dbg_coredump_retrieve.exit_crit_edge ], [ %call7.i, %if.end6.i.bnxt_hwrm_dbg_coredump_retrieve.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info.i151) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i150) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %retval.0.i161)
  %cmp34 = icmp eq i32 %retval.0.i161, -105
  br i1 %cmp34, label %bnxt_hwrm_dbg_coredump_retrieve.exit.err_crit_edge, label %if.then38

bnxt_hwrm_dbg_coredump_retrieve.exit.err_crit_edge: ; preds = %bnxt_hwrm_dbg_coredump_retrieve.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then38:                                        ; preds = %bnxt_hwrm_dbg_coredump_retrieve.exit
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev26, align 4
  %70 = ptrtoint ptr %segment_id to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %segment_id, align 2
  %conv41 = zext i16 %71 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %69, ptr noundef nonnull @.str.2, i32 noundef %conv41) #11
  br label %next_seg

next_seg:                                         ; preds = %if.then38, %if.else.thread, %if.then25
  %seg_len.1 = phi i32 [ 0, %if.then38 ], [ 0, %if.then25 ], [ %67, %if.else.thread ]
  %rc.1 = phi i32 [ %retval.0.i161, %if.then38 ], [ %retval.0.i149252, %if.then25 ], [ 0, %if.else.thread ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %sub44 = sub i32 %72, %40
  %call45 = call i32 @jiffies_to_msecs(i32 noundef %sub44) #8
  %tobool.not.i162 = icmp eq ptr %seg_record.0296, null
  br i1 %tobool.not.i162, label %next_seg.bnxt_fill_coredump_seg_hdr.exit_crit_edge, label %if.then.i

next_seg.bnxt_fill_coredump_seg_hdr.exit_crit_edge: ; preds = %next_seg
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_fill_coredump_seg_hdr.exit

if.then.i:                                        ; preds = %next_seg
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %seg_record.0296 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %seg_record.0296, align 4
  %conv.i = zext i16 %74 to i32
  %75 = ptrtoint ptr %segment_id to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %segment_id, align 2
  %conv2.i = zext i16 %76 to i32
  %version_low.i = getelementptr inbounds %struct.coredump_segment_record, ptr %seg_record.0296, i32 0, i32 4
  %77 = ptrtoint ptr %version_low.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %version_low.i, align 1
  %version_hi.i = getelementptr inbounds %struct.coredump_segment_record, ptr %seg_record.0296, i32 0, i32 3
  %79 = ptrtoint ptr %version_hi.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %version_hi.i, align 2
  %compress_flags.i = getelementptr inbounds %struct.coredump_segment_record, ptr %seg_record.0296, i32 0, i32 6
  %81 = ptrtoint ptr %compress_flags.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %compress_flags.i, align 1
  %conv4.i = zext i8 %82 to i32
  %83 = shl nuw i32 %conv4.i, 24
  br label %bnxt_fill_coredump_seg_hdr.exit

bnxt_fill_coredump_seg_hdr.exit:                  ; preds = %if.then.i, %next_seg.bnxt_fill_coredump_seg_hdr.exit_crit_edge
  %seg_hdr.sroa.7.2 = phi i32 [ %conv.i, %if.then.i ], [ 33554432, %next_seg.bnxt_fill_coredump_seg_hdr.exit_crit_edge ]
  %seg_hdr.sroa.12.2 = phi i32 [ %conv2.i, %if.then.i ], [ 0, %next_seg.bnxt_fill_coredump_seg_hdr.exit_crit_edge ]
  %seg_hdr.sroa.15.2 = phi i32 [ %83, %if.then.i ], [ 0, %next_seg.bnxt_fill_coredump_seg_hdr.exit_crit_edge ]
  %seg_hdr.sroa.16.2 = phi i8 [ %78, %if.then.i ], [ 0, %next_seg.bnxt_fill_coredump_seg_hdr.exit_crit_edge ]
  %seg_hdr.sroa.17.2 = phi i8 [ %80, %if.then.i ], [ 0, %next_seg.bnxt_fill_coredump_seg_hdr.exit_crit_edge ]
  br i1 %tobool.not, label %bnxt_fill_coredump_seg_hdr.exit.for.inc_crit_edge, label %if.then47

bnxt_fill_coredump_seg_hdr.exit.for.inc_crit_edge: ; preds = %bnxt_fill_coredump_seg_hdr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then47:                                        ; preds = %bnxt_fill_coredump_seg_hdr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %84 = call i32 @llvm.bswap.i32(i32 %call45) #8
  %85 = call i32 @llvm.bswap.i32(i32 %rc.1) #8
  %86 = call i32 @llvm.bswap.i32(i32 %seg_len.1) #8
  %87 = ptrtoint ptr %pdev.i166 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev.i166, align 8
  %devfn.i167 = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %devfn.i167 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %devfn.i167, align 4
  %conv7.i168 = trunc i32 %90 to i16
  %91 = call i16 @llvm.bswap.i16(i16 %conv7.i168) #8
  %add.ptr48 = getelementptr i8, ptr %buf, i32 %offset.1293
  %92 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 1933928269, ptr %add.ptr48, align 1
  %seg_hdr.sroa.7.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 4
  %93 = ptrtoint ptr %seg_hdr.sroa.7.0.add.ptr48.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %seg_hdr.sroa.7.2, ptr %seg_hdr.sroa.7.0.add.ptr48.sroa_idx, align 1
  %seg_hdr.sroa.12.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 8
  %94 = ptrtoint ptr %seg_hdr.sroa.12.0.add.ptr48.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %seg_hdr.sroa.12.2, ptr %seg_hdr.sroa.12.0.add.ptr48.sroa_idx, align 1
  %seg_hdr.sroa.15.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 12
  %95 = ptrtoint ptr %seg_hdr.sroa.15.0.add.ptr48.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %seg_hdr.sroa.15.2, ptr %seg_hdr.sroa.15.0.add.ptr48.sroa_idx, align 1
  %seg_hdr.sroa.16.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 16
  %96 = ptrtoint ptr %seg_hdr.sroa.16.0.add.ptr48.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %seg_hdr.sroa.16.2, ptr %seg_hdr.sroa.16.0.add.ptr48.sroa_idx, align 1
  %seg_hdr.sroa.17.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 17
  %97 = ptrtoint ptr %seg_hdr.sroa.17.0.add.ptr48.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %seg_hdr.sroa.17.2, ptr %seg_hdr.sroa.17.0.add.ptr48.sroa_idx, align 1
  %seg_hdr.sroa.18.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 18
  %98 = ptrtoint ptr %seg_hdr.sroa.18.0.add.ptr48.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %98, i32 2)
  store i16 %91, ptr %seg_hdr.sroa.18.0.add.ptr48.sroa_idx, align 1
  %seg_hdr.sroa.20.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 20
  %99 = ptrtoint ptr %seg_hdr.sroa.20.0.add.ptr48.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 0, ptr %seg_hdr.sroa.20.0.add.ptr48.sroa_idx, align 1
  %seg_hdr.sroa.20198.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 24
  %100 = ptrtoint ptr %seg_hdr.sroa.20198.0.add.ptr48.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %86, ptr %seg_hdr.sroa.20198.0.add.ptr48.sroa_idx, align 1
  %seg_hdr.sroa.22.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 28
  %101 = ptrtoint ptr %seg_hdr.sroa.22.0.add.ptr48.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %85, ptr %seg_hdr.sroa.22.0.add.ptr48.sroa_idx, align 1
  %seg_hdr.sroa.24.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 32
  %102 = ptrtoint ptr %seg_hdr.sroa.24.0.add.ptr48.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %84, ptr %seg_hdr.sroa.24.0.add.ptr48.sroa_idx, align 1
  %seg_hdr.sroa.26.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 36
  %103 = ptrtoint ptr %seg_hdr.sroa.26.0.add.ptr48.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 1073741824, ptr %seg_hdr.sroa.26.0.add.ptr48.sroa_idx, align 1
  %seg_hdr.sroa.28.0.add.ptr48.sroa_idx = getelementptr inbounds i8, ptr %add.ptr48, i32 40
  %add50 = add i32 %add18, %seg_len.1
  %104 = call ptr @memset(ptr %seg_hdr.sroa.28.0.add.ptr48.sroa_idx, i32 0, i32 24)
  br label %for.inc

for.inc:                                          ; preds = %if.then47, %bnxt_fill_coredump_seg_hdr.exit.for.inc_crit_edge
  %offset.2 = phi i32 [ %add50, %if.then47 ], [ %offset.1293, %bnxt_fill_coredump_seg_hdr.exit.for.inc_crit_edge ]
  %105 = ptrtoint ptr %dump_len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dump_len, align 4
  %add52 = add i32 %106, %seg_len.1
  store i32 %add52, ptr %dump_len, align 4
  %add.ptr53 = getelementptr i8, ptr %seg_record.0296, i32 16
  %inc = add nuw nsw i32 %i.0298, 1
  %exitcond.not = icmp eq i32 %inc, %conv11
  br i1 %exitcond.not, label %for.inc.err_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.err_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

err:                                              ; preds = %for.inc.err_crit_edge, %bnxt_hwrm_dbg_coredump_retrieve.exit.err_crit_edge, %if.end10.err_crit_edge, %if.then9
  %coredump.sroa.7.0247 = phi i16 [ 0, %if.then9 ], [ 0, %if.end10.err_crit_edge ], [ %33, %bnxt_hwrm_dbg_coredump_retrieve.exit.err_crit_edge ], [ %33, %for.inc.err_crit_edge ]
  %coredump.sroa.0.0245 = phi ptr [ null, %if.then9 ], [ %31, %if.end10.err_crit_edge ], [ %31, %bnxt_hwrm_dbg_coredump_retrieve.exit.err_crit_edge ], [ %31, %for.inc.err_crit_edge ]
  %offset.4 = phi i32 [ %offset.0, %if.then9 ], [ %offset.0, %if.end10.err_crit_edge ], [ %offset.2, %for.inc.err_crit_edge ], [ %offset.1293, %bnxt_hwrm_dbg_coredump_retrieve.exit.err_crit_edge ]
  %rc.3 = phi i32 [ %retval.0.i.ph, %if.then9 ], [ 0, %if.end10.err_crit_edge ], [ %rc.1, %for.inc.err_crit_edge ], [ -105, %bnxt_hwrm_dbg_coredump_retrieve.exit.err_crit_edge ]
  br i1 %tobool.not, label %err.if.end66_crit_edge, label %err.if.then60_crit_edge

err.if.then60_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

err.if.end66_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then60:                                        ; preds = %err.if.then60_crit_edge, %for.body.if.then60_crit_edge
  %rc.3289 = phi i32 [ %rc.3, %err.if.then60_crit_edge ], [ -105, %for.body.if.then60_crit_edge ]
  %offset.4288 = phi i32 [ %offset.4, %err.if.then60_crit_edge ], [ %offset.1293, %for.body.if.then60_crit_edge ]
  %coredump.sroa.0.0245286 = phi ptr [ %coredump.sroa.0.0245, %err.if.then60_crit_edge ], [ %31, %for.body.if.then60_crit_edge ]
  %coredump.sroa.7.0247285 = phi i16 [ %coredump.sroa.7.0247, %err.if.then60_crit_edge ], [ %33, %for.body.if.then60_crit_edge ]
  %add.ptr61 = getelementptr i8, ptr %buf, i32 %offset.4288
  %add64 = add i16 %coredump.sroa.7.0247285, 1
  %call.i176 = call i64 @ktime_get_real_seconds() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %os_ver_major.i) #8
  %107 = ptrtoint ptr %os_ver_major.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %os_ver_major.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %os_ver_minor.i) #8
  %108 = ptrtoint ptr %os_ver_minor.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %os_ver_minor.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm.i) #8
  %109 = getelementptr inbounds %struct.tm, ptr %tm.i, i32 0, i32 1
  %110 = getelementptr inbounds %struct.tm, ptr %tm.i, i32 0, i32 2
  %111 = getelementptr inbounds %struct.tm, ptr %tm.i, i32 0, i32 3
  %112 = getelementptr inbounds %struct.tm, ptr %tm.i, i32 0, i32 4
  %113 = getelementptr inbounds %struct.tm, ptr %tm.i, i32 0, i32 5
  %114 = call ptr @memset(ptr %tm.i, i32 255, i32 32)
  call void @time64_to_tm(i64 noundef %call, i32 noundef 0, ptr noundef nonnull %tm.i) #8
  %115 = getelementptr inbounds i8, ptr %add.ptr61, i32 8
  %116 = call ptr @memset(ptr %115, i32 0, i32 1016)
  %117 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1666150981, ptr %add.ptr61, align 4
  %flags.i177 = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 1
  %118 = ptrtoint ptr %flags.i177 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %flags.i177, align 4
  %high_version.i178 = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 3
  %119 = ptrtoint ptr %high_version.i178 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %high_version.i178, align 1
  %system_name.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 6
  %120 = call i32 @llvm.read_register.i32(metadata !23) #8
  %and.i.i.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 110
  %124 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %nsproxy.i.i, align 4
  %uts_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %uts_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %uts_ns.i.i, align 4
  %nodename.i = getelementptr inbounds %struct.new_utsname, ptr %127, i32 0, i32 1
  %call4.i = call i32 @strscpy(ptr noundef %system_name.i, ptr noundef %nodename.i, i32 noundef 32) #8
  %128 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %113, align 4
  %130 = trunc i32 %129 to i16
  %conv.i179 = add i16 %130, 1900
  %131 = call i16 @llvm.bswap.i16(i16 %conv.i179) #8
  %year.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 7
  %132 = ptrtoint ptr %year.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %year.i, align 4
  %133 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %112, align 4
  %135 = trunc i32 %134 to i16
  %conv6.i = add i16 %135, 1
  %136 = call i16 @llvm.bswap.i16(i16 %conv6.i) #8
  %month.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 8
  %137 = ptrtoint ptr %month.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %month.i, align 2
  %138 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %111, align 4
  %conv7.i180 = trunc i32 %139 to i16
  %140 = call i16 @llvm.bswap.i16(i16 %conv7.i180) #8
  %day.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 9
  %141 = ptrtoint ptr %day.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %day.i, align 4
  %142 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %110, align 4
  %conv8.i = trunc i32 %143 to i16
  %144 = call i16 @llvm.bswap.i16(i16 %conv8.i) #8
  %hour.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 10
  %145 = ptrtoint ptr %hour.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %hour.i, align 2
  %146 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %109, align 4
  %conv9.i = trunc i32 %147 to i16
  %148 = call i16 @llvm.bswap.i16(i16 %conv9.i) #8
  %minute.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 11
  %149 = ptrtoint ptr %minute.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %minute.i, align 4
  %150 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tm.i, align 4
  %conv10.i = trunc i32 %151 to i16
  %152 = call i16 @llvm.bswap.i16(i16 %conv10.i) #8
  %second.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 12
  %153 = ptrtoint ptr %second.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %second.i, align 2
  %154 = call i16 @llvm.bswap.i16(i16 %conv) #8
  %utc_bias.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 13
  %155 = ptrtoint ptr %utc_bias.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %utc_bias.i, align 4
  %156 = call i32 @llvm.read_register.i32(metadata !23) #8
  %and.i.i76.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i76.i to ptr
  %task.i77.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %task.i77.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %task.i77.i, align 8
  %mm1.i.i = getelementptr inbounds %struct.task_struct, ptr %159, i32 0, i32 53
  %160 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mm1.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %161, null
  br i1 %tobool.not.i.i, label %if.then60.if.end16.i.i_crit_edge, label %if.then.i.i

if.then60.if.end16.i.i_crit_edge:                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.then.i.i:                                      ; preds = %if.then60
  %arg_end.i.i = getelementptr inbounds %struct.anon.21, ptr %161, i32 0, i32 36
  %162 = ptrtoint ptr %arg_end.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arg_end.i.i, align 4
  %arg_start.i.i = getelementptr inbounds %struct.anon.21, ptr %161, i32 0, i32 35
  %164 = ptrtoint ptr %arg_start.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arg_start.i.i, align 8
  %sub.i.i = sub i32 %163, %165
  %166 = call i32 @llvm.smin.i32(i32 %sub.i.i, i32 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool2.not.i.i = icmp eq i32 %166, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end16.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.if.end16.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %commandline.i.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 15
  %167 = inttoptr i32 %165 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp9.i.i.i.i = icmp slt i32 %166, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.if.end16.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !34

land.rhs16.i.i.i.i.if.end16.i.i_crit_edge:        ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %if.end16.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__check_object_size(ptr noundef %commandline.i.i, i32 noundef %166, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #8
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i
  %168 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %167, i32 %166, i32 -1226833920) #12, !srcloc !35
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %168, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then.i7.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !34

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %commandline.i.i, i32 noundef %166) #8
  %169 = call i32 @llvm.read_register.i32(metadata !23) #8
  %and.i.i.i.i.i.i.i.i = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 4
  %171 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !36
  %and.i.i.i.i.i.i = and i32 %171, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #8, !srcloc !37
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %commandline.i.i, ptr noundef %167, i32 noundef %166) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %171) #8, !srcloc !37
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i7.i.i.i, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge
  %res.0.i.i.i.i = phi i32 [ %166, %if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge ], [ %call1.i.i.i.i.i, %if.then.i7.i.i.i ], [ %166, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %res.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %for.cond.preheader.i.i, label %if.then11.i.i.i.i, !prof !34

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i = sub i32 %166, %res.0.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %commandline.i.i, i32 %sub.i.i.i.i
  %172 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i)
  br label %if.end16.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp743.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp743.i.i, label %for.body.preheader.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %for.cond.preheader.i.i
  %smax.i.i = call i32 @llvm.smax.i32(i32 %166, i32 1) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %last.045.i.i = phi i32 [ %last.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %i.044.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 15, i32 %i.044.i.i
  %173 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool9.not.i.i = icmp eq i8 %174, 0
  br i1 %tobool9.not.i.i, label %if.else.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 32, ptr %arrayidx.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %last.1.i.i = phi i32 [ %last.045.i.i, %if.else.i.i ], [ %i.044.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.044.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %smax.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %last.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %last.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %add.i.i = add i32 %last.0.lcssa.i.i, 1
  %arrayidx14.i.i = getelementptr %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 15, i32 %add.i.i
  %176 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %arrayidx14.i.i, align 1
  br label %bnxt_fill_cmdline.exit.i

if.end16.i.i:                                     ; preds = %if.then11.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.if.end16.i.i_crit_edge, %if.then.i.i.if.end16.i.i_crit_edge, %if.then60.if.end16.i.i_crit_edge
  %commandline17.i.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 15
  %177 = ptrtoint ptr %task.i77.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %task.i77.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 101
  %call22.i.i = call i32 @strscpy(ptr noundef %commandline17.i.i, ptr noundef %comm.i.i, i32 noundef 16) #8
  br label %bnxt_fill_cmdline.exit.i

bnxt_fill_cmdline.exit.i:                         ; preds = %if.end16.i.i, %for.end.i.i
  %conv11.i = zext i16 %add64 to i32
  %179 = call i32 @llvm.bswap.i32(i32 %conv11.i) #8
  %total_segments.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 16
  %180 = ptrtoint ptr %total_segments.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %total_segments.i, align 4
  %181 = call i32 @llvm.read_register.i32(metadata !23) #8
  %and.i.i78.i = and i32 %181, -16384
  %182 = inttoptr i32 %and.i.i78.i to ptr
  %task.i79.i = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %task.i79.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %task.i79.i, align 8
  %nsproxy.i80.i = getelementptr inbounds %struct.task_struct, ptr %184, i32 0, i32 110
  %185 = ptrtoint ptr %nsproxy.i80.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %nsproxy.i80.i, align 4
  %uts_ns.i81.i = getelementptr inbounds %struct.nsproxy, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %uts_ns.i81.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %uts_ns.i81.i, align 4
  %release.i = getelementptr inbounds %struct.new_utsname, ptr %188, i32 0, i32 2
  %call14.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %release.i, ptr noundef nonnull @.str.6, ptr noundef nonnull %os_ver_major.i, ptr noundef nonnull %os_ver_minor.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i)
  %cmp.not.i = icmp eq i32 %call14.i, 2
  br i1 %cmp.not.i, label %bnxt_fill_cmdline.exit.i.bnxt_fill_coredump_record.exit_crit_edge, label %if.then.i181

bnxt_fill_cmdline.exit.i.bnxt_fill_coredump_record.exit_crit_edge: ; preds = %bnxt_fill_cmdline.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_fill_coredump_record.exit

if.then.i181:                                     ; preds = %bnxt_fill_cmdline.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %189 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %190, ptr noundef nonnull @.str.7) #11
  br label %bnxt_fill_coredump_record.exit

bnxt_fill_coredump_record.exit:                   ; preds = %if.then.i181, %bnxt_fill_cmdline.exit.i.bnxt_fill_coredump_record.exit_crit_edge
  %191 = ptrtoint ptr %os_ver_major.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %os_ver_major.i, align 4
  %193 = call i32 @llvm.bswap.i32(i32 %192) #8
  %os_ver_major16.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 17
  %194 = ptrtoint ptr %os_ver_major16.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %os_ver_major16.i, align 4
  %195 = ptrtoint ptr %os_ver_minor.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %os_ver_minor.i, align 4
  %197 = call i32 @llvm.bswap.i32(i32 %196) #8
  %os_ver_minor17.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 18
  %198 = ptrtoint ptr %os_ver_minor17.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %os_ver_minor17.i, align 4
  %os_name.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 20
  %199 = call i32 @llvm.read_register.i32(metadata !23) #8
  %and.i.i82.i = and i32 %199, -16384
  %200 = inttoptr i32 %and.i.i82.i to ptr
  %task.i83.i = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %task.i83.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %task.i83.i, align 8
  %nsproxy.i84.i = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 110
  %203 = ptrtoint ptr %nsproxy.i84.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %nsproxy.i84.i, align 4
  %uts_ns.i85.i = getelementptr inbounds %struct.nsproxy, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %uts_ns.i85.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %uts_ns.i85.i, align 4
  %call21.i = call i32 @strscpy(ptr noundef %os_name.i, ptr noundef %206, i32 noundef 32) #8
  call void @time64_to_tm(i64 noundef %call.i176, i32 noundef 0, ptr noundef nonnull %tm.i) #8
  %207 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %113, align 4
  %209 = trunc i32 %208 to i16
  %conv24.i = add i16 %209, 1900
  %210 = call i16 @llvm.bswap.i16(i16 %conv24.i) #8
  %end_year.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 21
  %211 = ptrtoint ptr %end_year.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %210, ptr %end_year.i, align 4
  %212 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %112, align 4
  %214 = trunc i32 %213 to i16
  %conv27.i = add i16 %214, 1
  %215 = call i16 @llvm.bswap.i16(i16 %conv27.i) #8
  %end_month.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 22
  %216 = ptrtoint ptr %end_month.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %end_month.i, align 2
  %217 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %111, align 4
  %conv29.i = trunc i32 %218 to i16
  %219 = call i16 @llvm.bswap.i16(i16 %conv29.i) #8
  %end_day.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 23
  %220 = ptrtoint ptr %end_day.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %219, ptr %end_day.i, align 4
  %221 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %110, align 4
  %conv31.i = trunc i32 %222 to i16
  %223 = call i16 @llvm.bswap.i16(i16 %conv31.i) #8
  %end_hour.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 24
  %224 = ptrtoint ptr %end_hour.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %223, ptr %end_hour.i, align 2
  %225 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %109, align 4
  %conv33.i = trunc i32 %226 to i16
  %227 = call i16 @llvm.bswap.i16(i16 %conv33.i) #8
  %end_minute.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 25
  %228 = ptrtoint ptr %end_minute.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %227, ptr %end_minute.i, align 4
  %229 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %tm.i, align 4
  %conv35.i = trunc i32 %230 to i16
  %231 = call i16 @llvm.bswap.i16(i16 %conv35.i) #8
  %end_second.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 26
  %232 = ptrtoint ptr %end_second.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %231, ptr %end_second.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %233 = load i32, ptr @sys_tz, align 4
  %234 = trunc i32 %233 to i16
  %conv36.i = mul i16 %234, 60
  %235 = call i16 @llvm.bswap.i16(i16 %conv36.i) #8
  %end_utc_bias.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 27
  %236 = ptrtoint ptr %end_utc_bias.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %235, ptr %end_utc_bias.i, align 4
  %chip_num.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 4
  %237 = ptrtoint ptr %chip_num.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %chip_num.i, align 8
  %conv37.i = zext i16 %238 to i32
  %shl.i = shl nuw i32 %conv37.i, 16
  %chip_rev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 95, i32 31
  %239 = ptrtoint ptr %chip_rev.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %chip_rev.i, align 2
  %conv38.i = zext i8 %240 to i32
  %shl39.i = shl nuw nsw i32 %conv38.i, 8
  %or.i = or i32 %shl39.i, %shl.i
  %chip_metal.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 95, i32 32
  %241 = ptrtoint ptr %chip_metal.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %chip_metal.i, align 1
  %conv41.i = zext i8 %242 to i32
  %or42.i = or i32 %or.i, %conv41.i
  %243 = call i32 @llvm.bswap.i32(i32 %or42.i) #8
  %asic_id1.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 28
  %244 = ptrtoint ptr %asic_id1.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %asic_id1.i, align 4
  %asic_id2.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 29
  %245 = ptrtoint ptr %asic_id2.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %asic_id2.i, align 4
  %246 = call i32 @llvm.bswap.i32(i32 %rc.3289) #8
  %coredump_status.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 30
  %247 = ptrtoint ptr %coredump_status.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %coredump_status.i, align 4
  %ioctl_low_version.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 31
  %248 = ptrtoint ptr %ioctl_low_version.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 0, ptr %ioctl_low_version.i, align 4
  %ioctl_high_version.i = getelementptr inbounds %struct.bnxt_coredump_record, ptr %add.ptr61, i32 0, i32 32
  %249 = ptrtoint ptr %ioctl_high_version.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 0, ptr %ioctl_high_version.i, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %os_ver_minor.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %os_ver_major.i) #8
  br label %if.end66

if.end66:                                         ; preds = %bnxt_fill_coredump_record.exit, %err.if.end66_crit_edge
  %rc.3290 = phi i32 [ %rc.3289, %bnxt_fill_coredump_record.exit ], [ %rc.3, %err.if.end66_crit_edge ]
  %coredump.sroa.0.0245287 = phi ptr [ %coredump.sroa.0.0245286, %bnxt_fill_coredump_record.exit ], [ %coredump.sroa.0.0245, %err.if.end66_crit_edge ]
  call void @kfree(ptr noundef %coredump.sroa.0.0245287) #8
  %250 = ptrtoint ptr %dump_len to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %dump_len, align 4
  %add68 = add i32 %251, 1024
  store i32 %add68, ptr %dump_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %rc.3290)
  %cmp69 = icmp eq i32 %rc.3290, -105
  br i1 %cmp69, label %if.then71, label %if.end66.cleanup74_crit_edge

if.end66.cleanup74_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %dev72 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %252 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dev72, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %253, ptr noundef nonnull @.str.3) #11
  br label %cleanup74

cleanup74:                                        ; preds = %if.then71, %if.end66.cleanup74_crit_edge
  ret i32 %rc.3290
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_get_coredump_length(ptr noundef %bp, i16 noundef zeroext %dump_type) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #8
  %1 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !33
  %fw_cap.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %2 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  br i1 %tobool.not.i, label %entry.bnxt_hwrm_get_dump_len.exit.thread_crit_edge, label %if.end.i

entry.bnxt_hwrm_get_dump_len.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_get_dump_len.exit.thread

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %dump_type)
  %cmp.i = icmp eq i16 %dump_type, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %fw_dbg_cap.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 75
  %4 = ptrtoint ptr %fw_dbg_cap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_dbg_cap.i, align 4
  %and2.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.bnxt_hwrm_get_dump_len.exit.thread_crit_edge, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

land.lhs.true.i.bnxt_hwrm_get_dump_len.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_get_dump_len.exit.thread

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %call.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i, i16 noundef zeroext -223, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end5.i.bnxt_hwrm_get_dump_len.exit.thread_crit_edge

if.end5.i.bnxt_hwrm_get_dump_len.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_get_dump_len.exit.thread

if.end8.i:                                        ; preds = %if.end5.i
  %6 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req.i, align 4
  %fid.i = getelementptr inbounds %struct.hwrm_dbg_qcfg_input, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %fid.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %fid.i, align 8
  br i1 %cmp.i, label %if.then12.i, label %if.end8.i.if.end13.i_crit_edge

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.hwrm_dbg_qcfg_input, ptr %7, i32 0, i32 6
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 512, ptr %flags.i, align 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end13.i_crit_edge
  %call14.i = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %7) #8
  %10 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req.i, align 4
  %call15.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13.i.bnxt_hwrm_get_dump_len.exit.thread10_crit_edge

if.end13.i.bnxt_hwrm_get_dump_len.exit.thread10_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_get_dump_len.exit.thread10

if.end18.i:                                       ; preds = %if.end13.i
  br i1 %cmp.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %crashdump_size.i = getelementptr inbounds %struct.hwrm_dbg_qcfg_output, ptr %call14.i, i32 0, i32 10
  %12 = ptrtoint ptr %crashdump_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crashdump_size.i, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #8
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %coredump_size.i = getelementptr inbounds %struct.hwrm_dbg_qcfg_output, ptr %call14.i, i32 0, i32 6
  %15 = ptrtoint ptr %coredump_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %coredump_size.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  %add.i = add i32 %17, 1264
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then22.i
  %storemerge.i = phi i32 [ %add.i, %if.else.i ], [ %14, %if.then22.i ]
  %hdr_len.0.i = phi i32 [ 1264, %if.else.i ], [ 0, %if.then22.i ]
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.i, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i, i32 %hdr_len.0.i)
  %cmp24.not.i = icmp ugt i32 %storemerge.i, %hdr_len.0.i
  br i1 %cmp24.not.i, label %bnxt_hwrm_get_dump_len.exit, label %if.end23.i.bnxt_hwrm_get_dump_len.exit.thread10_crit_edge

if.end23.i.bnxt_hwrm_get_dump_len.exit.thread10_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bnxt_hwrm_get_dump_len.exit.thread10

bnxt_hwrm_get_dump_len.exit.thread:               ; preds = %if.end5.i.bnxt_hwrm_get_dump_len.exit.thread_crit_edge, %land.lhs.true.i.bnxt_hwrm_get_dump_len.exit.thread_crit_edge, %entry.bnxt_hwrm_get_dump_len.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  br label %if.then

bnxt_hwrm_get_dump_len.exit.thread10:             ; preds = %if.end23.i.bnxt_hwrm_get_dump_len.exit.thread10_crit_edge, %if.end13.i.bnxt_hwrm_get_dump_len.exit.thread10_crit_edge
  %19 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  br label %if.then

bnxt_hwrm_get_dump_len.exit:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req.i, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #8
  br label %if.end4

if.then:                                          ; preds = %bnxt_hwrm_get_dump_len.exit.thread10, %bnxt_hwrm_get_dump_len.exit.thread
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %dump_type)
  %cmp = icmp eq i16 %dump_type, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8388608, ptr %len, align 4
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = call fastcc i32 @__bnxt_get_coredump(ptr noundef %bp, ptr noundef null, ptr noundef nonnull %len)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2, %bnxt_hwrm_get_dump_len.exit
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwrm_req_init(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_hwrm_dbg_dma_data(ptr noundef %bp, ptr noundef %msg, ptr nocapture noundef %info) unnamed_addr #0 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_off = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %seq_off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %seq_off, align 2
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr i8, ptr %msg, i32 %conv
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #8
  %2 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_handle, align 4, !annotation !33
  %dma_len = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %dma_len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dma_len, align 4
  %conv1 = zext i16 %4 to i32
  %call = call ptr @hwrm_req_dma_slice(ptr noundef %bp, ptr noundef %msg, i32 noundef %conv1, ptr noundef nonnull %dma_handle) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwrm_cmd_max_timeout = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 93
  %5 = ptrtoint ptr %hwrm_cmd_max_timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwrm_cmd_max_timeout, align 4
  call void @hwrm_req_timeout(ptr noundef %bp, ptr noundef %msg, i32 noundef %6) #8
  %call2 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %msg) #8
  %7 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_handle, align 4
  %conv3 = zext i32 %8 to i64
  %9 = call i64 @llvm.bswap.i64(i64 %conv3)
  %host_dest_addr = getelementptr inbounds %struct.hwrm_dbg_cmn_input, ptr %msg, i32 0, i32 5
  %10 = ptrtoint ptr %host_dest_addr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %host_dest_addr, align 8
  %11 = ptrtoint ptr %dma_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dma_len, align 4
  %conv5 = zext i16 %12 to i32
  %13 = call i32 @llvm.bswap.i32(i32 %conv5)
  %host_buf_len = getelementptr inbounds %struct.hwrm_dbg_cmn_input, ptr %msg, i32 0, i32 6
  %14 = ptrtoint ptr %host_buf_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %host_buf_len, align 8
  %add.ptr17 = getelementptr i8, ptr %call2, i32 10
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %add.ptr, align 2
  %call6113 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6113)
  %tobool7.not114 = icmp eq i32 %call6113, 0
  br i1 %tobool7.not114, label %if.end9.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.lr.ph:                                    ; preds = %if.end
  %data_len_off = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info, i32 0, i32 4
  %segs = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info, i32 0, i32 5
  %dest_buf_size = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info, i32 0, i32 1
  %seg_start = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info, i32 0, i32 6
  %buf_len = getelementptr inbounds %struct.bnxt_hwrm_dbg_dma_info, ptr %info, i32 0, i32 7
  %flags = getelementptr inbounds %struct.hwrm_dbg_cmn_output, ptr %call2, i32 0, i32 4
  br label %if.end9

if.end9:                                          ; preds = %if.end56.if.end9_crit_edge, %if.end9.lr.ph
  %off.0116 = phi i32 [ 0, %if.end9.lr.ph ], [ %add58, %if.end56.if.end9_crit_edge ]
  %seq.0115 = phi i16 [ 0, %if.end9.lr.ph ], [ %inc, %if.end56.if.end9_crit_edge ]
  %16 = ptrtoint ptr %data_len_off to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data_len_off, align 4
  %conv10 = zext i16 %17 to i32
  %add.ptr11 = getelementptr i8, ptr %call2, i32 %conv10
  %18 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr11, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %seq.0115)
  %tobool12.not = icmp eq i16 %seq.0115, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.end9.if.end30_crit_edge

if.end9.if.end30_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end9
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %msg, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6143, i16 %22)
  %cmp = icmp eq i16 %22, 6143
  br i1 %cmp, label %if.then15, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then15:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr17, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %26 = ptrtoint ptr %segs to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %segs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool19.not = icmp eq i16 %24, 0
  br i1 %tobool19.not, label %if.then15.cleanup_crit_edge, label %if.end21

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.then15
  %conv23 = zext i16 %25 to i32
  %mul = shl nuw nsw i32 %conv23, 4
  %27 = ptrtoint ptr %dest_buf_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %dest_buf_size, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #13
  %28 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i, ptr %info, align 4
  %tobool27.not = icmp eq ptr %call9.i, null
  br i1 %tobool27.not, label %if.end21.cleanup_crit_edge, label %if.end21.if.then33_crit_edge

if.end21.if.then33_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end9.if.end30_crit_edge
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load ptr, ptr %info, align 4
  %tobool32.not = icmp eq ptr %.pr, null
  br i1 %tobool32.not, label %if.end30.if.end43_crit_edge, label %if.end30.if.then33_crit_edge

if.end30.if.then33_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then33:                                        ; preds = %if.end30.if.then33_crit_edge, %if.end21.if.then33_crit_edge
  %30 = phi ptr [ %.pr, %if.end30.if.then33_crit_edge ], [ %call9.i, %if.end21.if.then33_crit_edge ]
  %31 = ptrtoint ptr %seg_start to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %seg_start, align 4
  %conv34 = zext i16 %20 to i32
  %add = add i32 %off.0116, %conv34
  %add35 = add i32 %add, %32
  %33 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_len, align 4
  %sub = add i32 %34, -1024
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %sub)
  %cmp36.not = icmp ugt i32 %add35, %sub
  br i1 %cmp36.not, label %if.then33.cleanup_crit_edge, label %if.then38

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr40 = getelementptr i8, ptr %30, i32 %off.0116
  %35 = call ptr @memcpy(ptr %add.ptr40, ptr %call, i32 %conv34)
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end30.if.end43_crit_edge
  %36 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %msg, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6655, i16 %37)
  %cmp46 = icmp eq i16 %37, 6655
  br i1 %cmp46, label %if.then48, label %if.end43.if.end52_crit_edge

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %conv49 = zext i16 %20 to i32
  %38 = ptrtoint ptr %dest_buf_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dest_buf_size, align 4
  %add51 = add i32 %39, %conv49
  store i32 %add51, ptr %dest_buf_size, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end43.if.end52_crit_edge
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flags, align 2
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool54.not = icmp eq i8 %42, 0
  br i1 %tobool54.not, label %if.end52.cleanup_crit_edge, label %if.end56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %inc = add i16 %seq.0115, 1
  %conv57 = zext i16 %20 to i32
  %add58 = add i32 %off.0116, %conv57
  %43 = call i16 @llvm.bswap.i16(i16 %inc)
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %add.ptr, align 2
  %call6 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %msg) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end56.if.end9_crit_edge, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end56.if.end9_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

cleanup:                                          ; preds = %if.end56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call6113, %if.end.cleanup_crit_edge ], [ -105, %if.then33.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ], [ -5, %if.then15.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ], [ %call6, %if.end56.cleanup_crit_edge ]
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %msg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_dma_slice(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_drop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_timeout(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_hold(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_coredump.c", i32 303, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_coredump.c", i32 329, i32 8}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_coredump.c", i32 342, i32 8}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_coredump.c", i32 371, i32 23}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_coredump.c", i32 175, i32 29}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_coredump.c", i32 232, i32 28}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_coredump.c", i32 249, i32 33}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_coredump.c", i32 250, i32 24}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2153886468, i64 2153886493}
!36 = !{i64 6382023}
!37 = !{i64 6382220}
!38 = !{i64 2153867453}
