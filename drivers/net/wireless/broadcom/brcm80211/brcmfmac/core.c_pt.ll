; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.149, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.possible_net_t = type { ptr }
%struct.anon.149 = type { i64, i64, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.127, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.127 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.153 }
%union.anon.153 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.sk_buff = type { %union.anon.51, %union.anon.54, %union.anon.55, [48 x i8], %union.anon.56, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.58, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr, %union.anon.53 }
%union.anon.53 = type { ptr }
%union.anon.54 = type { ptr }
%union.anon.55 = type { i64 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { i32, ptr }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.60, i32, i32, i32, i16, i16, %union.anon.62, i32, %union.anon.63, %union.anon.64, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.60 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i16 }
%struct.d11rxhdr_le = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [12 x i8] }
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_event = type { %struct.ethhdr, %struct.brcm_ethhdr, %struct.brcmf_event_msg_be }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.brcm_ethhdr = type { i16, i16, i8, [3 x i8], i16 }
%struct.brcmf_event_msg_be = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
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
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_event_msg = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }
%struct.brcmf_cfg80211_info = type { ptr, ptr, %struct.brcmf_p2p_info, ptr, ptr, %struct.mutex, ptr, %struct.brcmf_cfg80211_connect_info, %struct.brcmf_pmk_list_le, i32, ptr, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, %struct.escan_info, %struct.timer_list, %struct.work_struct, %struct.list_head, %struct.brcmf_cfg80211_vif_event, %struct.completion, %struct.brcmu_d11inf, %struct.brcmf_assoclist_le, %struct.brcmf_cfg80211_wowl, ptr, [8 x i8] }
%struct.brcmf_p2p_info = type { ptr, i32, [6 x i8], [6 x i8], [6 x i8], [4 x %struct.p2p_bss], %struct.timer_list, i8, %struct.ieee80211_channel, i32, i8, %struct.completion, %struct.afx_hdl, i32, i32, %struct.completion, i8, i8, i8, i8 }
%struct.p2p_bss = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.afx_hdl = type { %struct.work_struct, %struct.completion, i8, i32, i8, i16, i16, [6 x i8] }
%struct.brcmf_cfg80211_connect_info = type { ptr, i32, ptr, i32 }
%struct.brcmf_pmk_list_le = type { i32, [16 x %struct.brcmf_pmksa] }
%struct.brcmf_pmksa = type { [6 x i8], [16 x i8] }
%struct.escan_info = type { i32, ptr, ptr, ptr, ptr }
%struct.brcmf_cfg80211_vif_event = type { %struct.wait_queue_head, %struct.spinlock, i8, ptr }
%struct.brcmu_d11inf = type { i8, ptr, ptr }
%struct.brcmf_assoclist_le = type { i32, [128 x [6 x i8]] }
%struct.brcmf_cfg80211_wowl = type { i8, i32, ptr, ptr, %struct.wait_queue_head, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sock_common = type { %union.anon.41, %union.anon.43, %union.anon.44, i16, i8, i8, i32, %union.anon.46, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.41 = type { i64 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.46 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.82, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.83, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.82 = type { ptr }
%union.anon.83 = type { ptr }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<if_null>\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<if_none>\00", [22 x i8] zeroinitializer }, align 32
@brcmf_get_ifp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 82, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: ifidx %d out of range\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcmf_get_ifp\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_get_ifp._entry_ptr = internal global ptr @brcmf_get_ifp._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"arp_ol\00", [25 x i8] zeroinitializer }, align 32
@__func__.brcmf_configure_arp_nd_offload = private unnamed_addr constant [31 x i8] c"brcmf_configure_arp_nd_offload\00", align 1
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to set ARP offload mode to 0x%x, err = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"arpoe\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to configure (%d) ARP offload err = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"successfully configured (%d) ARP offload to 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ndoe\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to configure (%d) ND offload err = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"successfully configured (%d) ND offload to 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.brcmf_txflowblock_if = private unnamed_addr constant [21 x i8] c"brcmf_txflowblock_if\00", align 1
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"enter: bsscfgidx=%d stop=0x%X reason=%d state=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.brcmf_netif_rx = private unnamed_addr constant [15 x i8] c"brcmf_netif_rx\00", align 1
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx proto=0x%X\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.brcmf_rx_frame = private unnamed_addr constant [15 x i8] c"brcmf_rx_frame\00", align 1
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Enter: %s: rxp=%p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.brcmf_rx_event = private unnamed_addr constant [15 x i8] c"brcmf_rx_event\00", align 1
@__func__.brcmf_net_attach = private unnamed_addr constant [17 x i8] c"brcmf_net_attach\00", align 1
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Enter, bsscfgidx=%d mac=%pM\0A\00", [35 x i8] zeroinitializer }, align 32
@brcmf_netdev_ops_pri = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @brcmf_netdev_open, ptr @brcmf_netdev_stop, ptr @brcmf_netdev_start_xmit, ptr null, ptr null, ptr null, ptr @brcmf_netdev_set_multicast_list, ptr @brcmf_netdev_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@brcmf_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @brcmf_ethtool_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@brcmf_net_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&ifp->multicast_work)\00", [56 x i8] zeroinitializer }, align 32
@brcmf_net_attach.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&ifp->ndoffload_work)\00", [56 x i8] zeroinitializer }, align 32
@brcmf_net_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.brcmf_net_attach, ptr @.str.4, i32 669, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: couldn't register the net device\0A\00", [58 x i8] zeroinitializer }, align 32
@brcmf_net_attach._entry_ptr = internal global ptr @brcmf_net_attach._entry, section ".printk_index", align 4
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Broadcom Dongle Host Driver\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.brcmf_net_mon_attach = private unnamed_addr constant [21 x i8] c"brcmf_net_mon_attach\00", align 1
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@brcmf_netdev_ops_mon = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @brcmf_net_mon_open, ptr @brcmf_net_mon_stop, ptr @brcmf_net_mon_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@brcmf_net_mon_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.brcmf_net_mon_attach, ptr @.str.4, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to register %s device\0A\00", [62 x i8] zeroinitializer }, align 32
@brcmf_net_mon_attach._entry_ptr = internal global ptr @brcmf_net_mon_attach._entry, section ".printk_index", align 4
@__func__.brcmf_net_setcarrier = private unnamed_addr constant [21 x i8] c"brcmf_net_setcarrier\00", align 1
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enter, bsscfgidx=%d carrier=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.brcmf_add_if = private unnamed_addr constant [13 x i8] c"brcmf_add_if\00", align 1
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enter, bsscfgidx=%d, ifidx=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmf_add_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.brcmf_add_if, ptr @.str.4, i32 866, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: ERROR: netdev:%s already exists\0A\00", [59 x i8] zeroinitializer }, align 32
@brcmf_add_if._entry_ptr = internal global ptr @brcmf_add_if._entry, section ".printk_index", align 4
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"netdev:%s ignore IF event\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"allocate non-netdev interface\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"allocate netdev interface\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p2p%d\00", [26 x i8] zeroinitializer }, align 32
@brcmf_add_if.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ifp->pend_8021x_wait\00", [42 x i8] zeroinitializer }, align 32
@brcmf_add_if.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ifp->netif_stop_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" ==== pid:%x, if:%s (%pM) created ===\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.brcmf_remove_interface = private unnamed_addr constant [23 x i8] c"brcmf_remove_interface\00", align 1
@__func__.brcmf_alloc = private unnamed_addr constant [12 x i8] c"brcmf_alloc\00", align 1
@__func__.brcmf_attach = private unnamed_addr constant [13 x i8] c"brcmf_attach\00", align 1
@brcmf_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&drvr->proto_block\00", [45 x i8] zeroinitializer }, align 32
@brcmf_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.brcmf_attach, ptr @.str.4, i32 1347, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: brcmf_prot_attach failed\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmf_attach._entry_ptr = internal global ptr @brcmf_attach._entry, section ".printk_index", align 4
@brcmf_attach._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.brcmf_attach, ptr @.str.4, i32 1360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: dongle is not responding: err=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@brcmf_attach._entry_ptr.41 = internal global ptr @brcmf_attach._entry.39, section ".printk_index", align 4
@__func__.brcmf_dev_coredump = private unnamed_addr constant [19 x i8] c"brcmf_dev_coredump\00", align 1
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to create coredump\0A\00", [37 x i8] zeroinitializer }, align 32
@brcmf_fw_crashed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 1407, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Firmware has halted or crashed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmf_fw_crashed\00", [47 x i8] zeroinitializer }, align 32
@brcmf_fw_crashed._entry_ptr = internal global ptr @brcmf_fw_crashed._entry, section ".printk_index", align 4
@__func__.brcmf_detach = private unnamed_addr constant [13 x i8] c"brcmf_detach\00", align 1
@brcmf_netdev_wait_pend8021x._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 1494, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Timed out waiting for no pending 802.1x packets\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"brcmf_netdev_wait_pend8021x\00", [36 x i8] zeroinitializer }, align 32
@brcmf_netdev_wait_pend8021x._entry_ptr = internal global ptr @brcmf_netdev_wait_pend8021x._entry, section ".printk_index", align 4
@__func__.brcmf_bus_change_state = private unnamed_addr constant [23 x i8] c"brcmf_bus_change_state\00", align 1
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d -> %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ignoring transition, bus not attached yet\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\10\18\00", [28 x i8] zeroinitializer }, align 32
@__func__.brcmf_netdev_open = private unnamed_addr constant [18 x i8] c"brcmf_netdev_open\00", align 1
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enter, bsscfgidx=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@brcmf_netdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @__func__.brcmf_netdev_open, ptr @.str.4, i32 610, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed bus is not ready\0A\00", [35 x i8] zeroinitializer }, align 32
@brcmf_netdev_open._entry_ptr = internal global ptr @brcmf_netdev_open._entry, section ".printk_index", align 4
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"toe_ol\00", [25 x i8] zeroinitializer }, align 32
@brcmf_netdev_open._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.brcmf_netdev_open, ptr @.str.4, i32 624, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to bring up cfg80211\0A\00", [63 x i8] zeroinitializer }, align 32
@brcmf_netdev_open._entry_ptr.55 = internal global ptr @brcmf_netdev_open._entry.53, section ".printk_index", align 4
@__func__.brcmf_netdev_stop = private unnamed_addr constant [18 x i8] c"brcmf_netdev_stop\00", align 1
@__func__.brcmf_netdev_start_xmit = private unnamed_addr constant [24 x i8] c"brcmf_netdev_start_xmit\00", align 1
@brcmf_netdev_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @__func__.brcmf_netdev_start_xmit, ptr @.str.4, i32 303, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: xmit rejected state=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmf_netdev_start_xmit._entry_ptr = internal global ptr @brcmf_netdev_start_xmit._entry, section ".printk_index", align 4
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: insufficient headroom (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmf_netdev_start_xmit._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @__func__.brcmf_netdev_start_xmit, ptr @.str.4, i32 338, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: %s: failed to expand headroom\0A\00", [61 x i8] zeroinitializer }, align 32
@brcmf_netdev_start_xmit._entry_ptr.60 = internal global ptr @brcmf_netdev_start_xmit._entry.58, section ".printk_index", align 4
@__func__.brcmf_netdev_set_mac_address = private unnamed_addr constant [29 x i8] c"brcmf_netdev_set_mac_address\00", align 1
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cur_etheraddr\00", [18 x i8] zeroinitializer }, align 32
@brcmf_netdev_set_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @__func__.brcmf_netdev_set_mac_address, ptr @.str.4, i32 243, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Setting cur_etheraddr failed, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@brcmf_netdev_set_mac_address._entry_ptr = internal global ptr @brcmf_netdev_set_mac_address._entry, section ".printk_index", align 4
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"updated to %pM\0A\00", [16 x i8] zeroinitializer }, align 32
@__const.brcmf_ethtool_get_drvinfo.drev = private unnamed_addr constant [16 x i8] c"n/a\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcmfmac\00", [23 x i8] zeroinitializer }, align 32
@__func__._brcmf_set_multicast_list = private unnamed_addr constant [26 x i8] c"_brcmf_set_multicast_list\00", align 1
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcast_list\00", [21 x i8] zeroinitializer }, align 32
@_brcmf_set_multicast_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__._brcmf_set_multicast_list, ptr @.str.4, i32 173, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Setting mcast_list failed, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@_brcmf_set_multicast_list._entry_ptr = internal global ptr @_brcmf_set_multicast_list._entry, section ".printk_index", align 4
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"allmulti\00", [23 x i8] zeroinitializer }, align 32
@_brcmf_set_multicast_list._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @__func__._brcmf_set_multicast_list, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Setting allmulti failed, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@_brcmf_set_multicast_list._entry_ptr.70 = internal global ptr @_brcmf_set_multicast_list._entry.68, section ".printk_index", align 4
@_brcmf_set_multicast_list.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@_brcmf_set_multicast_list._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__._brcmf_set_multicast_list, ptr @.str.4, i32 194, ptr @.str.73, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: BRCMF_C_SET_PROMISC unsupported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@_brcmf_set_multicast_list._entry_ptr.74 = internal global ptr @_brcmf_set_multicast_list._entry.71, section ".printk_index", align 4
@_brcmf_set_multicast_list._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__._brcmf_set_multicast_list, ptr @.str.4, i32 197, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Setting BRCMF_C_SET_PROMISC failed, err=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@_brcmf_set_multicast_list._entry_ptr.77 = internal global ptr @_brcmf_set_multicast_list._entry.75, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nd_hostip_clear\00", [16 x i8] zeroinitializer }, align 32
@__func__._brcmf_update_ndtable = private unnamed_addr constant [22 x i8] c"_brcmf_update_ndtable\00", align 1
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fail to clear nd ip table err:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nd_hostip\00", [22 x i8] zeroinitializer }, align 32
@_brcmf_update_ndtable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @__func__._brcmf_update_ndtable, ptr @.str.4, i32 222, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: add nd ip err %d\0A\00", [42 x i8] zeroinitializer }, align 32
@_brcmf_update_ndtable._entry_ptr = internal global ptr @_brcmf_update_ndtable._entry, section ".printk_index", align 4
@__func__.brcmf_net_mon_open = private unnamed_addr constant [19 x i8] c"brcmf_net_mon_open\00", align 1
@brcmf_net_mon_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @__func__.brcmf_net_mon_open, ptr @.str.4, i32 709, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: BRCMF_C_GET_MONITOR error (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@brcmf_net_mon_open._entry_ptr = internal global ptr @brcmf_net_mon_open._entry, section ".printk_index", align 4
@brcmf_net_mon_open._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @__func__.brcmf_net_mon_open, ptr @.str.4, i32 712, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Monitor mode is already enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@brcmf_net_mon_open._entry_ptr.85 = internal global ptr @brcmf_net_mon_open._entry.83, section ".printk_index", align 4
@brcmf_net_mon_open._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @__func__.brcmf_net_mon_open, ptr @.str.4, i32 719, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: BRCMF_C_SET_MONITOR error (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@brcmf_net_mon_open._entry_ptr.88 = internal global ptr @brcmf_net_mon_open._entry.86, section ".printk_index", align 4
@__func__.brcmf_net_mon_stop = private unnamed_addr constant [19 x i8] c"brcmf_net_mon_stop\00", align 1
@brcmf_net_mon_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @__func__.brcmf_net_mon_stop, ptr @.str.4, i32 736, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@brcmf_net_mon_stop._entry_ptr = internal global ptr @brcmf_net_mon_stop._entry, section ".printk_index", align 4
@brcmf_del_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.4, i32 924, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Null interface, bsscfgidx=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcmf_del_if\00", [19 x i8] zeroinitializer }, align 32
@brcmf_del_if._entry_ptr = internal global ptr @brcmf_del_if._entry, section ".printk_index", align 4
@__func__.brcmf_psm_watchdog_notify = private unnamed_addr constant [26 x i8] c"brcmf_psm_watchdog_notify\00", align 1
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enter: bsscfgidx=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@brcmf_psm_watchdog_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @__func__.brcmf_psm_watchdog_notify, ptr @.str.4, i32 983, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: PSM's watchdog has fired!\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmf_psm_watchdog_notify._entry_ptr = internal global ptr @brcmf_psm_watchdog_notify._entry, section ".printk_index", align 4
@brcmf_psm_watchdog_notify._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @__func__.brcmf_psm_watchdog_notify, ptr @.str.4, i32 988, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to get memory dump, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@brcmf_psm_watchdog_notify._entry_ptr.95 = internal global ptr @brcmf_psm_watchdog_notify._entry.93, section ".printk_index", align 4
@__func__.brcmf_bus_started = private unnamed_addr constant [18 x i8] c"brcmf_bus_started\00", align 1
@.str.96 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@brcmf_bus_started.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&drvr->bus_reset)\00", [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"revinfo\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@bus_reset_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @bus_reset_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@brcmf_bus_started._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @__func__.brcmf_bus_started, ptr @.str.4, i32 1282, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: failed: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@brcmf_bus_started._entry_ptr = internal global ptr @brcmf_bus_started._entry, section ".printk_index", align 4
@__func__.brcmf_net_p2p_attach = private unnamed_addr constant [21 x i8] c"brcmf_net_p2p_attach\00", align 1
@brcmf_netdev_ops_p2p = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @brcmf_net_p2p_open, ptr @brcmf_net_p2p_stop, ptr @brcmf_net_p2p_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@brcmf_net_p2p_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @__func__.brcmf_net_p2p_attach, ptr @.str.4, i32 836, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: couldn't register the p2p net device\0A\00", [54 x i8] zeroinitializer }, align 32
@brcmf_net_p2p_attach._entry_ptr = internal global ptr @brcmf_net_p2p_attach._entry, section ".printk_index", align 4
@__func__.brcmf_net_p2p_open = private unnamed_addr constant [19 x i8] c"brcmf_net_p2p_open\00", align 1
@__func__.brcmf_net_p2p_stop = private unnamed_addr constant [19 x i8] c"brcmf_net_p2p_stop\00", align 1
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arp_version\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"arp_hostip\00", [21 x i8] zeroinitializer }, align 32
@brcmf_inetaddr_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 1032, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: fail to get arp ip table err:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcmf_inetaddr_changed\00", [41 x i8] zeroinitializer }, align 32
@brcmf_inetaddr_changed._entry_ptr = internal global ptr @brcmf_inetaddr_changed._entry, section ".printk_index", align 4
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"add %pI4 to arp table\0A\00", [41 x i8] zeroinitializer }, align 32
@brcmf_inetaddr_changed._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.106, ptr @.str.4, i32 1049, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: add arp ip err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@brcmf_inetaddr_changed._entry_ptr.110 = internal global ptr @brcmf_inetaddr_changed._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"remove %pI4 from arp table\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arp_hostip_clear\00", [47 x i8] zeroinitializer }, align 32
@brcmf_inetaddr_changed._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.106, ptr @.str.4, i32 1062, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: fail to clear arp ip table err:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@brcmf_inetaddr_changed._entry_ptr.115 = internal global ptr @brcmf_inetaddr_changed._entry.113, section ".printk_index", align 4
@brcmf_inetaddr_changed._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.106, ptr @.str.4, i32 1073, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@brcmf_inetaddr_changed._entry_ptr.117 = internal global ptr @brcmf_inetaddr_changed._entry.116, section ".printk_index", align 4
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vendorid: 0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"deviceid: 0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radiorev: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chip: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chippkg: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"corerev: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"boardid: 0x%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"boardvendor: 0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"boardrev: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"driverrev: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ucoderev: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus: %u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phytype: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"phyrev: %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"anarev: %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvramrev: %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clmver: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 68, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 73, i32 9 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 82, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 106, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 108, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 111, i32 38 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 113, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 116, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 121, i32 37 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 123, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 126, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 387, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 425, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 512, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 647, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [21 x i8] c"brcmf_netdev_ops_pri\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 633, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant [18 x i8] c"brcmf_ethtool_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 582, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 661, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 662, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 669, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 676, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 761, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [21 x i8] c"brcmf_netdev_ops_mon\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 749, i32 36 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 768, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 777, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 856, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 865, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 871, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 879, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 884, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 886, i32 10 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 904, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 905, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 910, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1339, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1347, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1360, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1399, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1407, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1494, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1505, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1508, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant [59 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 349, i32 13 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 606, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 610, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 617, i32 35 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 624, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 303, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 331, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 337, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 240, i32 38 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 243, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 245, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 575, i32 24 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 171, i32 38 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 173, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 184, i32 37 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 186, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 194, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 196, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 211, i32 38 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 213, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 218, i32 39 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 222, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 709, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 712, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 719, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 736, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 924, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 981, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 983, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 988, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1205, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1208, i32 40 }
@___asan_gen_.471 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1269, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1272, i32 32 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1273, i32 22 }
@___asan_gen_.483 = private unnamed_addr constant [15 x i8] c"bus_reset_fops\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1192, i32 37 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1282, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [21 x i8] c"brcmf_netdev_ops_p2p\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 815, i32 36 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 836, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1022, i32 37 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1029, i32 38 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1032, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1043, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1049, i32 5 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1055, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1058, i32 40 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1061, i32 5 }
@___asan_gen_.537 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1072, i32 6 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1145, i32 16 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1146, i32 16 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1147, i32 16 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1148, i32 16 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1149, i32 16 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1150, i32 16 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1151, i32 16 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1152, i32 16 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1153, i32 16 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1154, i32 16 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1155, i32 16 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1156, i32 16 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1157, i32 16 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1158, i32 16 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1159, i32 16 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1160, i32 16 }
@___asan_gen_.588 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.589 = private constant [59 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1162, i32 16 }
@llvm.compiler.used = appending global [183 x ptr] [ptr @_brcmf_set_multicast_list._entry, ptr @_brcmf_set_multicast_list._entry.68, ptr @_brcmf_set_multicast_list._entry.71, ptr @_brcmf_set_multicast_list._entry.75, ptr @_brcmf_set_multicast_list._entry_ptr, ptr @_brcmf_set_multicast_list._entry_ptr.70, ptr @_brcmf_set_multicast_list._entry_ptr.74, ptr @_brcmf_set_multicast_list._entry_ptr.77, ptr @_brcmf_update_ndtable._entry, ptr @_brcmf_update_ndtable._entry_ptr, ptr @brcmf_add_if._entry, ptr @brcmf_add_if._entry_ptr, ptr @brcmf_attach._entry, ptr @brcmf_attach._entry.39, ptr @brcmf_attach._entry_ptr, ptr @brcmf_attach._entry_ptr.41, ptr @brcmf_bus_started._entry, ptr @brcmf_bus_started._entry_ptr, ptr @brcmf_core_exit, ptr @brcmf_del_if._entry, ptr @brcmf_del_if._entry_ptr, ptr @brcmf_fw_crashed._entry, ptr @brcmf_fw_crashed._entry_ptr, ptr @brcmf_get_ifp._entry, ptr @brcmf_get_ifp._entry_ptr, ptr @brcmf_inetaddr_changed._entry, ptr @brcmf_inetaddr_changed._entry.108, ptr @brcmf_inetaddr_changed._entry.113, ptr @brcmf_inetaddr_changed._entry.116, ptr @brcmf_inetaddr_changed._entry_ptr, ptr @brcmf_inetaddr_changed._entry_ptr.110, ptr @brcmf_inetaddr_changed._entry_ptr.115, ptr @brcmf_inetaddr_changed._entry_ptr.117, ptr @brcmf_net_attach._entry, ptr @brcmf_net_attach._entry_ptr, ptr @brcmf_net_mon_attach._entry, ptr @brcmf_net_mon_attach._entry_ptr, ptr @brcmf_net_mon_open._entry, ptr @brcmf_net_mon_open._entry.83, ptr @brcmf_net_mon_open._entry.86, ptr @brcmf_net_mon_open._entry_ptr, ptr @brcmf_net_mon_open._entry_ptr.85, ptr @brcmf_net_mon_open._entry_ptr.88, ptr @brcmf_net_mon_stop._entry, ptr @brcmf_net_mon_stop._entry_ptr, ptr @brcmf_net_p2p_attach._entry, ptr @brcmf_net_p2p_attach._entry_ptr, ptr @brcmf_netdev_open._entry, ptr @brcmf_netdev_open._entry.53, ptr @brcmf_netdev_open._entry_ptr, ptr @brcmf_netdev_open._entry_ptr.55, ptr @brcmf_netdev_set_mac_address._entry, ptr @brcmf_netdev_set_mac_address._entry_ptr, ptr @brcmf_netdev_start_xmit._entry, ptr @brcmf_netdev_start_xmit._entry.58, ptr @brcmf_netdev_start_xmit._entry_ptr, ptr @brcmf_netdev_start_xmit._entry_ptr.60, ptr @brcmf_netdev_wait_pend8021x._entry, ptr @brcmf_netdev_wait_pend8021x._entry_ptr, ptr @brcmf_psm_watchdog_notify._entry, ptr @brcmf_psm_watchdog_notify._entry.93, ptr @brcmf_psm_watchdog_notify._entry_ptr, ptr @brcmf_psm_watchdog_notify._entry_ptr.95, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @brcmf_netdev_ops_pri, ptr @brcmf_ethtool_ops, ptr @brcmf_net_attach.__key, ptr @.str.19, ptr @brcmf_net_attach.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @brcmf_netdev_ops_mon, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @brcmf_add_if.__key, ptr @.str.33, ptr @brcmf_add_if.__key.34, ptr @.str.35, ptr @.str.36, ptr @brcmf_attach.__key, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @brcmf_bus_started.__key, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @bus_reset_fops, ptr @.str.101, ptr @brcmf_netdev_ops_p2p, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_get_ifp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_netdev_ops_pri to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_net_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_net_attach.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_net_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_netdev_ops_mon to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_net_mon_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_add_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_add_if.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_add_if.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_attach._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fw_crashed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_netdev_wait_pend8021x._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_netdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_netdev_open._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_netdev_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_netdev_start_xmit._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_netdev_set_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_brcmf_set_multicast_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_brcmf_set_multicast_list._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_brcmf_set_multicast_list._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_brcmf_set_multicast_list._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_brcmf_update_ndtable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_net_mon_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_net_mon_open._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_net_mon_open._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_net_mon_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_del_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_psm_watchdog_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_psm_watchdog_notify._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_bus_started.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_reset_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_bus_started._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_netdev_ops_p2p to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_net_p2p_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_inetaddr_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_inetaddr_changed._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_inetaddr_changed._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_inetaddr_changed._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @brcmf_ifname(ptr noundef readonly %ifp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ifp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ndev = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %tobool1.not = icmp eq ptr %1, null
  %.str.1. = select i1 %tobool1.not, ptr @.str.1, ptr %1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str, %entry.return_crit_edge ], [ %.str.1., %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_get_ifp(ptr nocapture noundef readonly %drvr, i32 noundef %ifidx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %ifidx)
  %0 = icmp ugt i32 %ifidx, 15
  br i1 %0, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %1 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %2, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %ifidx) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.brcmf_pub, ptr %drvr, i32 0, i32 10, i32 %ifidx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp5 = icmp sgt i32 %4, -1
  br i1 %cmp5, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx7 = getelementptr %struct.brcmf_pub, ptr %drvr, i32 0, i32 9, i32 %4
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %6, %if.then6 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_configure_arp_nd_offload(ptr noundef %ifp, i1 noundef zeroext %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %enable, i32 9, i32 0
  %call = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %ifp, ptr noundef nonnull @.str.7, i32 noundef %.) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.else3, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_configure_arp_nd_offload, ptr noundef nonnull @.str.8, i32 noundef %., i32 noundef %call) #14
  %.pre = zext i1 %enable to i32
  br label %if.end20

if.else3:                                         ; preds = %entry
  %conv = zext i1 %enable to i32
  %call5 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %ifp, ptr noundef nonnull @.str.9, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body14, label %do.body8

do.body8:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_configure_arp_nd_offload, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %call5) #14
  br label %if.end20

do.body14:                                        ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_configure_arp_nd_offload, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %.) #14
  br label %if.end20

if.end20:                                         ; preds = %do.body14, %do.body8, %do.body
  %conv22.pre-phi = phi i32 [ %conv, %do.body8 ], [ %conv, %do.body14 ], [ %.pre, %do.body ]
  %call23 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %ifp, ptr noundef nonnull @.str.12, i32 noundef %conv22.pre-phi) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body32, label %do.body26

do.body26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_configure_arp_nd_offload, ptr noundef nonnull @.str.13, i32 noundef %conv22.pre-phi, i32 noundef %call23) #14
  br label %if.end37

do.body32:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_configure_arp_nd_offload, ptr noundef nonnull @.str.14, i32 noundef %conv22.pre-phi, i32 noundef %.) #14
  br label %if.end37

if.end37:                                         ; preds = %do.body32, %do.body26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_txflowblock_if(ptr noundef %ifp, i32 noundef %reason, i1 noundef zeroext %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ifp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ndev = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %bsscfgidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 7
  %2 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bsscfgidx, align 4
  %netif_stop = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 9
  %4 = ptrtoint ptr %netif_stop to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %netif_stop, align 2
  %conv = zext i8 %5 to i32
  %conv3 = zext i1 %state to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_txflowblock_if, ptr noundef nonnull @.str.15, i32 noundef %3, i32 noundef %conv, i32 noundef %reason, i32 noundef %conv3) #14
  %netif_stop_lock = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 10
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %netif_stop_lock) #14
  %6 = ptrtoint ptr %netif_stop to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %netif_stop, align 2
  br i1 %state, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  br i1 %tobool15.not, label %if.then16, label %if.then13.if.end18_crit_edge

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then13.if.end18_crit_edge
  %12 = ptrtoint ptr %netif_stop to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %netif_stop, align 2
  %14 = trunc i32 %reason to i8
  %conv21 = or i8 %13, %14
  store i8 %conv21, ptr %netif_stop, align 2
  br label %if.end30

if.else:                                          ; preds = %do.body
  %15 = trunc i32 %reason to i8
  %16 = xor i8 %15, -1
  %conv24 = and i8 %7, %16
  %17 = ptrtoint ptr %netif_stop to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv24, ptr %netif_stop, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv24)
  %tobool26.not = icmp eq i8 %conv24, 0
  br i1 %tobool26.not, label %if.then27, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev, align 4
  %_tx.i.i46 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i46, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %21) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.else.if.end30_crit_edge, %if.end18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %netif_stop_lock, i32 noundef %call7) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_netif_rx(ptr nocapture noundef readonly %ifp, ptr noundef %skb, i1 noundef zeroext %inirq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %settings = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %settings, align 4
  %iapp = getelementptr inbounds %struct.brcmf_mp_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %iapp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iapp, align 1, !range !344
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %8 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_len.i, align 4
  %conv.i = zext i16 %9 to i32
  %sub.i = sub i32 %7, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i)
  %cmp.not.i = icmp eq i32 %sub.i, 6
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %12 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.i, align 4
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %brcmf_skb_is_iapp.exit

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

brcmf_skb_is_iapp.exit:                           ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 14
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %xor.i = xor i32 %18, 110465
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 18
  %19 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr4.i, align 2
  %21 = xor i16 %20, 256
  %xor7.i = zext i16 %21 to i32
  %or.i = or i32 %xor.i, %xor7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %if.then, label %brcmf_skb_is_iapp.exit.if.end_crit_edge

brcmf_skb_is_iapp.exit.if.end_crit_edge:          ; preds = %brcmf_skb_is_iapp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %brcmf_skb_is_iapp.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %skb) #14
  br label %if.end18

if.end:                                           ; preds = %brcmf_skb_is_iapp.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, 16384
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %ndev = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 2
  %23 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev, align 4
  %multicast = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 36, i32 8
  %25 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %multicast, align 8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %multicast, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %ndev4 = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 2
  %27 = ptrtoint ptr %ndev4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev4, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 8
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %skb) #14
  br label %if.end18

if.end7:                                          ; preds = %if.end3
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 36, i32 2
  %33 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %34, %32
  store i32 %add, ptr %rx_bytes, align 8
  %35 = ptrtoint ptr %ndev4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ndev4, align 4
  %stats11 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 36
  %37 = ptrtoint ptr %stats11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stats11, align 8
  %inc12 = add i32 %38, 1
  store i32 %inc12, ptr %stats11, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %39 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %protocol, align 8
  %conv13 = zext i16 %40 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_netif_rx, ptr noundef nonnull @.str.16, i32 noundef %conv13) #14
  br i1 %inirq, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call i32 @netif_rx(ptr noundef %skb) #14
  br label %if.end18

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 @netif_rx_ni(ptr noundef %skb) #14
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15, %if.then6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_netif_mon_rx(ptr noundef %ifp, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %ifp, i32 noundef 16) #14
  br i1 %call, label %entry.if.end15_crit_edge, label %if.else

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @brcmf_feat_is_enabled(ptr noundef %ifp, i32 noundef 17) #14
  br i1 %call1, label %if.then2, label %if.else.if.end15.sink.split_crit_edge

if.else.if.end15.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %RxStatus13 = getelementptr inbounds %struct.d11rxhdr_le, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %RxStatus13 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %RxStatus13, align 1
  %4 = and i16 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %spec.select = select i1 %tobool.not, i32 54, i32 56
  %call6 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %spec.select) #14
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then2, %if.else.if.end15.sink.split_crit_edge
  %call10 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #14
  %5 = ptrtoint ptr %call10 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 8796093022208, ptr %call10, align 1
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len12, align 4
  %sub = add i32 %7, -4
  store i32 %sub, ptr %len12, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %entry.if.end15_crit_edge
  %ndev = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 2
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  %10 = getelementptr inbounds %struct.anon.52, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %16 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  %bf.set = or i16 %bf.clear, 24576
  store i16 %bf.set, ptr %pkt_type, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 4, ptr %protocol, align 8
  tail call void @brcmf_netif_rx(ptr noundef %ifp, ptr noundef %skb, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_feat_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_rx_frame(ptr nocapture noundef readonly %dev, ptr noundef %skb, i1 noundef zeroext %handle_event, i1 noundef zeroext %inirq) local_unnamed_addr #1 align 64 {
entry:
  %ifp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ifp) #14
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr2 = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr2, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_rx_frame, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i, ptr noundef %skb) #14
  %8 = ptrtoint ptr %ifp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ifp, align 4
  %proto.i.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %proto.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i.i = call i32 %12(ptr noundef %3, i1 noundef zeroext true, ptr noundef %skb, ptr noundef nonnull %ifp) #14
  %13 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %dev_name.exit.land.lhs.true.i_crit_edge [
    i32 0, label %lor.lhs.false.i
    i32 -61, label %dev_name.exit.brcmf_rx_hdrpull.exit_crit_edge
  ]

dev_name.exit.brcmf_rx_hdrpull.exit_crit_edge:    ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_rx_hdrpull.exit

dev_name.exit.land.lhs.true.i_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %dev_name.exit
  %14 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ifp, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.brcmf_rx_hdrpull.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.brcmf_rx_hdrpull.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_rx_hdrpull.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %ndev.i = getelementptr inbounds %struct.brcmf_if, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.land.lhs.true.i_crit_edge, label %if.end

lor.lhs.false2.i.land.lhs.true.i_crit_edge:       ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false2.i.land.lhs.true.i_crit_edge, %dev_name.exit.land.lhs.true.i_crit_edge
  %18 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i = load ptr, ptr %ifp, align 4
  %tobool4.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.brcmf_rx_hdrpull.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.brcmf_rx_hdrpull.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_rx_hdrpull.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %ndev6.i = getelementptr inbounds %struct.brcmf_if, ptr %.pr.i, i32 0, i32 2
  %19 = ptrtoint ptr %ndev6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev6.i, align 4
  %tobool7.not.i = icmp eq ptr %20, null
  br i1 %tobool7.not.i, label %land.lhs.true5.i.brcmf_rx_hdrpull.exit_crit_edge, label %if.then8.i

land.lhs.true5.i.brcmf_rx_hdrpull.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_rx_hdrpull.exit

if.then8.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 4
  %21 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  br label %brcmf_rx_hdrpull.exit

brcmf_rx_hdrpull.exit:                            ; preds = %if.then8.i, %land.lhs.true5.i.brcmf_rx_hdrpull.exit_crit_edge, %land.lhs.true.i.brcmf_rx_hdrpull.exit_crit_edge, %lor.lhs.false.i.brcmf_rx_hdrpull.exit_crit_edge, %dev_name.exit.brcmf_rx_hdrpull.exit_crit_edge
  call void @brcmu_pkt_buf_free_skb(ptr noundef %skb) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  %call12.i = call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef nonnull %17) #14
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %23 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %call12.i, ptr %protocol.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %24 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cb.i, align 4
  %tobool.i.not = icmp eq ptr %25, null
  br i1 %tobool.i.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ifp, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %proto.i = getelementptr inbounds %struct.brcmf_pub, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %proto.i, align 4
  %rxreorder.i = getelementptr inbounds %struct.brcmf_proto, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %rxreorder.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rxreorder.i, align 4
  call void %33(ptr noundef %27, ptr noundef %skb, i1 noundef zeroext %inirq) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %handle_event, label %if.then9, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then9:                                         ; preds = %if.else
  %cond = select i1 %inirq, i32 2592, i32 3264
  %34 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ifp, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30612, i16 %39)
  %cmp.not.i = icmp eq i16 %39, -30612
  br i1 %cmp.not.i, label %if.end.i28, label %if.then9.if.end12_crit_edge

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end.i28:                                       ; preds = %if.then9
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  %add.i = add i32 %41, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %add.i)
  %cmp2.i = icmp ult i32 %add.i, 72
  br i1 %cmp2.i, label %if.end.i28.if.end12_crit_edge, label %if.end5.i

if.end.i28.if.end12_crit_edge:                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end5.i:                                        ; preds = %if.end.i28
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %44 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %45 to i32
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %conv.i.i
  %hdr.i = getelementptr inbounds %struct.brcmf_event, ptr %add.ptr.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %hdr.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %hdr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %47)
  %cmp13.not.i = icmp eq i16 %47, -32767
  br i1 %cmp13.not.i, label %if.end17.i, label %if.end5.i.if.end12_crit_edge

if.end5.i.if.end12_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end17.i:                                       ; preds = %if.end5.i
  %oui.i = getelementptr inbounds %struct.brcmf_event, ptr %add.ptr.i.i, i32 0, i32 1, i32 3
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.49, ptr noundef dereferenceable(3) %oui.i, i32 3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool20.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end17.i.if.end12_crit_edge

if.end17.i.if.end12_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end22.i:                                       ; preds = %if.end17.i
  %usr_subtype.i = getelementptr inbounds %struct.brcmf_event, ptr %add.ptr.i.i, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %usr_subtype.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %usr_subtype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %49)
  %cmp26.not.i = icmp eq i16 %49, 1
  br i1 %cmp26.not.i, label %if.end29.i, label %if.end22.i.if.end12_crit_edge

if.end22.i.if.end12_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end29.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @brcmf_fweh_process_event(ptr noundef %37, ptr noundef %add.ptr.i.i, i32 noundef %add.i, i32 noundef %cond) #14
  br label %if.end12

if.end12:                                         ; preds = %if.end29.i, %if.end22.i.if.end12_crit_edge, %if.end17.i.if.end12_crit_edge, %if.end5.i.if.end12_crit_edge, %if.end.i28.if.end12_crit_edge, %if.then9.if.end12_crit_edge, %if.else.if.end12_crit_edge
  %50 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ifp, align 4
  call void @brcmf_netif_rx(ptr noundef %51, ptr noundef %skb, i1 noundef zeroext %inirq)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then6, %brcmf_rx_hdrpull.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_rx_event(ptr nocapture noundef readonly %dev, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  %ifp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ifp) #14
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr1, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 1024, ptr noundef nonnull @__func__.brcmf_rx_event, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i, ptr noundef %skb) #14
  %8 = ptrtoint ptr %ifp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ifp, align 4
  %proto.i.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %proto.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i.i = call i32 %12(ptr noundef %3, i1 noundef zeroext true, ptr noundef %skb, ptr noundef nonnull %ifp) #14
  %13 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call.i.i, label %dev_name.exit.land.lhs.true.i_crit_edge [
    i32 0, label %lor.lhs.false.i
    i32 -61, label %dev_name.exit.cleanup_crit_edge
  ]

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

dev_name.exit.land.lhs.true.i_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %dev_name.exit
  %14 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ifp, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %ndev.i = getelementptr inbounds %struct.brcmf_if, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.land.lhs.true.i_crit_edge, label %if.end

lor.lhs.false2.i.land.lhs.true.i_crit_edge:       ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false2.i.land.lhs.true.i_crit_edge, %dev_name.exit.land.lhs.true.i_crit_edge
  %18 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i = load ptr, ptr %ifp, align 4
  %tobool4.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %ndev6.i = getelementptr inbounds %struct.brcmf_if, ptr %.pr.i, i32 0, i32 2
  %19 = ptrtoint ptr %ndev6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev6.i, align 4
  %tobool7.not.i = icmp eq ptr %20, null
  br i1 %tobool7.not.i, label %land.lhs.true5.i.cleanup_crit_edge, label %if.then8.i

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 4
  %21 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  %call12.i = call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef nonnull %17) #14
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %23 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %call12.i, ptr %protocol.i, align 8
  %24 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ifp, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30612, i16 %call12.i)
  %cmp.not.i = icmp eq i16 %call12.i, -30612
  br i1 %cmp.not.i, label %if.end.i14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i14:                                       ; preds = %if.end
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  %add.i = add i32 %29, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %add.i)
  %cmp2.i = icmp ult i32 %add.i, 72
  br i1 %cmp2.i, label %if.end.i14.cleanup_crit_edge, label %if.end5.i

if.end.i14.cleanup_crit_edge:                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i14
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %32 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %33 to i32
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %conv.i.i
  %oui.i = getelementptr inbounds %struct.brcmf_event, ptr %add.ptr.i.i, i32 0, i32 1, i32 3
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @.str.49, ptr noundef dereferenceable(3) %oui.i, i32 3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool20.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22.i:                                       ; preds = %if.end5.i
  %usr_subtype.i = getelementptr inbounds %struct.brcmf_event, ptr %add.ptr.i.i, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %usr_subtype.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %usr_subtype.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %35)
  %cmp26.not.i = icmp eq i16 %35, 1
  br i1 %cmp26.not.i, label %if.end29.i, label %if.end22.i.cleanup_crit_edge

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @brcmf_fweh_process_event(ptr noundef %27, ptr noundef %add.ptr.i.i, i32 noundef %add.i, i32 noundef 3264) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end29.i, %if.end22.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then8.i, %land.lhs.true5.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  call void @brcmu_pkt_buf_free_skb(ptr noundef %skb) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ifp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_txfinalize(ptr noundef %ifp, ptr noundef %txp, i1 noundef zeroext %success) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %txp, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %3)
  %cmp = icmp eq i16 %3, -30578
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %pend_8021x_cnt = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pend_8021x_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pend_8021x_cnt, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pend_8021x_cnt, ptr %pend_8021x_cnt, i32 1, ptr elementtype(i32) %pend_8021x_cnt) #14, !srcloc !345
  %head.i = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %6, %head.i
  br i1 %cmp.i.i.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %pend_8021x_wait = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %pend_8021x_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  br i1 %success, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %ndev = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 2
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 36, i32 5
  %9 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tx_errors, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %txp) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_net_attach(ptr noundef %ifp, i1 noundef zeroext %locked) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %bsscfgidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 7
  %2 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bsscfgidx, align 4
  %mac_addr = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 8
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_net_attach, ptr noundef nonnull @.str.18, i32 noundef %3, ptr noundef %mac_addr) #14
  %ndev2 = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 2
  %4 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev2, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @brcmf_netdev_ops_pri, ptr %netdev_ops, align 8
  %hdrlen = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hdrlen, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 21
  %9 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %needed_headroom, align 8
  %11 = trunc i32 %8 to i16
  %conv3 = add i16 %10, %11
  store i16 %conv3, ptr %needed_headroom, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 44
  %12 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @brcmf_ethtool_ops, ptr %ethtool_ops, align 16
  tail call void @dev_addr_mod(ptr noundef %5, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #14
  %config = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %_net.i = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 62
  %17 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_net.i, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 127
  %19 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %nd_net.i, align 4
  %multicast_work = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 3
  tail call void @__init_work(ptr noundef %multicast_work, i32 noundef 0) #14
  %20 = ptrtoint ptr %multicast_work to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %multicast_work, align 4
  %lockdep_map = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @brcmf_net_attach.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry11 = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 3, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @_brcmf_set_multicast_list, ptr %func, align 4
  %ndoffload_work = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 4
  tail call void @__init_work(ptr noundef %ndoffload_work, i32 noundef 0) #14
  %24 = ptrtoint ptr %ndoffload_work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %ndoffload_work, align 4
  %lockdep_map21 = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map21, ptr noundef nonnull @.str.21, ptr noundef nonnull @brcmf_net_attach.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry23 = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i75 = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 4, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry23, ptr %prev.i75, align 4
  %func25 = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %func25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @_brcmf_update_ndtable, ptr %func25, align 4
  br i1 %locked, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call28 = tail call i32 @cfg80211_register_netdevice(ptr noundef %5) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call i32 @register_netdev(ptr noundef %5) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call28, %if.then ], [ %call29, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp.not = icmp eq i32 %err.0, 0
  br i1 %cmp.not, label %if.end38, label %do.end35

do.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.brcmf_net_attach) #17
  %30 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bsscfgidx, align 4
  %arrayidx = getelementptr %struct.brcmf_pub, ptr %1, i32 0, i32 9, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %netdev_ops, align 8
  br label %cleanup

if.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_off(ptr noundef %5) #14
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 125
  %34 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @brcmf_cfg80211_free_netdev, ptr %priv_destructor, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_net_attach, ptr noundef nonnull @.str.23, ptr noundef %5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end35
  %retval.0 = phi i32 [ -52, %do.end35 ], [ 0, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_brcmf_set_multicast_list(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %bsscfgidx = getelementptr i8, ptr %work, i32 96
  %2 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bsscfgidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__._brcmf_set_multicast_list, ptr noundef nonnull @.str.50, i32 noundef %3) #14
  %ndev2 = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev2, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = lshr i32 %7, 9
  %and.lobit = and i32 %and, 1
  %mc = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 66, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 8
  %mul = mul i32 %9, 6
  %add = add i32 %mul, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #19
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call9.i, align 128
  %12 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0126 = load ptr, ptr %mc, align 4
  %cmp.not127 = icmp eq ptr %ha.0126, %mc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not128 = icmp eq i32 %9, 0
  %or.cond129 = select i1 %cmp.not127, i1 true, i1 %tobool12.not128
  br i1 %or.cond129, label %if.end.for.end_crit_edge, label %if.end14.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end14.preheader:                               ; preds = %if.end
  %add.ptr4 = getelementptr i8, ptr %call9.i, i32 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14.if.end14_crit_edge, %if.end14.preheader
  %ha.0132 = phi ptr [ %ha.0, %if.end14.if.end14_crit_edge ], [ %ha.0126, %if.end14.preheader ]
  %bufp.0131 = phi ptr [ %add.ptr15, %if.end14.if.end14_crit_edge ], [ %add.ptr4, %if.end14.preheader ]
  %cnt.0130 = phi i32 [ %dec, %if.end14.if.end14_crit_edge ], [ %9, %if.end14.preheader ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0132, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %bufp.0131, ptr %addr, i32 6)
  %add.ptr15 = getelementptr i8, ptr %bufp.0131, i32 6
  %dec = add i32 %cnt.0130, -1
  %14 = ptrtoint ptr %ha.0132 to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0 = load ptr, ptr %ha.0132, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool12.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end14.for.end_crit_edge, label %if.end14.if.end14_crit_edge

if.end14.if.end14_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.end.for.end_crit_edge
  %tobool12.not.lcssa = phi i1 [ %tobool12.not128, %if.end.for.end_crit_edge ], [ %tobool12.not, %if.end14.for.end_crit_edge ]
  %call21 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %add.ptr, ptr noundef nonnull @.str.65, ptr noundef nonnull %call9.i, i32 noundef %add) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end27, label %for.end.if.end32_crit_edge

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

do.end27:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__._brcmf_set_multicast_list, i32 noundef %call21) #17
  %spec.select = select i1 %tobool12.not.lcssa, i32 %and.lobit, i32 1
  br label %if.end32

if.end32:                                         ; preds = %do.end27, %for.end.if.end32_crit_edge
  %cmd_value.0 = phi i32 [ %spec.select, %do.end27 ], [ %and.lobit, %for.end.if.end32_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  %call33 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %add.ptr, ptr noundef nonnull @.str.67, i32 noundef %cmd_value.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end39, label %if.end32.if.end44_crit_edge

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy40 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %wiphy40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy40, align 4
  %dev41 = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__._brcmf_set_multicast_list, i32 noundef %call33) #17
  br label %if.end44

if.end44:                                         ; preds = %do.end39, %if.end32.if.end44_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 8
  %and46 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %not.tobool47.not = xor i1 %tobool47.not, true
  %cond48 = zext i1 %not.tobool47.not to i32
  %call49 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %add.ptr, i32 noundef 10, i32 noundef %cond48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end44.if.end74_crit_edge

if.end44.if.end74_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -52, i32 %call49)
  %cmp52 = icmp eq i32 %call49, -52
  br i1 %cmp52, label %do.body54, label %do.end68

do.body54:                                        ; preds = %if.then51
  %.b122 = load i1, ptr @_brcmf_set_multicast_list.__print_once, align 1
  br i1 %.b122, label %do.body54.if.end74_crit_edge, label %if.then56

do.body54.if.end74_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then56:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @_brcmf_set_multicast_list.__print_once, align 1
  %wiphy60 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %wiphy60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy60, align 4
  %dev61 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__._brcmf_set_multicast_list) #17
  br label %if.end74

do.end68:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy69 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %wiphy69 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy69, align 4
  %dev70 = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__._brcmf_set_multicast_list, i32 noundef %call49) #17
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.then56, %do.body54.if.end74_crit_edge, %if.end44.if.end74_crit_edge
  tail call void @brcmf_configure_arp_nd_offload(ptr noundef %add.ptr, i1 noundef zeroext %tobool47.not)
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_brcmf_update_ndtable(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %add.ptr, ptr noundef nonnull @.str.78, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.body

for.cond.preheader:                               ; preds = %entry
  %ipv6addr_idx = getelementptr i8, ptr %work, i32 292
  %2 = ptrtoint ptr %ipv6addr_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ipv6addr_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp26.not = icmp eq i8 %3, 0
  br i1 %cmp26.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ipv6_addr_tbl = getelementptr i8, ptr %work, i32 164
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  br label %for.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__._brcmf_update_ndtable, ptr noundef nonnull @.str.79, i32 noundef %call) #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.in6_addr], ptr %ipv6_addr_tbl, i32 0, i32 %i.027
  %call3 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %add.ptr, ptr noundef nonnull @.str.80, ptr noundef %arrayidx, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %do.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__._brcmf_update_ndtable, i32 noundef %call3) #17
  br label %for.inc

for.inc:                                          ; preds = %do.end9, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %6 = ptrtoint ptr %ipv6addr_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ipv6addr_idx, align 4
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_register_netdevice(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_cfg80211_free_netdev(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_net_detach(ptr noundef %ndev, i1 noundef zeroext %locked) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_state = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 121
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 1
  br i1 %cmp, label %if.then, label %if.else2

if.then:                                          ; preds = %entry
  br i1 %locked, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 82
  %1 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ieee80211_ptr.i, align 16
  tail call void @cfg80211_unregister_wdev(ptr noundef %2) #14
  br label %if.end3

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_netdev(ptr noundef %ndev) #14
  br label %if.end3

if.else2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %ndev) #14
  tail call void @free_netdev(ptr noundef %ndev) #14
  br label %if.end3

if.end3:                                          ; preds = %if.else2, %if.else, %if.then1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_net_mon_attach(ptr nocapture noundef readonly %ifp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_net_mon_attach, ptr noundef nonnull @.str.24) #14
  %ndev2 = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 2
  %2 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @brcmf_netdev_ops_mon, ptr %netdev_ops, align 8
  %call = tail call i32 @cfg80211_register_netdevice(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end6

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.brcmf_net_mon_attach, ptr noundef %3) #17
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_net_setcarrier(ptr noundef %ifp, i1 noundef zeroext %on) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bsscfgidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 7
  %0 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bsscfgidx, align 4
  %conv = zext i1 %on to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_net_setcarrier, ptr noundef nonnull @.str.26, i32 noundef %1, i32 noundef %conv) #14
  %ndev1 = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 2
  %2 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1, align 4
  %lnot = xor i1 %on, true
  tail call void @brcmf_txflowblock_if(ptr noundef %ifp, i32 noundef 4, i1 noundef zeroext %lnot)
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.if.end8_crit_edge, label %if.then4

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_on(ptr noundef %3) #14
  br label %if.end8

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then6, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_off(ptr noundef %3) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.else.if.end8_crit_edge, %if.then4, %if.then.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_add_if(ptr noundef %drvr, i32 noundef %bsscfgidx, i32 noundef %ifidx, i1 noundef zeroext %is_p2pdev, ptr noundef %name, ptr noundef readonly %mac_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_add_if, ptr noundef nonnull @.str.27, i32 noundef %bsscfgidx, i32 noundef %ifidx) #14
  %arrayidx = getelementptr %struct.brcmf_pub, ptr %drvr, i32 0, i32 9, i32 %bsscfgidx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifidx)
  %tobool1.not = icmp eq i32 %ifidx, 0
  br i1 %tobool1.not, label %do.body15, label %do.end6

do.end6:                                          ; preds = %if.then
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 2
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56
  %ndev7 = getelementptr inbounds %struct.brcmf_if, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ndev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.brcmf_add_if, ptr noundef %5) #17
  %6 = ptrtoint ptr %ndev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev7, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %10 = ptrtoint ptr %ndev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev7, align 4
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 121
  %12 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp eq i8 %bf.load.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.else2.i

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_netdev(ptr noundef %11) #14
  br label %brcmf_net_detach.exit

if.else2.i:                                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %11) #14
  tail call void @free_netdev(ptr noundef %11) #14
  br label %brcmf_net_detach.exit

brcmf_net_detach.exit:                            ; preds = %if.else2.i, %if.then.i
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end21

do.body15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %ndev16 = getelementptr inbounds %struct.brcmf_if, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %ndev16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev16, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_add_if, ptr noundef nonnull @.str.29, ptr noundef %15) #14
  br label %cleanup

if.end21:                                         ; preds = %brcmf_net_detach.exit, %entry.if.end21_crit_edge
  %settings = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 22
  %16 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %settings, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4, !range !344
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool22.not = icmp eq i8 %19, 0
  %20 = and i1 %tobool22.not, %is_p2pdev
  br i1 %20, label %do.body25, label %do.body34

do.body25:                                        ; preds = %if.end21
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_add_if, ptr noundef nonnull @.str.30) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 352) #20
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %do.body25.cleanup_crit_edge, label %do.body25.if.end50_crit_edge

do.body25.if.end50_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body34:                                        ; preds = %if.end21
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_add_if, ptr noundef nonnull @.str.31) #14
  %spec.select = select i1 %is_p2pdev, ptr @.str.32, ptr %name
  %call38 = tail call ptr @alloc_netdev_mqs(i32 noundef 352, ptr noundef %spec.select, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef 1, i32 noundef 1) #14
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.body34.cleanup_crit_edge, label %if.end42

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end42:                                         ; preds = %do.body34
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %call38, i32 0, i32 124
  %22 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %needs_free_netdev, align 8
  %add.ptr.i = getelementptr i8, ptr %call38, i32 2304
  %ndev44 = getelementptr i8, ptr %call38, i32 2312
  %23 = ptrtoint ptr %ndev44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call38, ptr %ndev44, align 4
  %arrayidx45 = getelementptr %struct.brcmf_pub, ptr %drvr, i32 0, i32 10, i32 %ifidx
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp = icmp eq i32 %25, -1
  br i1 %cmp, label %if.then46, label %if.end42.if.end50_crit_edge

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %bsscfgidx, ptr %arrayidx45, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end42.if.end50_crit_edge, %do.body25.if.end50_crit_edge
  %ifp.0 = phi ptr [ %add.ptr.i, %if.then46 ], [ %add.ptr.i, %if.end42.if.end50_crit_edge ], [ %call7.i.i, %do.body25.if.end50_crit_edge ]
  %27 = ptrtoint ptr %ifp.0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %drvr, ptr %ifp.0, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ifp.0, ptr %arrayidx, align 4
  %ifidx54 = getelementptr inbounds %struct.brcmf_if, ptr %ifp.0, i32 0, i32 6
  %29 = ptrtoint ptr %ifidx54 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %ifidx, ptr %ifidx54, align 4
  %bsscfgidx55 = getelementptr inbounds %struct.brcmf_if, ptr %ifp.0, i32 0, i32 7
  %30 = ptrtoint ptr %bsscfgidx55 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bsscfgidx, ptr %bsscfgidx55, align 4
  %pend_8021x_wait = getelementptr inbounds %struct.brcmf_if, ptr %ifp.0, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %pend_8021x_wait, ptr noundef nonnull @.str.33, ptr noundef nonnull @brcmf_add_if.__key) #14
  %netif_stop_lock = getelementptr inbounds %struct.brcmf_if, ptr %ifp.0, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %netif_stop_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @brcmf_add_if.__key.34, i16 noundef signext 3) #14
  %cmp63.not = icmp eq ptr %mac_addr, null
  br i1 %cmp63.not, label %if.end50.do.body68_crit_edge, label %if.then64

if.end50.do.body68_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body68

if.then64:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %mac_addr65 = getelementptr inbounds %struct.brcmf_if, ptr %ifp.0, i32 0, i32 8
  %31 = call ptr @memcpy(ptr %mac_addr65, ptr %mac_addr, i32 6)
  br label %do.body68

do.body68:                                        ; preds = %if.then64, %if.end50.do.body68_crit_edge
  %32 = tail call i32 @llvm.read_register.i32(metadata !334) #14
  %and.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid, align 8
  %mac_addr70 = getelementptr inbounds %struct.brcmf_if, ptr %ifp.0, i32 0, i32 8
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_add_if, ptr noundef nonnull @.str.36, i32 noundef %37, ptr noundef %name, ptr noundef %mac_addr70) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body68, %do.body34.cleanup_crit_edge, %do.body25.cleanup_crit_edge, %do.body15
  %retval.0 = phi ptr [ %ifp.0, %do.body68 ], [ inttoptr (i32 -22 to ptr), %do.body15 ], [ inttoptr (i32 -12 to ptr), %do.body25.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.body34.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_remove_interface(ptr noundef %ifp, i1 noundef zeroext %locked) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ifp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %bsscfgidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 7
  %2 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bsscfgidx, align 4
  %arrayidx = getelementptr %struct.brcmf_pub, ptr %1, i32 0, i32 9, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %5, %ifp
  br i1 %cmp.not, label %do.body23.critedge, label %do.end, !prof !346

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 966, i32 noundef 9, ptr noundef null) #14
  br label %return

do.body23.critedge:                               ; preds = %lor.lhs.false
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %6 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_remove_interface, ptr noundef nonnull @.str.27, i32 noundef %3, i32 noundef %7) #14
  %8 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ifp, align 4
  %proto.i = getelementptr inbounds %struct.brcmf_pub, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proto.i, align 4
  %del_if.i = getelementptr inbounds %struct.brcmf_proto, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %del_if.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %del_if.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.body23.critedge.brcmf_proto_del_if.exit_crit_edge, label %if.end.i

do.body23.critedge.brcmf_proto_del_if.exit_crit_edge: ; preds = %do.body23.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_proto_del_if.exit

if.end.i:                                         ; preds = %do.body23.critedge
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %13(ptr noundef nonnull %ifp) #14
  br label %brcmf_proto_del_if.exit

brcmf_proto_del_if.exit:                          ; preds = %if.end.i, %do.body23.critedge.brcmf_proto_del_if.exit_crit_edge
  %14 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ifp, align 4
  %16 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bsscfgidx, align 4
  %arrayidx.i = getelementptr %struct.brcmf_pub, ptr %15, i32 0, i32 9, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i41 = icmp eq ptr %19, null
  br i1 %tobool.not.i41, label %do.end.i, label %do.body4.i

do.end.i:                                         ; preds = %brcmf_proto_del_if.exit
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i32 noundef %17) #17
  br label %return

do.body4.i:                                       ; preds = %brcmf_proto_del_if.exit
  %ifidx5.i = getelementptr inbounds %struct.brcmf_if, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %ifidx5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifidx5.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.27, i32 noundef %17, i32 noundef %23) #14
  %24 = ptrtoint ptr %ifidx5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifidx5.i, align 4
  %ndev.i = getelementptr inbounds %struct.brcmf_if, ptr %19, i32 0, i32 2
  %26 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndev.i, align 4
  %tobool9.not.i = icmp eq ptr %27, null
  br i1 %tobool9.not.i, label %if.else28.i, label %if.then10.i

if.then10.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.then10.i
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev_ops.i, align 8
  %cmp13.i = icmp eq ptr %29, @brcmf_netdev_ops_pri
  br i1 %cmp13.i, label %if.then14.i, label %if.then11.i.if.end18.i_crit_edge

if.then11.i.if.end18.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rtnl_lock() #14
  %30 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev.i, align 4
  %call.i = tail call i32 @brcmf_netdev_stop(ptr noundef %31) #14
  tail call void @rtnl_unlock() #14
  br label %if.end18.i

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 103
  %32 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %33, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #14
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then14.i, %if.then11.i.if.end18.i_crit_edge
  %34 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev.i, align 4
  %netdev_ops20.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %netdev_ops20.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev_ops20.i, align 8
  %cmp21.i = icmp eq ptr %37, @brcmf_netdev_ops_pri
  br i1 %cmp21.i, label %if.then22.i, label %if.end18.i.if.end25.i_crit_edge

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  %multicast_work.i = getelementptr inbounds %struct.brcmf_if, ptr %19, i32 0, i32 3
  %call23.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %multicast_work.i) #14
  %ndoffload_work.i = getelementptr inbounds %struct.brcmf_if, ptr %19, i32 0, i32 4
  %call24.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ndoffload_work.i) #14
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end25.i_crit_edge
  %38 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev.i, align 4
  %reg_state.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 121
  %40 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i.i = icmp eq i8 %bf.load.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else2.i.i

if.then.i.i:                                      ; preds = %if.end25.i
  br i1 %locked, label %if.then1.i.i, label %if.else.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ieee80211_ptr.i.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 82
  %41 = ptrtoint ptr %ieee80211_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ieee80211_ptr.i.i.i, align 16
  tail call void @cfg80211_unregister_wdev(ptr noundef %42) #14
  br label %if.end30.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_netdev(ptr noundef %39) #14
  br label %if.end30.i

if.else2.i.i:                                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %39) #14
  tail call void @free_netdev(ptr noundef %39) #14
  br label %if.end30.i

if.else28.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_p2p_ifp_removed(ptr noundef nonnull %19, i1 noundef zeroext %locked) #14
  tail call void @kfree(ptr noundef nonnull %19) #14
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else28.i, %if.else2.i.i, %if.else.i.i, %if.then1.i.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx.i, align 4
  %arrayidx33.i = getelementptr %struct.brcmf_pub, ptr %15, i32 0, i32 10, i32 %25
  %44 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %17)
  %cmp34.i = icmp eq i32 %45, %17
  br i1 %cmp34.i, label %if.then35.i, label %if.end30.i.return_crit_edge

if.end30.i.return_crit_edge:                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then35.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %arrayidx33.i, align 4
  br label %return

return:                                           ; preds = %if.then35.i, %if.end30.i.return_crit_edge, %do.end.i, %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_alloc(ptr noundef %dev, ptr noundef %settings) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_alloc, ptr noundef nonnull @.str.24) #14
  %call = tail call ptr @brcmf_cfg80211_get_ops(ptr noundef %settings) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @wiphy_new_nm(ptr noundef nonnull %call, i32 noundef 10672, ptr noundef null) #14
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then3, label %wiphy_priv.exit

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call) #14
  br label %cleanup

wiphy_priv.exit:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 56, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent.i, align 8
  %priv.i = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 0, i32 86
  %wiphy6 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %wiphy6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %wiphy6, align 4
  %ops7 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %ops7, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv.i, align 4
  %drvr10 = getelementptr inbounds %struct.brcmf_bus, ptr %4, i32 0, i32 3
  %6 = ptrtoint ptr %drvr10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %priv.i, ptr %drvr10, align 4
  %settings11 = getelementptr inbounds %struct.wiphy, ptr %call.i, i32 8, i32 56, i32 9, i32 1, i32 1
  %7 = ptrtoint ptr %settings11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %settings, ptr %settings11, align 4
  br label %cleanup

cleanup:                                          ; preds = %wiphy_priv.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %wiphy_priv.exit ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_cfg80211_get_ops(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_attach(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr1, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_attach, ptr noundef nonnull @.str.24) #14
  %uglygep = getelementptr i8, ptr %3, i32 224
  %4 = call ptr @memset(ptr %uglygep, i32 255, i32 64)
  %proto_block = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %proto_block, ptr noundef nonnull @.str.37, ptr noundef nonnull @brcmf_attach.__key) #14
  %hdrlen = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %hdrlen, align 4
  %call5 = tail call i32 @brcmf_proto_attach(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end, label %do.end10

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 4
  %dev11 = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.brcmf_attach) #17
  br label %fail

if.end:                                           ; preds = %entry
  %call14 = tail call i32 @brcmf_fweh_register(ptr noundef %3, i32 noundef 41, ptr noundef nonnull @brcmf_psm_watchdog_notify) #14
  tail call void @brcmf_fweh_attach(ptr noundef %3) #14
  %ops = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_bus_started, ptr noundef nonnull @.str.96) #14
  %call.i = tail call ptr @brcmf_add_if(ptr noundef %3, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull @.str.97, ptr noundef null) #14
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %brcmf_bus_started.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %drvr1.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %drvr1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drvr1.i.i, align 4
  %state2.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %state2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state2.i.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_bus_change_state, ptr noundef nonnull @.str.47, i32 noundef %15, i32 noundef 1) #14
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %do.body3.i.i, label %if.end.i.i

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_bus_change_state, ptr noundef nonnull @.str.48) #14
  br label %brcmf_bus_change_state.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %state2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state2.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %ifidx.039.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i ]
  %arrayidx.i.i = getelementptr %struct.brcmf_pub, ptr %13, i32 0, i32 9, i32 %ifidx.039.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %ndev12.i.i = getelementptr inbounds %struct.brcmf_if, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ndev12.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %20, null
  br i1 %tobool13.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then14.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then14.i.i:                                    ; preds = %land.lhs.true.i.i
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i.i.i, align 128
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %if.then14.i.i.for.inc.i.i_crit_edge, label %if.then18.i.i

if.then14.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then18.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_tx_wake_queue(ptr noundef %22) #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then18.i.i, %if.then14.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %ifidx.039.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc.i.i.brcmf_bus_change_state.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.brcmf_bus_change_state.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_bus_change_state.exit.i

brcmf_bus_change_state.exit.i:                    ; preds = %for.inc.i.i.brcmf_bus_change_state.exit.i_crit_edge, %do.body3.i.i
  %ops.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %11, i32 0, i32 11
  %25 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool.not.i135.i = icmp eq ptr %28, null
  br i1 %tobool.not.i135.i, label %brcmf_bus_change_state.exit.i.if.end6.i_crit_edge, label %brcmf_bus_preinit.exit.i

brcmf_bus_change_state.exit.i.if.end6.i_crit_edge: ; preds = %brcmf_bus_change_state.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

brcmf_bus_preinit.exit.i:                         ; preds = %brcmf_bus_change_state.exit.i
  %dev.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %11, i32 0, i32 2
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = tail call i32 %28(ptr noundef %30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %brcmf_bus_preinit.exit.i.do.end60.i_crit_edge, label %brcmf_bus_preinit.exit.i.if.end6.i_crit_edge

brcmf_bus_preinit.exit.i.if.end6.i_crit_edge:     ; preds = %brcmf_bus_preinit.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

brcmf_bus_preinit.exit.i.do.end60.i_crit_edge:    ; preds = %brcmf_bus_preinit.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i

if.end6.i:                                        ; preds = %brcmf_bus_preinit.exit.i.if.end6.i_crit_edge, %brcmf_bus_change_state.exit.i.if.end6.i_crit_edge
  %call7.i = tail call i32 @brcmf_c_preinit_dcmds(ptr noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end6.i.do.end60.i_crit_edge, label %if.end10.i

if.end6.i.do.end60.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i

if.end10.i:                                       ; preds = %if.end6.i
  tail call void @brcmf_feat_attach(ptr noundef %3) #14
  %proto.i.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %proto.i.i, align 4
  %init_done.i.i = getelementptr inbounds %struct.brcmf_proto, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %init_done.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_done.i.i, align 4
  %tobool.not.i137.i = icmp eq ptr %34, null
  br i1 %tobool.not.i137.i, label %if.end10.i.if.end14.i_crit_edge, label %brcmf_proto_init_done.exit.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

brcmf_proto_init_done.exit.i:                     ; preds = %if.end10.i
  %call.i138.i = tail call i32 %34(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i)
  %cmp12.i = icmp slt i32 %call.i138.i, 0
  br i1 %cmp12.i, label %brcmf_proto_init_done.exit.i.do.end60.i_crit_edge, label %brcmf_proto_init_done.exit.i.if.end14.i_crit_edge

brcmf_proto_init_done.exit.i.if.end14.i_crit_edge: ; preds = %brcmf_proto_init_done.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

brcmf_proto_init_done.exit.i.do.end60.i_crit_edge: ; preds = %brcmf_proto_init_done.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i

if.end14.i:                                       ; preds = %brcmf_proto_init_done.exit.i.if.end14.i_crit_edge, %if.end10.i.if.end14.i_crit_edge
  %35 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %proto.i.i, align 4
  %add_if.i.i = getelementptr inbounds %struct.brcmf_proto, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %add_if.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add_if.i.i, align 4
  %tobool.not.i142.i = icmp eq ptr %38, null
  br i1 %tobool.not.i142.i, label %if.end14.i.brcmf_proto_add_if.exit.i_crit_edge, label %if.end.i143.i

if.end14.i.brcmf_proto_add_if.exit.i_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_proto_add_if.exit.i

if.end.i143.i:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %38(ptr noundef %call.i) #14
  br label %brcmf_proto_add_if.exit.i

brcmf_proto_add_if.exit.i:                        ; preds = %if.end.i143.i, %if.end14.i.brcmf_proto_add_if.exit.i_crit_edge
  %settings.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 22
  %39 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %settings.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4, !range !344
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.i = icmp ne i8 %42, 0
  %call15.i = tail call ptr @brcmf_cfg80211_attach(ptr noundef %3, ptr noundef %9, i1 noundef zeroext %tobool.i) #14
  %config.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 4
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call15.i, ptr %config.i, align 4
  %cmp17.i = icmp eq ptr %call15.i, null
  br i1 %cmp17.i, label %brcmf_proto_add_if.exit.i.do.end60.i_crit_edge, label %if.end19.i

brcmf_proto_add_if.exit.i.do.end60.i_crit_edge:   ; preds = %brcmf_proto_add_if.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i

if.end19.i:                                       ; preds = %brcmf_proto_add_if.exit.i
  %call20.i = tail call i32 @brcmf_net_attach(ptr noundef %call.i, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true.i, label %if.end19.i.do.end60.i_crit_edge

if.end19.i.do.end60.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %44 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %settings.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 4, !range !344
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool24.not.i = icmp eq i8 %47, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i.if.end33.i_crit_edge, label %if.then25.i

land.lhs.true.i.if.end33.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 1
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %tobool26.not.i = icmp eq ptr %49, null
  br i1 %tobool26.not.i, label %if.then25.i.if.end33.i_crit_edge, label %if.then27.i

if.then25.i.if.end33.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then27.i:                                      ; preds = %if.then25.i
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %bsscfgidx.i.i = getelementptr inbounds %struct.brcmf_if, ptr %49, i32 0, i32 7
  %52 = ptrtoint ptr %bsscfgidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bsscfgidx.i.i, align 4
  %mac_addr.i.i = getelementptr inbounds %struct.brcmf_if, ptr %49, i32 0, i32 8
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_net_p2p_attach, ptr noundef nonnull @.str.18, i32 noundef %53, ptr noundef %mac_addr.i.i) #14
  %ndev2.i.i = getelementptr inbounds %struct.brcmf_if, ptr %49, i32 0, i32 2
  %54 = ptrtoint ptr %ndev2.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ndev2.i.i, align 4
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @brcmf_netdev_ops_p2p, ptr %netdev_ops.i.i, align 8
  tail call void @dev_addr_mod(ptr noundef %55, i32 noundef 0, ptr noundef %mac_addr.i.i, i32 noundef 6) #14
  %call.i144.i = tail call i32 @register_netdev(ptr noundef %55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.i)
  %cmp.not.i.i = icmp eq i32 %call.i144.i, 0
  br i1 %cmp.not.i.i, label %do.body11.i.i, label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy.i.i = getelementptr inbounds %struct.brcmf_pub, ptr %51, i32 0, i32 2
  %57 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wiphy.i.i, align 4
  %dev.i145.i = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i145.i, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.brcmf_net_p2p_attach) #17
  %59 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %49, align 4
  %61 = ptrtoint ptr %bsscfgidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bsscfgidx.i.i, align 4
  %arrayidx.i146.i = getelementptr %struct.brcmf_pub, ptr %60, i32 0, i32 9, i32 %62
  %63 = ptrtoint ptr %arrayidx.i146.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx.i146.i, align 4
  %64 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %netdev_ops.i.i, align 8
  br label %do.end60.i

do.body11.i.i:                                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_net_p2p_attach, ptr noundef nonnull @.str.23, ptr noundef %55) #14
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.body11.i.i, %if.then25.i.if.end33.i_crit_edge, %land.lhs.true.i.if.end33.i_crit_edge
  %p2p_ifp.0.ph.i = phi ptr [ %49, %do.body11.i.i ], [ null, %land.lhs.true.i.if.end33.i_crit_edge ], [ null, %if.then25.i.if.end33.i_crit_edge ]
  %inetaddr_notifier.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 20
  %65 = ptrtoint ptr %inetaddr_notifier.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @brcmf_inetaddr_changed, ptr %inetaddr_notifier.i, align 4
  %call35.i = tail call i32 @register_inetaddr_notifier(ptr noundef %inetaddr_notifier.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end33.i.do.end60.i_crit_edge

if.end33.i.do.end60.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i

if.end38.i:                                       ; preds = %if.end33.i
  %inet6addr_notifier.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 21
  %66 = ptrtoint ptr %inet6addr_notifier.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @brcmf_inet6addr_changed, ptr %inet6addr_notifier.i, align 4
  %call41.i = tail call i32 @register_inet6addr_notifier(ptr noundef %inet6addr_notifier.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %do.body47.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  %call45.i = tail call i32 @unregister_inetaddr_notifier(ptr noundef %inetaddr_notifier.i) #14
  br label %do.end60.i

do.body47.i:                                      ; preds = %if.end38.i
  %bus_reset.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 23
  tail call void @__init_work(ptr noundef %bus_reset.i, i32 noundef 0) #14
  %67 = ptrtoint ptr %bus_reset.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -64, ptr %bus_reset.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 23, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @brcmf_bus_started.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry51.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 23, i32 1
  %68 = ptrtoint ptr %entry51.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %entry51.i, ptr %entry51.i, align 4
  %prev.i.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 23, i32 1, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %entry51.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 23, i32 2
  %70 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @brcmf_core_bus_reset, ptr %func.i, align 4
  tail call void @brcmf_debugfs_add_entry(ptr noundef %3, ptr noundef nonnull @.str.99, ptr noundef nonnull @brcmf_revinfo_read) #14
  %call55.i = tail call ptr @brcmf_debugfs_get_devdir(ptr noundef %3) #14
  %call56.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.100, i16 noundef zeroext 384, ptr noundef %call55.i, ptr noundef %3, ptr noundef nonnull @bus_reset_fops) #14
  tail call void @brcmf_feat_debugfs_create(ptr noundef %3) #14
  %71 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %proto.i.i, align 4
  %debugfs_create.i.i = getelementptr inbounds %struct.brcmf_proto, ptr %72, i32 0, i32 13
  %73 = ptrtoint ptr %debugfs_create.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %debugfs_create.i.i, align 4
  tail call void %74(ptr noundef %3) #14
  %75 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i.i, align 4
  %debugfs_create.i150.i = getelementptr inbounds %struct.brcmf_bus_ops, ptr %76, i32 0, i32 10
  %77 = ptrtoint ptr %debugfs_create.i150.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %debugfs_create.i150.i, align 4
  %tobool.not.i151.i = icmp eq ptr %78, null
  br i1 %tobool.not.i151.i, label %do.body47.i.cleanup_crit_edge, label %if.end.i153.i

do.body47.i.cleanup_crit_edge:                    ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i153.i:                                    ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i152.i = getelementptr inbounds %struct.brcmf_bus, ptr %11, i32 0, i32 2
  %79 = ptrtoint ptr %dev.i152.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i152.i, align 4
  tail call void %78(ptr noundef %80) #14
  br label %cleanup

do.end60.i:                                       ; preds = %if.then43.i, %if.end33.i.do.end60.i_crit_edge, %do.end8.i.i, %if.end19.i.do.end60.i_crit_edge, %brcmf_proto_add_if.exit.i.do.end60.i_crit_edge, %brcmf_proto_init_done.exit.i.do.end60.i_crit_edge, %if.end6.i.do.end60.i_crit_edge, %brcmf_bus_preinit.exit.i.do.end60.i_crit_edge
  %ret.1.i = phi i32 [ %call.i.i, %brcmf_bus_preinit.exit.i.do.end60.i_crit_edge ], [ %call7.i, %if.end6.i.do.end60.i_crit_edge ], [ %call.i138.i, %brcmf_proto_init_done.exit.i.do.end60.i_crit_edge ], [ %call35.i, %if.end33.i.do.end60.i_crit_edge ], [ %call41.i, %if.then43.i ], [ -12, %brcmf_proto_add_if.exit.i.do.end60.i_crit_edge ], [ %call20.i, %if.end19.i.do.end60.i_crit_edge ], [ -52, %do.end8.i.i ]
  %p2p_ifp.1.i = phi ptr [ null, %brcmf_bus_preinit.exit.i.do.end60.i_crit_edge ], [ null, %if.end6.i.do.end60.i_crit_edge ], [ null, %brcmf_proto_init_done.exit.i.do.end60.i_crit_edge ], [ %p2p_ifp.0.ph.i, %if.end33.i.do.end60.i_crit_edge ], [ %p2p_ifp.0.ph.i, %if.then43.i ], [ null, %brcmf_proto_add_if.exit.i.do.end60.i_crit_edge ], [ null, %if.end19.i.do.end60.i_crit_edge ], [ %49, %do.end8.i.i ]
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %81 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %82, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.101, ptr noundef nonnull @__func__.brcmf_bus_started, i32 noundef %ret.1.i) #17
  %config63.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 4
  %83 = ptrtoint ptr %config63.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config63.i, align 4
  %tobool64.not.i = icmp eq ptr %84, null
  br i1 %tobool64.not.i, label %do.end60.i.if.end68.i_crit_edge, label %if.then65.i

do.end60.i.if.end68.i_crit_edge:                  ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68.i

if.then65.i:                                      ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_cfg80211_detach(ptr noundef nonnull %84) #14
  %85 = ptrtoint ptr %config63.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %config63.i, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then65.i, %do.end60.i.if.end68.i_crit_edge
  %ndev.i = getelementptr inbounds %struct.brcmf_if, ptr %call.i, i32 0, i32 2
  %86 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ndev.i, align 4
  %reg_state.i.i = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 121
  %88 = ptrtoint ptr %reg_state.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load.i.i = load i8, ptr %reg_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i.i)
  %cmp.i154.i = icmp eq i8 %bf.load.i.i, 1
  br i1 %cmp.i154.i, label %if.then.i.i, label %if.else2.i.i

if.then.i.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_netdev(ptr noundef %87) #14
  br label %brcmf_net_detach.exit.i

if.else2.i.i:                                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %87) #14
  tail call void @free_netdev(ptr noundef %87) #14
  br label %brcmf_net_detach.exit.i

brcmf_net_detach.exit.i:                          ; preds = %if.else2.i.i, %if.then.i.i
  %tobool69.not.i = icmp eq ptr %p2p_ifp.1.i, null
  br i1 %tobool69.not.i, label %brcmf_net_detach.exit.i.if.end72.i_crit_edge, label %if.then70.i

brcmf_net_detach.exit.i.if.end72.i_crit_edge:     ; preds = %brcmf_net_detach.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i

if.then70.i:                                      ; preds = %brcmf_net_detach.exit.i
  %ndev71.i = getelementptr inbounds %struct.brcmf_if, ptr %p2p_ifp.1.i, i32 0, i32 2
  %89 = ptrtoint ptr %ndev71.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ndev71.i, align 4
  %reg_state.i155.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 121
  %91 = ptrtoint ptr %reg_state.i155.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load.i156.i = load i8, ptr %reg_state.i155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i156.i)
  %cmp.i157.i = icmp eq i8 %bf.load.i156.i, 1
  br i1 %cmp.i157.i, label %if.then.i158.i, label %if.else2.i159.i

if.then.i158.i:                                   ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_netdev(ptr noundef %90) #14
  br label %if.end72.i

if.else2.i159.i:                                  ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %90) #14
  tail call void @free_netdev(ptr noundef %90) #14
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else2.i159.i, %if.then.i158.i, %brcmf_net_detach.exit.i.if.end72.i_crit_edge
  %iflist73.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 9
  %92 = ptrtoint ptr %iflist73.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %iflist73.i, align 4
  %arrayidx76.i = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 1
  %93 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %arrayidx76.i, align 4
  %settings77.i = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 22
  %94 = ptrtoint ptr %settings77.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %settings77.i, align 4
  %ignore_probe_fail.i = getelementptr inbounds %struct.brcmf_mp_device, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %ignore_probe_fail.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ignore_probe_fail.i, align 2, !range !344
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool78.not.i = icmp eq i8 %97, 0
  br i1 %tobool78.not.i, label %if.end72.i.do.end21_crit_edge, label %if.end72.i.cleanup_crit_edge

if.end72.i.cleanup_crit_edge:                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end72.i.do.end21_crit_edge:                    ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

brcmf_bus_started.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %98 = ptrtoint ptr %call.i to i32
  br label %do.end21

do.end21:                                         ; preds = %brcmf_bus_started.exit, %if.end72.i.do.end21_crit_edge
  %retval.0.i50 = phi i32 [ %98, %brcmf_bus_started.exit ], [ %ret.1.i, %if.end72.i.do.end21_crit_edge ]
  %wiphy22 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %99 = ptrtoint ptr %wiphy22 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wiphy22, align 4
  %dev23 = getelementptr inbounds %struct.wiphy, ptr %100, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.brcmf_attach, i32 noundef %retval.0.i50) #17
  br label %fail

fail:                                             ; preds = %do.end21, %do.end10
  %ret.0 = phi i32 [ %call5, %do.end10 ], [ %retval.0.i50, %do.end21 ]
  tail call void @brcmf_detach(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end72.i.cleanup_crit_edge, %if.end.i153.i, %do.body47.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %if.end72.i.cleanup_crit_edge ], [ 0, %do.body47.i.cleanup_crit_edge ], [ 0, %if.end.i153.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_proto_attach(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fweh_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_psm_watchdog_notify(ptr nocapture noundef readonly %ifp, ptr nocapture noundef readonly %evtmsg, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %bsscfgidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 7
  %2 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bsscfgidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_psm_watchdog_notify, ptr noundef nonnull @.str.91, i32 noundef %3) #14
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.brcmf_psm_watchdog_notify) #17
  %6 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ifp, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %datalen = getelementptr inbounds %struct.brcmf_event_msg, ptr %evtmsg, i32 0, i32 6
  %10 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %datalen, align 4
  %call = tail call i32 @brcmf_debug_create_memdump(ptr noundef %9, ptr noundef %data, i32 noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end12

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 4
  %dev14 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.brcmf_psm_watchdog_notify, i32 noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %do.end12, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_attach(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_detach(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr1, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_detach, ptr noundef nonnull @.str.24) #14
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %inetaddr_notifier = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 20
  %call2 = tail call i32 @unregister_inetaddr_notifier(ptr noundef %inetaddr_notifier) #14
  %inet6addr_notifier = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 21
  %call3 = tail call i32 @unregister_inet6addr_notifier(ptr noundef %inet6addr_notifier) #14
  %4 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvr1, align 4
  %state2.i = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state2.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_bus_change_state, ptr noundef nonnull @.str.47, i32 noundef %7, i32 noundef 0) #14
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body3.i, label %if.end.i

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_bus_change_state, ptr noundef nonnull @.str.48) #14
  br label %brcmf_bus_change_state.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %state2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state2.i, align 4
  br label %brcmf_bus_change_state.exit

brcmf_bus_change_state.exit:                      ; preds = %if.end.i, %do.body3.i
  %arrayidx = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 15
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %brcmf_bus_change_state.exit.for.inc_crit_edge, label %if.then5

brcmf_bus_change_state.exit.for.inc_crit_edge:    ; preds = %brcmf_bus_change_state.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then5:                                         ; preds = %brcmf_bus_change_state.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %10, i1 noundef zeroext false)
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %brcmf_bus_change_state.exit.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 14
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %12, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %12, i1 noundef zeroext false)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 13
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %14, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %14, i1 noundef zeroext false)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 12
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %16, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then5.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then5.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %16, i1 noundef zeroext false)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then5.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 11
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %18, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then5.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then5.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %18, i1 noundef zeroext false)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then5.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 10
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %20, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then5.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then5.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %20, i1 noundef zeroext false)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then5.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 9
  %21 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %22, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then5.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6

if.then5.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %22, i1 noundef zeroext false)
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then5.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 8
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %24, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then5.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.7

if.then5.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %24, i1 noundef zeroext false)
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then5.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 7
  %25 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp eq ptr %26, null
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then5.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.8

if.then5.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %26, i1 noundef zeroext false)
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then5.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 6
  %27 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.9 = icmp eq ptr %28, null
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then5.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.9

if.then5.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %28, i1 noundef zeroext false)
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then5.9, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 5
  %29 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.10, align 4
  %tobool.not.10 = icmp eq ptr %30, null
  br i1 %tobool.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then5.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.10

if.then5.10:                                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %30, i1 noundef zeroext false)
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then5.10, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 4
  %31 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.11, align 4
  %tobool.not.11 = icmp eq ptr %32, null
  br i1 %tobool.not.11, label %for.inc.10.for.inc.11_crit_edge, label %if.then5.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.11

if.then5.11:                                      ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %32, i1 noundef zeroext false)
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then5.11, %for.inc.10.for.inc.11_crit_edge
  %arrayidx.12 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 3
  %33 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.12, align 4
  %tobool.not.12 = icmp eq ptr %34, null
  br i1 %tobool.not.12, label %for.inc.11.for.inc.12_crit_edge, label %if.then5.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.12

if.then5.12:                                      ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %34, i1 noundef zeroext false)
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then5.12, %for.inc.11.for.inc.12_crit_edge
  %arrayidx.13 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 2
  %35 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.13, align 4
  %tobool.not.13 = icmp eq ptr %36, null
  br i1 %tobool.not.13, label %for.inc.12.for.inc.13_crit_edge, label %if.then5.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.13

if.then5.13:                                      ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %36, i1 noundef zeroext false)
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then5.13, %for.inc.12.for.inc.13_crit_edge
  %arrayidx.14 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.14, align 4
  %tobool.not.14 = icmp eq ptr %38, null
  br i1 %tobool.not.14, label %for.inc.13.for.inc.14_crit_edge, label %if.then5.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.14

if.then5.14:                                      ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %38, i1 noundef zeroext false)
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then5.14, %for.inc.13.for.inc.14_crit_edge
  %arrayidx.15 = getelementptr %struct.brcmf_pub, ptr %3, i32 0, i32 9, i32 0
  %39 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.15, align 4
  %tobool.not.15 = icmp eq ptr %40, null
  br i1 %tobool.not.15, label %for.inc.14.for.inc.15_crit_edge, label %if.then5.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.15

if.then5.15:                                      ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_remove_interface(ptr noundef nonnull %40, i1 noundef zeroext false)
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.then5.15, %for.inc.14.for.inc.15_crit_edge
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %ops.i = getelementptr inbounds %struct.brcmf_bus, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %stop.i = getelementptr inbounds %struct.brcmf_bus_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stop.i, align 4
  %dev.i = getelementptr inbounds %struct.brcmf_bus, ptr %42, i32 0, i32 2
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  tail call void %46(ptr noundef %48) #14
  tail call void @brcmf_fweh_detach(ptr noundef nonnull %3) #14
  tail call void @brcmf_proto_detach(ptr noundef nonnull %3) #14
  %mon_if = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 11
  %49 = ptrtoint ptr %mon_if to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mon_if, align 4
  %tobool10.not = icmp eq ptr %50, null
  br i1 %tobool10.not, label %for.inc.15.if.end14_crit_edge, label %if.then11

for.inc.15.if.end14_crit_edge:                    ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %for.inc.15
  %ndev = getelementptr inbounds %struct.brcmf_if, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ndev, align 4
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 121
  %53 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i = icmp eq i8 %bf.load.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.else2.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_netdev(ptr noundef %52) #14
  br label %brcmf_net_detach.exit

if.else2.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_cfg80211_free_netdev(ptr noundef %52) #14
  tail call void @free_netdev(ptr noundef %52) #14
  br label %brcmf_net_detach.exit

brcmf_net_detach.exit:                            ; preds = %if.else2.i, %if.then.i
  %54 = ptrtoint ptr %mon_if to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %mon_if, align 4
  br label %if.end14

if.end14:                                         ; preds = %brcmf_net_detach.exit, %for.inc.15.if.end14_crit_edge
  %config = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 4
  %55 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config, align 4
  %tobool15.not = icmp eq ptr %56, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %p2p = getelementptr inbounds %struct.brcmf_cfg80211_info, ptr %56, i32 0, i32 2
  tail call void @brcmf_p2p_detach(ptr noundef %p2p) #14
  %57 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %config, align 4
  tail call void @brcmf_cfg80211_detach(ptr noundef %58) #14
  %59 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @brcmf_bus_add_txhdrlen(ptr nocapture noundef readonly %dev, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hdrlen = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdrlen, align 4
  %add = add i32 %5, %len
  store i32 %add, ptr %hdrlen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_dev_reset(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr1, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %iflist = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %iflist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iflist, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef nonnull %5, i32 noundef 28, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_int_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_dev_coredump(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @brcmf_debug_create_memdump(ptr noundef %1, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_dev_coredump, ptr noundef nonnull @.str.42) #14
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_debug_create_memdump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fw_crashed(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr1, align 4
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 4
  %dev3 = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #17
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %call1.i = tail call i32 @brcmf_debug_create_memdump(ptr noundef %7, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.brcmf_dev_coredump.exit_crit_edge

entry.brcmf_dev_coredump.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_dev_coredump.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_dev_coredump, ptr noundef nonnull @.str.42) #14
  br label %brcmf_dev_coredump.exit

brcmf_dev_coredump.exit:                          ; preds = %do.body.i, %entry.brcmf_dev_coredump.exit_crit_edge
  %bus_reset = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %bus_reset) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inet6addr_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_bus_change_state(ptr nocapture noundef %bus, i32 noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvr1, align 4
  %state2 = getelementptr inbounds %struct.brcmf_bus, ptr %bus, i32 0, i32 4
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state2, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_bus_change_state, ptr noundef nonnull @.str.47, i32 noundef %3, i32 noundef %state) #14
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body3, label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_bus_change_state, ptr noundef nonnull @.str.48) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %state, ptr %state2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %ifidx.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcmf_pub, ptr %1, i32 0, i32 9, i32 %ifidx.039
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ndev12 = getelementptr inbounds %struct.brcmf_if, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ndev12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev12, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %if.then14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then14.for.inc_crit_edge, label %if.then18

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_tx_wake_queue(ptr noundef %10) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %if.then14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ifidx.039, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_detach(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_proto_detach(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_p2p_detach(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_cfg80211_detach(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_free(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %drvr1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %drvr1, align 4
  %ops = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  tail call void @kfree(ptr noundef %6) #14
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 4
  tail call void @wiphy_free(ptr noundef %8) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_iovar_data_set(ptr nocapture noundef readonly %dev, ptr noundef %name, ptr noundef %data, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvr = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvr, align 4
  %iflist = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %iflist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iflist, align 4
  %call1 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %5, ptr noundef %name, ptr noundef %data, i32 noundef %len) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_netdev_wait_pend8021x(ptr noundef %ifp) local_unnamed_addr #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1491) #14
  %pend_8021x_cnt.i = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pend_8021x_cnt.i, i32 noundef 4) #14
  %2 = ptrtoint ptr %pend_8021x_cnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pend_8021x_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end49_crit_edge, label %if.then12

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then12:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %pend_8021x_wait = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 12
  %call1576 = call i32 @prepare_to_wait_event(ptr noundef %pend_8021x_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i.i6877 = call zeroext i1 @__kasan_check_read(ptr noundef %pend_8021x_cnt.i, i32 noundef 4) #14
  %5 = ptrtoint ptr %pend_8021x_cnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %pend_8021x_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool18.not78 = icmp eq i32 %6, 0
  br i1 %tobool18.not78, label %if.end39.thread, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  br label %cleanup

if.end39.thread:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  call void @finish_wait(ptr noundef %pend_8021x_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end49

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %__ret13.179 = phi i32 [ %__ret13.1, %cleanup.cleanup_crit_edge ], [ 95, %if.then12.cleanup_crit_edge ]
  %call36 = call i32 @schedule_timeout(i32 noundef %__ret13.179) #14
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %pend_8021x_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #14
  %call.i.i.i68 = call zeroext i1 @__kasan_check_read(ptr noundef %pend_8021x_cnt.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %pend_8021x_cnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %pend_8021x_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool18.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool23.not = icmp eq i32 %call36, 0
  %9 = select i1 %tobool18.not, i1 %tobool23.not, i1 false
  %__ret13.1 = select i1 %9, i32 1, i32 %call36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %tobool29.not = icmp eq i32 %__ret13.1, 0
  %10 = select i1 %tobool18.not, i1 true, i1 %tobool29.not
  br i1 %10, label %if.end39, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end39:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %phi.cmp = icmp eq i32 %__ret13.1, 0
  call void @finish_wait(ptr noundef %pend_8021x_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br i1 %phi.cmp, label %do.end46, label %if.end39.if.end49_crit_edge

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #17
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %if.end39.if.end49_crit_edge, %if.end39.thread, %entry.if.end49_crit_edge
  %tobool41.not75 = phi i32 [ 1, %do.end46 ], [ 0, %if.end39.if.end49_crit_edge ], [ 0, %entry.if.end49_crit_edge ], [ 0, %if.end39.thread ]
  ret i32 %tobool41.not75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_core_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @brcmf_sdio_register() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @brcmf_usb_register() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.error_usb_register_crit_edge

if.end.error_usb_register_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_usb_register

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @brcmf_pcie_register() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %error_pcie_register

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

error_pcie_register:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_usb_exit() #14
  br label %error_usb_register

error_usb_register:                               ; preds = %error_pcie_register, %if.end.error_usb_register_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.error_usb_register_crit_edge ], [ %call5, %error_pcie_register ]
  tail call void @brcmf_sdio_exit() #14
  br label %cleanup

cleanup:                                          ; preds = %error_usb_register, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error_usb_register ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdio_register() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_usb_register() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_pcie_register() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_usb_exit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_exit() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_core_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @brcmf_sdio_exit() #14
  tail call void @brcmf_usb_exit() #14
  tail call void @brcmf_pcie_exit() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_pcie_exit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_process_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_netdev_open(ptr noundef %ndev) #1 align 64 {
entry:
  %toe_ol = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %toe_ol) #14
  %4 = ptrtoint ptr %toe_ol to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %toe_ol, align 4, !annotation !347
  %bsscfgidx = getelementptr i8, ptr %ndev, i32 2412
  %5 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bsscfgidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_netdev_open, ptr noundef nonnull @.str.50, i32 noundef %6) #14
  %state = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end, label %do.end6

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.brcmf_netdev_open) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pend_8021x_cnt = getelementptr i8, ptr %ndev, i32 2468
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pend_8021x_cnt, i32 noundef 4) #14
  %11 = ptrtoint ptr %pend_8021x_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %pend_8021x_cnt, align 4
  %call9 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.52, ptr noundef nonnull %toe_ol) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %toe_ol to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %toe_ol, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11.not = icmp eq i32 %and, 0
  br i1 %cmp11.not, label %land.lhs.true.if.else_crit_edge, label %if.then12

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %features = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %14 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features, align 16
  %or = or i64 %15, 2
  store i64 %or, ptr %features, align 16
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %features13 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %16 = ptrtoint ptr %features13 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features13, align 16
  %and14 = and i64 %17, -3
  store i64 %and14, ptr %features13, align 16
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %call16 = call i32 @brcmf_cfg80211_up(ptr noundef %ndev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end26, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy22 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %wiphy22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy22, align 4
  %dev23 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.brcmf_netdev_open) #17
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  call void @netif_carrier_off(ptr noundef %ndev) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end21, %do.end6
  %retval.0 = phi i32 [ -11, %do.end6 ], [ -5, %do.end21 ], [ 0, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %toe_ol) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_netdev_stop(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %bsscfgidx = getelementptr i8, ptr %ndev, i32 2412
  %0 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bsscfgidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_netdev_stop, ptr noundef nonnull @.str.50, i32 noundef %1) #14
  %call1 = tail call i32 @brcmf_cfg80211_down(ptr noundef %ndev) #14
  %2 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bsscfgidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_net_setcarrier, ptr noundef nonnull @.str.26, i32 noundef %3, i32 noundef 0) #14
  %ndev1.i = getelementptr i8, ptr %ndev, i32 2312
  %4 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev1.i, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  %tobool1.not.i = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond, label %entry.brcmf_txflowblock_if.exit_crit_edge, label %do.body.i

entry.brcmf_txflowblock_if.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_txflowblock_if.exit

do.body.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bsscfgidx, align 4
  %netif_stop.i = getelementptr i8, ptr %ndev, i32 2422
  %8 = ptrtoint ptr %netif_stop.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %netif_stop.i, align 2
  %conv.i = zext i8 %9 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_txflowblock_if, ptr noundef nonnull @.str.15, i32 noundef %7, i32 noundef %conv.i, i32 noundef 4, i32 noundef 1) #14
  %netif_stop_lock.i = getelementptr i8, ptr %ndev, i32 2424
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %netif_stop_lock.i) #14
  %10 = ptrtoint ptr %netif_stop.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %netif_stop.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not.i = icmp eq i8 %11, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %do.body.i.if.end18.i_crit_edge

do.body.i.if.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev1.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #14
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %do.body.i.if.end18.i_crit_edge
  %16 = ptrtoint ptr %netif_stop.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %netif_stop.i, align 2
  %conv21.i = or i8 %17, 4
  store i8 %conv21.i, ptr %netif_stop.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %netif_stop_lock.i, i32 noundef %call7.i) #14
  br label %brcmf_txflowblock_if.exit

brcmf_txflowblock_if.exit:                        ; preds = %if.end18.i, %entry.brcmf_txflowblock_if.exit_crit_edge
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.i, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %if.then6.i, label %brcmf_txflowblock_if.exit.brcmf_net_setcarrier.exit_crit_edge

brcmf_txflowblock_if.exit.brcmf_net_setcarrier.exit_crit_edge: ; preds = %brcmf_txflowblock_if.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_net_setcarrier.exit

if.then6.i:                                       ; preds = %brcmf_txflowblock_if.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_off(ptr noundef %5) #14
  br label %brcmf_net_setcarrier.exit

brcmf_net_setcarrier.exit:                        ; preds = %if.then6.i, %brcmf_txflowblock_if.exit.brcmf_net_setcarrier.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_netdev_start_xmit(ptr noundef %skb, ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %bsscfgidx = getelementptr i8, ptr %ndev, i32 2412
  %2 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bsscfgidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 8, ptr noundef nonnull @__func__.brcmf_netdev_start_xmit, ptr noundef nonnull @.str.50, i32 noundef %3) #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %state = getelementptr inbounds %struct.brcmf_bus, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.brcmf_netdev_start_xmit, i32 noundef %7) #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  tail call void @consume_skb(ptr noundef %skb) #14
  br label %if.then65

if.end:                                           ; preds = %entry
  %settings = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 22
  %12 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %settings, align 4
  %iapp = getelementptr inbounds %struct.brcmf_mp_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %iapp to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iapp, align 1, !range !344
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %18 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mac_len.i, align 4
  %conv.i = zext i16 %19 to i32
  %sub.i = sub i32 %17, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i)
  %cmp.not.i = icmp eq i32 %sub.i, 6
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %22 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %conv.i.i.i
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i.i, align 4
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.if.end12_crit_edge, label %brcmf_skb_is_iapp.exit

lor.lhs.false.i.if.end12_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

brcmf_skb_is_iapp.exit:                           ; preds = %lor.lhs.false.i
  %add.ptr.i117 = getelementptr i8, ptr %add.ptr.i.i.i, i32 14
  %27 = ptrtoint ptr %add.ptr.i117 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i117, align 4
  %xor.i = xor i32 %28, 110465
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 18
  %29 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr4.i, align 2
  %31 = xor i16 %30, 256
  %xor7.i = zext i16 %31 to i32
  %or.i = or i32 %xor.i, %xor7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %if.then11, label %brcmf_skb_is_iapp.exit.if.end12_crit_edge

brcmf_skb_is_iapp.exit.if.end12_crit_edge:        ; preds = %brcmf_skb_is_iapp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then11:                                        ; preds = %brcmf_skb_is_iapp.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef %skb) #14
  br label %if.then65

if.end12:                                         ; preds = %brcmf_skb_is_iapp.exit.if.end12_crit_edge, %lor.lhs.false.i.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %34 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %hdrlen = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hdrlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %37)
  %cmp14 = icmp ult i32 %sub.ptr.sub.i, %37
  br i1 %cmp14, label %if.end12.if.then17_crit_edge, label %lor.lhs.false

if.end12.if.then17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end12
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %38 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i118 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i118, label %lor.lhs.false.if.end41_crit_edge, label %skb_header_cloned.exit

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

skb_header_cloned.exit:                           ; preds = %lor.lhs.false
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i, align 4
  %dataref1.i = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i, i32 noundef 4) #14
  %41 = ptrtoint ptr %dataref1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %dataref1.i, align 4
  %and.i = and i32 %42, 65535
  %shr.i = ashr i32 %42, 16
  %sub.i119 = sub nsw i32 %and.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i119)
  %cmp.i.not = icmp eq i32 %sub.i119, 1
  br i1 %cmp.i.not, label %skb_header_cloned.exit.if.end41_crit_edge, label %skb_header_cloned.exit.if.then17_crit_edge

skb_header_cloned.exit.if.then17_crit_edge:       ; preds = %skb_header_cloned.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17

skb_header_cloned.exit.if.end41_crit_edge:        ; preds = %skb_header_cloned.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then17:                                        ; preds = %skb_header_cloned.exit.if.then17_crit_edge, %if.end12.if.then17_crit_edge
  %43 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hdrlen, align 4
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %47 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i125 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i126 = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i127.neg = sub i32 %44, %sub.ptr.lhs.cast.i125
  %sub = add i32 %sub.ptr.sub.i127.neg, %sub.ptr.rhs.cast.i126
  %49 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %tobool.not.i128 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i128, label %if.then17.brcmf_ifname.exit_crit_edge, label %if.end.i129

if.then17.brcmf_ifname.exit_crit_edge:            ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_ifname.exit

if.end.i129:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %ndev.i = getelementptr i8, ptr %ndev, i32 2312
  %50 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ndev.i, align 4
  %tobool1.not.i = icmp eq ptr %51, null
  %.str.1..i = select i1 %tobool1.not.i, ptr @.str.1, ptr %51
  br label %brcmf_ifname.exit

brcmf_ifname.exit:                                ; preds = %if.end.i129, %if.then17.brcmf_ifname.exit_crit_edge
  %retval.0.i130 = phi ptr [ @.str, %if.then17.brcmf_ifname.exit_crit_edge ], [ %.str.1..i, %if.end.i129 ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_netdev_start_xmit, ptr noundef nonnull @.str.57, ptr noundef %retval.0.i130, i32 noundef %49) #14
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %stats = getelementptr inbounds %struct.brcmf_bus, ptr %53, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %stats, i32 1, i32 3, i32 1) #14
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats, ptr %stats, i32 1, ptr elementtype(i32) %stats) #14, !srcloc !348
  %add = add nuw i32 %49, 127
  %and = and i32 %add, -128
  %call26 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end32, label %brcmf_ifname.exit.if.end41_crit_edge

brcmf_ifname.exit.if.end41_crit_edge:             ; preds = %brcmf_ifname.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

do.end32:                                         ; preds = %brcmf_ifname.exit
  %wiphy33 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %wiphy33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wiphy33, align 4
  %dev34 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  br i1 %tobool.not.i128, label %do.end32.brcmf_ifname.exit137_crit_edge, label %if.end.i135

do.end32.brcmf_ifname.exit137_crit_edge:          ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_ifname.exit137

if.end.i135:                                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #16
  %ndev.i132 = getelementptr i8, ptr %ndev, i32 2312
  %57 = ptrtoint ptr %ndev.i132 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ndev.i132, align 4
  %tobool1.not.i133 = icmp eq ptr %58, null
  %.str.1..i134 = select i1 %tobool1.not.i133, ptr @.str.1, ptr %58
  br label %brcmf_ifname.exit137

brcmf_ifname.exit137:                             ; preds = %if.end.i135, %do.end32.brcmf_ifname.exit137_crit_edge
  %retval.0.i136 = phi ptr [ @.str, %do.end32.brcmf_ifname.exit137_crit_edge ], [ %.str.1..i134, %if.end.i135 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.brcmf_netdev_start_xmit, ptr noundef %retval.0.i136) #17
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %pktcow_failed = getelementptr inbounds %struct.brcmf_bus, ptr %60, i32 0, i32 5, i32 1
  %call.i.i115 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pktcow_failed, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pktcow_failed, i32 1, i32 3, i32 1) #14
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pktcow_failed, ptr %pktcow_failed, i32 1, ptr elementtype(i32) %pktcow_failed) #14, !srcloc !348
  br label %if.then65

if.end41:                                         ; preds = %brcmf_ifname.exit.if.end41_crit_edge, %skb_header_cloned.exit.if.end41_crit_edge, %lor.lhs.false.if.end41_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %63)
  %cmp42 = icmp ult i32 %63, 14
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef %skb) #14
  br label %if.then65

if.end44:                                         ; preds = %if.end41
  %64 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %67)
  %cmp45 = icmp eq i16 %67, -30578
  br i1 %cmp45, label %if.then47, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %pend_8021x_cnt = getelementptr i8, ptr %ndev, i32 2468
  %call.i.i116 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pend_8021x_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pend_8021x_cnt, i32 1, i32 3, i32 1) #14
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pend_8021x_cnt, ptr %pend_8021x_cnt, i32 1, ptr elementtype(i32) %pend_8021x_cnt) #14, !srcloc !348
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44.if.end48_crit_edge
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %69 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %priority, align 4
  %71 = add i32 %70, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %71)
  %72 = icmp ult i32 %71, -7
  br i1 %72, label %if.then55, label %if.end48.if.end58_crit_edge

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %call56 = tail call i32 @cfg80211_classify8021d(ptr noundef %skb, ptr noundef null) #14
  %73 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call56, ptr %priority, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end48.if.end58_crit_edge
  %74 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %tobool.not.i138 = icmp eq ptr %76, null
  br i1 %tobool.not.i138, label %if.end58.sk_pacing_shift_update.exit_crit_edge, label %lor.lhs.false.i140

if.end58.sk_pacing_shift_update.exit_crit_edge:   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %sk_pacing_shift_update.exit

lor.lhs.false.i140:                               ; preds = %if.end58
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %78 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i139 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i139, label %lor.lhs.false.i140.sk_pacing_shift_update.exit_crit_edge, label %do.end.i

lor.lhs.false.i140.sk_pacing_shift_update.exit_crit_edge: ; preds = %lor.lhs.false.i140
  call void @__sanitizer_cov_trace_pc() #16
  br label %sk_pacing_shift_update.exit

do.end.i:                                         ; preds = %lor.lhs.false.i140
  %sk_pacing_shift.i = getelementptr inbounds %struct.sock, ptr %76, i32 0, i32 44
  %79 = ptrtoint ptr %sk_pacing_shift.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load volatile i8, ptr %sk_pacing_shift.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %80)
  %cmp.i141 = icmp eq i8 %80, 8
  br i1 %cmp.i141, label %do.end.i.sk_pacing_shift_update.exit_crit_edge, label %do.body6.i

do.end.i.sk_pacing_shift_update.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sk_pacing_shift_update.exit

do.body6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %sk_pacing_shift.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store volatile i8 8, ptr %sk_pacing_shift.i, align 1
  br label %sk_pacing_shift_update.exit

sk_pacing_shift_update.exit:                      ; preds = %do.body6.i, %do.end.i.sk_pacing_shift_update.exit_crit_edge, %lor.lhs.false.i140.sk_pacing_shift_update.exit_crit_edge, %if.end58.sk_pacing_shift_update.exit_crit_edge
  %ifidx = getelementptr i8, ptr %ndev, i32 2408
  %82 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ifidx, align 4
  %proto.i = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 1
  %84 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %proto.i, align 4
  %tx_queue_data.i = getelementptr inbounds %struct.brcmf_proto, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %tx_queue_data.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tx_queue_data.i, align 4
  %call.i = tail call i32 %87(ptr noundef %1, i32 noundef %83, ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp60 = icmp slt i32 %call.i, 0
  br i1 %cmp60, label %if.then62, label %done

if.then62:                                        ; preds = %sk_pacing_shift_update.exit
  %88 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %91)
  %cmp.i143 = icmp eq i16 %91, -30578
  br i1 %cmp.i143, label %if.then.i, label %if.then62.brcmf_txfinalize.exit_crit_edge

if.then62.brcmf_txfinalize.exit_crit_edge:        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_txfinalize.exit

if.then.i:                                        ; preds = %if.then62
  %pend_8021x_cnt.i = getelementptr i8, ptr %ndev, i32 2468
  %call.i.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pend_8021x_cnt.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %pend_8021x_cnt.i, i32 1, i32 3, i32 1) #14
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pend_8021x_cnt.i, ptr %pend_8021x_cnt.i, i32 1, ptr elementtype(i32) %pend_8021x_cnt.i) #14, !srcloc !345
  %head.i.i = getelementptr i8, ptr %ndev, i32 2516
  %93 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %94, %head.i.i
  br i1 %cmp.i.i.not.i, label %if.then.i.brcmf_txfinalize.exit_crit_edge, label %if.then2.i

if.then.i.brcmf_txfinalize.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_txfinalize.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %pend_8021x_wait.i = getelementptr i8, ptr %ndev, i32 2472
  tail call void @__wake_up(ptr noundef %pend_8021x_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %brcmf_txfinalize.exit

brcmf_txfinalize.exit:                            ; preds = %if.then2.i, %if.then.i.brcmf_txfinalize.exit_crit_edge, %if.then62.brcmf_txfinalize.exit_crit_edge
  %ndev.i145 = getelementptr i8, ptr %ndev, i32 2312
  %95 = ptrtoint ptr %ndev.i145 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ndev.i145, align 4
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %96, i32 0, i32 36, i32 5
  %97 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %98, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %skb) #14
  br label %if.then65

done:                                             ; preds = %sk_pacing_shift_update.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool64.not = icmp eq i32 %call.i, 0
  br i1 %tobool64.not, label %if.else, label %done.if.then65_crit_edge

done.if.then65_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

if.then65:                                        ; preds = %done.if.then65_crit_edge, %brcmf_txfinalize.exit, %if.then43, %brcmf_ifname.exit137, %if.then11, %do.end5
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  br label %if.end72

if.else:                                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %99 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx_packets, align 4
  %inc68 = add i32 %100, 1
  store i32 %inc68, ptr %tx_packets, align 4
  %101 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then65
  %tx_bytes.sink152 = phi ptr [ %tx_bytes, %if.else ], [ %tx_dropped, %if.then65 ]
  %.sink151 = phi i32 [ %102, %if.else ], [ 1, %if.then65 ]
  %103 = ptrtoint ptr %tx_bytes.sink152 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_bytes.sink152, align 4
  %add71 = add i32 %104, %.sink151
  store i32 %add71, ptr %tx_bytes.sink152, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_netdev_set_multicast_list(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %multicast_work = getelementptr i8, ptr %ndev, i32 2316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %multicast_work) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_netdev_set_mac_address(ptr noundef %ndev, ptr noundef %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %bsscfgidx = getelementptr i8, ptr %ndev, i32 2412
  %2 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bsscfgidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_netdev_set_mac_address, ptr noundef nonnull @.str.50, i32 noundef %3) #14
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %call2 = tail call i32 @brcmf_fil_iovar_data_set(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.61, ptr noundef %sa_data, i32 noundef 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %do.body9

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.brcmf_netdev_set_mac_address, i32 noundef %call2) #17
  br label %if.end

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_netdev_set_mac_address, ptr noundef nonnull @.str.63, ptr noundef %sa_data) #14
  %mac_addr = getelementptr i8, ptr %ndev, i32 2416
  %6 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 6)
  %ndev17 = getelementptr i8, ptr %ndev, i32 2312
  %7 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev17, align 4
  tail call void @dev_addr_mod(ptr noundef %8, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #14
  br label %if.end

if.end:                                           ; preds = %do.body9, %do.end6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_cfg80211_up(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_cfg80211_down(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_classify8021d(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_ethtool_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #1 align 64 {
entry:
  %drev = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %drev) #14
  %2 = call ptr @memcpy(ptr %drev, ptr @__const.brcmf_ethtool_get_drvinfo.drev, i32 16)
  %revinfo = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %revinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %revinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %driverrev = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 18, i32 8
  %5 = ptrtoint ptr %driverrev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driverrev, align 4
  %call3 = call ptr @brcmu_dotrev_str(i32 noundef %6, ptr noundef nonnull %drev) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call5 = call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.64, i32 noundef 32) #14
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call8 = call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull %drev, i32 noundef 32) #14
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %fwver = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 6
  %call11 = call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %fwver, i32 noundef 32) #14
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.brcmf_bus, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.end.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call14 = call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %drev) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_dotrev_str(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unregister_wdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_net_mon_open(ptr noundef %ndev) #1 align 64 {
entry:
  %monitor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %monitor) #14
  %2 = ptrtoint ptr %monitor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %monitor, align 4, !annotation !347
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_net_mon_open, ptr noundef nonnull @.str.24) #14
  %call2 = call i32 @brcmf_fil_cmd_int_get(ptr noundef %add.ptr.i, i32 noundef 107, ptr noundef nonnull %monitor) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %do.end6

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %4, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.brcmf_net_mon_open, i32 noundef %call2) #17
  br label %cleanup

if.else:                                          ; preds = %entry
  %5 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %if.end19, label %do.end14

do.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy15 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %wiphy15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy15, align 4
  %dev16 = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.brcmf_net_mon_open) #17
  br label %cleanup

if.end19:                                         ; preds = %if.else
  %9 = ptrtoint ptr %monitor to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %monitor, align 4
  %call20 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %add.ptr.i, i32 noundef 108, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %do.end26

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy27 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %wiphy27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy27, align 4
  %dev28 = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.brcmf_net_mon_open, i32 noundef %call20) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end19.cleanup_crit_edge, %do.end14, %do.end6
  %retval.0 = phi i32 [ %call2, %do.end6 ], [ -17, %do.end14 ], [ %call20, %do.end26 ], [ 0, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %monitor) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_net_mon_stop(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_net_mon_stop, ptr noundef nonnull @.str.24) #14
  %call2 = tail call i32 @brcmf_fil_cmd_int_set(ptr noundef %add.ptr.i, i32 noundef 108, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end6

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.brcmf_net_mon_stop, i32 noundef %call2) #17
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_net_mon_start_xmit(ptr noundef %skb, ptr nocapture noundef readnone %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_int_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_p2p_ifp_removed(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_new_nm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_c_preinit_dcmds(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_feat_attach(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_cfg80211_attach(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_inetaddr_changed(ptr nocapture noundef readonly %nb, i32 noundef %action, ptr noundef %data) #1 align 64 {
entry:
  %val = alloca i32, align 4
  %addr_table = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !347
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %addr_table) #14
  %5 = call ptr @memset(ptr %addr_table, i32 0, i32 32)
  %iflist = getelementptr i8, ptr %nb, i32 -10184
  %6 = ptrtoint ptr %iflist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iflist, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ndev1 = getelementptr inbounds %struct.brcmf_if, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev1, align 4
  %cmp2 = icmp eq ptr %9, %3
  br i1 %cmp2, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %nb, i32 -10180
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %11, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %land.lhs.true.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %if.end
  %ndev1.1 = getelementptr inbounds %struct.brcmf_if, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ndev1.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev1.1, align 4
  %cmp2.1 = icmp eq ptr %13, %3
  br i1 %cmp2.1, label %land.lhs.true.1.for.end_crit_edge, label %land.lhs.true.1.if.end.1_crit_edge

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.1:                                         ; preds = %land.lhs.true.1.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %nb, i32 -10176
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %land.lhs.true.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.2

land.lhs.true.2:                                  ; preds = %if.end.1
  %ndev1.2 = getelementptr inbounds %struct.brcmf_if, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ndev1.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev1.2, align 4
  %cmp2.2 = icmp eq ptr %17, %3
  br i1 %cmp2.2, label %land.lhs.true.2.for.end_crit_edge, label %land.lhs.true.2.if.end.2_crit_edge

land.lhs.true.2.if.end.2_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.2

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.2:                                         ; preds = %land.lhs.true.2.if.end.2_crit_edge, %if.end.1.if.end.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %nb, i32 -10172
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %19, null
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %land.lhs.true.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.3

land.lhs.true.3:                                  ; preds = %if.end.2
  %ndev1.3 = getelementptr inbounds %struct.brcmf_if, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ndev1.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev1.3, align 4
  %cmp2.3 = icmp eq ptr %21, %3
  br i1 %cmp2.3, label %land.lhs.true.3.for.end_crit_edge, label %land.lhs.true.3.if.end.3_crit_edge

land.lhs.true.3.if.end.3_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.3

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.3:                                         ; preds = %land.lhs.true.3.if.end.3_crit_edge, %if.end.2.if.end.3_crit_edge
  %arrayidx.4 = getelementptr i8, ptr %nb, i32 -10168
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %23, null
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %land.lhs.true.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.4

land.lhs.true.4:                                  ; preds = %if.end.3
  %ndev1.4 = getelementptr inbounds %struct.brcmf_if, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ndev1.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev1.4, align 4
  %cmp2.4 = icmp eq ptr %25, %3
  br i1 %cmp2.4, label %land.lhs.true.4.for.end_crit_edge, label %land.lhs.true.4.if.end.4_crit_edge

land.lhs.true.4.if.end.4_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.4

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.4:                                         ; preds = %land.lhs.true.4.if.end.4_crit_edge, %if.end.3.if.end.4_crit_edge
  %arrayidx.5 = getelementptr i8, ptr %nb, i32 -10164
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %27, null
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %land.lhs.true.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.5

land.lhs.true.5:                                  ; preds = %if.end.4
  %ndev1.5 = getelementptr inbounds %struct.brcmf_if, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ndev1.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev1.5, align 4
  %cmp2.5 = icmp eq ptr %29, %3
  br i1 %cmp2.5, label %land.lhs.true.5.for.end_crit_edge, label %land.lhs.true.5.if.end.5_crit_edge

land.lhs.true.5.if.end.5_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.5

land.lhs.true.5.for.end_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.5:                                         ; preds = %land.lhs.true.5.if.end.5_crit_edge, %if.end.4.if.end.5_crit_edge
  %arrayidx.6 = getelementptr i8, ptr %nb, i32 -10160
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %31, null
  br i1 %tobool.not.6, label %if.end.5.if.end.6_crit_edge, label %land.lhs.true.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.6

land.lhs.true.6:                                  ; preds = %if.end.5
  %ndev1.6 = getelementptr inbounds %struct.brcmf_if, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ndev1.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev1.6, align 4
  %cmp2.6 = icmp eq ptr %33, %3
  br i1 %cmp2.6, label %land.lhs.true.6.for.end_crit_edge, label %land.lhs.true.6.if.end.6_crit_edge

land.lhs.true.6.if.end.6_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.6

land.lhs.true.6.for.end_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.6:                                         ; preds = %land.lhs.true.6.if.end.6_crit_edge, %if.end.5.if.end.6_crit_edge
  %arrayidx.7 = getelementptr i8, ptr %nb, i32 -10156
  %34 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %35, null
  br i1 %tobool.not.7, label %if.end.6.if.end.7_crit_edge, label %land.lhs.true.7

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.7

land.lhs.true.7:                                  ; preds = %if.end.6
  %ndev1.7 = getelementptr inbounds %struct.brcmf_if, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ndev1.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev1.7, align 4
  %cmp2.7 = icmp eq ptr %37, %3
  br i1 %cmp2.7, label %land.lhs.true.7.for.end_crit_edge, label %land.lhs.true.7.if.end.7_crit_edge

land.lhs.true.7.if.end.7_crit_edge:               ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.7

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.7:                                         ; preds = %land.lhs.true.7.if.end.7_crit_edge, %if.end.6.if.end.7_crit_edge
  %arrayidx.8 = getelementptr i8, ptr %nb, i32 -10152
  %38 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp eq ptr %39, null
  br i1 %tobool.not.8, label %if.end.7.if.end.8_crit_edge, label %land.lhs.true.8

if.end.7.if.end.8_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.8

land.lhs.true.8:                                  ; preds = %if.end.7
  %ndev1.8 = getelementptr inbounds %struct.brcmf_if, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ndev1.8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndev1.8, align 4
  %cmp2.8 = icmp eq ptr %41, %3
  br i1 %cmp2.8, label %land.lhs.true.8.for.end_crit_edge, label %land.lhs.true.8.if.end.8_crit_edge

land.lhs.true.8.if.end.8_crit_edge:               ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.8

land.lhs.true.8.for.end_crit_edge:                ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.8:                                         ; preds = %land.lhs.true.8.if.end.8_crit_edge, %if.end.7.if.end.8_crit_edge
  %arrayidx.9 = getelementptr i8, ptr %nb, i32 -10148
  %42 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.9 = icmp eq ptr %43, null
  br i1 %tobool.not.9, label %if.end.8.if.end.9_crit_edge, label %land.lhs.true.9

if.end.8.if.end.9_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.9

land.lhs.true.9:                                  ; preds = %if.end.8
  %ndev1.9 = getelementptr inbounds %struct.brcmf_if, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ndev1.9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndev1.9, align 4
  %cmp2.9 = icmp eq ptr %45, %3
  br i1 %cmp2.9, label %land.lhs.true.9.for.end_crit_edge, label %land.lhs.true.9.if.end.9_crit_edge

land.lhs.true.9.if.end.9_crit_edge:               ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.9

land.lhs.true.9.for.end_crit_edge:                ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.9:                                         ; preds = %land.lhs.true.9.if.end.9_crit_edge, %if.end.8.if.end.9_crit_edge
  %arrayidx.10 = getelementptr i8, ptr %nb, i32 -10144
  %46 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.10, align 4
  %tobool.not.10 = icmp eq ptr %47, null
  br i1 %tobool.not.10, label %if.end.9.if.end.10_crit_edge, label %land.lhs.true.10

if.end.9.if.end.10_crit_edge:                     ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.10

land.lhs.true.10:                                 ; preds = %if.end.9
  %ndev1.10 = getelementptr inbounds %struct.brcmf_if, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %ndev1.10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ndev1.10, align 4
  %cmp2.10 = icmp eq ptr %49, %3
  br i1 %cmp2.10, label %land.lhs.true.10.for.end_crit_edge, label %land.lhs.true.10.if.end.10_crit_edge

land.lhs.true.10.if.end.10_crit_edge:             ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.10

land.lhs.true.10.for.end_crit_edge:               ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.10:                                        ; preds = %land.lhs.true.10.if.end.10_crit_edge, %if.end.9.if.end.10_crit_edge
  %arrayidx.11 = getelementptr i8, ptr %nb, i32 -10140
  %50 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.11, align 4
  %tobool.not.11 = icmp eq ptr %51, null
  br i1 %tobool.not.11, label %if.end.10.if.end.11_crit_edge, label %land.lhs.true.11

if.end.10.if.end.11_crit_edge:                    ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.11

land.lhs.true.11:                                 ; preds = %if.end.10
  %ndev1.11 = getelementptr inbounds %struct.brcmf_if, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %ndev1.11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ndev1.11, align 4
  %cmp2.11 = icmp eq ptr %53, %3
  br i1 %cmp2.11, label %land.lhs.true.11.for.end_crit_edge, label %land.lhs.true.11.if.end.11_crit_edge

land.lhs.true.11.if.end.11_crit_edge:             ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.11

land.lhs.true.11.for.end_crit_edge:               ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.11:                                        ; preds = %land.lhs.true.11.if.end.11_crit_edge, %if.end.10.if.end.11_crit_edge
  %arrayidx.12 = getelementptr i8, ptr %nb, i32 -10136
  %54 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.12, align 4
  %tobool.not.12 = icmp eq ptr %55, null
  br i1 %tobool.not.12, label %if.end.11.if.end.12_crit_edge, label %land.lhs.true.12

if.end.11.if.end.12_crit_edge:                    ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.12

land.lhs.true.12:                                 ; preds = %if.end.11
  %ndev1.12 = getelementptr inbounds %struct.brcmf_if, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %ndev1.12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ndev1.12, align 4
  %cmp2.12 = icmp eq ptr %57, %3
  br i1 %cmp2.12, label %land.lhs.true.12.for.end_crit_edge, label %land.lhs.true.12.if.end.12_crit_edge

land.lhs.true.12.if.end.12_crit_edge:             ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.12

land.lhs.true.12.for.end_crit_edge:               ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.12:                                        ; preds = %land.lhs.true.12.if.end.12_crit_edge, %if.end.11.if.end.12_crit_edge
  %arrayidx.13 = getelementptr i8, ptr %nb, i32 -10132
  %58 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.13, align 4
  %tobool.not.13 = icmp eq ptr %59, null
  br i1 %tobool.not.13, label %if.end.12.if.end.13_crit_edge, label %land.lhs.true.13

if.end.12.if.end.13_crit_edge:                    ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.13

land.lhs.true.13:                                 ; preds = %if.end.12
  %ndev1.13 = getelementptr inbounds %struct.brcmf_if, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %ndev1.13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ndev1.13, align 4
  %cmp2.13 = icmp eq ptr %61, %3
  br i1 %cmp2.13, label %land.lhs.true.13.for.end_crit_edge, label %land.lhs.true.13.if.end.13_crit_edge

land.lhs.true.13.if.end.13_crit_edge:             ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.13

land.lhs.true.13.for.end_crit_edge:               ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.13:                                        ; preds = %land.lhs.true.13.if.end.13_crit_edge, %if.end.12.if.end.13_crit_edge
  %arrayidx.14 = getelementptr i8, ptr %nb, i32 -10128
  %62 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.14, align 4
  %tobool.not.14 = icmp eq ptr %63, null
  br i1 %tobool.not.14, label %if.end.13.if.end.14_crit_edge, label %land.lhs.true.14

if.end.13.if.end.14_crit_edge:                    ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.14

land.lhs.true.14:                                 ; preds = %if.end.13
  %ndev1.14 = getelementptr inbounds %struct.brcmf_if, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %ndev1.14 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ndev1.14, align 4
  %cmp2.14 = icmp eq ptr %65, %3
  br i1 %cmp2.14, label %land.lhs.true.14.for.end_crit_edge, label %land.lhs.true.14.if.end.14_crit_edge

land.lhs.true.14.if.end.14_crit_edge:             ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.14

land.lhs.true.14.for.end_crit_edge:               ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.14:                                        ; preds = %land.lhs.true.14.if.end.14_crit_edge, %if.end.13.if.end.14_crit_edge
  %arrayidx.15 = getelementptr i8, ptr %nb, i32 -10124
  %66 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.15, align 4
  %tobool.not.15 = icmp eq ptr %67, null
  br i1 %tobool.not.15, label %if.end.14.cleanup_crit_edge, label %land.lhs.true.15

if.end.14.cleanup_crit_edge:                      ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.15:                                 ; preds = %if.end.14
  %ndev1.15 = getelementptr inbounds %struct.brcmf_if, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %ndev1.15 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ndev1.15, align 4
  %cmp2.15 = icmp eq ptr %69, %3
  br i1 %cmp2.15, label %land.lhs.true.15.for.end_crit_edge, label %land.lhs.true.15.cleanup_crit_edge

land.lhs.true.15.cleanup_crit_edge:               ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.15.for.end_crit_edge:               ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.15.for.end_crit_edge, %land.lhs.true.14.for.end_crit_edge, %land.lhs.true.13.for.end_crit_edge, %land.lhs.true.12.for.end_crit_edge, %land.lhs.true.11.for.end_crit_edge, %land.lhs.true.10.for.end_crit_edge, %land.lhs.true.9.for.end_crit_edge, %land.lhs.true.8.for.end_crit_edge, %land.lhs.true.7.for.end_crit_edge, %land.lhs.true.6.for.end_crit_edge, %land.lhs.true.5.for.end_crit_edge, %land.lhs.true.4.for.end_crit_edge, %land.lhs.true.3.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %.lcssa = phi ptr [ %7, %land.lhs.true.for.end_crit_edge ], [ %11, %land.lhs.true.1.for.end_crit_edge ], [ %15, %land.lhs.true.2.for.end_crit_edge ], [ %19, %land.lhs.true.3.for.end_crit_edge ], [ %23, %land.lhs.true.4.for.end_crit_edge ], [ %27, %land.lhs.true.5.for.end_crit_edge ], [ %31, %land.lhs.true.6.for.end_crit_edge ], [ %35, %land.lhs.true.7.for.end_crit_edge ], [ %39, %land.lhs.true.8.for.end_crit_edge ], [ %43, %land.lhs.true.9.for.end_crit_edge ], [ %47, %land.lhs.true.10.for.end_crit_edge ], [ %51, %land.lhs.true.11.for.end_crit_edge ], [ %55, %land.lhs.true.12.for.end_crit_edge ], [ %59, %land.lhs.true.13.for.end_crit_edge ], [ %63, %land.lhs.true.14.for.end_crit_edge ], [ %67, %land.lhs.true.15.for.end_crit_edge ]
  %call = call i32 @brcmf_fil_iovar_int_get(ptr noundef nonnull %.lcssa, ptr noundef nonnull @.str.9, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %for.end
  %call9 = call i32 @brcmf_fil_iovar_int_get(ptr noundef nonnull %.lcssa, ptr noundef nonnull @.str.103, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end12.thread

if.end12.thread:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %val, align 4
  br label %if.then14

if.end12:                                         ; preds = %if.end8
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp13 = icmp eq i32 %.pr, 1
  br i1 %cmp13, label %if.end12.if.then14_crit_edge, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %if.end12.thread
  %72 = ptrtoint ptr %iflist to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iflist, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %ifp.2 = phi ptr [ %73, %if.then14 ], [ %.lcssa, %if.end12.if.end17_crit_edge ]
  %call18 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %ifp.2, ptr noundef nonnull @.str.104, ptr noundef nonnull %addr_table, i32 noundef 32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond26.preheader, label %do.end

for.cond26.preheader:                             ; preds = %if.end17
  %ifa_address = getelementptr inbounds %struct.in_ifaddr, ptr %data, i32 0, i32 5
  %74 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ifa_address, align 4
  %76 = ptrtoint ptr %addr_table to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %addr_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp30 = icmp eq i32 %75, %77
  br i1 %cmp30, label %for.cond26.preheader.for.end35_crit_edge, label %for.inc33

for.cond26.preheader.for.end35_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy = getelementptr i8, ptr %nb, i32 -10336
  %78 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wiphy, align 4
  %dev22 = getelementptr inbounds %struct.wiphy, ptr %79, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef %call18) #17
  br label %cleanup

for.inc33:                                        ; preds = %for.cond26.preheader
  %arrayidx29.1 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 1
  %80 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx29.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %81)
  %cmp30.1 = icmp eq i32 %75, %81
  br i1 %cmp30.1, label %for.inc33.for.end35_crit_edge, label %for.inc33.1

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

for.inc33.1:                                      ; preds = %for.inc33
  %arrayidx29.2 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 2
  %82 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx29.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %83)
  %cmp30.2 = icmp eq i32 %75, %83
  br i1 %cmp30.2, label %for.inc33.1.for.end35_crit_edge, label %for.inc33.2

for.inc33.1.for.end35_crit_edge:                  ; preds = %for.inc33.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

for.inc33.2:                                      ; preds = %for.inc33.1
  %arrayidx29.3 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 3
  %84 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx29.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %85)
  %cmp30.3 = icmp eq i32 %75, %85
  br i1 %cmp30.3, label %for.inc33.2.for.end35_crit_edge, label %for.inc33.3

for.inc33.2.for.end35_crit_edge:                  ; preds = %for.inc33.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

for.inc33.3:                                      ; preds = %for.inc33.2
  %arrayidx29.4 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 4
  %86 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx29.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %87)
  %cmp30.4 = icmp eq i32 %75, %87
  br i1 %cmp30.4, label %for.inc33.3.for.end35_crit_edge, label %for.inc33.4

for.inc33.3.for.end35_crit_edge:                  ; preds = %for.inc33.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

for.inc33.4:                                      ; preds = %for.inc33.3
  %arrayidx29.5 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 5
  %88 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx29.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %89)
  %cmp30.5 = icmp eq i32 %75, %89
  br i1 %cmp30.5, label %for.inc33.4.for.end35_crit_edge, label %for.inc33.5

for.inc33.4.for.end35_crit_edge:                  ; preds = %for.inc33.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

for.inc33.5:                                      ; preds = %for.inc33.4
  %arrayidx29.6 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 6
  %90 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx29.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %91)
  %cmp30.6 = icmp eq i32 %75, %91
  br i1 %cmp30.6, label %for.inc33.5.for.end35_crit_edge, label %for.inc33.6

for.inc33.5.for.end35_crit_edge:                  ; preds = %for.inc33.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

for.inc33.6:                                      ; preds = %for.inc33.5
  %arrayidx29.7 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 7
  %92 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx29.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %93)
  %cmp30.7 = icmp eq i32 %75, %93
  br i1 %cmp30.7, label %for.inc33.6.for.end35_crit_edge, label %for.inc33.7

for.inc33.6.for.end35_crit_edge:                  ; preds = %for.inc33.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

for.inc33.7:                                      ; preds = %for.inc33.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

for.end35:                                        ; preds = %for.inc33.7, %for.inc33.6.for.end35_crit_edge, %for.inc33.5.for.end35_crit_edge, %for.inc33.4.for.end35_crit_edge, %for.inc33.3.for.end35_crit_edge, %for.inc33.2.for.end35_crit_edge, %for.inc33.1.for.end35_crit_edge, %for.inc33.for.end35_crit_edge, %for.cond26.preheader.for.end35_crit_edge
  %cmp36 = phi i1 [ true, %for.inc33.7 ], [ false, %for.inc33.6.for.end35_crit_edge ], [ false, %for.inc33.5.for.end35_crit_edge ], [ false, %for.inc33.4.for.end35_crit_edge ], [ false, %for.inc33.3.for.end35_crit_edge ], [ false, %for.inc33.2.for.end35_crit_edge ], [ false, %for.inc33.1.for.end35_crit_edge ], [ false, %for.inc33.for.end35_crit_edge ], [ false, %for.cond26.preheader.for.end35_crit_edge ]
  %i.0.lcssa = phi i32 [ 8, %for.inc33.7 ], [ 7, %for.inc33.6.for.end35_crit_edge ], [ 6, %for.inc33.5.for.end35_crit_edge ], [ 5, %for.inc33.4.for.end35_crit_edge ], [ 4, %for.inc33.3.for.end35_crit_edge ], [ 3, %for.inc33.2.for.end35_crit_edge ], [ 2, %for.inc33.1.for.end35_crit_edge ], [ 1, %for.inc33.for.end35_crit_edge ], [ 0, %for.cond26.preheader.for.end35_crit_edge ]
  %cmp27.lcssa = phi i1 [ false, %for.inc33.7 ], [ true, %for.inc33.6.for.end35_crit_edge ], [ true, %for.inc33.5.for.end35_crit_edge ], [ true, %for.inc33.4.for.end35_crit_edge ], [ true, %for.inc33.3.for.end35_crit_edge ], [ true, %for.inc33.2.for.end35_crit_edge ], [ true, %for.inc33.1.for.end35_crit_edge ], [ true, %for.inc33.for.end35_crit_edge ], [ true, %for.cond26.preheader.for.end35_crit_edge ]
  %94 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %action, label %for.end35.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb56
  ]

for.end35.cleanup_crit_edge:                      ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %for.end35
  br i1 %cmp36, label %do.body38, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body38:                                        ; preds = %sw.bb
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, ptr noundef %ifa_address) #14
  %call43 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp.2, ptr noundef nonnull @.str.104, ptr noundef %ifa_address, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.body38.cleanup_crit_edge, label %do.end49

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end49:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy50 = getelementptr i8, ptr %nb, i32 -10336
  %95 = ptrtoint ptr %wiphy50 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wiphy50, align 4
  %dev51 = getelementptr inbounds %struct.wiphy, ptr %96, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef %call43) #17
  br label %cleanup

sw.bb56:                                          ; preds = %for.end35
  br i1 %cmp27.lcssa, label %if.then58, label %sw.bb56.cleanup_crit_edge

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then58:                                        ; preds = %sw.bb56
  %arrayidx59 = getelementptr [8 x i32], ptr %addr_table, i32 0, i32 %i.0.lcssa
  %97 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %arrayidx59, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.111, ptr noundef %ifa_address) #14
  %call64 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp.2, ptr noundef nonnull @.str.112, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  %wiphy91 = getelementptr i8, ptr %nb, i32 -10336
  br i1 %tobool65.not, label %for.cond76.preheader, label %do.end70

for.cond76.preheader:                             ; preds = %if.then58
  %98 = ptrtoint ptr %addr_table to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp80 = icmp eq i32 %99, 0
  br i1 %cmp80, label %for.cond76.preheader.for.inc96_crit_edge, label %if.end82

for.cond76.preheader.for.inc96_crit_edge:         ; preds = %for.cond76.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96

do.end70:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %wiphy91 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wiphy91, align 4
  %dev72 = getelementptr inbounds %struct.wiphy, ptr %101, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.106, i32 noundef %call64) #17
  br label %cleanup

if.end82:                                         ; preds = %for.cond76.preheader
  %call84 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp.2, ptr noundef nonnull @.str.104, ptr noundef nonnull %addr_table, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end82.for.inc96_crit_edge, label %do.end90

if.end82.for.inc96_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96

do.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  %102 = ptrtoint ptr %wiphy91 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wiphy91, align 4
  %dev92 = getelementptr inbounds %struct.wiphy, ptr %103, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef %call84) #17
  br label %for.inc96

for.inc96:                                        ; preds = %do.end90, %if.end82.for.inc96_crit_edge, %for.cond76.preheader.for.inc96_crit_edge
  %arrayidx79.1 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 1
  %104 = ptrtoint ptr %arrayidx79.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx79.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp80.1 = icmp eq i32 %105, 0
  br i1 %cmp80.1, label %for.inc96.for.inc96.1_crit_edge, label %if.end82.1

for.inc96.for.inc96.1_crit_edge:                  ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.1

if.end82.1:                                       ; preds = %for.inc96
  %call84.1 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp.2, ptr noundef nonnull @.str.104, ptr noundef %arrayidx79.1, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.1)
  %tobool85.not.1 = icmp eq i32 %call84.1, 0
  br i1 %tobool85.not.1, label %if.end82.1.for.inc96.1_crit_edge, label %do.end90.1

if.end82.1.for.inc96.1_crit_edge:                 ; preds = %if.end82.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.1

do.end90.1:                                       ; preds = %if.end82.1
  call void @__sanitizer_cov_trace_pc() #16
  %106 = ptrtoint ptr %wiphy91 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wiphy91, align 4
  %dev92.1 = getelementptr inbounds %struct.wiphy, ptr %107, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92.1, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef %call84.1) #17
  br label %for.inc96.1

for.inc96.1:                                      ; preds = %do.end90.1, %if.end82.1.for.inc96.1_crit_edge, %for.inc96.for.inc96.1_crit_edge
  %arrayidx79.2 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 2
  %108 = ptrtoint ptr %arrayidx79.2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx79.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp80.2 = icmp eq i32 %109, 0
  br i1 %cmp80.2, label %for.inc96.1.for.inc96.2_crit_edge, label %if.end82.2

for.inc96.1.for.inc96.2_crit_edge:                ; preds = %for.inc96.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.2

if.end82.2:                                       ; preds = %for.inc96.1
  %call84.2 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp.2, ptr noundef nonnull @.str.104, ptr noundef %arrayidx79.2, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.2)
  %tobool85.not.2 = icmp eq i32 %call84.2, 0
  br i1 %tobool85.not.2, label %if.end82.2.for.inc96.2_crit_edge, label %do.end90.2

if.end82.2.for.inc96.2_crit_edge:                 ; preds = %if.end82.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.2

do.end90.2:                                       ; preds = %if.end82.2
  call void @__sanitizer_cov_trace_pc() #16
  %110 = ptrtoint ptr %wiphy91 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wiphy91, align 4
  %dev92.2 = getelementptr inbounds %struct.wiphy, ptr %111, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92.2, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef %call84.2) #17
  br label %for.inc96.2

for.inc96.2:                                      ; preds = %do.end90.2, %if.end82.2.for.inc96.2_crit_edge, %for.inc96.1.for.inc96.2_crit_edge
  %arrayidx79.3 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 3
  %112 = ptrtoint ptr %arrayidx79.3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx79.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp80.3 = icmp eq i32 %113, 0
  br i1 %cmp80.3, label %for.inc96.2.for.inc96.3_crit_edge, label %if.end82.3

for.inc96.2.for.inc96.3_crit_edge:                ; preds = %for.inc96.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.3

if.end82.3:                                       ; preds = %for.inc96.2
  %call84.3 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp.2, ptr noundef nonnull @.str.104, ptr noundef %arrayidx79.3, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.3)
  %tobool85.not.3 = icmp eq i32 %call84.3, 0
  br i1 %tobool85.not.3, label %if.end82.3.for.inc96.3_crit_edge, label %do.end90.3

if.end82.3.for.inc96.3_crit_edge:                 ; preds = %if.end82.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.3

do.end90.3:                                       ; preds = %if.end82.3
  call void @__sanitizer_cov_trace_pc() #16
  %114 = ptrtoint ptr %wiphy91 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wiphy91, align 4
  %dev92.3 = getelementptr inbounds %struct.wiphy, ptr %115, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92.3, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef %call84.3) #17
  br label %for.inc96.3

for.inc96.3:                                      ; preds = %do.end90.3, %if.end82.3.for.inc96.3_crit_edge, %for.inc96.2.for.inc96.3_crit_edge
  %arrayidx79.4 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 4
  %116 = ptrtoint ptr %arrayidx79.4 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx79.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp80.4 = icmp eq i32 %117, 0
  br i1 %cmp80.4, label %for.inc96.3.for.inc96.4_crit_edge, label %if.end82.4

for.inc96.3.for.inc96.4_crit_edge:                ; preds = %for.inc96.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.4

if.end82.4:                                       ; preds = %for.inc96.3
  %call84.4 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp.2, ptr noundef nonnull @.str.104, ptr noundef %arrayidx79.4, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.4)
  %tobool85.not.4 = icmp eq i32 %call84.4, 0
  br i1 %tobool85.not.4, label %if.end82.4.for.inc96.4_crit_edge, label %do.end90.4

if.end82.4.for.inc96.4_crit_edge:                 ; preds = %if.end82.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.4

do.end90.4:                                       ; preds = %if.end82.4
  call void @__sanitizer_cov_trace_pc() #16
  %118 = ptrtoint ptr %wiphy91 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wiphy91, align 4
  %dev92.4 = getelementptr inbounds %struct.wiphy, ptr %119, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92.4, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef %call84.4) #17
  br label %for.inc96.4

for.inc96.4:                                      ; preds = %do.end90.4, %if.end82.4.for.inc96.4_crit_edge, %for.inc96.3.for.inc96.4_crit_edge
  %arrayidx79.5 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 5
  %120 = ptrtoint ptr %arrayidx79.5 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx79.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp80.5 = icmp eq i32 %121, 0
  br i1 %cmp80.5, label %for.inc96.4.for.inc96.5_crit_edge, label %if.end82.5

for.inc96.4.for.inc96.5_crit_edge:                ; preds = %for.inc96.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.5

if.end82.5:                                       ; preds = %for.inc96.4
  %call84.5 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp.2, ptr noundef nonnull @.str.104, ptr noundef %arrayidx79.5, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.5)
  %tobool85.not.5 = icmp eq i32 %call84.5, 0
  br i1 %tobool85.not.5, label %if.end82.5.for.inc96.5_crit_edge, label %do.end90.5

if.end82.5.for.inc96.5_crit_edge:                 ; preds = %if.end82.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.5

do.end90.5:                                       ; preds = %if.end82.5
  call void @__sanitizer_cov_trace_pc() #16
  %122 = ptrtoint ptr %wiphy91 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wiphy91, align 4
  %dev92.5 = getelementptr inbounds %struct.wiphy, ptr %123, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92.5, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef %call84.5) #17
  br label %for.inc96.5

for.inc96.5:                                      ; preds = %do.end90.5, %if.end82.5.for.inc96.5_crit_edge, %for.inc96.4.for.inc96.5_crit_edge
  %arrayidx79.6 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 6
  %124 = ptrtoint ptr %arrayidx79.6 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx79.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp80.6 = icmp eq i32 %125, 0
  br i1 %cmp80.6, label %for.inc96.5.for.inc96.6_crit_edge, label %if.end82.6

for.inc96.5.for.inc96.6_crit_edge:                ; preds = %for.inc96.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.6

if.end82.6:                                       ; preds = %for.inc96.5
  %call84.6 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp.2, ptr noundef nonnull @.str.104, ptr noundef %arrayidx79.6, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.6)
  %tobool85.not.6 = icmp eq i32 %call84.6, 0
  br i1 %tobool85.not.6, label %if.end82.6.for.inc96.6_crit_edge, label %do.end90.6

if.end82.6.for.inc96.6_crit_edge:                 ; preds = %if.end82.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc96.6

do.end90.6:                                       ; preds = %if.end82.6
  call void @__sanitizer_cov_trace_pc() #16
  %126 = ptrtoint ptr %wiphy91 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wiphy91, align 4
  %dev92.6 = getelementptr inbounds %struct.wiphy, ptr %127, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92.6, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef %call84.6) #17
  br label %for.inc96.6

for.inc96.6:                                      ; preds = %do.end90.6, %if.end82.6.for.inc96.6_crit_edge, %for.inc96.5.for.inc96.6_crit_edge
  %arrayidx79.7 = getelementptr inbounds [8 x i32], ptr %addr_table, i32 0, i32 7
  %128 = ptrtoint ptr %arrayidx79.7 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx79.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp80.7 = icmp eq i32 %129, 0
  br i1 %cmp80.7, label %for.inc96.6.cleanup_crit_edge, label %if.end82.7

for.inc96.6.cleanup_crit_edge:                    ; preds = %for.inc96.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end82.7:                                       ; preds = %for.inc96.6
  %call84.7 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp.2, ptr noundef nonnull @.str.104, ptr noundef %arrayidx79.7, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.7)
  %tobool85.not.7 = icmp eq i32 %call84.7, 0
  br i1 %tobool85.not.7, label %if.end82.7.cleanup_crit_edge, label %do.end90.7

if.end82.7.cleanup_crit_edge:                     ; preds = %if.end82.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end90.7:                                       ; preds = %if.end82.7
  call void @__sanitizer_cov_trace_pc() #16
  %130 = ptrtoint ptr %wiphy91 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %wiphy91, align 4
  %dev92.7 = getelementptr inbounds %struct.wiphy, ptr %131, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92.7, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.106, i32 noundef %call84.7) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end90.7, %if.end82.7.cleanup_crit_edge, %for.inc96.6.cleanup_crit_edge, %do.end70, %sw.bb56.cleanup_crit_edge, %do.end49, %do.body38.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %for.end35.cleanup_crit_edge, %do.end, %for.end.cleanup_crit_edge, %land.lhs.true.15.cleanup_crit_edge, %if.end.14.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.end70 ], [ 1, %for.end.cleanup_crit_edge ], [ 1, %for.end35.cleanup_crit_edge ], [ 1, %sw.bb56.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %do.end49 ], [ 1, %do.body38.cleanup_crit_edge ], [ 0, %land.lhs.true.15.cleanup_crit_edge ], [ 0, %if.end.14.cleanup_crit_edge ], [ 1, %do.end90.7 ], [ 1, %if.end82.7.cleanup_crit_edge ], [ 1, %for.inc96.6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %addr_table) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_inet6addr_changed(ptr nocapture noundef readonly %nb, i32 noundef %action, ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %iflist = getelementptr i8, ptr %nb, i32 -10196
  %0 = ptrtoint ptr %iflist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iflist, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ndev = getelementptr inbounds %struct.brcmf_if, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %idev = getelementptr inbounds %struct.inet6_ifaddr, ptr %data, i32 0, i32 16
  %4 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp.not = icmp eq ptr %3, %7
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %ipv6_addr_tbl = getelementptr inbounds %struct.brcmf_if, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %arrayidx4.i = getelementptr [4 x i32], ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx9.i = getelementptr [4 x i32], ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx15.i = getelementptr [4 x i32], ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx15.i, align 4
  %16 = ptrtoint ptr %ipv6_addr_tbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ipv6_addr_tbl, align 4
  %xor.i = xor i32 %17, %9
  %arrayidx6.i = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %19, %11
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx11.i = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %21, %13
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx17.i = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %23, %15
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %if.end2.for.end_crit_edge, label %for.inc

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %if.end2
  %arrayidx4.1 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.1, align 4
  %xor.i.1 = xor i32 %25, %9
  %arrayidx6.i.1 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx6.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx6.i.1, align 4
  %xor7.i.1 = xor i32 %27, %11
  %or.i.1 = or i32 %xor7.i.1, %xor.i.1
  %arrayidx11.i.1 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 1, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx11.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11.i.1, align 4
  %xor12.i.1 = xor i32 %29, %13
  %or13.i.1 = or i32 %or.i.1, %xor12.i.1
  %arrayidx17.i.1 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 1, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx17.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx17.i.1, align 4
  %xor18.i.1 = xor i32 %31, %15
  %or19.i.1 = or i32 %or13.i.1, %xor18.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.1)
  %cmp.i.1 = icmp eq i32 %or19.i.1, 0
  br i1 %cmp.i.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx4.2 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 2
  %32 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4.2, align 4
  %xor.i.2 = xor i32 %33, %9
  %arrayidx6.i.2 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx6.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx6.i.2, align 4
  %xor7.i.2 = xor i32 %35, %11
  %or.i.2 = or i32 %xor7.i.2, %xor.i.2
  %arrayidx11.i.2 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx11.i.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx11.i.2, align 4
  %xor12.i.2 = xor i32 %37, %13
  %or13.i.2 = or i32 %or.i.2, %xor12.i.2
  %arrayidx17.i.2 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 2, i32 0, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx17.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx17.i.2, align 4
  %xor18.i.2 = xor i32 %39, %15
  %or19.i.2 = or i32 %or13.i.2, %xor18.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.2)
  %cmp.i.2 = icmp eq i32 %or19.i.2, 0
  br i1 %cmp.i.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx4.3 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 3
  %40 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx4.3, align 4
  %xor.i.3 = xor i32 %41, %9
  %arrayidx6.i.3 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 3, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx6.i.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx6.i.3, align 4
  %xor7.i.3 = xor i32 %43, %11
  %or.i.3 = or i32 %xor7.i.3, %xor.i.3
  %arrayidx11.i.3 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 3, i32 0, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx11.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx11.i.3, align 4
  %xor12.i.3 = xor i32 %45, %13
  %or13.i.3 = or i32 %or.i.3, %xor12.i.3
  %arrayidx17.i.3 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 3, i32 0, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx17.i.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx17.i.3, align 4
  %xor18.i.3 = xor i32 %47, %15
  %or19.i.3 = or i32 %or13.i.3, %xor18.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.3)
  %cmp.i.3 = icmp eq i32 %or19.i.3, 0
  br i1 %cmp.i.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx4.4 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 4
  %48 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx4.4, align 4
  %xor.i.4 = xor i32 %49, %9
  %arrayidx6.i.4 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 4, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx6.i.4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx6.i.4, align 4
  %xor7.i.4 = xor i32 %51, %11
  %or.i.4 = or i32 %xor7.i.4, %xor.i.4
  %arrayidx11.i.4 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 4, i32 0, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx11.i.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx11.i.4, align 4
  %xor12.i.4 = xor i32 %53, %13
  %or13.i.4 = or i32 %or.i.4, %xor12.i.4
  %arrayidx17.i.4 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 4, i32 0, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx17.i.4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx17.i.4, align 4
  %xor18.i.4 = xor i32 %55, %15
  %or19.i.4 = or i32 %or13.i.4, %xor18.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.4)
  %cmp.i.4 = icmp eq i32 %or19.i.4, 0
  br i1 %cmp.i.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx4.5 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 5
  %56 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx4.5, align 4
  %xor.i.5 = xor i32 %57, %9
  %arrayidx6.i.5 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 5, i32 0, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx6.i.5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx6.i.5, align 4
  %xor7.i.5 = xor i32 %59, %11
  %or.i.5 = or i32 %xor7.i.5, %xor.i.5
  %arrayidx11.i.5 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 5, i32 0, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx11.i.5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx11.i.5, align 4
  %xor12.i.5 = xor i32 %61, %13
  %or13.i.5 = or i32 %or.i.5, %xor12.i.5
  %arrayidx17.i.5 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 5, i32 0, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx17.i.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx17.i.5, align 4
  %xor18.i.5 = xor i32 %63, %15
  %or19.i.5 = or i32 %or13.i.5, %xor18.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.5)
  %cmp.i.5 = icmp eq i32 %or19.i.5, 0
  br i1 %cmp.i.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx4.6 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 6
  %64 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx4.6, align 4
  %xor.i.6 = xor i32 %65, %9
  %arrayidx6.i.6 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 6, i32 0, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx6.i.6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx6.i.6, align 4
  %xor7.i.6 = xor i32 %67, %11
  %or.i.6 = or i32 %xor7.i.6, %xor.i.6
  %arrayidx11.i.6 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 6, i32 0, i32 0, i32 2
  %68 = ptrtoint ptr %arrayidx11.i.6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx11.i.6, align 4
  %xor12.i.6 = xor i32 %69, %13
  %or13.i.6 = or i32 %or.i.6, %xor12.i.6
  %arrayidx17.i.6 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 6, i32 0, i32 0, i32 3
  %70 = ptrtoint ptr %arrayidx17.i.6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx17.i.6, align 4
  %xor18.i.6 = xor i32 %71, %15
  %or19.i.6 = or i32 %or13.i.6, %xor18.i.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.6)
  %cmp.i.6 = icmp eq i32 %or19.i.6, 0
  br i1 %cmp.i.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx4.7 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 7
  %72 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx4.7, align 4
  %xor.i.7 = xor i32 %73, %9
  %arrayidx6.i.7 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 7, i32 0, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx6.i.7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx6.i.7, align 4
  %xor7.i.7 = xor i32 %75, %11
  %or.i.7 = or i32 %xor7.i.7, %xor.i.7
  %arrayidx11.i.7 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 7, i32 0, i32 0, i32 2
  %76 = ptrtoint ptr %arrayidx11.i.7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx11.i.7, align 4
  %xor12.i.7 = xor i32 %77, %13
  %or13.i.7 = or i32 %or.i.7, %xor12.i.7
  %arrayidx17.i.7 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 7, i32 0, i32 0, i32 3
  %78 = ptrtoint ptr %arrayidx17.i.7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx17.i.7, align 4
  %xor18.i.7 = xor i32 %79, %15
  %or19.i.7 = or i32 %or13.i.7, %xor18.i.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.7)
  %cmp.i.7 = icmp eq i32 %or19.i.7, 0
  br i1 %cmp.i.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.7, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end2.for.end_crit_edge
  %cmp7 = phi i1 [ true, %for.inc.7 ], [ false, %for.inc.6.for.end_crit_edge ], [ false, %for.inc.5.for.end_crit_edge ], [ false, %for.inc.4.for.end_crit_edge ], [ false, %for.inc.3.for.end_crit_edge ], [ false, %for.inc.2.for.end_crit_edge ], [ false, %for.inc.1.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ], [ false, %if.end2.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 8, %for.inc.7 ], [ 7, %for.inc.6.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 0, %if.end2.for.end_crit_edge ]
  %cmp3.lcssa = phi i1 [ false, %for.inc.7 ], [ true, %for.inc.6.for.end_crit_edge ], [ true, %for.inc.5.for.end_crit_edge ], [ true, %for.inc.4.for.end_crit_edge ], [ true, %for.inc.3.for.end_crit_edge ], [ true, %for.inc.2.for.end_crit_edge ], [ true, %for.inc.1.for.end_crit_edge ], [ true, %for.inc.for.end_crit_edge ], [ true, %if.end2.for.end_crit_edge ]
  %80 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %action, label %for.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb29
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  br i1 %cmp7, label %if.then8, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb
  %ipv6addr_idx = getelementptr inbounds %struct.brcmf_if, ptr %1, i32 0, i32 14
  %81 = ptrtoint ptr %ipv6addr_idx to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ipv6addr_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %82)
  %cmp9 = icmp ult i8 %82, 8
  br i1 %cmp9, label %if.then11, label %for.body19.preheader

for.body19.preheader:                             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %uglygep = getelementptr i8, ptr %1, i32 236
  %83 = call ptr @memmove(ptr %ipv6_addr_tbl, ptr %uglygep, i32 112)
  %arrayidx25 = getelementptr %struct.brcmf_if, ptr %1, i32 0, i32 13, i32 7
  %84 = call ptr @memcpy(ptr %arrayidx25, ptr %data, i32 16)
  br label %sw.epilog

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %82 to i32
  %inc13 = add nuw nsw i8 %82, 1
  %85 = ptrtoint ptr %ipv6addr_idx to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %inc13, ptr %ipv6addr_idx, align 4
  %arrayidx14 = getelementptr %struct.in6_addr, ptr %ipv6_addr_tbl, i32 %conv
  %86 = call ptr @memcpy(ptr %arrayidx14, ptr %data, i32 16)
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.end
  br i1 %cmp3.lcssa, label %for.cond33.preheader, label %sw.bb29.sw.epilog_crit_edge

sw.bb29.sw.epilog_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.cond33.preheader:                             ; preds = %sw.bb29
  %ipv6addr_idx34 = getelementptr inbounds %struct.brcmf_if, ptr %1, i32 0, i32 14
  %87 = ptrtoint ptr %ipv6addr_idx34 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ipv6addr_idx34, align 4
  %conv3585 = zext i8 %88 to i32
  %sub86 = add nsw i32 %conv3585, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %sub86)
  %cmp3687 = icmp slt i32 %i.0.lcssa, %sub86
  br i1 %cmp3687, label %for.cond33.preheader.for.body38_crit_edge, label %for.cond33.preheader.for.end44_crit_edge

for.cond33.preheader.for.end44_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end44

for.cond33.preheader.for.body38_crit_edge:        ; preds = %for.cond33.preheader
  br label %for.body38

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.cond33.preheader.for.body38_crit_edge
  %i.288 = phi i32 [ %add40, %for.body38.for.body38_crit_edge ], [ %i.0.lcssa, %for.cond33.preheader.for.body38_crit_edge ]
  %arrayidx39 = getelementptr %struct.in6_addr, ptr %ipv6_addr_tbl, i32 %i.288
  %add40 = add nuw nsw i32 %i.288, 1
  %arrayidx41 = getelementptr %struct.in6_addr, ptr %ipv6_addr_tbl, i32 %add40
  %89 = call ptr @memcpy(ptr %arrayidx39, ptr %arrayidx41, i32 16)
  %90 = ptrtoint ptr %ipv6addr_idx34 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ipv6addr_idx34, align 4
  %conv35 = zext i8 %91 to i32
  %sub = add nsw i32 %conv35, -1
  %cmp36 = icmp slt i32 %add40, %sub
  br i1 %cmp36, label %for.body38.for.body38_crit_edge, label %for.body38.for.end44_crit_edge

for.body38.for.end44_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end44

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body38

for.end44:                                        ; preds = %for.body38.for.end44_crit_edge, %for.cond33.preheader.for.end44_crit_edge
  %i.2.lcssa = phi i32 [ %i.0.lcssa, %for.cond33.preheader.for.end44_crit_edge ], [ %add40, %for.body38.for.end44_crit_edge ]
  %arrayidx45 = getelementptr %struct.in6_addr, ptr %ipv6_addr_tbl, i32 %i.2.lcssa
  %92 = call ptr @memset(ptr %arrayidx45, i32 0, i32 16)
  %93 = ptrtoint ptr %ipv6addr_idx34 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ipv6addr_idx34, align 4
  %dec = add i8 %94, -1
  store i8 %dec, ptr %ipv6addr_idx34, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end44, %sw.bb29.sw.epilog_crit_edge, %if.then11, %for.body19.preheader, %sw.bb.sw.epilog_crit_edge, %for.end.sw.epilog_crit_edge
  %ndoffload_work = getelementptr inbounds %struct.brcmf_if, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %95 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %95, ptr noundef %ndoffload_work) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inet6addr_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_core_bus_reset(ptr nocapture noundef readonly %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10372
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ops.i = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %reset.i = getelementptr inbounds %struct.brcmf_bus_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.brcmf_bus_reset.exit_crit_edge, label %if.end.i

entry.brcmf_bus_reset.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %brcmf_bus_reset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.brcmf_bus, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 %5(ptr noundef %7) #14
  br label %brcmf_bus_reset.exit

brcmf_bus_reset.exit:                             ; preds = %if.end.i, %entry.brcmf_bus_reset.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_debugfs_add_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_revinfo_read(ptr noundef %s, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  %drev = alloca [16 x i8], align 1
  %brev = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %drvr = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %drev) #14
  %6 = call ptr @memset(ptr %drev, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %brev) #14
  %vendorid = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 1
  %7 = ptrtoint ptr %brev to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %brev, align 8
  %8 = ptrtoint ptr %vendorid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vendorid, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.118, i32 noundef %9) #14
  %deviceid = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 2
  %10 = ptrtoint ptr %deviceid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %deviceid, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.119, i32 noundef %11) #14
  %radiorev = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 3
  %12 = ptrtoint ptr %radiorev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %radiorev, align 4
  %call1 = call ptr @brcmu_dotrev_str(i32 noundef %13, ptr noundef nonnull %drev) #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, ptr noundef %call1) #14
  %chipname = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.121, ptr noundef %chipname) #14
  %chippkg = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 15
  %14 = ptrtoint ptr %chippkg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chippkg, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.122, i32 noundef %15) #14
  %corerev = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 4
  %16 = ptrtoint ptr %corerev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %corerev, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.123, i32 noundef %17) #14
  %boardid = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 5
  %18 = ptrtoint ptr %boardid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %boardid, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.124, i32 noundef %19) #14
  %boardvendor = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 6
  %20 = ptrtoint ptr %boardvendor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %boardvendor, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.125, i32 noundef %21) #14
  %boardrev = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 7
  %22 = ptrtoint ptr %boardrev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %boardrev, align 4
  %call4 = call ptr @brcmu_boardrev_str(i32 noundef %23, ptr noundef nonnull %brev) #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.126, ptr noundef %call4) #14
  %driverrev = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 8
  %24 = ptrtoint ptr %driverrev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %driverrev, align 4
  %call6 = call ptr @brcmu_dotrev_str(i32 noundef %25, ptr noundef nonnull %drev) #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.127, ptr noundef %call6) #14
  %ucoderev = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 9
  %26 = ptrtoint ptr %ucoderev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ucoderev, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.128, i32 noundef %27) #14
  %bus = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 10
  %28 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bus, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.129, i32 noundef %29) #14
  %phytype = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 12
  %30 = ptrtoint ptr %phytype to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phytype, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.130, i32 noundef %31) #14
  %phyrev = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 13
  %32 = ptrtoint ptr %phyrev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phyrev, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.131, i32 noundef %33) #14
  %anarev = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 14
  %34 = ptrtoint ptr %anarev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %anarev, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.132, i32 noundef %35) #14
  %nvramrev = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 18, i32 16
  %36 = ptrtoint ptr %nvramrev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nvramrev, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.133, i32 noundef %37) #14
  %38 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drvr, align 4
  %clmver = getelementptr inbounds %struct.brcmf_pub, ptr %39, i32 0, i32 24
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.134, ptr noundef %clmver) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %brev) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %drev) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_debugfs_get_devdir(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_feat_debugfs_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_net_p2p_open(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_net_p2p_open, ptr noundef nonnull @.str.24) #14
  %call = tail call i32 @brcmf_cfg80211_up(ptr noundef %ndev) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_net_p2p_stop(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_net_p2p_stop, ptr noundef nonnull @.str.24) #14
  %call = tail call i32 @brcmf_cfg80211_down(ptr noundef %ndev) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_net_p2p_start_xmit(ptr noundef %skb, ptr nocapture noundef readnone %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_boardrev_str(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bus_reset_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #1 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #14
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value, align 1, !annotation !347
  %call = call i32 @kstrtou8_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not = icmp eq i8 %4, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %bus_reset = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %bus_reset) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !37, !38, !40, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !83, !85, !86, !88, !90, !92, !94, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !113, !115, !117, !118, !119, !120, !122, !123, !125, !127, !129, !131, !133, !134, !136, !137, !138, !140, !142, !143, !144, !146, !148, !150, !151, !152, !154, !156, !157, !158, !160, !162, !164, !165, !166, !168, !170, !172, !174, !176, !178, !179, !180, !182, !184, !185, !186, !188, !189, !190, !191, !192, !194, !195, !196, !198, !200, !201, !203, !205, !206, !207, !209, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !227, !228, !230, !231, !232, !233, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !249, !251, !252, !254, !256, !258, !259, !260, !262, !264, !265, !266, !268, !270, !272, !274, !276, !278, !279, !280, !281, !283, !285, !286, !287, !289, !291, !293, !294, !295, !297, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332}
!llvm.named.register.sp = !{!334}
!llvm.module.flags = !{!335, !336, !337, !338, !339, !340, !341, !342}
!llvm.ident = !{!343}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 68, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 73, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 82, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @brcmf_get_ifp._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @brcmf_get_ifp._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 106, i32 37}
!14 = !{ptr @__func__.brcmf_configure_arp_nd_offload, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 108, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 111, i32 38}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 113, i32 4}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 116, i32 4}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 121, i32 37}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 123, i32 3}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 126, i32 3}
!29 = !{ptr @__func__.brcmf_txflowblock_if, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 387, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__func__.brcmf_netif_rx, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 425, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__func__.brcmf_rx_frame, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 512, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__func__.brcmf_rx_event, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 537, i32 2}
!40 = !{ptr @__func__.brcmf_net_attach, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 647, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @brcmf_net_attach.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 661, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @brcmf_net_attach.__key.20, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 662, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 669, i32 3}
!51 = !{ptr @brcmf_net_attach._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @brcmf_net_attach._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 676, i32 2}
!55 = !{ptr @__func__.brcmf_net_mon_attach, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 761, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 768, i32 3}
!60 = !{ptr @brcmf_net_mon_attach._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @brcmf_net_mon_attach._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @__func__.brcmf_net_setcarrier, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 777, i32 2}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @__func__.brcmf_add_if, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 856, i32 2}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 865, i32 4}
!70 = !{ptr @brcmf_add_if._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @brcmf_add_if._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 871, i32 4}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 879, i32 3}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 884, i32 3}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 886, i32 10}
!80 = !{ptr @brcmf_add_if.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 904, i32 2}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @brcmf_add_if.__key.34, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 905, i32 2}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 910, i32 2}
!88 = !{ptr @__func__.brcmf_remove_interface, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 968, i32 2}
!90 = !{ptr @__func__.brcmf_alloc, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1304, i32 2}
!92 = !{ptr @__func__.brcmf_attach, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1334, i32 2}
!94 = !{ptr @brcmf_attach.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1339, i32 2}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1347, i32 3}
!99 = !{ptr @brcmf_attach._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @brcmf_attach._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1360, i32 3}
!103 = !{ptr @brcmf_attach._entry.39, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @brcmf_attach._entry_ptr.41, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @__func__.brcmf_dev_coredump, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1399, i32 3}
!107 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1407, i32 2}
!110 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @brcmf_fw_crashed._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @brcmf_fw_crashed._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @__func__.brcmf_detach, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1420, i32 2}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1494, i32 3}
!117 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @brcmf_netdev_wait_pend8021x._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @brcmf_netdev_wait_pend8021x._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @__func__.brcmf_bus_change_state, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1505, i32 2}
!122 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1508, i32 3}
!125 = distinct !{null, !126, !"iapp_l2_update_packet", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 266, i32 18}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h", i32 349, i32 13}
!129 = !{ptr @brcmf_netdev_ops_pri, !130, !"brcmf_netdev_ops_pri", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 633, i32 36}
!131 = !{ptr @__func__.brcmf_netdev_open, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 606, i32 2}
!133 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 610, i32 3}
!136 = !{ptr @brcmf_netdev_open._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @brcmf_netdev_open._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 617, i32 35}
!140 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 624, i32 3}
!142 = !{ptr @brcmf_netdev_open._entry.53, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @brcmf_netdev_open._entry_ptr.55, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @__func__.brcmf_netdev_stop, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 590, i32 2}
!146 = !{ptr @__func__.brcmf_netdev_start_xmit, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 299, i32 2}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 303, i32 3}
!150 = !{ptr @brcmf_netdev_start_xmit._entry, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @brcmf_netdev_start_xmit._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.57, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 331, i32 3}
!154 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 337, i32 4}
!156 = !{ptr @brcmf_netdev_start_xmit._entry.58, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @brcmf_netdev_start_xmit._entry_ptr.60, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @__func__.brcmf_netdev_set_mac_address, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 238, i32 2}
!160 = !{ptr @.str.61, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 240, i32 38}
!162 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 243, i32 3}
!164 = !{ptr @brcmf_netdev_set_mac_address._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @brcmf_netdev_set_mac_address._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.63, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 245, i32 3}
!168 = !{ptr @brcmf_ethtool_ops, !169, !"brcmf_ethtool_ops", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 582, i32 33}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 575, i32 24}
!172 = !{ptr @__func__._brcmf_set_multicast_list, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 144, i32 2}
!174 = !{ptr @.str.65, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 171, i32 38}
!176 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 173, i32 3}
!178 = !{ptr @_brcmf_set_multicast_list._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @_brcmf_set_multicast_list._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.67, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 184, i32 37}
!182 = !{ptr @.str.69, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 186, i32 3}
!184 = !{ptr @_brcmf_set_multicast_list._entry.68, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @_brcmf_set_multicast_list._entry_ptr.70, !183, !"_entry_ptr", i1 false, i1 false}
!186 = distinct !{null, !187, !"__print_once", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 194, i32 4}
!188 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @_brcmf_set_multicast_list._entry.71, !187, !"_entry", i1 false, i1 false}
!191 = !{ptr @_brcmf_set_multicast_list._entry_ptr.74, !187, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.76, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 196, i32 4}
!194 = !{ptr @_brcmf_set_multicast_list._entry.75, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @_brcmf_set_multicast_list._entry_ptr.77, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.78, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 211, i32 38}
!198 = !{ptr @__func__._brcmf_update_ndtable, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 213, i32 3}
!200 = !{ptr @.str.79, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.80, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 218, i32 39}
!203 = !{ptr @.str.81, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 222, i32 4}
!205 = !{ptr @_brcmf_update_ndtable._entry, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @_brcmf_update_ndtable._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @brcmf_netdev_ops_mon, !208, !"brcmf_netdev_ops_mon", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 749, i32 36}
!209 = !{ptr @__func__.brcmf_net_mon_open, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 705, i32 2}
!211 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 709, i32 3}
!213 = !{ptr @brcmf_net_mon_open._entry, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @brcmf_net_mon_open._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.84, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 712, i32 3}
!217 = !{ptr @brcmf_net_mon_open._entry.83, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @brcmf_net_mon_open._entry_ptr.85, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.87, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 719, i32 3}
!221 = !{ptr @brcmf_net_mon_open._entry.86, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @brcmf_net_mon_open._entry_ptr.88, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @__func__.brcmf_net_mon_stop, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 731, i32 2}
!225 = !{ptr @brcmf_net_mon_stop._entry, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 736, i32 3}
!227 = !{ptr @brcmf_net_mon_stop._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.89, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 924, i32 3}
!230 = !{ptr @.str.90, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @brcmf_del_if._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @brcmf_del_if._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @__func__.brcmf_psm_watchdog_notify, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 981, i32 2}
!235 = !{ptr @.str.91, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.92, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 983, i32 2}
!238 = !{ptr @brcmf_psm_watchdog_notify._entry, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @brcmf_psm_watchdog_notify._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.94, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 988, i32 3}
!242 = !{ptr @brcmf_psm_watchdog_notify._entry.93, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @brcmf_psm_watchdog_notify._entry_ptr.95, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @__func__.brcmf_bus_started, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1205, i32 2}
!246 = !{ptr @.str.96, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.97, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1208, i32 40}
!249 = !{ptr @brcmf_bus_started.__key, !250, !"__key", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1269, i32 2}
!251 = !{ptr @.str.98, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.99, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1272, i32 32}
!254 = !{ptr @.str.100, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1273, i32 22}
!256 = !{ptr @.str.101, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1282, i32 2}
!258 = !{ptr @brcmf_bus_started._entry, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @brcmf_bus_started._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @__func__.brcmf_net_p2p_attach, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 826, i32 2}
!262 = !{ptr @.str.102, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 836, i32 3}
!264 = !{ptr @brcmf_net_p2p_attach._entry, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @brcmf_net_p2p_attach._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @brcmf_netdev_ops_p2p, !267, !"brcmf_netdev_ops_p2p", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 815, i32 36}
!268 = !{ptr @__func__.brcmf_net_p2p_open, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 794, i32 2}
!270 = !{ptr @__func__.brcmf_net_p2p_stop, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 801, i32 2}
!272 = !{ptr @.str.103, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1022, i32 37}
!274 = !{ptr @.str.104, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1029, i32 38}
!276 = !{ptr @.str.105, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1032, i32 3}
!278 = !{ptr @.str.106, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @brcmf_inetaddr_changed._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @brcmf_inetaddr_changed._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.107, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1043, i32 4}
!283 = !{ptr @.str.109, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1049, i32 5}
!285 = !{ptr @brcmf_inetaddr_changed._entry.108, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @brcmf_inetaddr_changed._entry_ptr.110, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.111, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1055, i32 4}
!289 = !{ptr @.str.112, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1058, i32 40}
!291 = !{ptr @.str.114, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1061, i32 5}
!293 = !{ptr @brcmf_inetaddr_changed._entry.113, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @brcmf_inetaddr_changed._entry_ptr.115, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @brcmf_inetaddr_changed._entry.116, !296, !"_entry", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1072, i32 6}
!297 = !{ptr @brcmf_inetaddr_changed._entry_ptr.117, !296, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.118, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1145, i32 16}
!300 = !{ptr @.str.119, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1146, i32 16}
!302 = !{ptr @.str.120, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1147, i32 16}
!304 = !{ptr @.str.121, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1148, i32 16}
!306 = !{ptr @.str.122, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1149, i32 16}
!308 = !{ptr @.str.123, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1150, i32 16}
!310 = !{ptr @.str.124, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1151, i32 16}
!312 = !{ptr @.str.125, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1152, i32 16}
!314 = !{ptr @.str.126, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1153, i32 16}
!316 = !{ptr @.str.127, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1154, i32 16}
!318 = !{ptr @.str.128, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1155, i32 16}
!320 = !{ptr @.str.129, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1156, i32 16}
!322 = !{ptr @.str.130, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1157, i32 16}
!324 = !{ptr @.str.131, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1158, i32 16}
!326 = !{ptr @.str.132, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1159, i32 16}
!328 = !{ptr @.str.133, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1160, i32 16}
!330 = !{ptr @.str.134, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1162, i32 16}
!332 = !{ptr @bus_reset_fops, !333, !"bus_reset_fops", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c", i32 1192, i32 37}
!334 = !{!"sp"}
!335 = !{i32 1, !"wchar_size", i32 2}
!336 = !{i32 1, !"min_enum_size", i32 4}
!337 = !{i32 8, !"branch-target-enforcement", i32 0}
!338 = !{i32 8, !"sign-return-address", i32 0}
!339 = !{i32 8, !"sign-return-address-all", i32 0}
!340 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!341 = !{i32 7, !"uwtable", i32 1}
!342 = !{i32 7, !"frame-pointer", i32 2}
!343 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!344 = !{i8 0, i8 2}
!345 = !{i64 2148247989, i64 2148248015, i64 2148248044, i64 2148248078, i64 2148248109, i64 2148248132}
!346 = !{!"branch_weights", i32 2000, i32 1}
!347 = !{!"auto-init"}
!348 = !{i64 2148245524, i64 2148245550, i64 2148245579, i64 2148245613, i64 2148245644, i64 2148245667}
