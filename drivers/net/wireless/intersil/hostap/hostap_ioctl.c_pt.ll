; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/hostap/hostap_ioctl.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/hostap/hostap_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iw_priv_args = type { i32, i16, i16, [16 x i8] }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.local_info = type { ptr, i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, i16, %struct.spinlock, i32, [8 x i16], [8 x i16], i32, i32, i32, ptr, [33 x i8], [33 x i8], i32, i16, i16, %struct.comm_tallies_sums, ptr, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, %struct.work_struct, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i32, i32, i32, i16, i32, %struct.iw_statistics, i32, i32, i32, i32, i32, ptr, %struct.net_device_stats, [6 x i8], ptr, %struct.net_device_stats, %struct.lib80211_crypt_info, i32, i32, i32, i32, i32, i32, [4 x %struct.prism2_frag_entry], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, ptr, %struct.tasklet_struct, %struct.sk_buff_head, %struct.tasklet_struct, %struct.sk_buff_head, i32, i32, ptr, i32, i32, %struct.work_struct, i32, i32, i32, [6 x i8], %struct.wait_queue_head, %struct.timer_list, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.comm_tallies_sums = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.prism2_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.125, i32 }
%union.anon.125 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.iwreq = type { %union.anon.121, %union.iwreq_data }
%union.anon.121 = type { [16 x i8] }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.prism2_helper_functions = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.87, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.53 }
%struct.llist_node = type { ptr }
%union.anon.53 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.55 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.87 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ap_data = type { i32, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.list_head, [256 x ptr], ptr, i32, i32, i32, %struct.mac_restrictions, i32, %struct.work_struct, ptr, %struct.work_struct, ptr, i16, [128 x ptr], i16, i16, i16, ptr, ptr }
%struct.mac_restrictions = type { i32, i32, %struct.list_head, %struct.spinlock }
%struct.hfa384x_hostscan_request = type { i16, i16, i16, [32 x i8] }
%struct.prism2_download_param = type { i32, i32, i32, [0 x %struct.prism2_download_area] }
%struct.prism2_download_area = type { i32, i32, ptr }
%struct.prism2_hostapd_param = type { i32, [6 x i8], %union.anon.127 }
%union.anon.127 = type { %struct.anon.130 }
%struct.anon.130 = type { [16 x i8], i32, i32, i8, [8 x i8], i16, [0 x i8] }
%struct.lib80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.iw_freq = type { i32, i16, i8, i8 }
%struct.iw_param = type { i32, i8, i8, i16 }
%struct.iw_range = type { i32, i32, i32, i16, i8, i8, [6 x i32], i32, %struct.iw_quality, %struct.iw_quality, i8, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [8 x i16], i8, i8, i8, i16, i8, [8 x i32], i8, i8, i16, i16, i16, i32, i32, i32, i32, i16, i8, [32 x %struct.iw_freq], i32 }
%struct.hfa384x_join_request = type { [6 x i8], i16 }
%struct.hfa384x_scan_request = type { i16, i16 }
%struct.hfa384x_hostscan_result = type { i16, i16, i16, [6 x i8], i16, i16, i16, [32 x i8], [10 x i8], i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.iw_mlme = type { i16, i16, %struct.sockaddr }
%struct.iw_scan_req = type { i8, i8, i8, i8, %struct.sockaddr, [32 x i8], i32, i32, [32 x %struct.iw_freq] }
%struct.hostap_bss_info = type { %struct.list_head, i32, i32, [6 x i8], i16, [32 x i8], i32, [64 x i8], i32, [64 x i8], i32, i32, i32 }
%struct.iw_encode_ext = type { i32, [8 x i8], [8 x i8], %struct.sockaddr, i16, i16, [0 x i8] }
%struct.iw_event = type { i16, i16, %union.iwreq_data }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@prism2_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @prism2_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@prism2_handler = internal constant { [56 x ptr], [32 x i8] } { [56 x ptr] [ptr null, ptr @prism2_get_name, ptr null, ptr null, ptr @prism2_ioctl_siwfreq, ptr @prism2_ioctl_giwfreq, ptr @prism2_ioctl_siwmode, ptr @prism2_ioctl_giwmode, ptr @prism2_ioctl_siwsens, ptr @prism2_ioctl_giwsens, ptr null, ptr @prism2_ioctl_giwrange, ptr null, ptr null, ptr null, ptr null, ptr @iw_handler_set_spy, ptr @iw_handler_get_spy, ptr @iw_handler_set_thrspy, ptr @iw_handler_get_thrspy, ptr @prism2_ioctl_siwap, ptr @prism2_ioctl_giwap, ptr @prism2_ioctl_siwmlme, ptr @prism2_ioctl_giwaplist, ptr @prism2_ioctl_siwscan, ptr @prism2_ioctl_giwscan, ptr @prism2_ioctl_siwessid, ptr @prism2_ioctl_giwessid, ptr @prism2_ioctl_siwnickn, ptr @prism2_ioctl_giwnickn, ptr null, ptr null, ptr @prism2_ioctl_siwrate, ptr @prism2_ioctl_giwrate, ptr @prism2_ioctl_siwrts, ptr @prism2_ioctl_giwrts, ptr @prism2_ioctl_siwfrag, ptr @prism2_ioctl_giwfrag, ptr @prism2_ioctl_siwtxpow, ptr @prism2_ioctl_giwtxpow, ptr @prism2_ioctl_siwretry, ptr @prism2_ioctl_giwretry, ptr @prism2_ioctl_siwencode, ptr @prism2_ioctl_giwencode, ptr @prism2_ioctl_siwpower, ptr @prism2_ioctl_giwpower, ptr null, ptr null, ptr @prism2_ioctl_siwgenie, ptr @prism2_ioctl_giwgenie, ptr @prism2_ioctl_siwauth, ptr @prism2_ioctl_giwauth, ptr @prism2_ioctl_siwencodeext, ptr @prism2_ioctl_giwencodeext, ptr null, ptr null], [32 x i8] zeroinitializer }, align 32
@prism2_private_handler = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @prism2_ioctl_priv_prism2_param, ptr @prism2_ioctl_priv_get_prism2_param, ptr @prism2_ioctl_priv_writemif, ptr @prism2_ioctl_priv_readmif], [16 x i8] zeroinitializer }, align 32
@prism2_priv = internal constant { [86 x %struct.iw_priv_args], [528 x i8] } { [86 x %struct.iw_priv_args] [%struct.iw_priv_args { i32 35812, i16 18433, i16 0, [16 x i8] c"monitor\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35811, i16 6145, i16 6145, [16 x i8] c"readmif\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35810, i16 6146, i16 0, [16 x i8] c"writemif\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35814, i16 18433, i16 0, [16 x i8] c"reset\00\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35816, i16 18433, i16 0, [16 x i8] c"inquire\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35822, i16 18434, i16 0, [16 x i8] c"set_rid_word\00\00\00\00" }, %struct.iw_priv_args { i32 35824, i16 18433, i16 0, [16 x i8] c"maccmd\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35818, i16 26625, i16 0, [16 x i8] c"wds_add\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35820, i16 26625, i16 0, [16 x i8] c"wds_del\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35826, i16 26625, i16 0, [16 x i8] c"addmac\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35828, i16 26625, i16 0, [16 x i8] c"delmac\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35830, i16 26625, i16 0, [16 x i8] c"kickmac\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35808, i16 18434, i16 0, [16 x i8] c"prism2_param\00\00\00\00" }, %struct.iw_priv_args { i32 35809, i16 18433, i16 18433, [16 x i8] c"getprism2_param\00" }, %struct.iw_priv_args { i32 35808, i16 18433, i16 0, [16 x i8] zeroinitializer }, %struct.iw_priv_args { i32 35809, i16 0, i16 18433, [16 x i8] zeroinitializer }, %struct.iw_priv_args { i32 2, i16 18433, i16 0, [16 x i8] c"txratectrl\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 2, i16 0, i16 18433, [16 x i8] c"gettxratectrl\00\00\00" }, %struct.iw_priv_args { i32 3, i16 18433, i16 0, [16 x i8] c"beacon_int\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 3, i16 0, i16 18433, [16 x i8] c"getbeacon_int\00\00\00" }, %struct.iw_priv_args { i32 4, i16 18433, i16 0, [16 x i8] c"pseudo_ibss\00\00\00\00\00" }, %struct.iw_priv_args { i32 4, i16 0, i16 18433, [16 x i8] c"getpseudo_ibss\00\00" }, %struct.iw_priv_args { i32 5, i16 18433, i16 0, [16 x i8] c"alc\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 5, i16 0, i16 18433, [16 x i8] c"getalc\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 7, i16 18433, i16 0, [16 x i8] c"dump\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 7, i16 0, i16 18433, [16 x i8] c"getdump\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 8, i16 18433, i16 0, [16 x i8] c"other_ap_policy\00" }, %struct.iw_priv_args { i32 8, i16 0, i16 18433, [16 x i8] c"getother_ap_pol\00" }, %struct.iw_priv_args { i32 9, i16 18433, i16 0, [16 x i8] c"max_inactivity\00\00" }, %struct.iw_priv_args { i32 9, i16 0, i16 18433, [16 x i8] c"getmax_inactivi\00" }, %struct.iw_priv_args { i32 10, i16 18433, i16 0, [16 x i8] c"bridge_packets\00\00" }, %struct.iw_priv_args { i32 10, i16 0, i16 18433, [16 x i8] c"getbridge_packe\00" }, %struct.iw_priv_args { i32 11, i16 18433, i16 0, [16 x i8] c"dtim_period\00\00\00\00\00" }, %struct.iw_priv_args { i32 11, i16 0, i16 18433, [16 x i8] c"getdtim_period\00\00" }, %struct.iw_priv_args { i32 12, i16 18433, i16 0, [16 x i8] c"nullfunc_ack\00\00\00\00" }, %struct.iw_priv_args { i32 12, i16 0, i16 18433, [16 x i8] c"getnullfunc_ack\00" }, %struct.iw_priv_args { i32 13, i16 18433, i16 0, [16 x i8] c"max_wds\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 13, i16 0, i16 18433, [16 x i8] c"getmax_wds\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 14, i16 18433, i16 0, [16 x i8] c"autom_ap_wds\00\00\00\00" }, %struct.iw_priv_args { i32 14, i16 0, i16 18433, [16 x i8] c"getautom_ap_wds\00" }, %struct.iw_priv_args { i32 15, i16 18433, i16 0, [16 x i8] c"ap_auth_algs\00\00\00\00" }, %struct.iw_priv_args { i32 15, i16 0, i16 18433, [16 x i8] c"getap_auth_algs\00" }, %struct.iw_priv_args { i32 16, i16 18433, i16 0, [16 x i8] c"allow_fcserr\00\00\00\00" }, %struct.iw_priv_args { i32 16, i16 0, i16 18433, [16 x i8] c"getallow_fcserr\00" }, %struct.iw_priv_args { i32 17, i16 18433, i16 0, [16 x i8] c"host_encrypt\00\00\00\00" }, %struct.iw_priv_args { i32 17, i16 0, i16 18433, [16 x i8] c"gethost_encrypt\00" }, %struct.iw_priv_args { i32 18, i16 18433, i16 0, [16 x i8] c"host_decrypt\00\00\00\00" }, %struct.iw_priv_args { i32 18, i16 0, i16 18433, [16 x i8] c"gethost_decrypt\00" }, %struct.iw_priv_args { i32 21, i16 18433, i16 0, [16 x i8] c"host_roaming\00\00\00\00" }, %struct.iw_priv_args { i32 21, i16 0, i16 18433, [16 x i8] c"gethost_roaming\00" }, %struct.iw_priv_args { i32 22, i16 18433, i16 0, [16 x i8] c"bcrx_sta_key\00\00\00\00" }, %struct.iw_priv_args { i32 22, i16 0, i16 18433, [16 x i8] c"getbcrx_sta_key\00" }, %struct.iw_priv_args { i32 23, i16 18433, i16 0, [16 x i8] c"ieee_802_1x\00\00\00\00\00" }, %struct.iw_priv_args { i32 23, i16 0, i16 18433, [16 x i8] c"getieee_802_1x\00\00" }, %struct.iw_priv_args { i32 24, i16 18433, i16 0, [16 x i8] c"antsel_tx\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 24, i16 0, i16 18433, [16 x i8] c"getantsel_tx\00\00\00\00" }, %struct.iw_priv_args { i32 25, i16 18433, i16 0, [16 x i8] c"antsel_rx\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 25, i16 0, i16 18433, [16 x i8] c"getantsel_rx\00\00\00\00" }, %struct.iw_priv_args { i32 26, i16 18433, i16 0, [16 x i8] c"monitor_type\00\00\00\00" }, %struct.iw_priv_args { i32 26, i16 0, i16 18433, [16 x i8] c"getmonitor_type\00" }, %struct.iw_priv_args { i32 27, i16 18433, i16 0, [16 x i8] c"wds_type\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 27, i16 0, i16 18433, [16 x i8] c"getwds_type\00\00\00\00\00" }, %struct.iw_priv_args { i32 28, i16 18433, i16 0, [16 x i8] c"hostscan\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 28, i16 0, i16 18433, [16 x i8] c"gethostscan\00\00\00\00\00" }, %struct.iw_priv_args { i32 29, i16 18433, i16 0, [16 x i8] c"ap_scan\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 29, i16 0, i16 18433, [16 x i8] c"getap_scan\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 30, i16 18433, i16 0, [16 x i8] c"enh_sec\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 30, i16 0, i16 18433, [16 x i8] c"getenh_sec\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 32, i16 18433, i16 0, [16 x i8] c"basic_rates\00\00\00\00\00" }, %struct.iw_priv_args { i32 32, i16 0, i16 18433, [16 x i8] c"getbasic_rates\00\00" }, %struct.iw_priv_args { i32 33, i16 18433, i16 0, [16 x i8] c"oper_rates\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 33, i16 0, i16 18433, [16 x i8] c"getoper_rates\00\00\00" }, %struct.iw_priv_args { i32 34, i16 18433, i16 0, [16 x i8] c"hostapd\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 34, i16 0, i16 18433, [16 x i8] c"gethostapd\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35, i16 18433, i16 0, [16 x i8] c"hostapd_sta\00\00\00\00\00" }, %struct.iw_priv_args { i32 35, i16 0, i16 18433, [16 x i8] c"gethostapd_sta\00\00" }, %struct.iw_priv_args { i32 36, i16 18433, i16 0, [16 x i8] c"wpa\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 36, i16 0, i16 18433, [16 x i8] c"getwpa\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 37, i16 18433, i16 0, [16 x i8] c"privacy_invoked\00" }, %struct.iw_priv_args { i32 37, i16 0, i16 18433, [16 x i8] c"getprivacy_invo\00" }, %struct.iw_priv_args { i32 38, i16 18433, i16 0, [16 x i8] c"tkip_countermea\00" }, %struct.iw_priv_args { i32 38, i16 0, i16 18433, [16 x i8] c"gettkip_counter\00" }, %struct.iw_priv_args { i32 39, i16 18433, i16 0, [16 x i8] c"drop_unencrypte\00" }, %struct.iw_priv_args { i32 39, i16 0, i16 18433, [16 x i8] c"getdrop_unencry\00" }, %struct.iw_priv_args { i32 40, i16 18433, i16 0, [16 x i8] c"scan_channels\00\00\00" }, %struct.iw_priv_args { i32 40, i16 0, i16 18433, [16 x i8] c"getscan_channel\00" }], [528 x i8] zeroinitializer }, align 32
@hostap_iw_handler_def = dso_local constant { %struct.iw_handler_def, [40 x i8] } { %struct.iw_handler_def { ptr @prism2_handler, i16 56, i16 4, i16 86, ptr @prism2_private_handler, ptr @prism2_priv, ptr @hostap_get_wireless_stats }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hostap\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IEEE 802.11b\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IEEE 802.11-DS\00", [17 x i8] zeroinitializer }, align 32
@freq_list = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2412, i32 2417, i32 2422, i32 2427, i32 2432, i32 2437, i32 2442, i32 2447, i32 2452, i32 2457, i32 2462, i32 2467, i32 2472, i32 2484], [40 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: empty SSID not allowed in Master mode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"prism2_ioctl_siwmode\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/intersil/hostap/hostap_ioctl.c\00", [44 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwmode._entry_ptr = internal global ptr @prism2_ioctl_siwmode._entry, section ".printk_index", align 4
@prism2_ioctl_siwmode._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017prism2: %s: operating mode changed %d -> %d\0A\00", [49 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwmode._entry_ptr.9 = internal global ptr @prism2_ioctl_siwmode._entry.7, section ".printk_index", align 4
@prism2_ioctl_siwmode._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\017%s: defaulting to host-based encryption as a workaround for firmware bug in Host AP mode WEP\0A\00", [32 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwmode._entry_ptr.12 = internal global ptr @prism2_ioctl_siwmode._entry.10, section ".printk_index", align 4
@hostap_monitor_mode_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Disabling monitor mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hostap_monitor_mode_disable\00", [36 x i8] zeroinitializer }, align 32
@hostap_monitor_mode_disable._entry_ptr = internal global ptr @hostap_monitor_mode_disable._entry, section ".printk_index", align 4
@hostap_monitor_mode_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017Enabling monitor mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hostap_monitor_mode_enable\00", [37 x i8] zeroinitializer }, align 32
@hostap_monitor_mode_enable._entry_ptr = internal global ptr @hostap_monitor_mode_enable._entry, section ".printk_index", align 4
@hostap_monitor_mode_enable._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.6, i32 1078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017Port type setting for monitor mode failed\0A\00", [51 x i8] zeroinitializer }, align 32
@hostap_monitor_mode_enable._entry_ptr.19 = internal global ptr @hostap_monitor_mode_enable._entry.17, section ".printk_index", align 4
@hostap_monitor_mode_enable._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.6, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017WEP flags setting failed\0A\00", [36 x i8] zeroinitializer }, align 32
@hostap_monitor_mode_enable._entry_ptr.22 = internal global ptr @hostap_monitor_mode_enable._entry.20, section ".printk_index", align 4
@hostap_monitor_mode_enable._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.6, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017Setting monitor mode failed\0A\00", [33 x i8] zeroinitializer }, align 32
@hostap_monitor_mode_enable._entry_ptr.25 = internal global ptr @hostap_monitor_mode_enable._entry.23, section ".printk_index", align 4
@prism2_ioctl_siwap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\017%s: ScanResults request failed - preferred AP delayed to next unsolicited scan\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"prism2_ioctl_siwap\00", [45 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwap._entry_ptr = internal global ptr @prism2_ioctl_siwap._entry, section ".printk_index", align 4
@prism2_ioctl_siwap._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.6, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\017%s: Preferred AP (SIOCSIWAP) is used only in Managed mode when host_roaming is enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwap._entry_ptr.30 = internal global ptr @prism2_ioctl_siwap._entry.28, section ".printk_index", align 4
@hostap_join_ap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: JoinRequest %pM failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hostap_join_ap\00", [17 x i8] zeroinitializer }, align 32
@hostap_join_ap._entry_ptr = internal global ptr @hostap_join_ap._entry, section ".printk_index", align 4
@hostap_join_ap._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.6, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Trying to join BSSID %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@hostap_join_ap._entry_ptr.35 = internal global ptr @hostap_join_ap._entry.33, section ".printk_index", align 4
@prism2_ioctl_giwaplist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017SIOCGIWAPLIST is currently only supported in Host AP mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prism2_ioctl_giwaplist\00", [41 x i8] zeroinitializer }, align 32
@prism2_ioctl_giwaplist._entry_ptr = internal global ptr @prism2_ioctl_giwaplist._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@prism2_request_hostscan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.6, i32 1646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: HOSTSCAN failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"prism2_request_hostscan\00", [40 x i8] zeroinitializer }, align 32
@prism2_request_hostscan._entry_ptr = internal global ptr @prism2_request_hostscan._entry, section ".printk_index", align 4
@prism2_request_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 1683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017SCANREQUEST failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"prism2_request_scan\00", [44 x i8] zeroinitializer }, align 32
@prism2_request_scan._entry_ptr = internal global ptr @prism2_request_scan._entry, section ".printk_index", align 4
@prism2_ioctl_giwscan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.6, i32 2081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017Scan result translation succeeded (length=%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"prism2_ioctl_giwscan\00", [43 x i8] zeroinitializer }, align 32
@prism2_ioctl_giwscan._entry_ptr = internal global ptr @prism2_ioctl_giwscan._entry, section ".printk_index", align 4
@prism2_ioctl_giwscan._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.6, i32 2087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017Scan result translation failed (res=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@prism2_ioctl_giwscan._entry_ptr.46 = internal global ptr @prism2_ioctl_giwscan._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcn_int=%d\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"resp_rate=%d\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atim=%d\00", [24 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwessid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.6, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: Host AP mode does not support 'Any' essid\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prism2_ioctl_siwessid\00", [42 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwessid._entry_ptr = internal global ptr @prism2_ioctl_siwessid._entry, section ".printk_index", align 4
@hostap_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016%s: updating basic rate set automatically to match with the new supported rate set\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hostap_set_rate\00", [16 x i8] zeroinitializer }, align 32
@hostap_set_rate._entry_ptr = internal global ptr @hostap_set_rate._entry, section ".printk_index", align 4
@hostap_set_rate._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.6, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: failed to set cnfBasicRates\0A\00", [61 x i8] zeroinitializer }, align 32
@hostap_set_rate._entry_ptr.57 = internal global ptr @hostap_set_rate._entry.55, section ".printk_index", align 4
@hostap_set_rate._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.6, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014%s: TXRateControl/cnfSupportedRates setting to 0x%x failed\0A\00", [34 x i8] zeroinitializer }, align 32
@hostap_set_rate._entry_ptr.60 = internal global ptr @hostap_set_rate._entry.58, section ".printk_index", align 4
@prism2_ioctl_siwtxpow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.6, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Turning radio off: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prism2_ioctl_siwtxpow\00", [42 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwtxpow._entry_ptr = internal global ptr @prism2_ioctl_siwtxpow._entry, section ".printk_index", align 4
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwtxpow._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.62, ptr @.str.6, i32 1528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Turning radio on: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwtxpow._entry_ptr.67 = internal global ptr @prism2_ioctl_siwtxpow._entry.65, section ".printk_index", align 4
@prism2_ioctl_siwretry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.6, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: Alternate retry count setting to %d failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prism2_ioctl_siwretry\00", [42 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwretry._entry_ptr = internal global ptr @prism2_ioctl_siwretry._entry, section ".printk_index", align 4
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WEP\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib80211_crypt_wep\00", [45 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwencode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.6, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014%s: could not initialize WEP: load module hostap_crypt_wep.o\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prism2_ioctl_siwencode\00", [41 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwencode._entry_ptr = internal global ptr @prism2_ioctl_siwencode._entry, section ".printk_index", align 4
@prism2_ioctl_siwencode._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.6, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: set_encryption failed\0A\00", [35 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwencode._entry_ptr.76 = internal global ptr @prism2_ioctl_siwencode._entry.74, section ".printk_index", align 4
@prism2_ioctl_siwencode._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.6, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: reset_port failed\0A\00", [39 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwencode._entry_ptr.79 = internal global ptr @prism2_ioctl_siwencode._entry.77, section ".printk_index", align 4
@prism2_ioctl_giwencode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.6, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CNFWEPFLAGS reading failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prism2_ioctl_giwencode\00", [41 x i8] zeroinitializer }, align 32
@prism2_ioctl_giwencode._entry_ptr = internal global ptr @prism2_ioctl_giwencode._entry, section ".printk_index", align 4
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib80211_crypt_tkip\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCMP\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib80211_crypt_ccmp\00", [44 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwencodeext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.6, i32 3253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: unsupported algorithm %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"prism2_ioctl_siwencodeext\00", [38 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwencodeext._entry_ptr = internal global ptr @prism2_ioctl_siwencodeext._entry, section ".printk_index", align 4
@prism2_ioctl_siwencodeext._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.6, i32 3265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: unknown crypto alg '%s'\0A\00", [33 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwencodeext._entry_ptr.90 = internal global ptr @prism2_ioctl_siwencodeext._entry.88, section ".printk_index", align 4
@prism2_ioctl_siwencodeext._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.6, i32 3313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: key setting failed\0A\00", [38 x i8] zeroinitializer }, align 32
@prism2_ioctl_siwencodeext._entry_ptr.93 = internal global ptr @prism2_ioctl_siwencodeext._entry.91, section ".printk_index", align 4
@prism2_ioctl_priv_prism2_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.6, i32 2343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017prism2: %s: pseudo IBSS change %d -> %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"prism2_ioctl_priv_prism2_param\00", [33 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_prism2_param._entry_ptr = internal global ptr @prism2_ioctl_priv_prism2_param._entry, section ".printk_index", align 4
@prism2_ioctl_priv_prism2_param._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.6, i32 2361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: %s ALC\0A\00", [18 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_prism2_param._entry_ptr.98 = internal global ptr @prism2_ioctl_priv_prism2_param._entry.96, section ".printk_index", align 4
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Disabling\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Enabling\00", [23 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_prism2_param._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.95, ptr @.str.6, i32 2527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017Leaving Host AP mode for HostScan failed\0A\00", [52 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_prism2_param._entry_ptr.103 = internal global ptr @prism2_ioctl_priv_prism2_param._entry.101, section ".printk_index", align 4
@prism2_ioctl_priv_prism2_param._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.95, ptr @.str.6, i32 2532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017HOSTSCAN failed\0A\00", [45 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_prism2_param._entry_ptr.106 = internal global ptr @prism2_ioctl_priv_prism2_param._entry.104, section ".printk_index", align 4
@prism2_ioctl_priv_prism2_param._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.95, ptr @.str.6, i32 2550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017Returning to Host AP mode after HostScan failed\0A\00", [45 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_prism2_param._entry_ptr.110 = internal global ptr @prism2_ioctl_priv_prism2_param._entry.108, section ".printk_index", align 4
@prism2_ioctl_priv_prism2_param._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.95, ptr @.str.6, i32 2576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: cnfEnhSecurity requires STA f/w 1.6.3 or newer\0A\00", [42 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_prism2_param._entry_ptr.113 = internal global ptr @prism2_ioctl_priv_prism2_param._entry.111, section ".printk_index", align 4
@prism2_ioctl_priv_prism2_param._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.95, ptr @.str.6, i32 2591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016%s: invalid basic rate set - basic rates must be in supported rate set\0A\00", [54 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_prism2_param._entry_ptr.116 = internal global ptr @prism2_ioctl_priv_prism2_param._entry.114, section ".printk_index", align 4
@prism2_ioctl_priv_prism2_param._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.95, ptr @.str.6, i32 2646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: prism2_param: unknown param %d\0A\00", [58 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_prism2_param._entry_ptr.119 = internal global ptr @prism2_ioctl_priv_prism2_param._entry.117, section ".printk_index", align 4
@prism2_ioctl_priv_get_prism2_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.6, i32 2833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: get_prism2_param: unknown param %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"prism2_ioctl_priv_get_prism2_param\00", [61 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_get_prism2_param._entry_ptr = internal global ptr @prism2_ioctl_priv_get_prism2_param._entry, section ".printk_index", align 4
@prism2_ioctl_priv_monitor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.6, i32 2895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\017%s: process %d (%s) used deprecated iwpriv monitor - update software to use iwconfig mode monitor\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"prism2_ioctl_priv_monitor\00", [38 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_monitor._entry_ptr = internal global ptr @prism2_ioctl_priv_monitor._entry, section ".printk_index", align 4
@prism2_ioctl_priv_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.6, i32 2937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: manual reset request(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"prism2_ioctl_priv_reset\00", [40 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_reset._entry_ptr = internal global ptr @prism2_ioctl_priv_reset._entry, section ".printk_index", align 4
@prism2_ioctl_priv_reset._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.6, i32 2969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017Unknown reset request %d\0A\00", [36 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_reset._entry_ptr.128 = internal global ptr @prism2_ioctl_priv_reset._entry.126, section ".printk_index", align 4
@prism2_ioctl_priv_set_rid_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.6, i32 2982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Set RID[0x%X] = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"prism2_ioctl_priv_set_rid_word\00", [33 x i8] zeroinitializer }, align 32
@prism2_ioctl_priv_set_rid_word._entry_ptr = internal global ptr @prism2_ioctl_priv_set_rid_word._entry, section ".printk_index", align 4
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@prism2_ioctl_set_encryption._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.132, ptr @.str.6, i32 3483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"prism2_ioctl_set_encryption\00", [36 x i8] zeroinitializer }, align 32
@prism2_ioctl_set_encryption._entry_ptr = internal global ptr @prism2_ioctl_set_encryption._entry, section ".printk_index", align 4
@prism2_ioctl_set_encryption._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.132, ptr @.str.6, i32 3523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@prism2_ioctl_set_encryption._entry_ptr.134 = internal global ptr @prism2_ioctl_set_encryption._entry.133, section ".printk_index", align 4
@prism2_ioctl_set_encryption._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.132, ptr @.str.6, i32 3534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: TX key idx setting failed\0A\00", [63 x i8] zeroinitializer }, align 32
@prism2_ioctl_set_encryption._entry_ptr.137 = internal global ptr @prism2_ioctl_set_encryption._entry.135, section ".printk_index", align 4
@prism2_ioctl_set_assoc_ap_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.6, i32 3661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%ssta: associated as client with AP %pM\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"prism2_ioctl_set_assoc_ap_addr\00", [33 x i8] zeroinitializer }, align 32
@prism2_ioctl_set_assoc_ap_addr._entry_ptr = internal global ptr @prism2_ioctl_set_assoc_ap_addr._entry, section ".printk_index", align 4
@.str.140 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.prism2_ioctl_giwrate = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1000000, i32 2000000, i32 11000000, i32 5500000, i32 11000000, i32 11000000, i32 11000000, i32 11000000], [32 x i8] zeroinitializer }, align 32
@switch.table.prism2_ioctl_giwrate.143 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 -22, i32 0, i32 -22, i32 -22, i32 -22, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.hostap_monitor_mode_enable = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 802, i16 802, i16 803], [26 x i8] zeroinitializer }, align 32
@switch.table.prism2_ioctl_priv_prism2_param = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 802, i16 802, i16 803], [26 x i8] zeroinitializer }, align 32
@switch.table.prism2_ioctl_priv_prism2_param.144 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 512, i16 1024, i16 2048], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 35812, i64 35814, i64 35816, i64 35818, i64 35820, i64 35822, i64 35824, i64 35826, i64 35828, i64 35830]
@__sancov_gen_cov_switch_values.145 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.146 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.147 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 35325, i64 35326]
@__sancov_gen_cov_switch_values.149 = internal global [10 x i64] [i64 8, i64 32, i64 6, i64 7, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 11, i64 22]
@__sancov_gen_cov_switch_values.152 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 8, i64 11, i64 22]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.160 = internal global [6 x i64] [i64 4, i64 32, i64 1000000, i64 2000000, i64 5500000, i64 11000000]
@__sancov_gen_cov_switch_values.161 = internal global [5 x i64] [i64 3, i64 32, i64 1000000, i64 2000000, i64 5500000]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 768]
@__sancov_gen_cov_switch_values.163 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.164 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.165 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [37 x i64] [i64 35, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40]
@__sancov_gen_cov_switch_values.167 = internal global [37 x i64] [i64 35, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40]
@___asan_gen_.168 = private unnamed_addr constant [19 x i8] c"prism2_ethtool_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3858, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant [15 x i8] c"prism2_handler\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3865, i32 25 }
@___asan_gen_.174 = private unnamed_addr constant [23 x i8] c"prism2_private_handler\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3925, i32 25 }
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"prism2_priv\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2098, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant [22 x i8] c"hostap_iw_handler_def\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3933, i32 29 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3851, i32 24 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3853, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 108, i32 23 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 108, i32 40 }
@___asan_gen_.195 = private unnamed_addr constant [10 x i8] c"freq_list\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/intersil/hostap/hostap.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 11, i32 34 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1147, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1164, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1172, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1111, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1072, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1077, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1088, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1096, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 692, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 701, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 657, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 662, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 499, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1646, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1683, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2080, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2085, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1869, i32 69 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1896, i32 16 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1903, i32 16 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1912, i32 17 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 894, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 289, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 298, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 309, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1516, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1527, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1364, i32 5 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 143, i32 34 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 158, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 167, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 198, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 208, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 261, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3244, i32 9 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3245, i32 12 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3248, i32 9 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3249, i32 12 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3252, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3264, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3312, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2342, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2360, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2526, i32 5 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2532, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2549, i32 5 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2575, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2589, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2645, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2832, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2893, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2937, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2969, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 2982, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3464, i32 33 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3482, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3522, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3533, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.595 = private constant [55 x i8] c"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 3660, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 230, i32 6 }
@___asan_gen_.601 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 214, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.604 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.604, i32 174, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [34 x i8] c"switch.table.prism2_ioctl_giwrate\00", align 1
@___asan_gen_.607 = private unnamed_addr constant [38 x i8] c"switch.table.prism2_ioctl_giwrate.143\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [40 x i8] c"switch.table.hostap_monitor_mode_enable\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [44 x i8] c"switch.table.prism2_ioctl_priv_prism2_param\00", align 1
@___asan_gen_.610 = private unnamed_addr constant [48 x i8] c"switch.table.prism2_ioctl_priv_prism2_param.144\00", align 1
@llvm.compiler.used = appending global [199 x ptr] [ptr @hostap_join_ap._entry, ptr @hostap_join_ap._entry.33, ptr @hostap_join_ap._entry_ptr, ptr @hostap_join_ap._entry_ptr.35, ptr @hostap_monitor_mode_disable._entry, ptr @hostap_monitor_mode_disable._entry_ptr, ptr @hostap_monitor_mode_enable._entry, ptr @hostap_monitor_mode_enable._entry.17, ptr @hostap_monitor_mode_enable._entry.20, ptr @hostap_monitor_mode_enable._entry.23, ptr @hostap_monitor_mode_enable._entry_ptr, ptr @hostap_monitor_mode_enable._entry_ptr.19, ptr @hostap_monitor_mode_enable._entry_ptr.22, ptr @hostap_monitor_mode_enable._entry_ptr.25, ptr @hostap_set_rate._entry, ptr @hostap_set_rate._entry.55, ptr @hostap_set_rate._entry.58, ptr @hostap_set_rate._entry_ptr, ptr @hostap_set_rate._entry_ptr.57, ptr @hostap_set_rate._entry_ptr.60, ptr @prism2_ioctl_giwaplist._entry, ptr @prism2_ioctl_giwaplist._entry_ptr, ptr @prism2_ioctl_giwencode._entry, ptr @prism2_ioctl_giwencode._entry_ptr, ptr @prism2_ioctl_giwscan._entry, ptr @prism2_ioctl_giwscan._entry.44, ptr @prism2_ioctl_giwscan._entry_ptr, ptr @prism2_ioctl_giwscan._entry_ptr.46, ptr @prism2_ioctl_priv_get_prism2_param._entry, ptr @prism2_ioctl_priv_get_prism2_param._entry_ptr, ptr @prism2_ioctl_priv_monitor._entry, ptr @prism2_ioctl_priv_monitor._entry_ptr, ptr @prism2_ioctl_priv_prism2_param._entry, ptr @prism2_ioctl_priv_prism2_param._entry.101, ptr @prism2_ioctl_priv_prism2_param._entry.104, ptr @prism2_ioctl_priv_prism2_param._entry.108, ptr @prism2_ioctl_priv_prism2_param._entry.111, ptr @prism2_ioctl_priv_prism2_param._entry.114, ptr @prism2_ioctl_priv_prism2_param._entry.117, ptr @prism2_ioctl_priv_prism2_param._entry.96, ptr @prism2_ioctl_priv_prism2_param._entry_ptr, ptr @prism2_ioctl_priv_prism2_param._entry_ptr.103, ptr @prism2_ioctl_priv_prism2_param._entry_ptr.106, ptr @prism2_ioctl_priv_prism2_param._entry_ptr.110, ptr @prism2_ioctl_priv_prism2_param._entry_ptr.113, ptr @prism2_ioctl_priv_prism2_param._entry_ptr.116, ptr @prism2_ioctl_priv_prism2_param._entry_ptr.119, ptr @prism2_ioctl_priv_prism2_param._entry_ptr.98, ptr @prism2_ioctl_priv_reset._entry, ptr @prism2_ioctl_priv_reset._entry.126, ptr @prism2_ioctl_priv_reset._entry_ptr, ptr @prism2_ioctl_priv_reset._entry_ptr.128, ptr @prism2_ioctl_priv_set_rid_word._entry, ptr @prism2_ioctl_priv_set_rid_word._entry_ptr, ptr @prism2_ioctl_set_assoc_ap_addr._entry, ptr @prism2_ioctl_set_assoc_ap_addr._entry_ptr, ptr @prism2_ioctl_set_encryption._entry, ptr @prism2_ioctl_set_encryption._entry.133, ptr @prism2_ioctl_set_encryption._entry.135, ptr @prism2_ioctl_set_encryption._entry_ptr, ptr @prism2_ioctl_set_encryption._entry_ptr.134, ptr @prism2_ioctl_set_encryption._entry_ptr.137, ptr @prism2_ioctl_siwap._entry, ptr @prism2_ioctl_siwap._entry.28, ptr @prism2_ioctl_siwap._entry_ptr, ptr @prism2_ioctl_siwap._entry_ptr.30, ptr @prism2_ioctl_siwencode._entry, ptr @prism2_ioctl_siwencode._entry.74, ptr @prism2_ioctl_siwencode._entry.77, ptr @prism2_ioctl_siwencode._entry_ptr, ptr @prism2_ioctl_siwencode._entry_ptr.76, ptr @prism2_ioctl_siwencode._entry_ptr.79, ptr @prism2_ioctl_siwencodeext._entry, ptr @prism2_ioctl_siwencodeext._entry.88, ptr @prism2_ioctl_siwencodeext._entry.91, ptr @prism2_ioctl_siwencodeext._entry_ptr, ptr @prism2_ioctl_siwencodeext._entry_ptr.90, ptr @prism2_ioctl_siwencodeext._entry_ptr.93, ptr @prism2_ioctl_siwessid._entry, ptr @prism2_ioctl_siwessid._entry_ptr, ptr @prism2_ioctl_siwmode._entry, ptr @prism2_ioctl_siwmode._entry.10, ptr @prism2_ioctl_siwmode._entry.7, ptr @prism2_ioctl_siwmode._entry_ptr, ptr @prism2_ioctl_siwmode._entry_ptr.12, ptr @prism2_ioctl_siwmode._entry_ptr.9, ptr @prism2_ioctl_siwretry._entry, ptr @prism2_ioctl_siwretry._entry_ptr, ptr @prism2_ioctl_siwtxpow._entry, ptr @prism2_ioctl_siwtxpow._entry.65, ptr @prism2_ioctl_siwtxpow._entry_ptr, ptr @prism2_ioctl_siwtxpow._entry_ptr.67, ptr @prism2_request_hostscan._entry, ptr @prism2_request_hostscan._entry_ptr, ptr @prism2_request_scan._entry, ptr @prism2_request_scan._entry_ptr, ptr @prism2_ethtool_ops, ptr @prism2_handler, ptr @prism2_private_handler, ptr @prism2_priv, ptr @hostap_iw_handler_def, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @freq_list, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @switch.table.prism2_ioctl_giwrate, ptr @switch.table.prism2_ioctl_giwrate.143, ptr @switch.table.hostap_monitor_mode_enable, ptr @switch.table.prism2_ioctl_priv_prism2_param, ptr @switch.table.prism2_ioctl_priv_prism2_param.144], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_handler to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_private_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_priv to i32), i32 2064, i32 2592, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_iw_handler_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_list to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwmode._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwmode._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_monitor_mode_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_monitor_mode_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_monitor_mode_enable._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_monitor_mode_enable._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_monitor_mode_enable._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwap._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_join_ap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_join_ap._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_giwaplist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_request_hostscan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_request_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_giwscan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_giwscan._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwessid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_set_rate._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_set_rate._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwtxpow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwtxpow._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwretry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwencode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwencode._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwencode._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_giwencode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwencodeext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwencodeext._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_siwencodeext._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_prism2_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_prism2_param._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_prism2_param._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_prism2_param._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_prism2_param._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_prism2_param._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_prism2_param._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_prism2_param._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_get_prism2_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_monitor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_reset._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_priv_set_rid_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_set_encryption._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_set_encryption._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_set_encryption._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ioctl_set_assoc_ap_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.prism2_ioctl_giwrate to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.prism2_ioctl_giwrate.143 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hostap_monitor_mode_enable to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.prism2_ioctl_priv_prism2_param to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.prism2_ioctl_priv_prism2_param.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prism2_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #16
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %sta_fw_ver = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %sta_fw_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sta_fw_ver, align 4
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 255
  %shr5 = lshr i32 %3, 8
  %and6 = and i32 %shr5, 255
  %and8 = and i32 %3, 255
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %and, i32 noundef %and6, i32 noundef %and8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hostap_get_wireless_stats(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %type = getelementptr i8, ptr %dev, i32 2520
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %wstats2 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64
  %4 = ptrtoint ptr %wstats2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %wstats2, align 4
  %rx_discards_wep_undecryptable = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 18
  %5 = ptrtoint ptr %rx_discards_wep_undecryptable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_discards_wep_undecryptable, align 4
  %code = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 2, i32 1
  %7 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %code, align 4
  %rx_fcs_errors = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 15
  %8 = ptrtoint ptr %rx_fcs_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_fcs_errors, align 4
  %rx_discards_no_buffer = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 16
  %10 = ptrtoint ptr %rx_discards_no_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_discards_no_buffer, align 4
  %add = add i32 %11, %9
  %tx_discards_wrong_sa = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 17
  %12 = ptrtoint ptr %tx_discards_wrong_sa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_discards_wrong_sa, align 4
  %add6 = add i32 %add, %13
  %misc = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 2, i32 4
  %14 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add6, ptr %misc, align 4
  %tx_retry_limit_exceeded = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 8
  %15 = ptrtoint ptr %tx_retry_limit_exceeded to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_retry_limit_exceeded, align 4
  %retries = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 2, i32 3
  %17 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %retries, align 4
  %rx_message_in_bad_msg_fragments = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 20
  %18 = ptrtoint ptr %rx_message_in_bad_msg_fragments to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_message_in_bad_msg_fragments, align 4
  %fragment = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 2, i32 2
  %20 = ptrtoint ptr %fragment to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %fragment, align 4
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %21 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iw_mode, align 4
  %.off = add i32 %22, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end
  %call16 = tail call i32 @prism2_update_comms_qual(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.then15.if.end19_crit_edge

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %updated = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 1, i32 3
  %23 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 15, ptr %updated, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then15.if.end19_crit_edge
  %comms_qual = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 123
  %24 = ptrtoint ptr %comms_qual to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %comms_qual, align 4
  %conv = trunc i32 %25 to i8
  %qual20 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 1
  %26 = ptrtoint ptr %qual20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %qual20, align 2
  %avg_signal = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 124
  %27 = ptrtoint ptr %avg_signal to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %avg_signal, align 4
  %conv22 = trunc i32 %28 to i8
  %level = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 1, i32 1
  %29 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv22, ptr %level, align 1
  %avg_noise = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 125
  %30 = ptrtoint ptr %avg_noise to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %avg_noise, align 4
  %conv24 = trunc i32 %31 to i8
  %noise = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 1, i32 2
  %32 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv24, ptr %noise, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %qual26 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 1
  %33 = ptrtoint ptr %qual26 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %qual26, align 2
  %level29 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 1, i32 1
  %34 = ptrtoint ptr %level29 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %level29, align 1
  %noise31 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 1, i32 2
  %35 = ptrtoint ptr %noise31 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %noise31, align 2
  %updated33 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 64, i32 1, i32 3
  %36 = ptrtoint ptr %updated33 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 112, ptr %updated33, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %wstats2, %if.else ], [ %wstats2, %if.end19 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_ioctl(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) local_unnamed_addr #1 align 64 {
entry:
  %mode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 35816, label %sw.bb
    i32 35812, label %sw.bb4
    i32 35814, label %sw.bb12
    i32 35818, label %sw.bb20
    i32 35820, label %sw.bb28
    i32 35822, label %sw.bb37
    i32 35824, label %sw.bb45
    i32 35826, label %sw.bb53
    i32 35828, label %sw.bb62
    i32 35830, label %sw.bb73
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call2 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call2, label %if.else, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %u = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  %3 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local1, align 4
  %func.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 92
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func.i, align 4
  %cmd.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd.i, align 4
  %9 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %u, align 4
  %conv.i = trunc i32 %10 to i16
  %call2.i = tail call i32 %8(ptr noundef %dev, i16 noundef zeroext 17, i16 noundef zeroext %conv.i, ptr noundef null, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 -95
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call5, label %if.else7, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else7:                                         ; preds = %sw.bb4
  %u8 = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode.i) #16
  %11 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %local1, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !271) #16
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid.i.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 101
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %dev, i32 noundef %18, ptr noundef %comm.i) #19
  %19 = ptrtoint ptr %u8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %u8, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %20, label %if.else19.i [
    i32 0, label %if.then.i
    i32 1, label %if.else7.prism2_ioctl_priv_monitor.exit_crit_edge
    i32 2, label %if.else7.sw.epilog.i_crit_edge
    i32 3, label %sw.bb15.i
  ]

if.else7.sw.epilog.i_crit_edge:                   ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

if.else7.prism2_ioctl_priv_monitor.exit_crit_edge: ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_ioctl_priv_monitor.exit

if.then.i:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %mode.i, align 4
  %call8.i = call i32 @prism2_ioctl_siwmode(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %mode.i, ptr noundef null) #16
  br label %prism2_ioctl_priv_monitor.exit

sw.bb15.i:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb15.i, %if.else7.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb15.i ], [ 0, %if.else7.sw.epilog.i_crit_edge ]
  %monitor_type16.i = getelementptr inbounds %struct.local_info, ptr %12, i32 0, i32 66
  %23 = ptrtoint ptr %monitor_type16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %monitor_type16.i, align 4
  %24 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %mode.i, align 4
  %call17.i = call i32 @prism2_ioctl_siwmode(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %mode.i, ptr noundef null) #16
  tail call fastcc void @hostap_monitor_mode_enable(ptr noundef %12) #16
  br label %prism2_ioctl_priv_monitor.exit

if.else19.i:                                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_ioctl_priv_monitor.exit

prism2_ioctl_priv_monitor.exit:                   ; preds = %if.else19.i, %sw.epilog.i, %if.then.i, %if.else7.prism2_ioctl_priv_monitor.exit_crit_edge
  %ret.0.i = phi i32 [ %call8.i, %if.then.i ], [ %call17.i, %sw.epilog.i ], [ -22, %if.else19.i ], [ -95, %if.else7.prism2_ioctl_priv_monitor.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode.i) #16
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %call13 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call13, label %if.else15, label %sw.bb12.sw.epilog_crit_edge

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else15:                                        ; preds = %sw.bb12
  %u16 = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  %25 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %local1, align 4
  %27 = ptrtoint ptr %u16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %u16, align 4
  %call2.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %dev, i32 noundef %28) #19
  %29 = ptrtoint ptr %u16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %u16, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %30, label %do.end23.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb5.i
    i32 2, label %sw.bb7.i
    i32 3, label %sw.bb10.i
    i32 4, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  %func.i106 = getelementptr inbounds %struct.local_info, ptr %26, i32 0, i32 92
  %32 = ptrtoint ptr %func.i106 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %func.i106, align 4
  %hw_shutdown.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %hw_shutdown.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_shutdown.i, align 4
  tail call void %35(ptr noundef %dev, i32 noundef 1) #16
  %36 = ptrtoint ptr %func.i106 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %func.i106, align 4
  %hw_config.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %hw_config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_config.i, align 4
  %call4.i = tail call i32 %39(ptr noundef %dev, i32 noundef 0) #16
  br label %sw.epilog.i110

sw.bb5.i:                                         ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  %func6.i = getelementptr inbounds %struct.local_info, ptr %26, i32 0, i32 92
  %40 = ptrtoint ptr %func6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %func6.i, align 4
  %hw_reset.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %hw_reset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_reset.i, align 4
  tail call void %43(ptr noundef %dev) #16
  br label %sw.epilog.i110

sw.bb7.i:                                         ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  %func8.i = getelementptr inbounds %struct.local_info, ptr %26, i32 0, i32 92
  %44 = ptrtoint ptr %func8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %func8.i, align 4
  %reset_port.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %reset_port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reset_port.i, align 4
  %call9.i = tail call i32 %47(ptr noundef %dev) #16
  br label %sw.epilog.i110

sw.bb10.i:                                        ; preds = %if.else15
  %call11.i = tail call i32 @prism2_sta_deauth(ptr noundef %26, i16 noundef zeroext 3) #16
  %func12.i = getelementptr inbounds %struct.local_info, ptr %26, i32 0, i32 92
  %48 = ptrtoint ptr %func12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %func12.i, align 4
  %cmd.i107 = getelementptr inbounds %struct.prism2_helper_functions, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cmd.i107 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cmd.i107, align 4
  %call13.i = tail call i32 %51(ptr noundef %dev, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef null, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i108 = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i108, label %sw.bb10.i.sw.epilog.i110_crit_edge, label %sw.bb10.i.sw.epilog_crit_edge

sw.bb10.i.sw.epilog_crit_edge:                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb10.i.sw.epilog.i110_crit_edge:               ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i110

sw.bb14.i:                                        ; preds = %if.else15
  %func15.i = getelementptr inbounds %struct.local_info, ptr %26, i32 0, i32 92
  %52 = ptrtoint ptr %func15.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %func15.i, align 4
  %cmd16.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cmd16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cmd16.i, align 4
  %call17.i109 = tail call i32 %55(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i109)
  %tobool18.not.i = icmp eq i32 %call17.i109, 0
  br i1 %tobool18.not.i, label %sw.bb14.i.sw.epilog.i110_crit_edge, label %sw.bb14.i.sw.epilog_crit_edge

sw.bb14.i.sw.epilog_crit_edge:                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb14.i.sw.epilog.i110_crit_edge:               ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i110

do.end23.i:                                       ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %30) #19
  br label %sw.epilog

sw.epilog.i110:                                   ; preds = %sw.bb14.i.sw.epilog.i110_crit_edge, %sw.bb10.i.sw.epilog.i110_crit_edge, %sw.bb7.i, %sw.bb5.i, %sw.bb.i
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %call21 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call21, label %if.else23, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #18
  %u24 = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %u24, i32 0, i32 1
  %call26 = tail call i32 @prism2_wds_add(ptr noundef %1, ptr noundef %sa_data, i32 noundef 1) #16
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %call29 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call29, label %if.else31, label %sw.bb28.sw.epilog_crit_edge

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else31:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #18
  %u32 = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  %sa_data33 = getelementptr inbounds %struct.sockaddr, ptr %u32, i32 0, i32 1
  %call35 = tail call i32 @prism2_wds_del(ptr noundef %1, ptr noundef %sa_data33, i32 noundef 1, i32 noundef 0) #16
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  %call38 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call38, label %if.else40, label %sw.bb37.sw.epilog_crit_edge

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else40:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #18
  %u41 = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  %56 = ptrtoint ptr %u41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %u41, align 4
  %add.ptr.i111 = getelementptr %struct.iwreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %add.ptr.i111 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i111, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %dev, i32 noundef %57, i32 noundef %59) #19
  %conv.i112 = trunc i32 %59 to i16
  %call1.i = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef %57, i16 noundef zeroext %conv.i112) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i113 = icmp eq i32 %call1.i, 0
  %..i114 = select i1 %tobool.not.i113, i32 0, i32 -22
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  %call46 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call46, label %if.else48, label %sw.bb45.sw.epilog_crit_edge

sw.bb45.sw.epilog_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else48:                                        ; preds = %sw.bb45
  %u49 = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  %60 = ptrtoint ptr %u49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %u49, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %61, label %if.else48.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i115
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb5.i116
    i32 3, label %sw.bb9.i
    i32 4, label %sw.bb12.i
  ]

if.else48.sw.epilog_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb.i115:                                       ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #18
  %ap.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %63 = ptrtoint ptr %ap.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ap.i, align 4
  %mac_restrictions.i = getelementptr inbounds %struct.ap_data, ptr %64, i32 0, i32 15
  %65 = ptrtoint ptr %mac_restrictions.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %mac_restrictions.i, align 4
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #18
  %ap2.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %66 = ptrtoint ptr %ap2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ap2.i, align 4
  %mac_restrictions3.i = getelementptr inbounds %struct.ap_data, ptr %67, i32 0, i32 15
  %68 = ptrtoint ptr %mac_restrictions3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %mac_restrictions3.i, align 4
  br label %sw.epilog

sw.bb5.i116:                                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #18
  %ap6.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %69 = ptrtoint ptr %ap6.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ap6.i, align 4
  %mac_restrictions7.i = getelementptr inbounds %struct.ap_data, ptr %70, i32 0, i32 15
  %71 = ptrtoint ptr %mac_restrictions7.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %mac_restrictions7.i, align 4
  br label %sw.epilog

sw.bb9.i:                                         ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #18
  %ap10.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %72 = ptrtoint ptr %ap10.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ap10.i, align 4
  %mac_restrictions11.i = getelementptr inbounds %struct.ap_data, ptr %73, i32 0, i32 15
  tail call void @ap_control_flush_macs(ptr noundef %mac_restrictions11.i) #16
  br label %sw.epilog

sw.bb12.i:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #18
  %ap13.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %74 = ptrtoint ptr %ap13.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ap13.i, align 4
  tail call void @ap_control_kickall(ptr noundef %75) #16
  %dev.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 4
  %78 = ptrtoint ptr %ap13.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ap13.i, align 4
  tail call void @hostap_deauth_all_stas(ptr noundef %77, ptr noundef %79, i32 noundef 0) #16
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  %call54 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call54, label %if.else56, label %sw.bb53.sw.epilog_crit_edge

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else56:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #18
  %ap = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %80 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ap, align 4
  %mac_restrictions = getelementptr inbounds %struct.ap_data, ptr %81, i32 0, i32 15
  %u57 = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  %sa_data58 = getelementptr inbounds %struct.sockaddr, ptr %u57, i32 0, i32 1
  %call60 = tail call i32 @ap_control_add_mac(ptr noundef %mac_restrictions, ptr noundef %sa_data58) #16
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  %call63 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call63, label %if.else65, label %sw.bb62.sw.epilog_crit_edge

sw.bb62.sw.epilog_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else65:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #18
  %ap66 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %82 = ptrtoint ptr %ap66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ap66, align 4
  %mac_restrictions67 = getelementptr inbounds %struct.ap_data, ptr %83, i32 0, i32 15
  %u68 = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  %sa_data69 = getelementptr inbounds %struct.sockaddr, ptr %u68, i32 0, i32 1
  %call71 = tail call i32 @ap_control_del_mac(ptr noundef %mac_restrictions67, ptr noundef %sa_data69) #16
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  %call74 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call74, label %if.else76, label %sw.bb73.sw.epilog_crit_edge

sw.bb73.sw.epilog_crit_edge:                      ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else76:                                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #18
  %ap77 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %84 = ptrtoint ptr %ap77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ap77, align 4
  %dev78 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %86 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev78, align 4
  %u79 = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  %sa_data80 = getelementptr inbounds %struct.sockaddr, ptr %u79, i32 0, i32 1
  %call82 = tail call i32 @ap_control_kick_mac(ptr noundef %85, ptr noundef %87, ptr noundef %sa_data80) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else76, %sw.bb73.sw.epilog_crit_edge, %if.else65, %sw.bb62.sw.epilog_crit_edge, %if.else56, %sw.bb53.sw.epilog_crit_edge, %sw.bb12.i, %sw.bb9.i, %sw.bb5.i116, %sw.bb1.i, %sw.bb.i115, %if.else48.sw.epilog_crit_edge, %sw.bb45.sw.epilog_crit_edge, %if.else40, %sw.bb37.sw.epilog_crit_edge, %if.else31, %sw.bb28.sw.epilog_crit_edge, %if.else23, %sw.bb20.sw.epilog_crit_edge, %sw.epilog.i110, %do.end23.i, %sw.bb14.i.sw.epilog_crit_edge, %sw.bb10.i.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %prism2_ioctl_priv_monitor.exit, %sw.bb4.sw.epilog_crit_edge, %if.else, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call82, %if.else76 ], [ %call71, %if.else65 ], [ %call60, %if.else56 ], [ %..i114, %if.else40 ], [ %call35, %if.else31 ], [ %call26, %if.else23 ], [ %ret.0.i, %prism2_ioctl_priv_monitor.exit ], [ %..i, %if.else ], [ -1, %sw.bb.sw.epilog_crit_edge ], [ -1, %sw.bb4.sw.epilog_crit_edge ], [ -1, %sw.bb12.sw.epilog_crit_edge ], [ -1, %sw.bb20.sw.epilog_crit_edge ], [ -1, %sw.bb28.sw.epilog_crit_edge ], [ -1, %sw.bb37.sw.epilog_crit_edge ], [ -1, %sw.bb45.sw.epilog_crit_edge ], [ -1, %sw.bb53.sw.epilog_crit_edge ], [ -1, %sw.bb62.sw.epilog_crit_edge ], [ -1, %sw.bb73.sw.epilog_crit_edge ], [ -95, %entry.sw.epilog_crit_edge ], [ -95, %do.end23.i ], [ 0, %sw.epilog.i110 ], [ -22, %sw.bb10.i.sw.epilog_crit_edge ], [ -22, %sw.bb14.i.sw.epilog_crit_edge ], [ 0, %sw.bb12.i ], [ 0, %sw.bb9.i ], [ 0, %sw.bb5.i116 ], [ 0, %sw.bb1.i ], [ 0, %sw.bb.i115 ], [ -95, %if.else48.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prism2_wds_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prism2_wds_del(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ap_control_add_mac(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ap_control_del_mac(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ap_control_kick_mac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_siocdevprivate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ifr, ptr nocapture noundef readnone %data, i32 noundef %cmd) local_unnamed_addr #1 align 64 {
entry:
  %crypt.i66 = alloca ptr, align 4
  %crypt.i = alloca ptr, align 4
  %reason.i = alloca i16, align 2
  %scan_req.i.i = alloca %struct.hfa384x_hostscan_request, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35325, label %sw.bb
    i32 35326, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call3 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call3, label %if.else, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %length.i = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %length.i, align 4
  %conv.i = zext i16 %4 to i32
  %5 = add i16 %4, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1013, i16 %5)
  %6 = icmp ult i16 %5, -1013
  br i1 %6, label %if.else.cleanup_crit_edge, label %lor.lhs.false6.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6.i:                                 ; preds = %if.else
  %u = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %u, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %lor.lhs.false6.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false6.i.cleanup_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false6.i
  %call.i = tail call ptr @memdup_user(ptr noundef nonnull %8, i32 noundef %conv.i) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %length.i, align 4
  %conv15.i = zext i16 %11 to i32
  %num_areas.i = getelementptr inbounds %struct.prism2_download_param, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %num_areas.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_areas.i, align 4
  %mul.i = mul i32 %13, 12
  %add.i = add i32 %mul.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv15.i)
  %cmp16.i = icmp ugt i32 %add.i, %conv15.i
  br i1 %cmp16.i, label %if.end13.i.out.i_crit_edge, label %if.end19.i

if.end13.i.out.i_crit_edge:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  %func.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %14 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func.i, align 4
  %download.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %download.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %download.i, align 4
  %call20.i = tail call i32 %17(ptr noundef %1, ptr noundef %call.i) #16
  br label %out.i

out.i:                                            ; preds = %if.end19.i, %if.end13.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call20.i, %if.end19.i ], [ -22, %if.end13.i.out.i_crit_edge ]
  tail call void @kfree(ptr noundef %call.i) #16
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %call8 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call8, label %if.else10, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else10:                                        ; preds = %sw.bb7
  %u11 = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1
  %length.i19 = getelementptr inbounds %struct.iwreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %length.i19 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %length.i19, align 4
  %conv.i20 = zext i16 %19 to i32
  %20 = add i16 %19, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -977, i16 %20)
  %21 = icmp ult i16 %20, -977
  br i1 %21, label %if.else10.cleanup_crit_edge, label %lor.lhs.false6.i22

if.else10.cleanup_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6.i22:                               ; preds = %if.else10
  %22 = ptrtoint ptr %u11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %u11, align 4
  %tobool.not.i21 = icmp eq ptr %23, null
  br i1 %tobool.not.i21, label %lor.lhs.false6.i22.cleanup_crit_edge, label %if.end.i25

lor.lhs.false6.i22.cleanup_crit_edge:             ; preds = %lor.lhs.false6.i22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i25:                                       ; preds = %lor.lhs.false6.i22
  %call.i23 = tail call ptr @memdup_user(ptr noundef nonnull %23, i32 noundef %conv.i20) #16
  %cmp.i.i24 = icmp ugt ptr %call.i23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i24, label %if.then11.i26, label %if.end13.i27

if.then11.i26:                                    ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %call.i23 to i32
  br label %cleanup

if.end13.i27:                                     ; preds = %if.end.i25
  %25 = ptrtoint ptr %call.i23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call.i23, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %26, label %sw.epilog.i [
    i32 6, label %sw.bb.i
    i32 7, label %sw.bb17.i
    i32 9, label %sw.bb21.i
    i32 10, label %sw.bb25.i
    i32 11, label %sw.bb29.i
    i32 12, label %sw.bb33.i
    i32 13, label %sw.bb37.i
    i32 14, label %sw.bb39.i
  ]

sw.bb.i:                                          ; preds = %if.end13.i27
  %28 = ptrtoint ptr %length.i19 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %length.i19, align 4
  %conv15.i28 = zext i16 %29 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crypt.i66) #16
  %30 = ptrtoint ptr %crypt.i66 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %crypt.i66, align 4, !annotation !281
  %u.i67 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2
  %err.i68 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %err.i68 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %err.i68, align 4
  %arrayidx.i69 = getelementptr %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 0, i32 15
  %32 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx.i69, align 1
  %key.i70 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 1
  %key_len.i71 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 5
  %33 = ptrtoint ptr %key_len.i71 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %key_len.i71, align 2
  %conv.i72 = zext i16 %34 to i32
  %add.i73 = add nuw nsw i32 %conv.i72, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i73, i32 %conv15.i28)
  %cmp.not.i = icmp eq i32 %add.i73, %conv15.i28
  br i1 %cmp.not.i, label %if.end.i81, label %sw.bb.i.prism2_ioctl_set_encryption.exit_crit_edge

sw.bb.i.prism2_ioctl_set_encryption.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_ioctl_set_encryption.exit

if.end.i81:                                       ; preds = %sw.bb.i
  %sta_addr.i74 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 1
  %35 = ptrtoint ptr %sta_addr.i74 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sta_addr.i74, align 2
  %add.ptr1.i.i75 = getelementptr %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %add.ptr1.i.i75 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr1.i.i75, align 2
  %and9.i.i76 = and i16 %38, %36
  %add.ptr3.i.i77 = getelementptr %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %add.ptr3.i.i77 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr3.i.i77, align 2
  %and510.i.i78 = and i16 %and9.i.i76, %40
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i78)
  %cmp.i.i79 = icmp eq i16 %and510.i.i78, -1
  %idx.i80 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 3
  %41 = ptrtoint ptr %idx.i80 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %idx.i80, align 4
  br i1 %cmp.i.i79, label %if.then6.i, label %if.else.i84

if.then6.i:                                       ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %42)
  %cmp9.i = icmp ugt i8 %42, 3
  br i1 %cmp9.i, label %if.then6.i.prism2_ioctl_set_encryption.exit_crit_edge, label %if.end12.i

if.then6.i.prism2_ioctl_set_encryption.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_ioctl_set_encryption.exit

if.end12.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv8.i82 = zext i8 %42 to i32
  %arrayidx16.i = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 %conv8.i82
  %43 = ptrtoint ptr %crypt.i66 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx16.i, ptr %crypt.i66, align 4
  br label %if.end31.i

if.else.i84:                                      ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i83 = icmp eq i8 %42, 0
  br i1 %tobool.not.i83, label %if.end20.i, label %if.else.i84.prism2_ioctl_set_encryption.exit_crit_edge

if.else.i84.prism2_ioctl_set_encryption.exit_crit_edge: ; preds = %if.else.i84
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_ioctl_set_encryption.exit

if.end20.i:                                       ; preds = %if.else.i84
  %ap.i85 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %44 = ptrtoint ptr %ap.i85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ap.i85, align 4
  %flags.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %47, 2
  %call24.i = call ptr @ap_crypt_get_ptrs(ptr noundef %45, ptr noundef %sta_addr.i74, i32 noundef %and.i, ptr noundef nonnull %crypt.i66) #16
  %cmp25.i = icmp eq ptr %call24.i, null
  br i1 %cmp25.i, label %if.end20.i.cleanup222.sink.split.i_crit_edge, label %if.end20.i.if.end31.i_crit_edge

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31.i

if.end20.i.cleanup222.sink.split.i_crit_edge:     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup222.sink.split.i

if.end31.i:                                       ; preds = %if.end20.i.if.end31.i_crit_edge, %if.end12.i
  %sta_ptr.0.i86 = phi ptr [ null, %if.end12.i ], [ %call24.i, %if.end20.i.if.end31.i_crit_edge ]
  %call35.i = call i32 @strcmp(ptr noundef %u.i67, ptr noundef nonnull dereferenceable(5) @.str.131) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp eq i32 %call35.i, 0
  br i1 %cmp36.i, label %if.then38.i, label %if.end43.i

if.then38.i:                                      ; preds = %if.end31.i
  %48 = ptrtoint ptr %crypt.i66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %crypt.i66, align 4
  %tobool39.not.i = icmp eq ptr %49, null
  br i1 %tobool39.not.i, label %if.then38.i.done.i_crit_edge, label %if.then40.i

if.then38.i.done.i_crit_edge:                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %done.i

if.then40.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #18
  %crypt_info41.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75
  call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info41.i, ptr noundef nonnull %49) #16
  br label %done.i

if.end43.i:                                       ; preds = %if.end31.i
  %call47.i = call ptr @lib80211_get_crypto_ops(ptr noundef %u.i67) #16
  %cmp48.i = icmp eq ptr %call47.i, null
  br i1 %cmp48.i, label %land.lhs.true.i, label %if.end43.i.if.end107.i_crit_edge

if.end43.i.if.end107.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107.i

land.lhs.true.i:                                  ; preds = %if.end43.i
  %call53.i = call i32 @strcmp(ptr noundef %u.i67, ptr noundef nonnull dereferenceable(4) @.str.70) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp eq i32 %call53.i, 0
  br i1 %cmp54.i, label %land.lhs.true.i.if.end96.i_crit_edge, label %land.lhs.true65.critedge.i

land.lhs.true.i.if.end96.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96.i

land.lhs.true65.critedge.i:                       ; preds = %land.lhs.true.i
  %call69.i = call i32 @strcmp(ptr noundef %u.i67, ptr noundef nonnull dereferenceable(5) @.str.82) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.i = icmp eq i32 %call69.i, 0
  br i1 %cmp70.i, label %land.lhs.true65.critedge.i.if.end96.i_crit_edge, label %land.lhs.true81.critedge.i

land.lhs.true65.critedge.i.if.end96.i_crit_edge:  ; preds = %land.lhs.true65.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96.i

land.lhs.true81.critedge.i:                       ; preds = %land.lhs.true65.critedge.i
  %call85.i = call i32 @strcmp(ptr noundef %u.i67, ptr noundef nonnull dereferenceable(5) @.str.84) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %cmp86.i = icmp eq i32 %call85.i, 0
  br i1 %cmp86.i, label %land.lhs.true81.critedge.i.if.end96.i_crit_edge, label %land.lhs.true81.critedge.i.do.end.i_crit_edge

land.lhs.true81.critedge.i.do.end.i_crit_edge:    ; preds = %land.lhs.true81.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true81.critedge.i.if.end96.i_crit_edge:  ; preds = %land.lhs.true81.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96.i

if.end96.i:                                       ; preds = %land.lhs.true81.critedge.i.if.end96.i_crit_edge, %land.lhs.true65.critedge.i.if.end96.i_crit_edge, %land.lhs.true.i.if.end96.i_crit_edge
  %.str.83.sink.i = phi ptr [ @.str.71, %land.lhs.true.i.if.end96.i_crit_edge ], [ @.str.83, %land.lhs.true65.critedge.i.if.end96.i_crit_edge ], [ @.str.85, %land.lhs.true81.critedge.i.if.end96.i_crit_edge ]
  %call73.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %.str.83.sink.i) #16
  %call77.i = call ptr @lib80211_get_crypto_ops(ptr noundef %u.i67) #16
  %cmp97.i = icmp eq ptr %call77.i, null
  br i1 %cmp97.i, label %if.end96.i.do.end.i_crit_edge, label %if.end96.i.if.end107.i_crit_edge

if.end96.i.if.end107.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107.i

if.end96.i.do.end.i_crit_edge:                    ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.end96.i.do.end.i_crit_edge, %land.lhs.true81.critedge.i.do.end.i_crit_edge
  %dev.i87 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i87, align 4
  %call104.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %51, ptr noundef %u.i67) #19
  %52 = ptrtoint ptr %err.i68 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %err.i68, align 4
  br label %done.i

if.end107.i:                                      ; preds = %if.end96.i.if.end107.i_crit_edge, %if.end43.i.if.end107.i_crit_edge
  %ops.0297.i = phi ptr [ %call77.i, %if.end96.i.if.end107.i_crit_edge ], [ %call47.i, %if.end43.i.if.end107.i_crit_edge ]
  %host_encrypt.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 77
  %53 = ptrtoint ptr %host_encrypt.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %host_encrypt.i, align 4
  %host_decrypt.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 78
  %54 = ptrtoint ptr %host_decrypt.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %host_decrypt.i, align 4
  %55 = ptrtoint ptr %crypt.i66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %crypt.i66, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %cmp108.i = icmp eq ptr %58, null
  br i1 %cmp108.i, label %if.end107.i.if.then113.i_crit_edge, label %lor.lhs.false.i88

if.end107.i.if.then113.i_crit_edge:               ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then113.i

lor.lhs.false.i88:                                ; preds = %if.end107.i
  %ops110.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %ops110.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops110.i, align 4
  %cmp111.not.i = icmp eq ptr %60, %ops.0297.i
  br i1 %cmp111.not.i, label %lor.lhs.false.i88.if.end133.i_crit_edge, label %lor.lhs.false.i88.if.then113.i_crit_edge

lor.lhs.false.i88.if.then113.i_crit_edge:         ; preds = %lor.lhs.false.i88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then113.i

lor.lhs.false.i88.if.end133.i_crit_edge:          ; preds = %lor.lhs.false.i88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end133.i

if.then113.i:                                     ; preds = %lor.lhs.false.i88.if.then113.i_crit_edge, %if.end107.i.if.then113.i_crit_edge
  %crypt_info114.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75
  call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info114.i, ptr noundef %56) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i89 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 20) #21
  %cmp116.i = icmp eq ptr %call7.i.i.i89, null
  br i1 %cmp116.i, label %if.then113.i.done.i_crit_edge, label %if.end119.i

if.then113.i.done.i_crit_edge:                    ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %done.i

if.end119.i:                                      ; preds = %if.then113.i
  %ops120.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i.i89, i32 0, i32 1
  %62 = ptrtoint ptr %ops120.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %ops.0297.i, ptr %ops120.i, align 8
  %init.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %ops.0297.i, i32 0, i32 2
  %63 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init.i, align 4
  %65 = ptrtoint ptr %idx.i80 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %idx.i80, align 4
  %conv124.i = zext i8 %66 to i32
  %call125.i = call ptr %64(i32 noundef %conv124.i) #16
  %priv.i90 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i.i89, i32 0, i32 2
  %67 = ptrtoint ptr %priv.i90 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call125.i, ptr %priv.i90, align 4
  %cmp127.i = icmp eq ptr %call125.i, null
  br i1 %cmp127.i, label %if.then129.i, label %cleanup.i

if.then129.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call7.i.i.i89) #16
  %68 = ptrtoint ptr %err.i68 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %err.i68, align 4
  br label %done.i

cleanup.i:                                        ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #18
  %69 = ptrtoint ptr %crypt.i66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %crypt.i66, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i.i89, ptr %70, align 4
  br label %if.end133.i

if.end133.i:                                      ; preds = %cleanup.i, %lor.lhs.false.i88.if.end133.i_crit_edge
  %flags135.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 1
  %72 = ptrtoint ptr %flags135.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags135.i, align 4
  %and136.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %if.end133.i.land.lhs.true144.i_crit_edge, label %lor.lhs.false138.i

if.end133.i.land.lhs.true144.i_crit_edge:         ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true144.i

lor.lhs.false138.i:                               ; preds = %if.end133.i
  %74 = ptrtoint ptr %key_len.i71 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %key_len.i71, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp142.not.i = icmp eq i16 %75, 0
  br i1 %cmp142.not.i, label %lor.lhs.false138.i.if.end173.i_crit_edge, label %lor.lhs.false138.i.land.lhs.true144.i_crit_edge

lor.lhs.false138.i.land.lhs.true144.i_crit_edge:  ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true144.i

lor.lhs.false138.i.if.end173.i_crit_edge:         ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end173.i

land.lhs.true144.i:                               ; preds = %lor.lhs.false138.i.land.lhs.true144.i_crit_edge, %if.end133.i.land.lhs.true144.i_crit_edge
  %76 = ptrtoint ptr %crypt.i66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %crypt.i66, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %ops145.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %ops145.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops145.i, align 4
  %set_key.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %set_key.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_key.i, align 4
  %tobool146.not.i = icmp eq ptr %83, null
  br i1 %tobool146.not.i, label %land.lhs.true144.i.if.end173.i_crit_edge, label %land.lhs.true147.i

land.lhs.true144.i.if.end173.i_crit_edge:         ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end173.i

land.lhs.true147.i:                               ; preds = %land.lhs.true144.i
  %84 = ptrtoint ptr %key_len.i71 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %key_len.i71, align 2
  %conv155.i = zext i16 %85 to i32
  %seq.i91 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 4
  %priv158.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %79, i32 0, i32 2
  %86 = ptrtoint ptr %priv158.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv158.i, align 4
  %call159.i = call i32 %83(ptr noundef %key.i70, i32 noundef %conv155.i, ptr noundef %seq.i91, ptr noundef %87) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159.i)
  %cmp160.i = icmp slt i32 %call159.i, 0
  br i1 %cmp160.i, label %do.end165.i, label %land.lhs.true147.i.if.end173.i_crit_edge

land.lhs.true147.i.if.end173.i_crit_edge:         ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end173.i

do.end165.i:                                      ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev167.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %88 = ptrtoint ptr %dev167.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev167.i, align 4
  %call170.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %89) #19
  %90 = ptrtoint ptr %err.i68 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 5, ptr %err.i68, align 4
  br label %done.i

if.end173.i:                                      ; preds = %land.lhs.true147.i.if.end173.i_crit_edge, %land.lhs.true144.i.if.end173.i_crit_edge, %lor.lhs.false138.i.if.end173.i_crit_edge
  %91 = ptrtoint ptr %flags135.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags135.i, align 4
  %and176.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.i)
  %tobool177.not.i = icmp eq i32 %and176.i, 0
  br i1 %tobool177.not.i, label %if.end173.i.done.i_crit_edge, label %if.then178.i

if.end173.i.done.i_crit_edge:                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %done.i

if.then178.i:                                     ; preds = %if.end173.i
  %tobool179.not.i = icmp eq ptr %sta_ptr.0.i86, null
  %93 = ptrtoint ptr %idx.i80 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %idx.i80, align 4
  br i1 %tobool179.not.i, label %if.end205.thread.i, label %if.else185.i

if.end205.thread.i:                               ; preds = %if.then178.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv183.i = zext i8 %94 to i32
  %tx_keyidx.i92 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75, i32 3
  %95 = ptrtoint ptr %tx_keyidx.i92 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv183.i, ptr %tx_keyidx.i92, align 4
  br label %land.lhs.true208.i

if.else185.i:                                     ; preds = %if.then178.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool188.not.i = icmp eq i8 %94, 0
  br i1 %tobool188.not.i, label %if.else185.i.if.then204.i_crit_edge, label %do.end192.i

if.else185.i.if.then204.i_crit_edge:              ; preds = %if.else185.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then204.i

do.end192.i:                                      ; preds = %if.else185.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev194.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %96 = ptrtoint ptr %dev194.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev194.i, align 4
  %call197.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %97) #19
  %98 = ptrtoint ptr %err.i68 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 6, ptr %err.i68, align 4
  br label %if.then204.i

done.i:                                           ; preds = %if.end173.i.done.i_crit_edge, %do.end165.i, %if.then129.i, %if.then113.i.done.i_crit_edge, %do.end.i, %if.then40.i, %if.then38.i.done.i_crit_edge
  %ret.2.i = phi i32 [ 0, %if.then40.i ], [ 0, %if.then38.i.done.i_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end165.i ], [ 0, %if.end173.i.done.i_crit_edge ], [ -12, %if.then113.i.done.i_crit_edge ], [ -22, %if.then129.i ]
  %tobool203.not.i = icmp eq ptr %sta_ptr.0.i86, null
  br i1 %tobool203.not.i, label %done.i.if.end205.i_crit_edge, label %done.i.if.then204.i_crit_edge

done.i.if.then204.i_crit_edge:                    ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then204.i

done.i.if.end205.i_crit_edge:                     ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end205.i

if.then204.i:                                     ; preds = %done.i.if.then204.i_crit_edge, %do.end192.i, %if.else185.i.if.then204.i_crit_edge
  %ret.2303.i = phi i32 [ %ret.2.i, %done.i.if.then204.i_crit_edge ], [ 0, %if.else185.i.if.then204.i_crit_edge ], [ -22, %do.end192.i ]
  call void @hostap_handle_sta_release(ptr noundef nonnull %sta_ptr.0.i86) #16
  br label %if.end205.i

if.end205.i:                                      ; preds = %if.then204.i, %done.i.if.end205.i_crit_edge
  %ret.2304.i = phi i32 [ %ret.2303.i, %if.then204.i ], [ %ret.2.i, %done.i.if.end205.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2304.i)
  %cmp206.i = icmp eq i32 %ret.2304.i, 0
  br i1 %cmp206.i, label %if.end205.i.land.lhs.true208.i_crit_edge, label %if.end205.i.prism2_ioctl_set_encryption.exit_crit_edge

if.end205.i.prism2_ioctl_set_encryption.exit_crit_edge: ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_ioctl_set_encryption.exit

if.end205.i.land.lhs.true208.i_crit_edge:         ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true208.i

land.lhs.true208.i:                               ; preds = %if.end205.i.land.lhs.true208.i_crit_edge, %if.end205.thread.i
  %call209.i = call i32 @hostap_set_encryption(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209.i)
  %tobool210.not.i = icmp eq i32 %call209.i, 0
  br i1 %tobool210.not.i, label %lor.lhs.false211.i, label %land.lhs.true208.i.cleanup222.sink.split.i_crit_edge

land.lhs.true208.i.cleanup222.sink.split.i_crit_edge: ; preds = %land.lhs.true208.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup222.sink.split.i

lor.lhs.false211.i:                               ; preds = %land.lhs.true208.i
  %iw_mode.i93 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %99 = ptrtoint ptr %iw_mode.i93 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %iw_mode.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp212.not.i = icmp eq i32 %100, 2
  br i1 %cmp212.not.i, label %lor.lhs.false211.i.prism2_ioctl_set_encryption.exit_crit_edge, label %land.lhs.true214.i

lor.lhs.false211.i.prism2_ioctl_set_encryption.exit_crit_edge: ; preds = %lor.lhs.false211.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_ioctl_set_encryption.exit

land.lhs.true214.i:                               ; preds = %lor.lhs.false211.i
  %func.i94 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %101 = ptrtoint ptr %func.i94 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %func.i94, align 4
  %reset_port.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %102, i32 0, i32 11
  %103 = ptrtoint ptr %reset_port.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reset_port.i, align 4
  %dev215.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %105 = ptrtoint ptr %dev215.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev215.i, align 4
  %call216.i = call i32 %104(ptr noundef %106) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216.i)
  %tobool217.not.i = icmp eq i32 %call216.i, 0
  br i1 %tobool217.not.i, label %land.lhs.true214.i.prism2_ioctl_set_encryption.exit_crit_edge, label %land.lhs.true214.i.cleanup222.sink.split.i_crit_edge

land.lhs.true214.i.cleanup222.sink.split.i_crit_edge: ; preds = %land.lhs.true214.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup222.sink.split.i

land.lhs.true214.i.prism2_ioctl_set_encryption.exit_crit_edge: ; preds = %land.lhs.true214.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_ioctl_set_encryption.exit

cleanup222.sink.split.i:                          ; preds = %land.lhs.true214.i.cleanup222.sink.split.i_crit_edge, %land.lhs.true208.i.cleanup222.sink.split.i_crit_edge, %if.end20.i.cleanup222.sink.split.i_crit_edge
  %.sink.i95 = phi i32 [ 3, %if.end20.i.cleanup222.sink.split.i_crit_edge ], [ 7, %land.lhs.true214.i.cleanup222.sink.split.i_crit_edge ], [ 7, %land.lhs.true208.i.cleanup222.sink.split.i_crit_edge ]
  %107 = ptrtoint ptr %err.i68 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %.sink.i95, ptr %err.i68, align 4
  br label %prism2_ioctl_set_encryption.exit

prism2_ioctl_set_encryption.exit:                 ; preds = %cleanup222.sink.split.i, %land.lhs.true214.i.prism2_ioctl_set_encryption.exit_crit_edge, %lor.lhs.false211.i.prism2_ioctl_set_encryption.exit_crit_edge, %if.end205.i.prism2_ioctl_set_encryption.exit_crit_edge, %if.else.i84.prism2_ioctl_set_encryption.exit_crit_edge, %if.then6.i.prism2_ioctl_set_encryption.exit_crit_edge, %sw.bb.i.prism2_ioctl_set_encryption.exit_crit_edge
  %retval.0.i96 = phi i32 [ -22, %sw.bb.i.prism2_ioctl_set_encryption.exit_crit_edge ], [ -22, %if.then6.i.prism2_ioctl_set_encryption.exit_crit_edge ], [ -22, %if.else.i84.prism2_ioctl_set_encryption.exit_crit_edge ], [ 0, %land.lhs.true214.i.prism2_ioctl_set_encryption.exit_crit_edge ], [ 0, %lor.lhs.false211.i.prism2_ioctl_set_encryption.exit_crit_edge ], [ %ret.2304.i, %if.end205.i.prism2_ioctl_set_encryption.exit_crit_edge ], [ -22, %cleanup222.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crypt.i66) #16
  br label %if.then46.i

sw.bb17.i:                                        ; preds = %if.end13.i27
  %108 = ptrtoint ptr %length.i19 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %length.i19, align 4
  %conv19.i = zext i16 %109 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crypt.i) #16
  %110 = ptrtoint ptr %crypt.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 -1 to ptr), ptr %crypt.i, align 4, !annotation !281
  %u.i56 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2
  %err.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 2
  %111 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %err.i, align 4
  %key.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 1
  %sub.i57 = add nsw i32 %conv19.i, -48
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %109)
  %cmp.i58 = icmp ult i16 %109, 48
  br i1 %cmp.i58, label %sw.bb17.i.prism2_ioctl_get_encryption.exit_crit_edge, label %if.end.i60

sw.bb17.i.prism2_ioctl_get_encryption.exit_crit_edge: ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_ioctl_get_encryption.exit

if.end.i60:                                       ; preds = %sw.bb17.i
  %sta_addr.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 1
  %112 = ptrtoint ptr %sta_addr.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %sta_addr.i, align 2
  %add.ptr1.i.i = getelementptr %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 1, i32 2
  %114 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %115, %113
  %add.ptr3.i.i = getelementptr %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 1, i32 4
  %116 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %117
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i59 = icmp eq i16 %and510.i.i, -1
  %idx.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 3
  br i1 %cmp.i.i59, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i60
  %118 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %119)
  %cmp5.i = icmp ugt i8 %119, 3
  br i1 %cmp5.i, label %if.then7.i, label %if.then3.i.if.end11.i_crit_edge

if.then3.i.if.end11.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  %tx_keyidx.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75, i32 3
  %120 = ptrtoint ptr %tx_keyidx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_keyidx.i, align 4
  %conv8.i = trunc i32 %121 to i8
  %122 = ptrtoint ptr %idx.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv8.i, ptr %idx.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.then3.i.if.end11.i_crit_edge
  %123 = ptrtoint ptr %idx.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %idx.i, align 4
  %idxprom.i = zext i8 %124 to i32
  %arrayidx.i = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 %idxprom.i
  %125 = ptrtoint ptr %crypt.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %arrayidx.i, ptr %crypt.i, align 4
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end.i60
  %126 = ptrtoint ptr %idx.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %idx.i, align 4
  %ap.i61 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %127 = ptrtoint ptr %ap.i61 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ap.i61, align 4
  %call20.i62 = call ptr @ap_crypt_get_ptrs(ptr noundef %128, ptr noundef %sta_addr.i, i32 noundef 0, ptr noundef nonnull %crypt.i) #16
  %cmp21.i = icmp eq ptr %call20.i62, null
  br i1 %cmp21.i, label %if.then23.i, label %if.else.i.if.end27.i_crit_edge

if.else.i.if.end27.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %129 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 3, ptr %err.i, align 4
  br label %prism2_ioctl_get_encryption.exit

if.end27.i:                                       ; preds = %if.else.i.if.end27.i_crit_edge, %if.end11.i
  %sta_ptr.0.i = phi ptr [ null, %if.end11.i ], [ %call20.i62, %if.else.i.if.end27.i_crit_edge ]
  %130 = ptrtoint ptr %crypt.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %crypt.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %cmp28.i = icmp eq ptr %133, null
  br i1 %cmp28.i, label %if.end27.i.if.then32.i_crit_edge, label %lor.lhs.false.i63

if.end27.i.if.then32.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then32.i

lor.lhs.false.i63:                                ; preds = %if.end27.i
  %ops.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ops.i, align 4
  %cmp30.i = icmp eq ptr %135, null
  br i1 %cmp30.i, label %lor.lhs.false.i63.if.then32.i_crit_edge, label %if.else38.i

lor.lhs.false.i63.if.then32.i_crit_edge:          ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then32.i

if.then32.i:                                      ; preds = %lor.lhs.false.i63.if.then32.i_crit_edge, %if.end27.i.if.then32.i_crit_edge
  %136 = call ptr @memcpy(ptr %u.i56, ptr @.str.131, i32 5)
  %key_len.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 5
  %137 = ptrtoint ptr %key_len.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %key_len.i, align 2
  %138 = ptrtoint ptr %idx.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 -1, ptr %idx.i, align 4
  br label %if.end63.i

if.else38.i:                                      ; preds = %lor.lhs.false.i63
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %135, align 4
  %call43.i = call ptr @strncpy(ptr noundef %u.i56, ptr noundef %140, i32 noundef 16) #16
  %key_len45.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 5
  %141 = ptrtoint ptr %key_len45.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 0, ptr %key_len45.i, align 2
  %seq.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 4
  %142 = ptrtoint ptr %seq.i to i32
  call void @__asan_storeN_noabort(i32 %142, i32 8)
  store i64 0, ptr %seq.i, align 1
  %143 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %131, align 4
  %ops48.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %ops48.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops48.i, align 4
  %get_key.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %146, i32 0, i32 9
  %147 = ptrtoint ptr %get_key.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %get_key.i, align 4
  %tobool.not.i64 = icmp eq ptr %148, null
  br i1 %tobool.not.i64, label %if.else38.i.if.end63.i_crit_edge, label %if.then49.i

if.else38.i.if.end63.i_crit_edge:                 ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63.i

if.then49.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #18
  %priv.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %144, i32 0, i32 2
  %149 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %priv.i, align 4
  %call58.i = call i32 %148(ptr noundef %key.i, i32 noundef %sub.i57, ptr noundef %seq.i, ptr noundef %150) #16
  %conv59.i = trunc i32 %call58.i to i16
  %151 = ptrtoint ptr %key_len45.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv59.i, ptr %key_len45.i, align 2
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then49.i, %if.else38.i.if.end63.i_crit_edge, %if.then32.i
  %tobool64.not.i = icmp eq ptr %sta_ptr.0.i, null
  br i1 %tobool64.not.i, label %if.end63.i.prism2_ioctl_get_encryption.exit_crit_edge, label %if.then65.i

if.end63.i.prism2_ioctl_get_encryption.exit_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_ioctl_get_encryption.exit

if.then65.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @hostap_handle_sta_release(ptr noundef nonnull %sta_ptr.0.i) #16
  br label %prism2_ioctl_get_encryption.exit

prism2_ioctl_get_encryption.exit:                 ; preds = %if.then65.i, %if.end63.i.prism2_ioctl_get_encryption.exit_crit_edge, %if.then23.i, %sw.bb17.i.prism2_ioctl_get_encryption.exit_crit_edge
  %retval.0.i65 = phi i32 [ -22, %if.then23.i ], [ -22, %sw.bb17.i.prism2_ioctl_get_encryption.exit_crit_edge ], [ 0, %if.then65.i ], [ 0, %if.end63.i.prism2_ioctl_get_encryption.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crypt.i) #16
  br label %if.then46.i

sw.bb21.i:                                        ; preds = %if.end13.i27
  %152 = ptrtoint ptr %length.i19 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %length.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %153)
  %cmp.i96.i = icmp ult i16 %153, 16
  br i1 %cmp.i96.i, label %sw.bb21.i.if.then46.i_crit_edge, label %if.end.i.i

sw.bb21.i.if.then46.i_crit_edge:                  ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

if.end.i.i:                                       ; preds = %sw.bb21.i
  %func.i.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %154 = ptrtoint ptr %func.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %func.i.i, align 4
  %get_rid.i.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %155, i32 0, i32 5
  %156 = ptrtoint ptr %get_rid.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %get_rid.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %158 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2
  %160 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %u.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 0, i32 4
  %len.i.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 0, i32 2
  %162 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %len.i.i, align 2
  %conv.i.i = zext i16 %163 to i32
  %call.i.i = tail call i32 %157(ptr noundef %159, i16 noundef zeroext %161, ptr noundef %data.i.i, i32 noundef %conv.i.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp3.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.end.i.i.if.then46.i_crit_edge

if.end.i.i.if.then46.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv6.i.i = trunc i32 %call.i.i to i16
  %164 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv6.i.i, ptr %len.i.i, align 2
  br label %if.then46.i

sw.bb25.i:                                        ; preds = %if.end13.i27
  %165 = ptrtoint ptr %length.i19 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %length.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %166)
  %cmp.i98.i = icmp ult i16 %166, 16
  br i1 %cmp.i98.i, label %sw.bb25.i.if.then46.i_crit_edge, label %lor.lhs.false.i.i

sw.bb25.i.if.then46.i_crit_edge:                  ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

lor.lhs.false.i.i:                                ; preds = %sw.bb25.i
  %conv27.i = zext i16 %166 to i32
  %sub.i97.i = add nsw i32 %conv27.i, -16
  %len.i99.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 0, i32 2
  %167 = ptrtoint ptr %len.i99.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %len.i99.i, align 2
  %conv.i100.i = zext i16 %168 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i97.i, i32 %conv.i100.i)
  %cmp1.i.i = icmp ult i32 %sub.i97.i, %conv.i100.i
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.if.then46.i_crit_edge, label %if.end.i106.i

lor.lhs.false.i.i.if.then46.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

if.end.i106.i:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %u.i101.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2
  %func.i102.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %169 = ptrtoint ptr %func.i102.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %func.i102.i, align 4
  %set_rid.i.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %170, i32 0, i32 6
  %171 = ptrtoint ptr %set_rid.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %set_rid.i.i, align 4
  %dev.i103.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %173 = ptrtoint ptr %dev.i103.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev.i103.i, align 4
  %175 = ptrtoint ptr %u.i101.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %u.i101.i, align 4
  %data.i104.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i105.i = tail call i32 %172(ptr noundef %174, i16 noundef zeroext %176, ptr noundef %data.i104.i, i32 noundef %conv.i100.i) #16
  br label %if.then46.i

sw.bb29.i:                                        ; preds = %if.end13.i27
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i108.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %177 = ptrtoint ptr %dev.i108.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i108.i, align 4
  %sta_addr.i.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 1
  %call.i109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %178, ptr noundef %sta_addr.i.i) #19
  %assoc_ap_addr.i.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 72
  %179 = call ptr @memcpy(ptr %assoc_ap_addr.i.i, ptr %sta_addr.i.i, i32 6)
  br label %if.then46.i

sw.bb33.i:                                        ; preds = %if.end13.i27
  %180 = ptrtoint ptr %length.i19 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %length.i19, align 4
  %conv35.i = zext i16 %181 to i32
  %u.i42 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2
  %182 = ptrtoint ptr %u.i42 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %u.i42, align 4
  %conv.i43 = zext i8 %183 to i32
  %sub.i = add nsw i32 %conv35.i, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %181)
  %cmp.i = icmp ult i16 %181, 13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i43)
  %cmp3.i44 = icmp slt i32 %sub.i, %conv.i43
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp3.i44
  br i1 %or.cond.i, label %sw.bb33.i.if.then46.i_crit_edge, label %if.end.i47

sw.bb33.i.if.then46.i_crit_edge:                  ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

if.end.i47:                                       ; preds = %sw.bb33.i
  %dev.i45 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %184 = ptrtoint ptr %dev.i45 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev.i45, align 4
  %local1.i.i46 = getelementptr i8, ptr %185, i32 2316
  %186 = ptrtoint ptr %local1.i.i46 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %local1.i.i46, align 4
  %add.i.i = add nuw nsw i32 %conv.i43, 2
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #22
  %cmp.i.i50 = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp.i.i50, label %if.end.i47.if.then46.i_crit_edge, label %if.end.i.i54

if.end.i47.if.then46.i_crit_edge:                 ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

if.end.i.i54:                                     ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #18
  %data.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 0, i32 1
  %conv.i.i51 = zext i8 %183 to i16
  %188 = shl nuw i16 %conv.i.i51, 8
  %189 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %188, ptr %call9.i.i.i, align 128
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i, i32 2
  %190 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %data.i, i32 %conv.i43)
  %generic_elem.i.i = getelementptr inbounds %struct.local_info, ptr %187, i32 0, i32 133
  %191 = ptrtoint ptr %generic_elem.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %generic_elem.i.i, align 4
  tail call void @kfree(ptr noundef %192) #16
  %193 = ptrtoint ptr %generic_elem.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %call9.i.i.i, ptr %generic_elem.i.i, align 4
  %generic_elem_len.i.i = getelementptr inbounds %struct.local_info, ptr %187, i32 0, i32 134
  %194 = ptrtoint ptr %generic_elem_len.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %add.i.i, ptr %generic_elem_len.i.i, align 4
  %func.i.i52 = getelementptr inbounds %struct.local_info, ptr %187, i32 0, i32 92
  %195 = ptrtoint ptr %func.i.i52 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %func.i.i52, align 4
  %set_rid.i.i53 = getelementptr inbounds %struct.prism2_helper_functions, ptr %196, i32 0, i32 6
  %197 = ptrtoint ptr %set_rid.i.i53 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %set_rid.i.i53, align 4
  %dev5.i.i = getelementptr inbounds %struct.local_info, ptr %187, i32 0, i32 5
  %199 = ptrtoint ptr %dev5.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev5.i.i, align 4
  %call7.i.i = tail call i32 %198(ptr noundef %200, i16 noundef zeroext -952, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i.i) #16
  br label %if.then46.i

sw.bb37.i:                                        ; preds = %if.end13.i27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reason.i) #16
  %u.i40 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2
  %reason_code.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 0, i32 2
  %201 = ptrtoint ptr %reason_code.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %reason_code.i, align 2
  %203 = tail call i16 @llvm.bswap.i16(i16 %202) #16
  %204 = ptrtoint ptr %reason.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %203, ptr %reason.i, align 2
  %205 = ptrtoint ptr %u.i40 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %u.i40, align 4
  %207 = zext i16 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.150)
  switch i16 %206, label %sw.bb37.i.prism2_ioctl_mlme.exit_crit_edge [
    i16 0, label %sw.bb37.i.cleanup.sink.split.i_crit_edge
    i16 1, label %sw.bb2.i
  ]

sw.bb37.i.cleanup.sink.split.i_crit_edge:         ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

sw.bb37.i.prism2_ioctl_mlme.exit_crit_edge:       ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_ioctl_mlme.exit

sw.bb2.i:                                         ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb2.i, %sw.bb37.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 160, %sw.bb2.i ], [ 192, %sw.bb37.i.cleanup.sink.split.i_crit_edge ]
  %sta_addr3.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 1
  %call5.i = call i32 @prism2_sta_send_mgmt(ptr noundef %1, ptr noundef %sta_addr3.i, i16 noundef zeroext %.sink.i, ptr noundef nonnull %reason.i, i32 noundef 2) #16
  br label %prism2_ioctl_mlme.exit

prism2_ioctl_mlme.exit:                           ; preds = %cleanup.sink.split.i, %sw.bb37.i.prism2_ioctl_mlme.exit_crit_edge
  %retval.0.i41 = phi i32 [ -95, %sw.bb37.i.prism2_ioctl_mlme.exit_crit_edge ], [ %call5.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reason.i) #16
  br label %if.then46.i

sw.bb39.i:                                        ; preds = %if.end13.i27
  %iw_mode.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %208 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %iw_mode.i, align 4
  %.off.i = add i32 %209, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %lor.lhs.false.i, label %sw.bb39.i.if.then46.i_crit_edge

sw.bb39.i.if.then46.i_crit_edge:                  ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

lor.lhs.false.i:                                  ; preds = %sw.bb39.i
  %sta_fw_ver.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 95
  %210 = ptrtoint ptr %sta_fw_ver.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %sta_fw_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66305, i32 %211)
  %cmp3.i = icmp ult i32 %211, 66305
  br i1 %cmp3.i, label %lor.lhs.false.i.if.then46.i_crit_edge, label %if.end.i33

lor.lhs.false.i.if.then46.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

if.end.i33:                                       ; preds = %lor.lhs.false.i
  %dev_enabled.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 2
  %212 = ptrtoint ptr %dev_enabled.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %dev_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool.not.i32 = icmp eq i32 %213, 0
  br i1 %tobool.not.i32, label %if.end.i33.if.then46.i_crit_edge, label %if.end5.i

if.end.i33.if.then46.i_crit_edge:                 ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

if.end5.i:                                        ; preds = %if.end.i33
  %dev.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %214 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev.i, align 4
  %u.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2
  %216 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %u.i, align 4
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %scan_req.i.i) #16
  %local1.i.i = getelementptr i8, ptr %215, i32 2316
  %218 = ptrtoint ptr %local1.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %local1.i.i, align 4
  %220 = getelementptr inbounds i8, ptr %scan_req.i.i, i32 6
  %221 = call ptr @memset(ptr %220, i32 0, i32 32)
  %channel_mask.i.i = getelementptr inbounds %struct.local_info, ptr %219, i32 0, i32 26
  %222 = ptrtoint ptr %channel_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %channel_mask.i.i, align 4
  %scan_channel_mask.i.i = getelementptr inbounds %struct.local_info, ptr %219, i32 0, i32 27
  %224 = ptrtoint ptr %scan_channel_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %scan_channel_mask.i.i, align 2
  %and25.i.i = and i16 %225, %223
  %226 = tail call i16 @llvm.bswap.i16(i16 %and25.i.i) #16
  %227 = ptrtoint ptr %scan_req.i.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %226, ptr %scan_req.i.i, align 2
  %txrate.i.i = getelementptr inbounds %struct.hfa384x_hostscan_request, ptr %scan_req.i.i, i32 0, i32 1
  %228 = ptrtoint ptr %txrate.i.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 256, ptr %txrate.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %217)
  %cmp.i.i34 = icmp ugt i8 %217, 32
  br i1 %cmp.i.i34, label %if.end5.i.prism2_request_hostscan.exit.i_crit_edge, label %if.end.i.i36

if.end5.i.prism2_request_hostscan.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_request_hostscan.exit.i

if.end.i.i36:                                     ; preds = %if.end5.i
  %229 = getelementptr inbounds i8, ptr %scan_req.i.i, i32 4
  %ssid.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %call.i23, i32 0, i32 2, i32 0, i32 0, i32 1
  %conv4.i.i = zext i8 %217 to i32
  %conv7.i.i = zext i8 %217 to i16
  %230 = shl nuw nsw i16 %conv7.i.i, 8
  %231 = ptrtoint ptr %229 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %230, ptr %229, align 2
  %target_ssid.i.i = getelementptr inbounds %struct.hfa384x_hostscan_request, ptr %scan_req.i.i, i32 0, i32 3
  %232 = call ptr @memcpy(ptr %target_ssid.i.i, ptr %ssid.i, i32 %conv4.i.i)
  %func.i.i37 = getelementptr inbounds %struct.local_info, ptr %219, i32 0, i32 92
  %233 = ptrtoint ptr %func.i.i37 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %func.i.i37, align 4
  %set_rid.i.i38 = getelementptr inbounds %struct.prism2_helper_functions, ptr %234, i32 0, i32 6
  %235 = ptrtoint ptr %set_rid.i.i38 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %set_rid.i.i38, align 4
  %call10.i.i = call i32 %236(ptr noundef %215, i16 noundef zeroext -795, ptr noundef nonnull %scan_req.i.i, i32 noundef 38) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end.i.i36.prism2_request_hostscan.exit.i_crit_edge, label %do.end.i.i

if.end.i.i36.prism2_request_hostscan.exit.i_crit_edge: ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_request_hostscan.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %215) #19
  br label %prism2_request_hostscan.exit.i

prism2_request_hostscan.exit.i:                   ; preds = %do.end.i.i, %if.end.i.i36.prism2_request_hostscan.exit.i_crit_edge, %if.end5.i.prism2_request_hostscan.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %do.end.i.i ], [ -22, %if.end5.i.prism2_request_hostscan.exit.i_crit_edge ], [ 0, %if.end.i.i36.prism2_request_hostscan.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %scan_req.i.i) #16
  br label %if.then46.i

sw.epilog.i:                                      ; preds = %if.end13.i27
  %ap.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %237 = ptrtoint ptr %ap.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ap.i, align 4
  %call41.i = tail call i32 @prism2_hostapd(ptr noundef %238, ptr noundef %call.i23) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41.i)
  %cmp42.i = icmp eq i32 %call41.i, 1
  br i1 %cmp42.i, label %sw.epilog.i.if.then46.i_crit_edge, label %sw.epilog.i.out.i30_crit_edge

sw.epilog.i.out.i30_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i30

sw.epilog.i.if.then46.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46.i

if.then46.i:                                      ; preds = %sw.epilog.i.if.then46.i_crit_edge, %prism2_request_hostscan.exit.i, %if.end.i33.if.then46.i_crit_edge, %lor.lhs.false.i.if.then46.i_crit_edge, %sw.bb39.i.if.then46.i_crit_edge, %prism2_ioctl_mlme.exit, %if.end.i.i54, %if.end.i47.if.then46.i_crit_edge, %sw.bb33.i.if.then46.i_crit_edge, %sw.bb29.i, %if.end.i106.i, %lor.lhs.false.i.i.if.then46.i_crit_edge, %sw.bb25.i.if.then46.i_crit_edge, %if.then5.i.i, %if.end.i.i.if.then46.i_crit_edge, %sw.bb21.i.if.then46.i_crit_edge, %prism2_ioctl_get_encryption.exit, %prism2_ioctl_set_encryption.exit
  %tobool45.not115.i = phi i32 [ 0, %sw.epilog.i.if.then46.i_crit_edge ], [ %retval.0.i41, %prism2_ioctl_mlme.exit ], [ 0, %sw.bb29.i ], [ %retval.0.i65, %prism2_ioctl_get_encryption.exit ], [ %retval.0.i96, %prism2_ioctl_set_encryption.exit ], [ -22, %sw.bb21.i.if.then46.i_crit_edge ], [ %call.i.i, %if.end.i.i.if.then46.i_crit_edge ], [ 0, %if.then5.i.i ], [ -22, %sw.bb25.i.if.then46.i_crit_edge ], [ -22, %lor.lhs.false.i.i.if.then46.i_crit_edge ], [ %call.i105.i, %if.end.i106.i ], [ -22, %sw.bb33.i.if.then46.i_crit_edge ], [ %call7.i.i, %if.end.i.i54 ], [ -12, %if.end.i47.if.then46.i_crit_edge ], [ %retval.0.i.i, %prism2_request_hostscan.exit.i ], [ -95, %sw.bb39.i.if.then46.i_crit_edge ], [ -95, %lor.lhs.false.i.if.then46.i_crit_edge ], [ -100, %if.end.i33.if.then46.i_crit_edge ]
  %239 = ptrtoint ptr %u11 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %u11, align 4
  %241 = ptrtoint ptr %length.i19 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %length.i19, align 4
  %conv49.i = zext i16 %242 to i32
  call void @__check_object_size(ptr noundef %call.i23, i32 noundef %conv49.i, i1 noundef zeroext true) #16
  call void @__might_fault(ptr noundef nonnull @.str.142, i32 noundef 174) #16
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i.i, label %if.then46.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then46.i.copy_to_user.exit.i_crit_edge:        ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then46.i
  %243 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %240, i32 %conv49.i, i32 -1226833920) #23, !srcloc !282
  %asmresult.i.i.i = extractvalue { i32, i32 } %243, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %call.i23, i32 noundef %conv49.i) #16
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %240, ptr noundef %call.i23, i32 noundef %conv49.i) #16
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then46.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %conv49.i, %if.then46.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %conv49.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool51.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool51.not.i, i32 %tobool45.not115.i, i32 -14
  br label %out.i30

out.i30:                                          ; preds = %copy_to_user.exit.i, %sw.epilog.i.out.i30_crit_edge
  %ret.1.i = phi i32 [ %call41.i, %sw.epilog.i.out.i30_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @kfree(ptr noundef %call.i23) #16
  br label %cleanup

cleanup:                                          ; preds = %out.i30, %if.then11.i26, %lor.lhs.false6.i22.cleanup_crit_edge, %if.else10.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %out.i, %if.then11.i, %lor.lhs.false6.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %ret.0 = phi i32 [ -1, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb7.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %9, %if.then11.i ], [ %ret.0.i, %out.i ], [ -22, %lor.lhs.false6.i.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %24, %if.then11.i26 ], [ %ret.1.i, %out.i30 ], [ -22, %lor.lhs.false6.i22.cleanup_crit_edge ], [ -22, %if.else10.cleanup_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_get_name(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr noundef %name, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %buf.i = alloca [12 x i8], align 2
  %rates = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rates) #16
  %0 = call ptr @memset(ptr %rates, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i) #16
  %1 = getelementptr inbounds [12 x i8], ptr %buf.i, i32 0, i32 2
  %local1.i = getelementptr i8, ptr %dev, i32 2316
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 12)
  %3 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local1.i, align 4
  %func.i = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 92
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func.i, align 4
  %get_rid.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %get_rid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_rid.i, align 4
  %call2.i = call i32 %8(ptr noundef %dev, i16 noundef zeroext -570, ptr noundef nonnull %buf.i, i32 noundef 12, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 2
  br i1 %cmp.i, label %entry.prism2_get_datarates.exit.thread_crit_edge, label %if.end.i

entry.prism2_get_datarates.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_get_datarates.exit.thread

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %buf.i, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10) #16
  %sub.i = add nsw i32 %call2.i, -2
  %conv.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp4.i = icmp ult i32 %sub.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %11)
  %cmp7.i = icmp ugt i16 %11, 10
  %or.cond.i = or i1 %cmp7.i, %cmp4.i
  br i1 %or.cond.i, label %if.end.i.prism2_get_datarates.exit.thread_crit_edge, label %prism2_get_datarates.exit

if.end.i.prism2_get_datarates.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_get_datarates.exit.thread

prism2_get_datarates.exit.thread:                 ; preds = %if.end.i.prism2_get_datarates.exit.thread_crit_edge, %entry.prism2_get_datarates.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i) #16
  br label %for.end

prism2_get_datarates.exit:                        ; preds = %if.end.i
  %12 = call ptr @memcpy(ptr %rates, ptr %1, i32 %conv.i)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp11.not = icmp eq i16 %10, 0
  br i1 %cmp11.not, label %prism2_get_datarates.exit.for.end_crit_edge, label %prism2_get_datarates.exit.for.body_crit_edge

prism2_get_datarates.exit.for.body_crit_edge:     ; preds = %prism2_get_datarates.exit
  br label %for.body

prism2_get_datarates.exit.for.end_crit_edge:      ; preds = %prism2_get_datarates.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %prism2_get_datarates.exit.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %prism2_get_datarates.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x i8], ptr %rates, i32 0, i32 %i.012
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %14, label %for.inc [
    i8 11, label %for.body.for.end_crit_edge
    i8 22, label %for.body.for.end_crit_edge18
  ]

for.body.for.end_crit_edge18:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %conv.i
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.body.for.end_crit_edge18, %prism2_get_datarates.exit.for.end_crit_edge, %prism2_get_datarates.exit.thread
  %cond = phi ptr [ @.str.3, %prism2_get_datarates.exit.for.end_crit_edge ], [ @.str.3, %prism2_get_datarates.exit.thread ], [ @.str.2, %for.body.for.end_crit_edge ], [ @.str.2, %for.body.for.end_crit_edge18 ], [ @.str.3, %for.inc.for.end_crit_edge ]
  %call7 = call ptr @strcpy(ptr noundef %name, ptr noundef nonnull %cond) #24
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rates) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwfreq(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %freq, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %e = getelementptr inbounds %struct.iw_freq, ptr %freq, i32 0, i32 1
  %2 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp eq i16 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq, align 4
  %6 = add i32 %5, -241200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 7300000, i32 %6)
  %7 = icmp ult i32 %6, 7300000
  br i1 %7, label %for.body.preheader, label %land.lhs.true.if.end19thread-pre-split_crit_edge

land.lhs.true.if.end19thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19thread-pre-split

for.body.preheader:                               ; preds = %land.lhs.true
  %.off = add nsw i32 %5, -241200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off)
  %8 = icmp ult i32 %.off, 100000
  br i1 %8, label %for.body.preheader.if.end19.thread_crit_edge, label %for.inc

for.body.preheader.if.end19.thread_crit_edge:     ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

if.end19.thread:                                  ; preds = %for.inc.12.if.end19.thread_crit_edge, %for.inc.11.if.end19.thread_crit_edge, %for.inc.10.if.end19.thread_crit_edge, %for.inc.9.if.end19.thread_crit_edge, %for.inc.8.if.end19.thread_crit_edge, %for.inc.7.if.end19.thread_crit_edge, %for.inc.6.if.end19.thread_crit_edge, %for.inc.5.if.end19.thread_crit_edge, %for.inc.4.if.end19.thread_crit_edge, %for.inc.3.if.end19.thread_crit_edge, %for.inc.2.if.end19.thread_crit_edge, %for.inc.1.if.end19.thread_crit_edge, %for.inc.if.end19.thread_crit_edge, %for.body.preheader.if.end19.thread_crit_edge
  %ch.068.lcssa = phi i32 [ 1, %for.body.preheader.if.end19.thread_crit_edge ], [ 2, %for.inc.if.end19.thread_crit_edge ], [ 3, %for.inc.1.if.end19.thread_crit_edge ], [ 4, %for.inc.2.if.end19.thread_crit_edge ], [ 5, %for.inc.3.if.end19.thread_crit_edge ], [ 6, %for.inc.4.if.end19.thread_crit_edge ], [ 7, %for.inc.5.if.end19.thread_crit_edge ], [ 8, %for.inc.6.if.end19.thread_crit_edge ], [ 9, %for.inc.7.if.end19.thread_crit_edge ], [ 10, %for.inc.8.if.end19.thread_crit_edge ], [ 11, %for.inc.9.if.end19.thread_crit_edge ], [ 12, %for.inc.10.if.end19.thread_crit_edge ], [ 13, %for.inc.11.if.end19.thread_crit_edge ], [ 14, %for.inc.12.if.end19.thread_crit_edge ]
  %9 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %e, align 4
  %10 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ch.068.lcssa, ptr %freq, align 4
  br label %lor.lhs.false

for.inc:                                          ; preds = %for.body.preheader
  %.off70 = add nsw i32 %5, -241700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off70)
  %11 = icmp ult i32 %.off70, 100000
  br i1 %11, label %for.inc.if.end19.thread_crit_edge, label %for.inc.1

for.inc.if.end19.thread_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.1:                                        ; preds = %for.inc
  %.off71 = add nsw i32 %5, -242200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off71)
  %12 = icmp ult i32 %.off71, 100000
  br i1 %12, label %for.inc.1.if.end19.thread_crit_edge, label %for.inc.2

for.inc.1.if.end19.thread_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.2:                                        ; preds = %for.inc.1
  %.off72 = add nsw i32 %5, -242700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off72)
  %13 = icmp ult i32 %.off72, 100000
  br i1 %13, label %for.inc.2.if.end19.thread_crit_edge, label %for.inc.3

for.inc.2.if.end19.thread_crit_edge:              ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.3:                                        ; preds = %for.inc.2
  %.off73 = add nsw i32 %5, -243200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off73)
  %14 = icmp ult i32 %.off73, 100000
  br i1 %14, label %for.inc.3.if.end19.thread_crit_edge, label %for.inc.4

for.inc.3.if.end19.thread_crit_edge:              ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.4:                                        ; preds = %for.inc.3
  %.off74 = add nsw i32 %5, -243700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off74)
  %15 = icmp ult i32 %.off74, 100000
  br i1 %15, label %for.inc.4.if.end19.thread_crit_edge, label %for.inc.5

for.inc.4.if.end19.thread_crit_edge:              ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.5:                                        ; preds = %for.inc.4
  %.off75 = add nsw i32 %5, -244200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off75)
  %16 = icmp ult i32 %.off75, 100000
  br i1 %16, label %for.inc.5.if.end19.thread_crit_edge, label %for.inc.6

for.inc.5.if.end19.thread_crit_edge:              ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.6:                                        ; preds = %for.inc.5
  %.off76 = add nsw i32 %5, -244700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off76)
  %17 = icmp ult i32 %.off76, 100000
  br i1 %17, label %for.inc.6.if.end19.thread_crit_edge, label %for.inc.7

for.inc.6.if.end19.thread_crit_edge:              ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.7:                                        ; preds = %for.inc.6
  %.off77 = add nsw i32 %5, -245200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off77)
  %18 = icmp ult i32 %.off77, 100000
  br i1 %18, label %for.inc.7.if.end19.thread_crit_edge, label %for.inc.8

for.inc.7.if.end19.thread_crit_edge:              ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.8:                                        ; preds = %for.inc.7
  %.off78 = add nsw i32 %5, -245700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off78)
  %19 = icmp ult i32 %.off78, 100000
  br i1 %19, label %for.inc.8.if.end19.thread_crit_edge, label %for.inc.9

for.inc.8.if.end19.thread_crit_edge:              ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.9:                                        ; preds = %for.inc.8
  %.off79 = add nsw i32 %5, -246200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off79)
  %20 = icmp ult i32 %.off79, 100000
  br i1 %20, label %for.inc.9.if.end19.thread_crit_edge, label %for.inc.10

for.inc.9.if.end19.thread_crit_edge:              ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.10:                                       ; preds = %for.inc.9
  %.off80 = add nsw i32 %5, -246700000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off80)
  %21 = icmp ult i32 %.off80, 100000
  br i1 %21, label %for.inc.10.if.end19.thread_crit_edge, label %for.inc.11

for.inc.10.if.end19.thread_crit_edge:             ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.11:                                       ; preds = %for.inc.10
  %.off81 = add nsw i32 %5, -247200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off81)
  %22 = icmp ult i32 %.off81, 100000
  br i1 %22, label %for.inc.11.if.end19.thread_crit_edge, label %for.inc.12

for.inc.11.if.end19.thread_crit_edge:             ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

for.inc.12:                                       ; preds = %for.inc.11
  %.off82 = add nsw i32 %5, -248400000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.off82)
  %23 = icmp ult i32 %.off82, 100000
  br i1 %23, label %for.inc.12.if.end19.thread_crit_edge, label %for.inc.12.if.end19thread-pre-split_crit_edge

for.inc.12.if.end19thread-pre-split_crit_edge:    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19thread-pre-split

for.inc.12.if.end19.thread_crit_edge:             ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.thread

if.end19thread-pre-split:                         ; preds = %for.inc.12.if.end19thread-pre-split_crit_edge, %land.lhs.true.if.end19thread-pre-split_crit_edge
  %24 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %24)
  %.pr = load i16, ptr %e, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %entry.if.end19_crit_edge
  %25 = phi i16 [ %.pr, %if.end19thread-pre-split ], [ %3, %entry.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp22.not = icmp eq i16 %25, 0
  br i1 %cmp22.not, label %if.end19.lor.lhs.false_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19.lor.lhs.false_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end19.lor.lhs.false_crit_edge, %if.end19.thread
  %26 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %freq, align 4
  %28 = add i32 %27, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %28)
  %29 = icmp ult i32 %28, -14
  br i1 %29, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false31

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %channel_mask = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 26
  %30 = ptrtoint ptr %channel_mask to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %channel_mask, align 4
  %conv32 = zext i16 %31 to i32
  %sub = add nsw i32 %27, -1
  %shl = shl nuw nsw i32 1, %sub
  %and = and i32 %shl, %conv32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false31.cleanup_crit_edge, label %if.end35

lor.lhs.false31.cleanup_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false31
  %channel = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 33
  %32 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %channel, align 4
  %conv38 = trunc i32 %27 to i16
  %call39 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64515, i16 noundef zeroext %conv38) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false41:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %33 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reset_port, align 4
  %call42 = tail call i32 %36(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  %spec.select = select i1 %tobool43.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false41, %if.end35.cleanup_crit_edge, %lor.lhs.false31.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false31.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %if.end35.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwfreq(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %freq, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !281
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local1, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 92
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func, align 4
  %get_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %get_rid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_rid, align 4
  %call2 = call i32 %6(ptr noundef %dev, i16 noundef zeroext -575, ptr noundef nonnull %val, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp3 = icmp eq i16 %8, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %9)
  %cmp6 = icmp ugt i16 %9, 14
  %or.cond = or i1 %cmp3, %cmp6
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i16 %9 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [14 x i32], ptr @freq_list, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %11, 100000
  %12 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %freq, align 4
  %e = getelementptr inbounds %struct.iw_freq, ptr %freq, i32 0, i32 1
  %13 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %e, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwmode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 2, label %entry.if.end_crit_edge135
    i32 3, label %entry.if.end_crit_edge136
    i32 4, label %entry.if.end_crit_edge137
    i32 6, label %entry.if.end_crit_edge138
  ]

entry.if.end_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge135, %entry.if.end_crit_edge136, %entry.if.end_crit_edge137, %entry.if.end_crit_edge138
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %5 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp9 = icmp eq i32 %3, %6
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp12 = icmp eq i32 %3, 3
  br i1 %cmp12, label %land.lhs.true13, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

land.lhs.true13:                                  ; preds = %if.end11
  %essid = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %essid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %essid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp14 = icmp eq i8 %8, 0
  br i1 %cmp14, label %do.end, label %land.lhs.true13.if.end18_crit_edge

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

do.end:                                           ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %dev) #19
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp20 = icmp eq i32 %6, 6
  br i1 %cmp20, label %if.then22, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @hostap_monitor_mode_disable(ptr noundef %1)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  %9 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iw_mode, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %10, label %if.end24.do.end38_crit_edge [
    i32 1, label %if.end24.land.lhs.true31_crit_edge
    i32 6, label %if.end24.land.lhs.true31_crit_edge139
  ]

if.end24.land.lhs.true31_crit_edge139:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true31

if.end24.land.lhs.true31_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true31

if.end24.do.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end38

land.lhs.true31:                                  ; preds = %if.end24.land.lhs.true31_crit_edge, %if.end24.land.lhs.true31_crit_edge139
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp32 = icmp ne i32 %13, 3
  br label %do.end38

do.end38:                                         ; preds = %land.lhs.true31, %if.end24.do.end38_crit_edge
  %tobool76.not = phi i1 [ true, %if.end24.do.end38_crit_edge ], [ %cmp32, %land.lhs.true31 ]
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, i32 noundef %10, i32 noundef %15) #19
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  %18 = ptrtoint ptr %iw_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %iw_mode, align 4
  %19 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %17, label %do.end38.if.end66_crit_edge [
    i32 6, label %if.then48
    i32 3, label %land.lhs.true53
  ]

do.end38.if.end66_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.then48:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @hostap_monitor_mode_enable(ptr noundef %1)
  br label %if.end66

land.lhs.true53:                                  ; preds = %do.end38
  %host_encrypt = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 77
  %20 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host_encrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %land.lhs.true54, label %land.lhs.true53.if.end66_crit_edge

land.lhs.true53.if.end66_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

land.lhs.true54:                                  ; preds = %land.lhs.true53
  %fw_encrypt_ok = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 80
  %22 = ptrtoint ptr %fw_encrypt_ok to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_encrypt_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool55.not = icmp eq i32 %23, 0
  br i1 %tobool55.not, label %do.end59, label %land.lhs.true54.if.end66_crit_edge

land.lhs.true54.if.end66_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

do.end59:                                         ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #18
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %dev) #19
  %24 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %host_encrypt, align 4
  br label %if.end66

if.end66:                                         ; preds = %do.end59, %land.lhs.true54.if.end66_crit_edge, %land.lhs.true53.if.end66_crit_edge, %if.then48, %do.end38.if.end66_crit_edge
  %call67 = tail call zeroext i16 @hostap_get_porttype(ptr noundef %1) #16
  %call68 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64512, i16 noundef zeroext %call67) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %25 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reset_port, align 4
  %call72 = tail call i32 %28(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  br i1 %tobool76.not, label %if.end75.if.end83_crit_edge, label %land.lhs.true77

if.end75.if.end83_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

land.lhs.true77:                                  ; preds = %if.end75
  %29 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %func, align 4
  %reset_port79 = getelementptr inbounds %struct.prism2_helper_functions, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %reset_port79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reset_port79, align 4
  %call80 = tail call i32 %32(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %land.lhs.true77.if.end83_crit_edge, label %land.lhs.true77.cleanup_crit_edge

land.lhs.true77.cleanup_crit_edge:                ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true77.if.end83_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

if.end83:                                         ; preds = %land.lhs.true77.if.end83_crit_edge, %if.end75.if.end83_crit_edge
  %33 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iw_mode, align 4
  %.off = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end83.cleanup_crit_edge, label %if.then91

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then91:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  %dev92 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev92, align 4
  tail call void @netif_carrier_on(ptr noundef %36) #16
  %ddev = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ddev, align 4
  tail call void @netif_carrier_on(ptr noundef %38) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.end83.cleanup_crit_edge, %land.lhs.true77.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -95, %if.end66.cleanup_crit_edge ], [ -22, %if.end71.cleanup_crit_edge ], [ -22, %land.lhs.true77.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ], [ 0, %if.then91 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prism2_ioctl_giwmode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %mode, ptr nocapture noundef readnone %extra) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %dev, i32 2520
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %1, label %sw.default [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %3 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local1, align 4
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %4, i32 0, i32 30
  %5 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iw_mode, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %6, %sw.default ], [ 4, %sw.bb2 ], [ 2, %entry.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwsens(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %sens, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = ptrtoint ptr %sens to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sens, align 4
  %4 = add i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %4)
  %5 = icmp ult i32 %4, -3
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %3 to i16
  %call5 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64518, i16 noundef zeroext %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %lor.lhs.false6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_port, align 4
  %call7 = tail call i32 %9(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwsens(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %sens, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !281
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local1, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 92
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func, align 4
  %get_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %get_rid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_rid, align 4
  %call2 = call i32 %6(ptr noundef %dev, i16 noundef zeroext -1018, ptr noundef nonnull %val, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %sens to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %sens, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %sens, i32 0, i32 1
  %11 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %fixed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwrange(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %data, ptr noundef %extra) #1 align 64 {
entry:
  %buf.i = alloca [12 x i8], align 2
  %rates = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rates) #16
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = call ptr @memset(ptr %rates, i32 255, i32 10)
  %1 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local1, align 4
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 568, ptr %length, align 4
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 30
  %4 = call ptr @memset(ptr %extra, i32 0, i32 568)
  %5 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iw_mode, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %min_pmp = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 16
  %7 = ptrtoint ptr %min_pmp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1024, ptr %min_pmp, align 4
  %max_pmp = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 17
  %8 = ptrtoint ptr %max_pmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 67107840, ptr %max_pmp, align 4
  %min_pmt = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 18
  %9 = ptrtoint ptr %min_pmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1024, ptr %min_pmt, align 4
  %max_pmt = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 19
  %10 = ptrtoint ptr %max_pmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1024000, ptr %max_pmt, align 4
  %pmp_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 20
  %11 = ptrtoint ptr %pmp_flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4096, ptr %pmp_flags, align 4
  %pmt_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 21
  %12 = ptrtoint ptr %pmt_flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 8192, ptr %pmt_flags, align 2
  %pm_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 22
  %13 = ptrtoint ptr %pm_capa to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 13056, ptr %pm_capa, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %we_version_compiled = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 30
  %14 = ptrtoint ptr %we_version_compiled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 22, ptr %we_version_compiled, align 4
  %we_version_source = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 31
  %15 = ptrtoint ptr %we_version_source to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 18, ptr %we_version_source, align 1
  %retry_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 32
  %16 = ptrtoint ptr %retry_capa to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4096, ptr %retry_capa, align 2
  %retry_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 33
  %17 = ptrtoint ptr %retry_flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4096, ptr %retry_flags, align 4
  %min_retry = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 35
  %18 = ptrtoint ptr %min_retry to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %min_retry, align 4
  %max_retry = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 36
  %19 = ptrtoint ptr %max_retry to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 255, ptr %max_retry, align 4
  %num_channels = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 39
  %20 = ptrtoint ptr %num_channels to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 14, ptr %num_channels, align 4
  %channel_mask = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0162 = phi i32 [ 0, %if.end ], [ %inc21, %for.inc.for.body_crit_edge ]
  %val.0161 = phi i16 [ 0, %if.end ], [ %val.1158, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %channel_mask to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %channel_mask, align 4
  %conv = zext i16 %22 to i32
  %shl = shl nuw nsw i32 1, %i.0162
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %23 = trunc i32 %i.0162 to i8
  %conv6 = add nuw nsw i8 %23, 1
  %idxprom = zext i16 %val.0161 to i32
  %arrayidx = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %idxprom
  %i7 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %idxprom, i32 2
  %24 = ptrtoint ptr %i7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv6, ptr %i7, align 2
  %arrayidx8 = getelementptr [14 x i32], ptr @freq_list, i32 0, i32 %i.0162
  %25 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx8, align 4
  %mul = mul i32 %26, 100000
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %arrayidx, align 4
  %e = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %idxprom, i32 1
  %28 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %e, align 4
  %inc = add i16 %val.0161, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %inc)
  %cmp17 = icmp eq i16 %inc, 32
  br i1 %cmp17, label %if.end15.for.end_crit_edge, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %val.1158 = phi i16 [ %inc, %if.end15.for.inc_crit_edge ], [ %val.0161, %for.body.for.inc_crit_edge ]
  %inc21 = add nuw nsw i32 %i.0162, 1
  %exitcond.not = icmp eq i32 %inc21, 14
  br i1 %exitcond.not, label %for.end.split.loop.exit159, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end.split.loop.exit159:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %extract.t154.le = trunc i16 %val.1158 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit159, %if.end15.for.end_crit_edge
  %val.2.off0 = phi i8 [ %extract.t154.le, %for.end.split.loop.exit159 ], [ 32, %if.end15.for.end_crit_edge ]
  %num_frequency = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 40
  %29 = ptrtoint ptr %num_frequency to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %val.2.off0, ptr %num_frequency, align 2
  %sta_fw_ver = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 95
  %30 = ptrtoint ptr %sta_fw_ver to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sta_fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66304, i32 %31)
  %cmp23 = icmp ugt i32 %31, 66304
  br i1 %cmp23, label %if.then25, label %for.end.if.end39_crit_edge

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %avg_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9
  %32 = ptrtoint ptr %avg_qual to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 20, ptr %avg_qual, align 4
  %level30 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %level30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -60, ptr %level30, align 1
  %noise32 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 2
  %34 = ptrtoint ptr %noise32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -95, ptr %noise32, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.then25, %for.end.if.end39_crit_edge
  %.sink172 = phi i8 [ 70, %if.then25 ], [ 92, %for.end.if.end39_crit_edge ]
  %.sink171 = phi i8 [ 0, %if.then25 ], [ -102, %for.end.if.end39_crit_edge ]
  %35 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink172, ptr %35, align 4
  %37 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.sink171, ptr %37, align 1
  %39 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink171, ptr %39, align 2
  %sensitivity = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 7
  %41 = ptrtoint ptr %sensitivity to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %sensitivity, align 4
  %max_encoding_tokens = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 25
  %42 = ptrtoint ptr %max_encoding_tokens to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %max_encoding_tokens, align 1
  %num_encoding_sizes = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 24
  %43 = ptrtoint ptr %num_encoding_sizes to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %num_encoding_sizes, align 2
  %encoding_size = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 23
  %44 = ptrtoint ptr %encoding_size to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 5, ptr %encoding_size, align 2
  %arrayidx42 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 23, i32 1
  %45 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 13, ptr %arrayidx42, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i) #16
  %46 = getelementptr inbounds [12 x i8], ptr %buf.i, i32 0, i32 2
  %47 = call ptr @memset(ptr %buf.i, i32 255, i32 12)
  %48 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %local1, align 4
  %func.i = getelementptr inbounds %struct.local_info, ptr %49, i32 0, i32 92
  %50 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %func.i, align 4
  %get_rid.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %get_rid.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_rid.i, align 4
  %call2.i = call i32 %53(ptr noundef %dev, i16 noundef zeroext -570, ptr noundef nonnull %buf.i, i32 noundef 12, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 2
  br i1 %cmp.i, label %if.end39.prism2_get_datarates.exit.thread_crit_edge, label %if.end.i

if.end39.prism2_get_datarates.exit.thread_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_get_datarates.exit.thread

if.end.i:                                         ; preds = %if.end39
  %54 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %buf.i, align 2
  %56 = call i16 @llvm.bswap.i16(i16 %55) #16
  %sub.i = add nsw i32 %call2.i, -2
  %conv.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp4.i = icmp ult i32 %sub.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %56)
  %cmp7.i = icmp ugt i16 %56, 10
  %or.cond.i = or i1 %cmp7.i, %cmp4.i
  br i1 %or.cond.i, label %if.end.i.prism2_get_datarates.exit.thread_crit_edge, label %prism2_get_datarates.exit

if.end.i.prism2_get_datarates.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_get_datarates.exit.thread

prism2_get_datarates.exit.thread:                 ; preds = %if.end.i.prism2_get_datarates.exit.thread_crit_edge, %if.end39.prism2_get_datarates.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i) #16
  %num_bitrates174 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 10
  %57 = ptrtoint ptr %num_bitrates174 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %num_bitrates174, align 4
  br label %for.end75.thread

prism2_get_datarates.exit:                        ; preds = %if.end.i
  %58 = call ptr @memcpy(ptr %rates, ptr %46, i32 %conv.i)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i) #16
  %num_bitrates = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 10
  %59 = ptrtoint ptr %num_bitrates to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %num_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp45164.not = icmp eq i16 %55, 0
  br i1 %cmp45164.not, label %prism2_get_datarates.exit.for.end75.thread_crit_edge, label %for.body47.lr.ph

prism2_get_datarates.exit.for.end75.thread_crit_edge: ; preds = %prism2_get_datarates.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end75.thread

for.body47.lr.ph:                                 ; preds = %prism2_get_datarates.exit
  %60 = ptrtoint ptr %num_bitrates to i32
  call void @__asan_load1_noabort(i32 %60)
  %num_bitrates.promoted = load i8, ptr %num_bitrates, align 4
  br label %for.body47

for.body47:                                       ; preds = %for.inc73.for.body47_crit_edge, %for.body47.lr.ph
  %inc60169 = phi i8 [ %num_bitrates.promoted, %for.body47.lr.ph ], [ %inc60168, %for.inc73.for.body47_crit_edge ]
  %over2.0167 = phi i32 [ 0, %for.body47.lr.ph ], [ %over2.1, %for.inc73.for.body47_crit_edge ]
  %i.1165 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc74, %for.inc73.for.body47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %inc60169)
  %cmp50 = icmp ult i8 %inc60169, 32
  br i1 %cmp50, label %if.then52, label %for.body47.if.end61_crit_edge

for.body47.if.end61_crit_edge:                    ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then52:                                        ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #18
  %conv49 = zext i8 %inc60169 to i32
  %arrayidx53 = getelementptr [10 x i8], ptr %rates, i32 0, i32 %i.1165
  %61 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %62 to i32
  %mul55 = mul nuw nsw i32 %conv54, 500000
  %arrayidx58 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 %conv49
  %63 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul55, ptr %arrayidx58, align 4
  %inc60 = add nuw nsw i8 %inc60169, 1
  %64 = ptrtoint ptr %num_bitrates to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %inc60, ptr %num_bitrates, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then52, %for.body47.if.end61_crit_edge
  %inc60168 = phi i8 [ %inc60, %if.then52 ], [ %inc60169, %for.body47.if.end61_crit_edge ]
  %arrayidx62 = getelementptr [10 x i8], ptr %rates, i32 0, i32 %i.1165
  %65 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx62, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %66, label %if.end61.for.inc73_crit_edge [
    i8 11, label %if.end61.if.then71_crit_edge
    i8 22, label %if.end61.if.then71_crit_edge178
  ]

if.end61.if.then71_crit_edge178:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then71

if.end61.if.then71_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then71

if.end61.for.inc73_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc73

if.then71:                                        ; preds = %if.end61.if.then71_crit_edge, %if.end61.if.then71_crit_edge178
  br label %for.inc73

for.inc73:                                        ; preds = %if.then71, %if.end61.for.inc73_crit_edge
  %over2.1 = phi i32 [ 1, %if.then71 ], [ %over2.0167, %if.end61.for.inc73_crit_edge ]
  %inc74 = add nuw nsw i32 %i.1165, 1
  %exitcond170.not = icmp eq i32 %inc74, %conv.i
  br i1 %exitcond170.not, label %for.end75, label %for.inc73.for.body47_crit_edge

for.inc73.for.body47_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body47

for.end75:                                        ; preds = %for.inc73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %over2.1)
  %tobool76.not = icmp eq i32 %over2.1, 0
  br i1 %tobool76.not, label %for.end75.for.end75.thread_crit_edge, label %for.end75._crit_edge

for.end75._crit_edge:                             ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %68

for.end75.for.end75.thread_crit_edge:             ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end75.thread

for.end75.thread:                                 ; preds = %for.end75.for.end75.thread_crit_edge, %prism2_get_datarates.exit.for.end75.thread_crit_edge, %prism2_get_datarates.exit.thread
  br label %68

68:                                               ; preds = %for.end75.thread, %for.end75._crit_edge
  %69 = phi i32 [ 1500000, %for.end75.thread ], [ 5500000, %for.end75._crit_edge ]
  %70 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %extra, align 4
  %min_rts = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 12
  %71 = ptrtoint ptr %min_rts to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %min_rts, align 4
  %max_rts = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 13
  %72 = ptrtoint ptr %max_rts to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2347, ptr %max_rts, align 4
  %min_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 14
  %73 = ptrtoint ptr %min_frag to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 256, ptr %min_frag, align 4
  %max_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 15
  %74 = ptrtoint ptr %max_frag to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2346, ptr %max_frag, align 4
  %event_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 6
  %75 = ptrtoint ptr %event_capa to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 103284816, ptr %event_capa, align 4
  %arrayidx79 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 6, i32 1
  %76 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1024, ptr %arrayidx79, align 4
  %arrayidx81 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 6, i32 4
  %77 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 29, ptr %arrayidx81, align 4
  %enc_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 42
  %78 = ptrtoint ptr %enc_capa to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 15, ptr %enc_capa, align 4
  %79 = ptrtoint ptr %sta_fw_ver to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sta_fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66304, i32 %80)
  %cmp83 = icmp ugt i32 %80, 66304
  br i1 %cmp83, label %if.then85, label %.if.end86_crit_edge

.if.end86_crit_edge:                              ; preds = %68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then85:                                        ; preds = %68
  call void @__sanitizer_cov_trace_pc() #18
  %scan_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 5
  %81 = ptrtoint ptr %scan_capa to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %scan_capa, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %.if.end86_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rates) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_set_spy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_get_spy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_set_thrspy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iw_handler_get_thrspy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwap(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %ap_addr, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %req.i = alloca %struct.hfa384x_join_request, align 1
  %scan_req = alloca %struct.hfa384x_scan_request, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %preferred_ap = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 113
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %preferred_ap, ptr %sa_data, i32 6)
  %host_roaming = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 104
  %3 = ptrtoint ptr %host_roaming to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_roaming, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %4, label %entry.do.end20_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true9
  ]

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end20

land.lhs.true:                                    ; preds = %entry
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2 = icmp eq i32 %7, 2
  br i1 %cmp2, label %if.then, label %land.lhs.true.do.end20_crit_edge

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end20

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scan_req) #16
  %8 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -12648192, ptr %scan_req, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func, align 4
  %set_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %set_rid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_rid, align 4
  %call3 = call i32 %12(ptr noundef %dev, i16 noundef zeroext -799, ptr noundef nonnull %scan_req, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %dev) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scan_req) #16
  br label %if.end26

land.lhs.true9:                                   ; preds = %entry
  %iw_mode10 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %13 = ptrtoint ptr %iw_mode10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iw_mode10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp11 = icmp eq i32 %14, 2
  br i1 %cmp11, label %if.then12, label %land.lhs.true9.do.end20_crit_edge

land.lhs.true9.do.end20_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end20

if.then12:                                        ; preds = %land.lhs.true9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i) #16
  %15 = getelementptr inbounds %struct.hfa384x_join_request, ptr %req.i, i32 0, i32 1
  %16 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %local1, align 4
  %preferred_ap.i = getelementptr inbounds %struct.local_info, ptr %17, i32 0, i32 113
  %18 = call ptr @memcpy(ptr %req.i, ptr %preferred_ap.i, i32 6)
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 0, ptr %15, align 1
  %lock.i = getelementptr inbounds %struct.local_info, ptr %17, i32 0, i32 11
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #16
  %last_scan_results_count.i = getelementptr inbounds %struct.local_info, ptr %17, i32 0, i32 107
  %20 = ptrtoint ptr %last_scan_results_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_scan_results_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp964.i = icmp sgt i32 %21, 0
  br i1 %cmp964.i, label %for.body.lr.ph.i, label %if.then12.hostap_join_ap.exit_crit_edge

if.then12.hostap_join_ap.exit_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %hostap_join_ap.exit

for.body.lr.ph.i:                                 ; preds = %if.then12
  %last_scan_results.i = getelementptr inbounds %struct.local_info, ptr %17, i32 0, i32 106
  %22 = ptrtoint ptr %last_scan_results.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %last_scan_results.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %for.body.lr.ph.i.hostap_join_ap.exit_crit_edge, label %for.body.lr.ph.split.i

for.body.lr.ph.i.hostap_join_ap.exit_crit_edge:   ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hostap_join_ap.exit

for.body.lr.ph.split.i:                           ; preds = %for.body.lr.ph.i
  %add.ptr.i62.i = getelementptr %struct.local_info, ptr %17, i32 0, i32 113, i32 4
  %24 = ptrtoint ptr %preferred_ap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %preferred_ap.i, align 4
  %26 = ptrtoint ptr %add.ptr.i62.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i62.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.split.i
  %i.065.i = phi i32 [ 0, %for.body.lr.ph.split.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %bssid14.i = getelementptr %struct.hfa384x_hostscan_result, ptr %23, i32 %i.065.i, i32 3
  %28 = ptrtoint ptr %bssid14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bssid14.i, align 4
  %xor.i.i = xor i32 %29, %25
  %add.ptr1.i.i = getelementptr i8, ptr %bssid14.i, i32 4
  %30 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %31, %27
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then17.i, label %for.inc.i

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr %struct.hfa384x_hostscan_result, ptr %23, i32 %i.065.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %arrayidx.i, align 1
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %15, align 1
  br label %hostap_join_ap.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.inc.i.hostap_join_ap.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.hostap_join_ap.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hostap_join_ap.exit

hostap_join_ap.exit:                              ; preds = %for.inc.i.hostap_join_ap.exit_crit_edge, %if.then17.i, %for.body.lr.ph.i.hostap_join_ap.exit_crit_edge, %if.then12.hostap_join_ap.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #16
  %func.i = getelementptr inbounds %struct.local_info, ptr %17, i32 0, i32 92
  %35 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %func.i, align 4
  %set_rid.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %set_rid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_rid.i, align 4
  %call21.i = call i32 %38(ptr noundef %dev, i16 noundef zeroext -798, ptr noundef nonnull %req.i, i32 noundef 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  %.str.34..str.31.i = select i1 %tobool22.not.i, ptr @.str.34, ptr @.str.31
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.34..str.31.i, ptr noundef %dev, ptr noundef %preferred_ap.i) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i) #16
  br i1 %tobool22.not.i, label %hostap_join_ap.exit.if.end26_crit_edge, label %hostap_join_ap.exit.cleanup_crit_edge

hostap_join_ap.exit.cleanup_crit_edge:            ; preds = %hostap_join_ap.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

hostap_join_ap.exit.if.end26_crit_edge:           ; preds = %hostap_join_ap.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

do.end20:                                         ; preds = %land.lhs.true9.do.end20_crit_edge, %land.lhs.true.do.end20_crit_edge, %entry.do.end20_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %dev) #19
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %hostap_join_ap.exit.if.end26_crit_edge, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %hostap_join_ap.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %hostap_join_ap.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwap(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr noundef %ap_addr, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = ptrtoint ptr %ap_addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %ap_addr, align 2
  %type = getelementptr i8, ptr %dev, i32 2520
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %8 = call ptr @memcpy(ptr %sa_data, ptr %7, i32 6)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sa_data3 = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  %assoc_ap_addr = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 72
  %9 = call ptr @memcpy(ptr %sa_data3, ptr %assoc_ap_addr, i32 6)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sa_data5 = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  %u = getelementptr i8, ptr %dev, i32 2524
  %10 = call ptr @memcpy(ptr %sa_data5, ptr %u, i32 6)
  br label %cleanup

sw.default:                                       ; preds = %entry
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 4
  %get_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %get_rid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_rid, align 4
  %sa_data7 = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  %call8 = tail call i32 %14(ptr noundef %dev, i16 noundef zeroext -702, ptr noundef %sa_data7, i32 noundef 6, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %sw.default.cleanup_crit_edge, label %if.end

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  %bssid = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 32
  %15 = call ptr @memcpy(ptr %bssid, ptr %sa_data7, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.default.cleanup_crit_edge, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -95, %sw.default.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwmlme(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %data, ptr noundef %extra) #1 align 64 {
entry:
  %reason = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reason) #16
  %reason_code = getelementptr inbounds %struct.iw_mlme, ptr %extra, i32 0, i32 1
  %2 = ptrtoint ptr %reason_code to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reason_code, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %reason to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %reason, align 2
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %extra, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.159)
  switch i16 %7, label %entry.cleanup_crit_edge [
    i16 0, label %entry.cleanup.sink.split_crit_edge
    i16 1, label %sw.bb3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i16 [ 160, %sw.bb3 ], [ 192, %entry.cleanup.sink.split_crit_edge ]
  %sa_data5 = getelementptr inbounds %struct.iw_mlme, ptr %extra, i32 0, i32 2, i32 1
  %call7 = call i32 @prism2_sta_send_mgmt(ptr noundef %1, ptr noundef %sa_data5, i16 noundef zeroext %.sink, ptr noundef nonnull %reason, i32 noundef 2) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call7, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reason) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwaplist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %data, ptr nocapture noundef writeonly %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #19
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %length, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 1024) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 256) #21
  %cmp5 = icmp eq ptr %call7.i.i, null
  %cmp6 = icmp eq ptr %call7.i.i39, null
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef %call7.i.i) #16
  tail call void @kfree(ptr noundef %call7.i.i39) #16
  %length8 = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %length8 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %length8, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call i32 @prism2_ap_get_sta_qual(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i39, i32 noundef 64, i32 noundef 1) #16
  %conv = trunc i32 %call10 to i16
  %length11 = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %length11 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %length11, align 4
  %conv13 = shl i32 %call10, 4
  %mul = and i32 %conv13, 1048560
  %9 = call ptr @memcpy(ptr %extra, ptr %call7.i.i, i32 %mul)
  %flags = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags, align 2
  %11 = load i16, ptr %length11, align 4
  %conv15 = zext i16 %11 to i32
  %mul16 = shl nuw nsw i32 %conv15, 4
  %add.ptr = getelementptr i8, ptr %extra, i32 %mul16
  %mul19 = shl nuw nsw i32 %conv15, 2
  %12 = call ptr @memcpy(ptr %add.ptr, ptr %call7.i.i39, i32 %mul19)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i39) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ -12, %if.then7 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwscan(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %data, ptr noundef readonly %extra) #1 align 64 {
entry:
  %scan_req.i59 = alloca %struct.hfa384x_scan_request, align 4
  %scan_req.i = alloca %struct.hfa384x_hostscan_request, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 316, i16 %3)
  %cmp = icmp ult i16 %3, 316
  %spec.select = select i1 %cmp, ptr null, ptr %extra
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp3 = icmp eq i32 %5, 3
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %length, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %dev_enabled = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev_enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %tobool10.not = icmp eq ptr %spec.select, null
  br i1 %tobool10.not, label %if.end9.if.end28_crit_edge, label %land.lhs.true

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end9
  %flags = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags, align 2
  %11 = and i16 %10, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool12.not = icmp eq i16 %11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end28_crit_edge, label %if.then13

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then13:                                        ; preds = %land.lhs.true
  %essid = getelementptr inbounds %struct.iw_scan_req, ptr %spec.select, i32 0, i32 5
  %essid_len = getelementptr inbounds %struct.iw_scan_req, ptr %spec.select, i32 0, i32 1
  %12 = ptrtoint ptr %essid_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %essid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %if.then13.if.end28_crit_edge, label %land.lhs.true16

if.then13.if.end28_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

land.lhs.true16:                                  ; preds = %if.then13
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %lor.lhs.false, label %land.lhs.true16.cleanup_crit_edge

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true16
  %sta_fw_ver = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 95
  %14 = ptrtoint ptr %sta_fw_ver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sta_fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66305, i32 %15)
  %cmp24 = icmp ult i32 %15, 66305
  br i1 %cmp24, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false.if.end28_crit_edge, %if.then13.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %if.end9.if.end28_crit_edge
  %ssid.0 = phi ptr [ %essid, %lor.lhs.false.if.end28_crit_edge ], [ %essid, %if.then13.if.end28_crit_edge ], [ null, %land.lhs.true.if.end28_crit_edge ], [ null, %if.end9.if.end28_crit_edge ]
  %ssid_len.0 = phi i8 [ %13, %lor.lhs.false.if.end28_crit_edge ], [ 0, %if.then13.if.end28_crit_edge ], [ 0, %land.lhs.true.if.end28_crit_edge ], [ 0, %if.end9.if.end28_crit_edge ]
  %sta_fw_ver29 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 95
  %16 = ptrtoint ptr %sta_fw_ver29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sta_fw_ver29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66304, i32 %17)
  %cmp30 = icmp ugt i32 %17, 66304
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %scan_req.i) #16
  %18 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %local1, align 4
  %20 = getelementptr inbounds i8, ptr %scan_req.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 34)
  %channel_mask.i = getelementptr inbounds %struct.local_info, ptr %19, i32 0, i32 26
  %22 = ptrtoint ptr %channel_mask.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %channel_mask.i, align 4
  %scan_channel_mask.i = getelementptr inbounds %struct.local_info, ptr %19, i32 0, i32 27
  %24 = ptrtoint ptr %scan_channel_mask.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %scan_channel_mask.i, align 2
  %and25.i = and i16 %25, %23
  %26 = tail call i16 @llvm.bswap.i16(i16 %and25.i) #16
  %27 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %scan_req.i, align 2
  %txrate.i = getelementptr inbounds %struct.hfa384x_hostscan_request, ptr %scan_req.i, i32 0, i32 1
  %28 = ptrtoint ptr %txrate.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 256, ptr %txrate.i, align 2
  %tobool.not.i = icmp eq ptr %ssid.0, null
  br i1 %tobool.not.i, label %if.then32.if.end9.i_crit_edge, label %if.then.i

if.then32.if.end9.i_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %ssid_len.0)
  %cmp.i = icmp ugt i8 %ssid_len.0, 32
  br i1 %cmp.i, label %if.then.i.prism2_request_hostscan.exit_crit_edge, label %if.end.i

if.then.i.prism2_request_hostscan.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_request_hostscan.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv4.i = zext i8 %ssid_len.0 to i32
  %conv7.i = zext i8 %ssid_len.0 to i16
  %29 = shl nuw nsw i16 %conv7.i, 8
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %20, align 2
  %target_ssid.i = getelementptr inbounds %struct.hfa384x_hostscan_request, ptr %scan_req.i, i32 0, i32 3
  %31 = call ptr @memcpy(ptr %target_ssid.i, ptr %ssid.0, i32 %conv4.i)
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %if.then32.if.end9.i_crit_edge
  %func.i = getelementptr inbounds %struct.local_info, ptr %19, i32 0, i32 92
  %32 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %func.i, align 4
  %set_rid.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %set_rid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_rid.i, align 4
  %call10.i = call i32 %35(ptr noundef %dev, i16 noundef zeroext -795, ptr noundef nonnull %scan_req.i, i32 noundef 38) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.prism2_request_hostscan.exit_crit_edge, label %do.end.i

if.end9.i.prism2_request_hostscan.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_request_hostscan.exit

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %dev) #19
  br label %prism2_request_hostscan.exit

prism2_request_hostscan.exit:                     ; preds = %do.end.i, %if.end9.i.prism2_request_hostscan.exit_crit_edge, %if.then.i.prism2_request_hostscan.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -22, %if.then.i.prism2_request_hostscan.exit_crit_edge ], [ 0, %if.end9.i.prism2_request_hostscan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %scan_req.i) #16
  br label %if.end35

if.else:                                          ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scan_req.i59) #16
  %36 = getelementptr inbounds %struct.hfa384x_scan_request, ptr %scan_req.i59, i32 0, i32 1
  %37 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %local1, align 4
  %channel_mask.i61 = getelementptr inbounds %struct.local_info, ptr %38, i32 0, i32 26
  %39 = ptrtoint ptr %channel_mask.i61 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %channel_mask.i61, align 4
  %scan_channel_mask.i62 = getelementptr inbounds %struct.local_info, ptr %38, i32 0, i32 27
  %41 = ptrtoint ptr %scan_channel_mask.i62 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %scan_channel_mask.i62, align 2
  %and22.i = and i16 %42, %40
  %43 = tail call i16 @llvm.bswap.i16(i16 %and22.i) #16
  %44 = ptrtoint ptr %scan_req.i59 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %scan_req.i59, align 4
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 256, ptr %36, align 2
  %host_roaming.i = getelementptr inbounds %struct.local_info, ptr %38, i32 0, i32 104
  %46 = ptrtoint ptr %host_roaming.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %host_roaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i63 = icmp eq i32 %47, 0
  br i1 %tobool.not.i63, label %if.then.i64, label %if.else.if.end.i67_crit_edge

if.else.if.end.i67_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i67

if.then.i64:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64557, i16 noundef zeroext 2) #16
  br label %if.end.i67

if.end.i67:                                       ; preds = %if.then.i64, %if.else.if.end.i67_crit_edge
  %func.i65 = getelementptr inbounds %struct.local_info, ptr %38, i32 0, i32 92
  %48 = ptrtoint ptr %func.i65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %func.i65, align 4
  %set_rid.i66 = getelementptr inbounds %struct.prism2_helper_functions, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %set_rid.i66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_rid.i66, align 4
  %call5.i = call i32 %51(ptr noundef %dev, i16 noundef zeroext -799, ptr noundef nonnull %scan_req.i59, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i67.if.end9.i70_crit_edge, label %do.end.i68

if.end.i67.if.end9.i70_crit_edge:                 ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i70

do.end.i68:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #18
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #19
  br label %if.end9.i70

if.end9.i70:                                      ; preds = %do.end.i68, %if.end.i67.if.end9.i70_crit_edge
  %ret.0.i = phi i32 [ -22, %do.end.i68 ], [ 0, %if.end.i67.if.end9.i70_crit_edge ]
  %52 = ptrtoint ptr %host_roaming.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %host_roaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool11.not.i69 = icmp eq i32 %53, 0
  br i1 %tobool11.not.i69, label %if.then12.i, label %if.end9.i70.prism2_request_scan.exit_crit_edge

if.end9.i70.prism2_request_scan.exit_crit_edge:   ; preds = %if.end9.i70
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_request_scan.exit

if.then12.i:                                      ; preds = %if.end9.i70
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i = call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64557, i16 noundef zeroext 1) #16
  br label %prism2_request_scan.exit

prism2_request_scan.exit:                         ; preds = %if.then12.i, %if.end9.i70.prism2_request_scan.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scan_req.i59) #16
  br label %if.end35

if.end35:                                         ; preds = %prism2_request_scan.exit, %prism2_request_hostscan.exit
  %ret.0 = phi i32 [ %retval.0.i, %prism2_request_hostscan.exit ], [ %ret.0.i, %prism2_request_scan.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp36 = icmp eq i32 %ret.0, 0
  br i1 %cmp36, label %if.then38, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %scan_timestamp = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 65
  %55 = ptrtoint ptr %scan_timestamp to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %scan_timestamp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end35.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ -100, %if.end7.cleanup_crit_edge ], [ -95, %land.lhs.true16.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then38 ], [ %ret.0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwscan(ptr noundef %dev, ptr noundef %info, ptr nocapture noundef %data, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @prism2_ap_translate_scan(ptr noundef %dev, ptr noundef %info, ptr noundef %extra) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp3 = icmp sgt i32 %call2, -1
  br i1 %cmp3, label %do.end, label %do.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %call2) #19
  %conv = trunc i32 %call2 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %length, align 4
  br label %cleanup

do.end8:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %call2) #19
  %length11 = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %length11 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %length11, align 4
  br label %cleanup

if.else12:                                        ; preds = %entry
  %6 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local1, align 4
  %scan_timestamp.i = getelementptr inbounds %struct.local_info, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_timestamp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.else12.if.end.i_crit_edge, label %land.lhs.true.i

if.else12.if.end.i_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -300, %9
  %sub.i = add i32 %add.neg.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.else12.if.end.i_crit_edge
  %11 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %scan_timestamp.i, align 4
  %length.i = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length.i, align 4
  %conv.i = zext i16 %13 to i32
  %add.ptr.i20.i = getelementptr i8, ptr %extra, i32 %conv.i
  %lock.i.i = getelementptr inbounds %struct.local_info, ptr %7, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #16
  %bss_list.i.i = getelementptr inbounds %struct.local_info, ptr %7, i32 0, i32 128
  %14 = ptrtoint ptr %bss_list.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %ptr.0131.i.i = load ptr, ptr %bss_list.i.i, align 4
  %cmp.i.not132.i.i = icmp eq ptr %ptr.0131.i.i, %bss_list.i.i
  br i1 %cmp.i.not132.i.i, label %if.end.i.for.cond5.preheader.i.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.for.cond5.preheader.i.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond5.preheader.i.i

for.cond5.preheader.i.i:                          ; preds = %for.body.i.i.for.cond5.preheader.i.i_crit_edge, %if.end.i.for.cond5.preheader.i.i_crit_edge
  %last_scan_results_count.i.i = getelementptr inbounds %struct.local_info, ptr %7, i32 0, i32 107
  %15 = ptrtoint ptr %last_scan_results_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_scan_results_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp140.i.i = icmp sgt i32 %16, 0
  br i1 %cmp140.i.i, label %for.body6.lr.ph.i.i, label %for.cond5.preheader.i.i.for.cond40.preheader.i.i_crit_edge

for.cond5.preheader.i.i.for.cond40.preheader.i.i_crit_edge: ; preds = %for.cond5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond40.preheader.i.i

for.body6.lr.ph.i.i:                              ; preds = %for.cond5.preheader.i.i
  %last_scan_results.i.i = getelementptr inbounds %struct.local_info, ptr %7, i32 0, i32 106
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i20.i to i32
  br label %for.body6.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %ptr.0133.i.i = phi ptr [ %ptr.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %ptr.0131.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %included.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %ptr.0133.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %included.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %included.i.i, align 4
  %18 = ptrtoint ptr %ptr.0133.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %ptr.0.i.i = load ptr, ptr %ptr.0133.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %ptr.0.i.i, %bss_list.i.i
  br i1 %cmp.i.not.i.i, label %for.body.i.i.for.cond5.preheader.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.body.i.i.for.cond5.preheader.i.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond5.preheader.i.i

for.cond5.i.i:                                    ; preds = %if.end30.i.i
  %inc36.i.i = add nuw nsw i32 %entry1.0142.i.i, 1
  %19 = ptrtoint ptr %last_scan_results_count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_scan_results_count.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc36.i.i, %20
  br i1 %cmp.i.i, label %for.cond5.i.i.for.body6.i.i_crit_edge, label %for.cond5.i.i.for.cond40.preheader.i.i_crit_edge

for.cond5.i.i.for.cond40.preheader.i.i_crit_edge: ; preds = %for.cond5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond40.preheader.i.i

for.cond5.i.i.for.body6.i.i_crit_edge:            ; preds = %for.cond5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body6.i.i

for.cond40.preheader.i.i:                         ; preds = %for.cond5.i.i.for.cond40.preheader.i.i_crit_edge, %for.cond5.preheader.i.i.for.cond40.preheader.i.i_crit_edge
  %current_ev.0.lcssa.i.i = phi ptr [ %extra, %for.cond5.preheader.i.i.for.cond40.preheader.i.i_crit_edge ], [ %current_ev.3.i.i, %for.cond5.i.i.for.cond40.preheader.i.i_crit_edge ]
  %21 = ptrtoint ptr %bss_list.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %ptr.2145.i.i = load ptr, ptr %bss_list.i.i, align 4
  %cmp.i124.not146.i.i = icmp eq ptr %ptr.2145.i.i, %bss_list.i.i
  br i1 %cmp.i124.not146.i.i, label %for.cond40.preheader.i.i.prism2_translate_scan.exit.i_crit_edge, label %for.body45.lr.ph.i.i

for.cond40.preheader.i.i.prism2_translate_scan.exit.i_crit_edge: ; preds = %for.cond40.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_translate_scan.exit.i

for.body45.lr.ph.i.i:                             ; preds = %for.cond40.preheader.i.i
  %sub.ptr.lhs.cast55.i.i = ptrtoint ptr %add.ptr.i20.i to i32
  br label %for.body45.i.i

for.body6.i.i:                                    ; preds = %for.cond5.i.i.for.body6.i.i_crit_edge, %for.body6.lr.ph.i.i
  %entry1.0142.i.i = phi i32 [ 0, %for.body6.lr.ph.i.i ], [ %inc36.i.i, %for.cond5.i.i.for.body6.i.i_crit_edge ]
  %current_ev.0141.i.i = phi ptr [ %extra, %for.body6.lr.ph.i.i ], [ %current_ev.3.i.i, %for.cond5.i.i.for.body6.i.i_crit_edge ]
  %22 = ptrtoint ptr %last_scan_results.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %last_scan_results.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.hfa384x_hostscan_result, ptr %23, i32 %entry1.0142.i.i
  %24 = ptrtoint ptr %bss_list.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %ptr.1134.i.i = load ptr, ptr %bss_list.i.i, align 4
  %cmp.i121.not135.i.i = icmp eq ptr %ptr.1134.i.i, %bss_list.i.i
  br i1 %cmp.i121.not135.i.i, label %for.body6.i.i.if.then28.i.i_crit_edge, label %for.body14.lr.ph.i.i

for.body6.i.i.if.then28.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i.i

for.body14.lr.ph.i.i:                             ; preds = %for.body6.i.i
  %bssid19.i.i = getelementptr %struct.hfa384x_hostscan_result, ptr %23, i32 %entry1.0142.i.i, i32 3
  %add.ptr1.i.i.i = getelementptr i8, ptr %bssid19.i.i, i32 4
  br label %for.body14.i.i

for.body14.i.i:                                   ; preds = %if.end.i.i.for.body14.i.i_crit_edge, %for.body14.lr.ph.i.i
  %ptr.1138.i.i = phi ptr [ %ptr.1134.i.i, %for.body14.lr.ph.i.i ], [ %ptr.1.i.i, %if.end.i.i.for.body14.i.i_crit_edge ]
  %current_ev.1137.i.i = phi ptr [ %current_ev.0141.i.i, %for.body14.lr.ph.i.i ], [ %current_ev.2.i.i, %if.end.i.i.for.body14.i.i_crit_edge ]
  %found.0136.i.i = phi i32 [ 0, %for.body14.lr.ph.i.i ], [ %found.1.i.i, %if.end.i.i.for.body14.i.i_crit_edge ]
  %bssid.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %ptr.1138.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %bssid.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bssid.i.i, align 4
  %27 = ptrtoint ptr %bssid19.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bssid19.i.i, align 4
  %xor.i.i.i = xor i32 %28, %26
  %add.ptr.i.i.i = getelementptr %struct.hostap_bss_info, ptr %ptr.1138.i.i, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i.i, align 2
  %31 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %32, %30
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i123.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i123.i.i, label %if.then.i.i, label %for.body14.i.i.if.end.i.i_crit_edge

for.body14.i.i.if.end.i.i_crit_edge:              ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %included22.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %ptr.1138.i.i, i32 0, i32 12
  %33 = ptrtoint ptr %included22.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %included22.i.i, align 4
  %call23.i.i = tail call fastcc ptr @__prism2_translate_scan(ptr noundef %7, ptr noundef %info, ptr noundef %arrayidx.i.i, ptr noundef %ptr.1138.i.i, ptr noundef %current_ev.1137.i.i, ptr noundef %add.ptr.i20.i) #16
  %inc.i.i = add i32 %found.0136.i.i, 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body14.i.i.if.end.i.i_crit_edge
  %found.1.i.i = phi i32 [ %inc.i.i, %if.then.i.i ], [ %found.0136.i.i, %for.body14.i.i.if.end.i.i_crit_edge ]
  %current_ev.2.i.i = phi ptr [ %call23.i.i, %if.then.i.i ], [ %current_ev.1137.i.i, %for.body14.i.i.if.end.i.i_crit_edge ]
  %34 = ptrtoint ptr %ptr.1138.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %ptr.1.i.i = load ptr, ptr %ptr.1138.i.i, align 4
  %cmp.i121.not.i.i = icmp eq ptr %ptr.1.i.i, %bss_list.i.i
  br i1 %cmp.i121.not.i.i, label %for.end26.i.i, label %if.end.i.i.for.body14.i.i_crit_edge

if.end.i.i.for.body14.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body14.i.i

for.end26.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1.i.i)
  %tobool27.not.i.i = icmp eq i32 %found.1.i.i, 0
  br i1 %tobool27.not.i.i, label %for.end26.i.i.if.then28.i.i_crit_edge, label %for.end26.i.i.if.end30.i.i_crit_edge

for.end26.i.i.if.end30.i.i_crit_edge:             ; preds = %for.end26.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30.i.i

for.end26.i.i.if.then28.i.i_crit_edge:            ; preds = %for.end26.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i.i

if.then28.i.i:                                    ; preds = %for.end26.i.i.if.then28.i.i_crit_edge, %for.body6.i.i.if.then28.i.i_crit_edge
  %current_ev.1.lcssa154.i.i = phi ptr [ %current_ev.2.i.i, %for.end26.i.i.if.then28.i.i_crit_edge ], [ %current_ev.0141.i.i, %for.body6.i.i.if.then28.i.i_crit_edge ]
  %call29.i.i = tail call fastcc ptr @__prism2_translate_scan(ptr noundef %7, ptr noundef %info, ptr noundef %arrayidx.i.i, ptr noundef null, ptr noundef %current_ev.1.lcssa154.i.i, ptr noundef %add.ptr.i20.i) #16
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then28.i.i, %for.end26.i.i.if.end30.i.i_crit_edge
  %current_ev.3.i.i = phi ptr [ %current_ev.2.i.i, %for.end26.i.i.if.end30.i.i_crit_edge ], [ %call29.i.i, %if.then28.i.i ]
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %current_ev.3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %sub.ptr.sub.i.i)
  %cmp31.i.i = icmp ult i32 %sub.ptr.sub.i.i, 21
  br i1 %cmp31.i.i, label %if.end30.i.i.if.else.sink.split.i_crit_edge, label %for.cond5.i.i

if.end30.i.i.if.else.sink.split.i_crit_edge:      ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.sink.split.i

for.body45.i.i:                                   ; preds = %for.inc65.i.i.for.body45.i.i_crit_edge, %for.body45.lr.ph.i.i
  %ptr.2148.i.i = phi ptr [ %ptr.2145.i.i, %for.body45.lr.ph.i.i ], [ %ptr.2.i.i, %for.inc65.i.i.for.body45.i.i_crit_edge ]
  %current_ev.4147.i.i = phi ptr [ %current_ev.0.lcssa.i.i, %for.body45.lr.ph.i.i ], [ %current_ev.5.ph.i.i, %for.inc65.i.i.for.body45.i.i_crit_edge ]
  %included50.i.i = getelementptr inbounds %struct.hostap_bss_info, ptr %ptr.2148.i.i, i32 0, i32 12
  %35 = ptrtoint ptr %included50.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %included50.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool51.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool51.not.i.i, label %if.end53.i.i, label %for.body45.i.i.for.inc65.i.i_crit_edge

for.body45.i.i.for.inc65.i.i_crit_edge:           ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc65.i.i

if.end53.i.i:                                     ; preds = %for.body45.i.i
  %call54.i.i = tail call fastcc ptr @__prism2_translate_scan(ptr noundef %7, ptr noundef %info, ptr noundef null, ptr noundef %ptr.2148.i.i, ptr noundef %current_ev.4147.i.i, ptr noundef %add.ptr.i20.i) #16
  %sub.ptr.rhs.cast56.i.i = ptrtoint ptr %call54.i.i to i32
  %sub.ptr.sub57.i.i = sub i32 %sub.ptr.lhs.cast55.i.i, %sub.ptr.rhs.cast56.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %sub.ptr.sub57.i.i)
  %cmp58.i.i = icmp ult i32 %sub.ptr.sub57.i.i, 21
  br i1 %cmp58.i.i, label %if.end53.i.i.if.else.sink.split.i_crit_edge, label %if.end53.i.i.for.inc65.i.i_crit_edge

if.end53.i.i.for.inc65.i.i_crit_edge:             ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc65.i.i

if.end53.i.i.if.else.sink.split.i_crit_edge:      ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.sink.split.i

for.inc65.i.i:                                    ; preds = %if.end53.i.i.for.inc65.i.i_crit_edge, %for.body45.i.i.for.inc65.i.i_crit_edge
  %current_ev.5.ph.i.i = phi ptr [ %call54.i.i, %if.end53.i.i.for.inc65.i.i_crit_edge ], [ %current_ev.4147.i.i, %for.body45.i.i.for.inc65.i.i_crit_edge ]
  %37 = ptrtoint ptr %ptr.2148.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %ptr.2.i.i = load ptr, ptr %ptr.2148.i.i, align 4
  %cmp.i124.not.i.i = icmp eq ptr %ptr.2.i.i, %bss_list.i.i
  br i1 %cmp.i124.not.i.i, label %for.inc65.i.i.prism2_translate_scan.exit.i_crit_edge, label %for.inc65.i.i.for.body45.i.i_crit_edge

for.inc65.i.i.for.body45.i.i_crit_edge:           ; preds = %for.inc65.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body45.i.i

for.inc65.i.i.prism2_translate_scan.exit.i_crit_edge: ; preds = %for.inc65.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_translate_scan.exit.i

prism2_translate_scan.exit.i:                     ; preds = %for.inc65.i.i.prism2_translate_scan.exit.i_crit_edge, %for.cond40.preheader.i.i.prism2_translate_scan.exit.i_crit_edge
  %current_ev.4.lcssa.i.i = phi ptr [ %current_ev.0.lcssa.i.i, %for.cond40.preheader.i.i.prism2_translate_scan.exit.i_crit_edge ], [ %current_ev.5.ph.i.i, %for.inc65.i.i.prism2_translate_scan.exit.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #16
  %sub.ptr.lhs.cast69.i.i = ptrtoint ptr %current_ev.4.lcssa.i.i to i32
  %sub.ptr.rhs.cast70.i.i = ptrtoint ptr %extra to i32
  %sub.ptr.sub71.i.i = sub i32 %sub.ptr.lhs.cast69.i.i, %sub.ptr.rhs.cast70.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.ptr.sub71.i.i)
  %cmp5.i = icmp sgt i32 %sub.ptr.sub71.i.i, -1
  %conv8.i = trunc i32 %sub.ptr.sub71.i.i to i16
  %spec.select.i = select i1 %cmp5.i, i16 %conv8.i, i16 0
  %spec.select27.i = select i1 %cmp5.i, i32 0, i32 %sub.ptr.sub71.i.i
  br label %cleanup.sink.split.i

if.else.sink.split.i:                             ; preds = %if.end53.i.i.if.else.sink.split.i_crit_edge, %if.end30.i.i.if.else.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #16
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.sink.split.i, %prism2_translate_scan.exit.i
  %.sink.i = phi i16 [ 0, %if.else.sink.split.i ], [ %spec.select.i, %prism2_translate_scan.exit.i ]
  %retval.0.ph.i = phi i32 [ -7, %if.else.sink.split.i ], [ %spec.select27.i, %prism2_translate_scan.exit.i ]
  %38 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %.sink.i, ptr %length.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %land.lhs.true.i.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call2, %do.end8 ], [ -11, %land.lhs.true.i.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwessid(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %data, ptr nocapture noundef %ssid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %type = getelementptr i8, ptr %dev, i32 2520
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp2 = icmp eq i16 %5, 0
  br i1 %cmp2, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %ssid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ssid, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp6 = icmp eq i32 %8, 3
  br i1 %cmp6, label %land.lhs.true, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end5
  %9 = ptrtoint ptr %ssid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp10 = icmp eq i8 %10, 0
  br i1 %cmp10, label %do.end, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %dev) #19
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %essid = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 23
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %length, align 4
  %conv16 = zext i16 %12 to i32
  %13 = call ptr @memcpy(ptr %essid, ptr %ssid, i32 %conv16)
  %14 = load i16, ptr %length, align 4
  %idxprom = zext i16 %14 to i32
  %arrayidx19 = getelementptr %struct.local_info, ptr %1, i32 0, i32 23, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx19, align 1
  %fw_ap = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 94
  %16 = ptrtoint ptr %fw_ap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %land.lhs.true20, label %if.end14.lor.lhs.false_crit_edge

if.end14.lor.lhs.false_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

land.lhs.true20:                                  ; preds = %if.end14
  %call23 = tail call i32 @hostap_set_string(ptr noundef %dev, i32 noundef 64514, ptr noundef %essid) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true20.lor.lhs.false_crit_edge, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true20.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true20.lor.lhs.false_crit_edge, %if.end14.lor.lhs.false_crit_edge
  %call27 = tail call i32 @hostap_set_string(ptr noundef %dev, i32 noundef 64516, ptr noundef %essid) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %18 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset_port, align 4
  %call30 = tail call i32 %21(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %spec.select = select i1 %tobool31.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false29, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true20.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwessid(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %data, ptr nocapture noundef writeonly %essid) #1 align 64 {
entry:
  %ssid = alloca [34 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %type = getelementptr i8, ptr %dev, i32 2520
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup25

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %flags, align 2
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %5 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp2 = icmp eq i32 %6, 3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %essid4 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 23
  %call5 = tail call i32 @strlen(ptr noundef %essid4) #24
  %conv = trunc i32 %call5 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %length, align 4
  %8 = call ptr @memcpy(ptr %essid, ptr %essid4, i32 32)
  br label %cleanup25

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %ssid) #16
  %9 = call ptr @memset(ptr %ssid, i32 0, i32 34)
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func, align 4
  %get_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %get_rid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_rid, align 4
  %call9 = call i32 %13(ptr noundef %dev, i16 noundef zeroext -703, ptr noundef nonnull %ssid, i32 noundef 34, i32 noundef 0) #16
  %14 = ptrtoint ptr %ssid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ssid, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %call9)
  %17 = icmp ugt i32 %call9, 34
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %16)
  %cmp17 = icmp ugt i16 %16, 32
  %or.cond38 = select i1 %17, i1 true, i1 %cmp17
  br i1 %or.cond38, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %length21 = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %length21 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %16, ptr %length21, align 4
  %add.ptr = getelementptr inbounds i8, ptr %ssid, i32 2
  %19 = call ptr @memcpy(ptr %essid, ptr %add.ptr, i32 32)
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %ssid) #16
  br label %cleanup25

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %ssid) #16
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup, %if.end20, %if.then3, %entry.cleanup25_crit_edge
  %retval.1 = phi i32 [ -95, %cleanup ], [ -95, %entry.cleanup25_crit_edge ], [ 0, %if.end20 ], [ 0, %if.then3 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwnickn(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %nickname) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %name = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 24
  %2 = call ptr @memset(ptr %name, i32 0, i32 33)
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %length, align 4
  %conv = zext i16 %4 to i32
  %5 = call ptr @memcpy(ptr %name, ptr %nickname, i32 %conv)
  %name_set = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %name_set to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %name_set, align 4
  %call6 = tail call i32 @hostap_set_string(ptr noundef %dev, i32 noundef 64526, ptr noundef %name) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %7 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_port, align 4
  %call7 = tail call i32 %10(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwnickn(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %data, ptr nocapture noundef writeonly %nickname) #1 align 64 {
entry:
  %name = alloca [35 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %name) #16
  %0 = call ptr @memset(ptr %name, i32 255, i32 35)
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local1, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 92
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func, align 4
  %get_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %get_rid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_rid, align 4
  %call2 = call i32 %6(ptr noundef %dev, i16 noundef zeroext -1010, ptr noundef nonnull %name, i32 noundef 34, i32 noundef 0) #16
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %name, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %call2)
  %10 = icmp ugt i32 %call2, 34
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %9)
  %cmp5 = icmp ugt i16 %9, 32
  %or.cond23 = select i1 %10, i1 true, i1 %cmp5
  br i1 %or.cond23, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv, 2
  %arrayidx = getelementptr [35 x i8], ptr %name, i32 0, i32 %add
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  %add9 = add nuw nsw i32 %conv, 1
  %conv10 = trunc i32 %add9 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv10, ptr %length, align 4
  %add.ptr = getelementptr inbounds i8, ptr %name, i32 2
  %13 = call ptr @memcpy(ptr %nickname, ptr %add.ptr, i32 %add9)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %name) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwrate(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %rrq, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 1
  %2 = ptrtoint ptr %fixed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %rrq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rrq, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %5, label %sw.default [
    i32 11000000, label %if.then.if.end_crit_edge
    i32 5500000, label %sw.bb2
    i32 2000000, label %sw.bb4
    i32 1000000, label %sw.bb6
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %5, label %if.else.if.end_crit_edge [
    i32 1000000, label %sw.bb16
    i32 5500000, label %sw.bb12
    i32 2000000, label %sw.bb14
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb12:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb14:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

sw.bb16:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %if.else.if.end_crit_edge, %sw.default, %sw.bb6, %sw.bb4, %sw.bb2, %if.then.if.end_crit_edge
  %.sink = phi i16 [ 7, %sw.bb12 ], [ 3, %sw.bb14 ], [ 1, %sw.bb16 ], [ 4, %sw.bb2 ], [ 2, %sw.bb4 ], [ 1, %sw.bb6 ], [ 15, %sw.default ], [ 8, %if.then.if.end_crit_edge ], [ 15, %if.else.if.end_crit_edge ]
  %tx_rate_control11 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 39
  %8 = ptrtoint ptr %tx_rate_control11 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink, ptr %tx_rate_control11, align 4
  %call21 = tail call fastcc i32 @hostap_set_rate(ptr noundef %dev)
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwrate(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %rrq, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !281
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local1, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 92
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func, align 4
  %get_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %get_rid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_rid, align 4
  %call2 = call i32 %6(ptr noundef %dev, i16 noundef zeroext -892, ptr noundef nonnull %val, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp4 = icmp ult i16 %8, 2
  %not.or.cond = or i1 %cmp4, %tobool.not
  %spec.select58 = zext i1 %not.or.cond to i8
  %10 = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select58, ptr %10, align 4
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 30
  %12 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp9 = icmp eq i32 %13, 3
  br i1 %cmp9, label %land.lhs.true11, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

land.lhs.true11:                                  ; preds = %if.end
  %ap = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 22
  %14 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ap, align 4
  %cmp12.not = icmp eq ptr %15, null
  br i1 %cmp12.not, label %land.lhs.true11.if.end22_crit_edge, label %land.lhs.true14

land.lhs.true11.if.end22_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %fw_tx_rate_control = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 38
  %16 = ptrtoint ptr %fw_tx_rate_control to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_tx_rate_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true14.if.end22_crit_edge

land.lhs.true14.if.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #18
  %last_tx_rate = getelementptr inbounds %struct.ap_data, ptr %15, i32 0, i32 16
  %18 = ptrtoint ptr %last_tx_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_tx_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp18 = icmp sgt i32 %19, 0
  %mul = mul i32 %19, 100000
  %spec.select = select i1 %cmp18, i32 %mul, i32 11000000
  br label %cleanup.sink.split

if.end22:                                         ; preds = %land.lhs.true14.if.end22_crit_edge, %land.lhs.true11.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %20 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %func, align 4
  %get_rid24 = getelementptr inbounds %struct.prism2_helper_functions, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %get_rid24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_rid24, align 4
  %call25 = call i32 %23(ptr noundef %dev, i16 noundef zeroext -700, ptr noundef nonnull %val, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end22.cleanup_crit_edge, label %if.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val, align 2
  %switch.tableidx = add i16 %25, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %switch.tableidx)
  %26 = icmp ult i16 %switch.tableidx, 8
  br i1 %26, label %switch.lookup, label %if.end29.cleanup.sink.split_crit_edge

if.end29.cleanup.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %27 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.prism2_ioctl_giwrate, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %29 = sext i16 %switch.tableidx to i32
  %switch.gep59 = getelementptr inbounds [8 x i32], ptr @switch.table.prism2_ioctl_giwrate.143, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load60 = load i32, ptr %switch.gep59, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %if.end29.cleanup.sink.split_crit_edge, %if.then16
  %.sink = phi i32 [ %spec.select, %if.then16 ], [ %switch.load, %switch.lookup ], [ 11000000, %if.end29.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.then16 ], [ %switch.load60, %switch.lookup ], [ -22, %if.end29.cleanup.sink.split_crit_edge ]
  %31 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %rrq, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwrts(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %rts, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #16
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rts, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2347, i32 %5)
  %6 = icmp ugt i32 %5, 2347
  br i1 %6, label %if.else.cleanup_crit_edge, label %if.else5

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %conv = trunc i32 %5 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %entry.if.end7_crit_edge
  %storemerge = phi i16 [ %7, %if.else5 ], [ 11017, %entry.if.end7_crit_edge ]
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %storemerge, ptr %val, align 2
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func, align 4
  %set_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %set_rid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_rid, align 4
  %call8 = call i32 %12(ptr noundef %dev, i16 noundef zeroext -893, ptr noundef nonnull %val, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false10:                                  ; preds = %if.end7
  %13 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_port, align 4
  %call12 = call i32 %16(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rts, align 4
  %rts_threshold = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 87
  %19 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rts_threshold, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwrts(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %rts, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !281
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local1, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 92
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func, align 4
  %get_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %get_rid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_rid, align 4
  %call2 = call i32 %6(ptr noundef %dev, i16 noundef zeroext -893, ptr noundef nonnull %val, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %rts to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %rts, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11017, i16 %8)
  %cmp4 = icmp eq i16 %8, 11017
  %conv6 = zext i1 %cmp4 to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rts, i32 0, i32 2
  %11 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rts, i32 0, i32 1
  %12 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %fixed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwfrag(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %rts, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #16
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rts, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rts, align 4
  %6 = add i32 %5, -2347
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2091, i32 %6)
  %7 = icmp ult i32 %6, -2091
  br i1 %7, label %if.else.cleanup_crit_edge, label %if.else5

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %8 = trunc i32 %5 to i16
  %conv = and i16 %8, -2
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv)
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %entry.if.end7_crit_edge
  %storemerge = phi i16 [ %9, %if.else5 ], [ 10761, %entry.if.end7_crit_edge ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %storemerge, ptr %val, align 2
  %11 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rts, align 4
  %and9 = and i32 %12, -2
  %fragm_threshold = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 88
  %13 = ptrtoint ptr %fragm_threshold to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and9, ptr %fragm_threshold, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %14 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func, align 4
  %set_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %set_rid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_rid, align 4
  %call10 = call i32 %17(ptr noundef %dev, i16 noundef zeroext -894, ptr noundef nonnull %val, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset_port, align 4
  %call14 = call i32 %21(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %spec.select = select i1 %tobool15.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false12 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwfrag(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %rts, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !281
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local1, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 92
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func, align 4
  %get_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %get_rid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_rid, align 4
  %call2 = call i32 %6(ptr noundef %dev, i16 noundef zeroext -894, ptr noundef nonnull %val, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %rts to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %rts, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10761, i16 %8)
  %cmp4 = icmp eq i16 %8, 10761
  %conv6 = zext i1 %cmp4 to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rts, i32 0, i32 2
  %11 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rts, i32 0, i32 1
  %12 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %fixed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwtxpow(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %rrq, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #16
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %txpower_type10 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %txpower_type10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txpower_type10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp11 = icmp eq i32 %5, 1
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp11, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 255, ptr %val, align 2
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %7 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func, align 4
  %cmd = getelementptr inbounds %struct.prism2_helper_functions, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd, align 4
  %call3 = call i32 %10(ptr noundef %dev, i16 noundef zeroext 49, i16 noundef zeroext 26, ptr noundef nonnull %val, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %cond = select i1 %tobool4.not, ptr @.str.64, ptr @.str.63
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %dev, ptr noundef nonnull %cond) #19
  %11 = ptrtoint ptr %txpower_type10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %txpower_type10, align 4
  %phi.sel = select i1 %tobool4.not, i32 0, i32 -95
  br label %cleanup

if.end9:                                          ; preds = %entry
  br i1 %cmp11, label %if.then12, label %if.end9.if.end26_crit_edge

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %val, align 2
  %func13 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %13 = ptrtoint ptr %func13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func13, align 4
  %cmd14 = getelementptr inbounds %struct.prism2_helper_functions, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cmd14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd14, align 4
  %call15 = call i32 %16(ptr noundef %dev, i16 noundef zeroext 49, i16 noundef zeroext 26, ptr noundef nonnull %val, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool22.not = icmp eq i32 %call15, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.64, ptr @.str.63
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %dev, ptr noundef nonnull %cond23) #19
  %17 = ptrtoint ptr %txpower_type10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %txpower_type10, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then12, %if.end9.if.end26_crit_edge
  %ret.1 = phi i32 [ %call15, %if.then12 ], [ 0, %if.end9.if.end26_crit_edge ]
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 1
  %18 = ptrtoint ptr %fixed to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  %spec.select = select i1 %tobool27.not, i32 %ret.1, i32 -95
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end26 ], [ %phi.sel, %if.then2 ], [ 0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prism2_ioctl_giwtxpow(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %rrq, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwretry(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %rrq, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %5)
  %cmp = icmp eq i16 %5, 4096
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %rrq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  %manual_retry_count = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 63
  %8 = ptrtoint ptr %manual_retry_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %manual_retry_count, align 4
  %tx_control = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 62
  %9 = ptrtoint ptr %tx_control to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_control, align 4
  %11 = and i16 %10, -33
  store i16 %11, ptr %tx_control, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then3
  %conv10 = trunc i32 %7 to i16
  %call11 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64562, i16 noundef zeroext %conv10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %12 = ptrtoint ptr %rrq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rrq, align 4
  br i1 %tobool12.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %dev, i32 noundef %13) #19
  br label %cleanup

if.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %manual_retry_count18 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 63
  %14 = ptrtoint ptr %manual_retry_count18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %manual_retry_count18, align 4
  %tx_control19 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 62
  %15 = ptrtoint ptr %tx_control19 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tx_control19, align 4
  %17 = or i16 %16, 32
  store i16 %17, ptr %tx_control19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end16 ], [ 0, %if.then6 ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwretry(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %rrq, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %shortretry = alloca i16, align 2
  %longretry = alloca i16, align 2
  %lifetime = alloca i16, align 2
  %altretry = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %shortretry) #16
  %0 = ptrtoint ptr %shortretry to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %shortretry, align 2, !annotation !281
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %longretry) #16
  %1 = ptrtoint ptr %longretry to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %longretry, align 2, !annotation !281
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lifetime) #16
  %2 = ptrtoint ptr %lifetime to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %lifetime, align 2, !annotation !281
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %altretry) #16
  %3 = ptrtoint ptr %altretry to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %altretry, align 2, !annotation !281
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %4 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local1, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 92
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %get_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %get_rid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_rid, align 4
  %call2 = call i32 %9(ptr noundef %dev, i16 noundef zeroext -696, ptr noundef nonnull %shortretry, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func, align 4
  %get_rid4 = getelementptr inbounds %struct.prism2_helper_functions, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %get_rid4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_rid4, align 4
  %call5 = call i32 %13(ptr noundef %dev, i16 noundef zeroext -695, ptr noundef nonnull %longretry, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func, align 4
  %get_rid9 = getelementptr inbounds %struct.prism2_helper_functions, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %get_rid9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_rid9, align 4
  %call10 = call i32 %17(ptr noundef %dev, i16 noundef zeroext -694, ptr noundef nonnull %lifetime, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %lor.lhs.false7.cleanup_crit_edge, label %if.end

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 2
  %18 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %disabled, align 1
  %flags = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 2
  %conv = zext i16 %20 to i32
  %and = and i32 %conv, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and)
  %cmp12 = icmp eq i32 %and, 8192
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 8192, ptr %flags, align 2
  %22 = ptrtoint ptr %lifetime to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %lifetime, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv16 = zext i16 %24 to i32
  %mul = shl nuw nsw i32 %conv16, 10
  %25 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %rrq, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %manual_retry_count = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 63
  %26 = ptrtoint ptr %manual_retry_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %manual_retry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp17 = icmp sgt i32 %27, -1
  br i1 %cmp17, label %if.then19, label %if.else33

if.then19:                                        ; preds = %if.else
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 4096, ptr %flags, align 2
  %29 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %func, align 4
  %get_rid22 = getelementptr inbounds %struct.prism2_helper_functions, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %get_rid22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_rid22, align 4
  %call23 = call i32 %32(ptr noundef %dev, i16 noundef zeroext -974, ptr noundef nonnull %altretry, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23)
  %cmp24 = icmp sgt i32 %call23, -1
  br i1 %cmp24, label %if.then26, label %if.else29

if.then26:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %altretry to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %altretry, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %conv27 = zext i16 %35 to i32
  %36 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv27, ptr %rrq, align 4
  br label %cleanup

if.else29:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %manual_retry_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %manual_retry_count, align 4
  %39 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rrq, align 4
  br label %cleanup

if.else33:                                        ; preds = %if.else
  %and36 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool.not = icmp eq i32 %and36, 0
  br i1 %tobool.not, label %if.else41, label %if.then37

if.then37:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 4128, ptr %flags, align 2
  %41 = ptrtoint ptr %longretry to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %longretry, align 2
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %conv39 = zext i16 %43 to i32
  %44 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv39, ptr %rrq, align 4
  br label %cleanup

if.else41:                                        ; preds = %if.else33
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 4096, ptr %flags, align 2
  %46 = ptrtoint ptr %shortretry to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %shortretry, align 2
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %conv43 = zext i16 %48 to i32
  %49 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv43, ptr %rrq, align 4
  %50 = ptrtoint ptr %longretry to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %longretry, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %51)
  %cmp47.not = icmp eq i16 %47, %51
  br i1 %cmp47.not, label %if.else41.cleanup_crit_edge, label %if.then49

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then49:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #18
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 4112, ptr %flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.else41.cleanup_crit_edge, %if.then37, %if.else29, %if.then26, %if.then14, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else29 ], [ 0, %if.then26 ], [ 0, %if.else41.cleanup_crit_edge ], [ 0, %if.then49 ], [ 0, %if.then37 ], [ 0, %if.then14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %altretry) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lifetime) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %longretry) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %shortretry) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwencode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %erq, ptr noundef %keybuf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 255
  %5 = add nsw i16 %4, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %5)
  %6 = icmp ult i16 %5, -4
  br i1 %6, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %and = zext i16 %4 to i32
  %dec = add nsw i32 %and, -1
  br label %if.end11

if.end:                                           ; preds = %entry
  %tx_keyidx = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75, i32 3
  %7 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_keyidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %if.end.cleanup141_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end.cleanup141_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup141

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %if.end.thread
  %i.0214 = phi i32 [ %dec, %if.end.thread ], [ %8, %if.end.if.end11_crit_edge ]
  %crypt_info12 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75
  %arrayidx = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 %i.0214
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %tobool.not = icmp sgt i16 %3, -1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp23.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.end11
  br i1 %cmp23.not, label %if.then17.done_crit_edge, label %if.then19

if.then17.done_crit_edge:                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info12, ptr noundef %arrayidx) #16
  br label %done

if.end22:                                         ; preds = %if.end11
  br i1 %cmp23.not, label %if.end22.if.then37_crit_edge, label %land.lhs.true

if.end22.if.then37_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then37

land.lhs.true:                                    ; preds = %if.end22
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %cmp25.not = icmp eq ptr %13, null
  br i1 %cmp25.not, label %land.lhs.true.if.end34_crit_edge, label %land.lhs.true27

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

land.lhs.true27:                                  ; preds = %land.lhs.true
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call29 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(4) @.str.70) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %land.lhs.true27.if.end34_crit_edge, label %if.then32

land.lhs.true27.if.end34_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.then32:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info12, ptr noundef %arrayidx) #16
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %land.lhs.true27.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %arrayidx, align 4
  %cmp35 = icmp eq ptr %.pr, null
  br i1 %cmp35, label %if.end34.if.then37_crit_edge, label %if.end34.if.end71_crit_edge

if.end34.if.end71_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71

if.end34.if.then37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then37

if.then37:                                        ; preds = %if.end34.if.then37_crit_edge, %if.end22.if.then37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 20) #21
  %cmp39 = icmp eq ptr %call7.i.i, null
  br i1 %cmp39, label %if.then37.cleanup141_crit_edge, label %if.end42

if.then37.cleanup141_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup141

if.end42:                                         ; preds = %if.then37
  %call43 = tail call ptr @lib80211_get_crypto_ops(ptr noundef nonnull @.str.70) #16
  %ops44 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %ops44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call43, ptr %ops44, align 8
  %tobool46.not = icmp eq ptr %call43, null
  br i1 %tobool46.not, label %if.end51, label %if.end42.land.lhs.true54_crit_edge

if.end42.land.lhs.true54_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true54

if.end51:                                         ; preds = %if.end42
  %call48 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.71) #16
  %call49 = tail call ptr @lib80211_get_crypto_ops(ptr noundef nonnull @.str.70) #16
  %19 = ptrtoint ptr %ops44 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call49, ptr %ops44, align 8
  %tobool53.not = icmp eq ptr %call49, null
  br i1 %tobool53.not, label %if.end51.if.then67_crit_edge, label %if.end51.land.lhs.true54_crit_edge

if.end51.land.lhs.true54_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true54

if.end51.if.then67_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then67

land.lhs.true54:                                  ; preds = %if.end51.land.lhs.true54_crit_edge, %if.end42.land.lhs.true54_crit_edge
  %20 = phi ptr [ %call49, %if.end51.land.lhs.true54_crit_edge ], [ %call43, %if.end42.land.lhs.true54_crit_edge ]
  %owner = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %owner, align 4
  %call56 = tail call zeroext i1 @try_module_get(ptr noundef %22) #16
  br i1 %call56, label %if.then58, label %land.lhs.true54.if.end61_crit_edge

land.lhs.true54.if.end61_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then58:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %ops44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops44, align 8
  %init = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init, align 4
  %call60 = tail call ptr %26(i32 noundef %i.0214) #16
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call60, ptr %priv, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %land.lhs.true54.if.end61_crit_edge
  %28 = ptrtoint ptr %ops44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr207 = load ptr, ptr %ops44, align 8
  %tobool63.not = icmp eq ptr %.pr207, null
  br i1 %tobool63.not, label %if.end61.if.then67_crit_edge, label %lor.lhs.false64

if.end61.if.then67_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then67

lor.lhs.false64:                                  ; preds = %if.end61
  %priv65 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %priv65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv65, align 4
  %tobool66.not = icmp eq ptr %30, null
  br i1 %tobool66.not, label %lor.lhs.false64.if.then67_crit_edge, label %cleanup

lor.lhs.false64.if.then67_crit_edge:              ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false64.if.then67_crit_edge, %if.end61.if.then67_crit_edge, %if.end51.if.then67_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup141.sink.split

cleanup:                                          ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %if.end71

if.end71:                                         ; preds = %cleanup, %if.end34.if.end71_crit_edge
  %length = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %length, align 4
  %conv72 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp73.not = icmp eq i16 %33, 0
  br i1 %cmp73.not, label %if.else109, label %if.then75

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %33)
  %cmp78 = icmp ult i16 %33, 6
  %cond = select i1 %cmp78, i32 5, i32 13
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv72)
  %cmp82 = icmp ugt i32 %cond, %conv72
  br i1 %cmp82, label %if.then84, label %if.then75.if.end89_crit_edge

if.then75.if.end89_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end89

if.then84:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %keybuf, i32 %conv72
  %sub = sub nsw i32 %cond, %conv72
  %34 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.then75.if.end89_crit_edge
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %ops90 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ops90 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops90, align 4
  %set_key = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %set_key to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_key, align 4
  %priv91 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %36, i32 0, i32 2
  %41 = ptrtoint ptr %priv91 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv91, align 4
  %call92 = tail call i32 %40(ptr noundef %keybuf, i32 noundef %cond, ptr noundef null, ptr noundef %42) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0214)
  %cmp95.not = icmp eq i32 %i.0214, 0
  br i1 %cmp95.not, label %land.lhs.true97.1.thread, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %if.end89
  %arrayidx100 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 0
  %43 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx100, align 4
  %tobool101.not = icmp eq ptr %44, null
  br i1 %tobool101.not, label %for.inc, label %land.lhs.true97.done_crit_edge

land.lhs.true97.done_crit_edge:                   ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

for.inc:                                          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0214)
  %cmp95.not.1 = icmp eq i32 %i.0214, 1
  br i1 %cmp95.not.1, label %for.inc.land.lhs.true97.2_crit_edge, label %land.lhs.true97.1

for.inc.land.lhs.true97.2_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true97.2

land.lhs.true97.1:                                ; preds = %for.inc
  %arrayidx100.1 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx100.1, align 4
  %tobool101.not.1 = icmp eq ptr %46, null
  br i1 %tobool101.not.1, label %for.inc.1, label %land.lhs.true97.1.done_crit_edge

land.lhs.true97.1.done_crit_edge:                 ; preds = %land.lhs.true97.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

land.lhs.true97.1.thread:                         ; preds = %if.end89
  %arrayidx100.1217 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 1
  %47 = ptrtoint ptr %arrayidx100.1217 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx100.1217, align 4
  %tobool101.not.1218 = icmp eq ptr %48, null
  br i1 %tobool101.not.1218, label %land.lhs.true97.1.thread.land.lhs.true97.2_crit_edge, label %land.lhs.true97.1.thread.done_crit_edge

land.lhs.true97.1.thread.done_crit_edge:          ; preds = %land.lhs.true97.1.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

land.lhs.true97.1.thread.land.lhs.true97.2_crit_edge: ; preds = %land.lhs.true97.1.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true97.2

for.inc.1:                                        ; preds = %land.lhs.true97.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0214)
  %cmp95.not.2 = icmp eq i32 %i.0214, 2
  br i1 %cmp95.not.2, label %for.inc.1.land.lhs.true97.3_crit_edge, label %for.inc.1.land.lhs.true97.2_crit_edge

for.inc.1.land.lhs.true97.2_crit_edge:            ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true97.2

for.inc.1.land.lhs.true97.3_crit_edge:            ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true97.3

land.lhs.true97.2:                                ; preds = %for.inc.1.land.lhs.true97.2_crit_edge, %land.lhs.true97.1.thread.land.lhs.true97.2_crit_edge, %for.inc.land.lhs.true97.2_crit_edge
  %arrayidx100.2 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 2
  %49 = ptrtoint ptr %arrayidx100.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx100.2, align 4
  %tobool101.not.2 = icmp eq ptr %50, null
  br i1 %tobool101.not.2, label %for.inc.2, label %land.lhs.true97.2.done_crit_edge

land.lhs.true97.2.done_crit_edge:                 ; preds = %land.lhs.true97.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

for.inc.2:                                        ; preds = %land.lhs.true97.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0214)
  %cmp95.not.3 = icmp eq i32 %i.0214, 3
  br i1 %cmp95.not.3, label %for.inc.2.for.inc.3_crit_edge, label %for.inc.2.land.lhs.true97.3_crit_edge

for.inc.2.land.lhs.true97.3_crit_edge:            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true97.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

land.lhs.true97.3:                                ; preds = %for.inc.2.land.lhs.true97.3_crit_edge, %for.inc.1.land.lhs.true97.3_crit_edge
  %arrayidx100.3 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 3
  %51 = ptrtoint ptr %arrayidx100.3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx100.3, align 4
  %tobool101.not.3 = icmp eq ptr %52, null
  br i1 %tobool101.not.3, label %land.lhs.true97.3.for.inc.3_crit_edge, label %land.lhs.true97.3.done_crit_edge

land.lhs.true97.3.done_crit_edge:                 ; preds = %land.lhs.true97.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

land.lhs.true97.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true97.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true97.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %tx_keyidx107 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75, i32 3
  %53 = ptrtoint ptr %tx_keyidx107 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %i.0214, ptr %tx_keyidx107, align 4
  br label %done

if.else109:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  %tx_keyidx111 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75, i32 3
  %54 = ptrtoint ptr %tx_keyidx111 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %i.0214, ptr %tx_keyidx111, align 4
  br label %done

done:                                             ; preds = %if.else109, %for.inc.3, %land.lhs.true97.3.done_crit_edge, %land.lhs.true97.2.done_crit_edge, %land.lhs.true97.1.thread.done_crit_edge, %land.lhs.true97.1.done_crit_edge, %land.lhs.true97.done_crit_edge, %if.then19, %if.then17.done_crit_edge
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags, align 2
  %57 = and i16 %56, 8192
  %and115 = zext i16 %57 to i32
  %open_wep = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 76
  %58 = ptrtoint ptr %open_wep to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and115, ptr %open_wep, align 4
  %call116 = tail call i32 @hostap_set_encryption(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end126, label %done.cleanup141.sink.split_crit_edge

done.cleanup141.sink.split_crit_edge:             ; preds = %done
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup141.sink.split

if.end126:                                        ; preds = %done
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %59 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp127.not = icmp eq i32 %60, 2
  br i1 %cmp127.not, label %if.end126.cleanup141_crit_edge, label %land.lhs.true129

if.end126.cleanup141_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup141

land.lhs.true129:                                 ; preds = %if.end126
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %61 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %62, i32 0, i32 11
  %63 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reset_port, align 4
  %call130 = tail call i32 %64(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %land.lhs.true129.cleanup141_crit_edge, label %land.lhs.true129.cleanup141.sink.split_crit_edge

land.lhs.true129.cleanup141.sink.split_crit_edge: ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup141.sink.split

land.lhs.true129.cleanup141_crit_edge:            ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup141

cleanup141.sink.split:                            ; preds = %land.lhs.true129.cleanup141.sink.split_crit_edge, %done.cleanup141.sink.split_crit_edge, %if.then67
  %.str.72.sink = phi ptr [ @.str.72, %if.then67 ], [ @.str.75, %done.cleanup141.sink.split_crit_edge ], [ @.str.78, %land.lhs.true129.cleanup141.sink.split_crit_edge ]
  %retval.1.ph = phi i32 [ -95, %if.then67 ], [ -22, %done.cleanup141.sink.split_crit_edge ], [ -22, %land.lhs.true129.cleanup141.sink.split_crit_edge ]
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.72.sink, ptr noundef %dev) #19
  br label %cleanup141

cleanup141:                                       ; preds = %cleanup141.sink.split, %land.lhs.true129.cleanup141_crit_edge, %if.end126.cleanup141_crit_edge, %if.then37.cleanup141_crit_edge, %if.end.cleanup141_crit_edge
  %retval.1 = phi i32 [ -22, %if.end.cleanup141_crit_edge ], [ 0, %land.lhs.true129.cleanup141_crit_edge ], [ 0, %if.end126.cleanup141_crit_edge ], [ -12, %if.then37.cleanup141_crit_edge ], [ %retval.1.ph, %cleanup141.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwencode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %erq, ptr noundef %key) #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !281
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local1, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 2
  %5 = and i16 %4, 255
  %6 = add nsw i16 %5, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %6)
  %7 = icmp ult i16 %6, -4
  br i1 %7, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %and = zext i16 %5 to i32
  %dec = add nsw i32 %and, -1
  br label %if.end11

if.end:                                           ; preds = %entry
  %tx_keyidx = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 75, i32 3
  %8 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_keyidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %10 = icmp ugt i32 %9, 3
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %if.end.thread
  %i.0108 = phi i32 [ %dec, %if.end.thread ], [ %9, %if.end.if.end11_crit_edge ]
  %arrayidx = getelementptr %struct.local_info, ptr %2, i32 0, i32 75, i32 2, i32 %i.0108
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = trunc i32 %i.0108 to i16
  %conv14 = add nuw nsw i16 %13, 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv14, ptr %flags, align 2
  %cmp16 = icmp eq ptr %12, null
  br i1 %cmp16, label %if.end11.if.then21_crit_edge, label %lor.lhs.false18

if.end11.if.then21_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

lor.lhs.false18:                                  ; preds = %if.end11
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %cmp19 = icmp eq ptr %16, null
  br i1 %cmp19, label %lor.lhs.false18.if.then21_crit_edge, label %if.end25

lor.lhs.false18.if.then21_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false18.if.then21_crit_edge, %if.end11.if.then21_crit_edge
  %length = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %length, align 4
  %18 = or i16 %conv14, -32768
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags, align 2
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false18
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 4
  %call27 = tail call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(4) @.str.70) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end36, label %if.then30

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %length31 = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %22 = ptrtoint ptr %length31 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %length31, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  %get_key = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %16, i32 0, i32 9
  %23 = ptrtoint ptr %get_key to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_key, align 4
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %12, i32 0, i32 2
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %call38 = tail call i32 %24(ptr noundef %key, i32 noundef 13, ptr noundef null, ptr noundef %26) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call38)
  %cmp39 = icmp sgt i32 %call38, -1
  %phi.cast = trunc i32 %call38 to i16
  %spec.select = select i1 %cmp39, i16 %phi.cast, i16 0
  %length42 = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %27 = ptrtoint ptr %length42 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %spec.select, ptr %length42, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 92
  %28 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %func, align 4
  %get_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %get_rid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_rid, align 4
  %call43 = call i32 %31(ptr noundef %dev, i16 noundef zeroext -984, ptr noundef nonnull %val, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end, label %if.end48

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #19
  br label %cleanup

if.end48:                                         ; preds = %if.end36
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %val, align 2
  %34 = call i16 @llvm.bswap.i16(i16 %33) #16
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not = icmp eq i16 %35, 0
  br i1 %tobool.not, label %if.else56, label %if.end48.if.end61_crit_edge

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.else56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags, align 2
  %38 = or i16 %37, -32768
  store i16 %38, ptr %flags, align 2
  br label %if.end61

if.end61:                                         ; preds = %if.else56, %if.end48.if.end61_crit_edge
  %39 = and i16 %34, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool64.not = icmp eq i16 %39, 0
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags, align 2
  %. = select i1 %tobool64.not, i16 8192, i16 16384
  %42 = or i16 %41, %.
  store i16 %42, ptr %flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end, %if.then30, %if.then21, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.then30 ], [ -95, %do.end ], [ 0, %if.end61 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwpower(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrq, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrq, i32 0, i32 2
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64521, i16 noundef zeroext 0) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_param, ptr %wrq, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 3840
  %and = zext i16 %4 to i32
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %and, label %if.end.cleanup_crit_edge [
    i32 256, label %sw.bb
    i32 768, label %sw.bb9
    i32 0, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call1 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64523, i16 noundef zeroext 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %call5 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64521, i16 noundef zeroext 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.sw.epilog_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %call10 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64523, i16 noundef zeroext 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %sw.bb9
  %call14 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64521, i16 noundef zeroext 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.sw.epilog_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool21.not = icmp eq i16 %8, 0
  br i1 %tobool21.not, label %sw.epilog.if.end32_crit_edge, label %if.then22

sw.epilog.if.end32_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then22:                                        ; preds = %sw.epilog
  %call23 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64521, i16 noundef zeroext 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end26:                                         ; preds = %if.then22
  %9 = ptrtoint ptr %wrq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wrq, align 4
  %div = sdiv i32 %10, 1024
  %conv27 = trunc i32 %div to i16
  %call28 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64525, i16 noundef zeroext %conv27) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.if.end32_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.end32:                                         ; preds = %if.end26.if.end32_crit_edge, %sw.epilog.if.end32_crit_edge
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 2
  %13 = and i16 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool36.not = icmp eq i16 %13, 0
  br i1 %tobool36.not, label %if.end32.if.end49_crit_edge, label %if.then37

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.then37:                                        ; preds = %if.end32
  %call38 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64521, i16 noundef zeroext 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end41:                                         ; preds = %if.then37
  %14 = ptrtoint ptr %wrq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wrq, align 4
  %div43 = sdiv i32 %15, 1024
  %conv44 = trunc i32 %div43 to i16
  %call45 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64524, i16 noundef zeroext %conv44) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end41.if.end49_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.end49:                                         ; preds = %if.end41.if.end49_crit_edge, %if.end32.if.end49_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end41.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end49 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call10, %sw.bb9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call23, %if.then22.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ], [ %call38, %if.then37.cleanup_crit_edge ], [ %call45, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwpower(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %rrq, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %enable = alloca i16, align 2
  %mcast = alloca i16, align 2
  %timeout = alloca i16, align 2
  %period = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %enable) #16
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %enable, align 2, !annotation !281
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mcast) #16
  %1 = ptrtoint ptr %mcast to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %mcast, align 2, !annotation !281
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local1, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %3, i32 0, i32 92
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 4
  %get_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %get_rid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_rid, align 4
  %call2 = call i32 %7(ptr noundef %dev, i16 noundef zeroext -1015, ptr noundef nonnull %enable, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup51_crit_edge, label %if.end

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup51

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 2
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %disabled, align 1
  br label %cleanup51

if.end4:                                          ; preds = %if.end
  %11 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %disabled, align 1
  %flags = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %14)
  %cmp6 = icmp eq i16 %14, 8192
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %timeout) #16
  %15 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %timeout, align 2, !annotation !281
  %16 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %func, align 4
  %get_rid10 = getelementptr inbounds %struct.prism2_helper_functions, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %get_rid10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_rid10, align 4
  %call11 = call i32 %19(ptr noundef %dev, i16 noundef zeroext -1011, ptr noundef nonnull %timeout, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %cleanup51.critedge, label %if.end15

if.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 8192, ptr %flags, align 2
  %21 = ptrtoint ptr %timeout to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %timeout, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %conv17 = zext i16 %23 to i32
  %mul = shl nuw nsw i32 %conv17, 10
  %24 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %rrq, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %timeout) #16
  br label %if.end32

if.else:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %period) #16
  %25 = ptrtoint ptr %period to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %period, align 2, !annotation !281
  %26 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %func, align 4
  %get_rid19 = getelementptr inbounds %struct.prism2_helper_functions, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %get_rid19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_rid19, align 4
  %call20 = call i32 %29(ptr noundef %dev, i16 noundef zeroext -1012, ptr noundef nonnull %period, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %cleanup51.critedge72, label %if.end24

if.end24:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 4096, ptr %flags, align 2
  %31 = ptrtoint ptr %period to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %period, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %conv26 = zext i16 %33 to i32
  %mul27 = shl nuw nsw i32 %conv26, 10
  %34 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul27, ptr %rrq, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %period) #16
  br label %if.end32

if.end32:                                         ; preds = %if.end24, %if.end15
  %35 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %func, align 4
  %get_rid34 = getelementptr inbounds %struct.prism2_helper_functions, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %get_rid34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_rid34, align 4
  %call35 = call i32 %38(ptr noundef %dev, i16 noundef zeroext -1013, ptr noundef nonnull %mcast, i32 noundef 2, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end32.cleanup51_crit_edge, label %if.end39

if.end32.cleanup51_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup51

if.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %mcast to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mcast, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool40.not = icmp eq i16 %40, 0
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags, align 2
  %. = select i1 %tobool40.not, i16 256, i16 768
  %43 = or i16 %42, %.
  store i16 %43, ptr %flags, align 2
  br label %cleanup51

cleanup51.critedge:                               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %timeout) #16
  br label %cleanup51

cleanup51.critedge72:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %period) #16
  br label %cleanup51

cleanup51:                                        ; preds = %cleanup51.critedge72, %cleanup51.critedge, %if.end39, %if.end32.cleanup51_crit_edge, %if.then3, %entry.cleanup51_crit_edge
  %retval.2 = phi i32 [ 0, %if.end39 ], [ 0, %if.then3 ], [ -22, %entry.cleanup51_crit_edge ], [ -22, %cleanup51.critedge ], [ -22, %cleanup51.critedge72 ], [ -22, %if.end32.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mcast) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %enable) #16
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwgenie(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  %conv = zext i16 %1 to i32
  %local1.i = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local1.i, align 4
  %add.i = add nuw nsw i32 %conv, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #22
  %cmp.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i, label %entry.prism2_set_genericelement.exit_crit_edge, label %if.end.i

entry.prism2_set_genericelement.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %prism2_set_genericelement.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = tail call i16 @llvm.bswap.i16(i16 %1) #16
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %call9.i.i, align 128
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 2
  %6 = call ptr @memcpy(ptr %add.ptr.i, ptr %extra, i32 %conv)
  %generic_elem.i = getelementptr inbounds %struct.local_info, ptr %3, i32 0, i32 133
  %7 = ptrtoint ptr %generic_elem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %generic_elem.i, align 4
  tail call void @kfree(ptr noundef %8) #16
  %9 = ptrtoint ptr %generic_elem.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i.i, ptr %generic_elem.i, align 4
  %generic_elem_len.i = getelementptr inbounds %struct.local_info, ptr %3, i32 0, i32 134
  %10 = ptrtoint ptr %generic_elem_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %generic_elem_len.i, align 4
  %func.i = getelementptr inbounds %struct.local_info, ptr %3, i32 0, i32 92
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func.i, align 4
  %set_rid.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %set_rid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_rid.i, align 4
  %dev5.i = getelementptr inbounds %struct.local_info, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev5.i, align 4
  %call7.i = tail call i32 %14(ptr noundef %16, i16 noundef zeroext -952, ptr noundef nonnull %call9.i.i, i32 noundef %add.i) #16
  br label %prism2_set_genericelement.exit

prism2_set_genericelement.exit:                   ; preds = %if.end.i, %entry.prism2_set_genericelement.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ -12, %entry.prism2_set_genericelement.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prism2_ioctl_giwgenie(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %data, ptr nocapture noundef writeonly %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %generic_elem_len = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 134
  %2 = ptrtoint ptr %generic_elem_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %generic_elem_len, align 4
  %sub = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %generic_elem = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 133
  %4 = ptrtoint ptr %generic_elem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %generic_elem, align 4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %length, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %length3 = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %length3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %length3, align 4
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp4 = icmp ugt i32 %sub, %conv
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv8 = trunc i32 %sub to i16
  %9 = ptrtoint ptr %length3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv8, ptr %length3, align 4
  %10 = ptrtoint ptr %generic_elem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %generic_elem, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 2
  %12 = call ptr @memcpy(ptr %extra, ptr %add.ptr, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end7 ], [ -7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwauth(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %flags = getelementptr inbounds %struct.iw_param, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 4095
  %and = zext i16 %4 to i32
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge84
    i32 2, label %entry.sw.epilog_crit_edge85
    i32 3, label %entry.sw.epilog_crit_edge86
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb5
    i32 7, label %sw.bb7
    i32 8, label %sw.bb49
    i32 10, label %sw.bb51
  ]

entry.sw.epilog_crit_edge86:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.sw.epilog_crit_edge85:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.sw.epilog_crit_edge84:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %tkip_countermeasures = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 131
  %8 = ptrtoint ptr %tkip_countermeasures to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tkip_countermeasures, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %drop_unencrypted = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 132
  %11 = ptrtoint ptr %drop_unencrypted to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %drop_unencrypted, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %auth_algs = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 89
  %14 = ptrtoint ptr %auth_algs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %auth_algs, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end25

if.then:                                          ; preds = %sw.bb7
  %wpa = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 130
  %17 = ptrtoint ptr %wpa to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %wpa, align 4
  %sta_fw_ver = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 95
  %18 = ptrtoint ptr %sta_fw_ver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sta_fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67328, i32 %19)
  %cmp10 = icmp ult i32 %19, 67328
  br i1 %cmp10, label %if.then.sw.epilog_crit_edge, label %if.end

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %call13 = tail call fastcc i32 @prism2_set_genericelement(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef 0)
  %host_roaming = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 104
  %20 = ptrtoint ptr %host_roaming to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %host_roaming, align 4
  %privacy_invoked = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 79
  %21 = ptrtoint ptr %privacy_invoked to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %privacy_invoked, align 4
  %call14 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64699, i16 noundef zeroext 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call15 = tail call i32 @hostap_set_roaming(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %call18 = tail call i32 @hostap_set_encryption(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %22 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reset_port, align 4
  %call21 = tail call i32 %25(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %lor.lhs.false20.sw.epilog_crit_edge, label %lor.lhs.false20.cleanup_crit_edge

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false20.sw.epilog_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end25:                                         ; preds = %sw.bb7
  %sta_fw_ver26 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 95
  %26 = ptrtoint ptr %sta_fw_ver26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sta_fw_ver26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67328, i32 %27)
  %cmp27 = icmp ult i32 %27, 67328
  br i1 %cmp27, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %host_roaming31 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 104
  %28 = ptrtoint ptr %host_roaming31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %host_roaming31, align 4
  %privacy_invoked32 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 79
  %29 = ptrtoint ptr %privacy_invoked32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %privacy_invoked32, align 4
  %wpa33 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 130
  %30 = ptrtoint ptr %wpa33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %wpa33, align 4
  %call34 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64699, i16 noundef zeroext 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false36:                                  ; preds = %if.end30
  %call37 = tail call i32 @hostap_set_roaming(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false36.cleanup_crit_edge

lor.lhs.false36.cleanup_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %call40 = tail call i32 @hostap_set_encryption(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %lor.lhs.false39.cleanup_crit_edge

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %func43 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %31 = ptrtoint ptr %func43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %func43, align 4
  %reset_port44 = getelementptr inbounds %struct.prism2_helper_functions, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %reset_port44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reset_port44, align 4
  %call45 = tail call i32 %34(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %lor.lhs.false42.sw.epilog_crit_edge, label %lor.lhs.false42.cleanup_crit_edge

lor.lhs.false42.cleanup_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false42.sw.epilog_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data, align 4
  %ieee_802_1x = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 84
  %37 = ptrtoint ptr %ieee_802_1x to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ieee_802_1x, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data, align 4
  %privacy_invoked53 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 79
  %40 = ptrtoint ptr %privacy_invoked53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %privacy_invoked53, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb51, %sw.bb49, %lor.lhs.false42.sw.epilog_crit_edge, %lor.lhs.false20.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %sw.bb5, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge84, %entry.sw.epilog_crit_edge85, %entry.sw.epilog_crit_edge86
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false42.cleanup_crit_edge, %lor.lhs.false39.cleanup_crit_edge, %lor.lhs.false36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %lor.lhs.false20.cleanup_crit_edge ], [ -22, %lor.lhs.false17.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -95, %if.end25.cleanup_crit_edge ], [ -22, %lor.lhs.false42.cleanup_crit_edge ], [ -22, %lor.lhs.false39.cleanup_crit_edge ], [ -22, %lor.lhs.false36.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prism2_ioctl_giwauth(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %data, ptr nocapture noundef readnone %extra) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %flags = getelementptr inbounds %struct.iw_param, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 4095
  %and = zext i16 %4 to i32
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 8, label %sw.bb9
    i32 7, label %sw.bb7
    i32 6, label %sw.bb5
    i32 5, label %sw.bb3
    i32 4, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %tkip_countermeasures = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 131
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %drop_unencrypted = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 132
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %auth_algs = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 89
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %wpa = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 130
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ieee_802_1x = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 84
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb2
  %tkip_countermeasures.sink = phi ptr [ %tkip_countermeasures, %sw.bb2 ], [ %drop_unencrypted, %sw.bb3 ], [ %auth_algs, %sw.bb5 ], [ %wpa, %sw.bb7 ], [ %ieee_802_1x, %sw.bb9 ]
  %6 = ptrtoint ptr %tkip_countermeasures.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tkip_countermeasures.sink, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_siwencodeext(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %erq, ptr noundef %extra) #1 align 64 {
entry:
  %crypt = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crypt) #16
  %2 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %crypt, align 4, !annotation !281
  %flags = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 2
  %5 = and i16 %4, 255
  %and = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp = icmp ugt i16 %5, 4
  br i1 %cmp, label %entry.cleanup205_crit_edge, label %if.end

entry.cleanup205_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup205

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp3 = icmp eq i16 %5, 0
  br i1 %cmp3, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %tx_keyidx = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75, i32 3
  %6 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_keyidx, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %dec = add nsw i32 %and, -1
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %i.0 = phi i32 [ %7, %if.then7 ], [ %dec, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0)
  %8 = icmp ugt i32 %i.0, 3
  br i1 %8, label %if.end8.cleanup205_crit_edge, label %if.end15

if.end8.cleanup205_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup205

if.end15:                                         ; preds = %if.end8
  %sa_data = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %sa_data to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sa_data, align 2
  %add.ptr1.i = getelementptr %struct.iw_encode_ext, ptr %extra, i32 0, i32 3, i32 1, i32 2
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %12, %10
  %add.ptr3.i = getelementptr %struct.iw_encode_ext, ptr %extra, i32 0, i32 3, i32 1, i32 4
  %13 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %14
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 %i.0
  %15 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %crypt, align 4
  br label %if.end39

if.else21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp22.not = icmp eq i32 %i.0, 0
  br i1 %cmp22.not, label %if.end25, label %if.else21.cleanup205_crit_edge

if.else21.cleanup205_crit_edge:                   ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup205

if.end25:                                         ; preds = %if.else21
  %ap = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %16 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ap, align 4
  %call26 = call ptr @ap_crypt_get_ptrs(ptr noundef %17, ptr noundef %sa_data, i32 noundef 0, ptr noundef nonnull %crypt) #16
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then29, label %if.end25.if.end39_crit_edge

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then29:                                        ; preds = %if.end25
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %18 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp30 = icmp eq i32 %19, 2
  br i1 %cmp30, label %if.then32, label %if.then29.cleanup205_crit_edge

if.then29.cleanup205_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup205

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  %crypt34 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75, i32 2
  %20 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %crypt34, ptr %crypt, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.end25.if.end39_crit_edge, %if.then18
  %sta_ptr.0 = phi ptr [ null, %if.then18 ], [ null, %if.then32 ], [ %call26, %if.end25.if.end39_crit_edge ]
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %tobool.not = icmp sgt i16 %22, -1
  br i1 %tobool.not, label %lor.lhs.false43, label %if.end39.if.then48_crit_edge

if.end39.if.then48_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then48

lor.lhs.false43:                                  ; preds = %if.end39
  %alg44 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %23 = ptrtoint ptr %alg44 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %alg44, align 4
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.165)
  switch i16 %24, label %do.end [
    i16 0, label %lor.lhs.false43.if.then48_crit_edge
    i16 1, label %lor.lhs.false43.sw.epilog_crit_edge
    i16 2, label %sw.bb56
    i16 3, label %sw.bb57
  ]

lor.lhs.false43.sw.epilog_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

lor.lhs.false43.if.then48_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false43.if.then48_crit_edge, %if.end39.if.then48_crit_edge
  %26 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crypt, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool49.not = icmp eq ptr %29, null
  br i1 %tobool49.not, label %if.then48.done_crit_edge, label %if.then50

if.then48.done_crit_edge:                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  %crypt_info51 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75
  call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info51, ptr noundef %27) #16
  br label %done

sw.bb56:                                          ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb57:                                          ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.end:                                           ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #18
  %conv45 = zext i16 %24 to i32
  %dev58 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 4
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %31, i32 noundef %conv45) #19
  br label %done

sw.epilog:                                        ; preds = %sw.bb57, %sw.bb56, %lor.lhs.false43.sw.epilog_crit_edge
  %alg.0 = phi ptr [ @.str.84, %sw.bb57 ], [ @.str.82, %sw.bb56 ], [ @.str.70, %lor.lhs.false43.sw.epilog_crit_edge ]
  %module.0 = phi ptr [ @.str.85, %sw.bb57 ], [ @.str.83, %sw.bb56 ], [ @.str.71, %lor.lhs.false43.sw.epilog_crit_edge ]
  %call63 = call ptr @lib80211_get_crypto_ops(ptr noundef nonnull %alg.0) #16
  %cmp64 = icmp eq ptr %call63, null
  br i1 %cmp64, label %if.end69, label %sw.epilog.if.end81_crit_edge

sw.epilog.if.end81_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81

if.end69:                                         ; preds = %sw.epilog
  %call67 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %module.0) #16
  %call68 = call ptr @lib80211_get_crypto_ops(ptr noundef nonnull %alg.0) #16
  %cmp70 = icmp eq ptr %call68, null
  br i1 %cmp70, label %do.end75, label %if.end69.if.end81_crit_edge

if.end69.if.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  %dev77 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev77, align 4
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %33, ptr noundef nonnull %alg.0) #19
  br label %done

if.end81:                                         ; preds = %if.end69.if.end81_crit_edge, %sw.epilog.if.end81_crit_edge
  %ops.0287 = phi ptr [ %call68, %if.end69.if.end81_crit_edge ], [ %call63, %sw.epilog.if.end81_crit_edge ]
  %tobool82.not = icmp eq ptr %sta_ptr.0, null
  br i1 %tobool82.not, label %lor.lhs.false83, label %if.end81.if.then88_crit_edge

if.end81.if.then88_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then88

lor.lhs.false83:                                  ; preds = %if.end81
  %34 = ptrtoint ptr %alg44 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %alg44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %35)
  %cmp86.not = icmp eq i16 %35, 1
  br i1 %cmp86.not, label %lor.lhs.false83.if.end89_crit_edge, label %lor.lhs.false83.if.then88_crit_edge

lor.lhs.false83.if.then88_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then88

lor.lhs.false83.if.end89_crit_edge:               ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end89

if.then88:                                        ; preds = %lor.lhs.false83.if.then88_crit_edge, %if.end81.if.then88_crit_edge
  %host_encrypt = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 77
  %36 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %host_encrypt, align 4
  %host_decrypt = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 78
  %37 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %host_decrypt, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %lor.lhs.false83.if.end89_crit_edge
  %38 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crypt, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %cmp90 = icmp eq ptr %41, null
  br i1 %cmp90, label %if.end89.if.then96_crit_edge, label %lor.lhs.false92

if.end89.if.then96_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then96

lor.lhs.false92:                                  ; preds = %if.end89
  %ops93 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ops93 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops93, align 4
  %cmp94.not = icmp eq ptr %43, %ops.0287
  br i1 %cmp94.not, label %lor.lhs.false92.if.end118_crit_edge, label %lor.lhs.false92.if.then96_crit_edge

lor.lhs.false92.if.then96_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then96

lor.lhs.false92.if.end118_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end118

if.then96:                                        ; preds = %lor.lhs.false92.if.then96_crit_edge, %if.end89.if.then96_crit_edge
  %crypt_info97 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75
  call void @lib80211_crypt_delayed_deinit(ptr noundef %crypt_info97, ptr noundef %39) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 20) #21
  %cmp99 = icmp eq ptr %call7.i.i, null
  br i1 %cmp99, label %if.then96.done_crit_edge, label %if.end102

if.then96.done_crit_edge:                         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.end102:                                        ; preds = %if.then96
  %ops103 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %ops103 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %ops.0287, ptr %ops103, align 8
  %owner = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %ops.0287, i32 0, i32 17
  %46 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %owner, align 4
  %call107 = call zeroext i1 @try_module_get(ptr noundef %47) #16
  br i1 %call107, label %if.then109, label %if.end102.if.end112_crit_edge

if.end102.if.end112_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end112

if.then109:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %ops103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops103, align 8
  %init = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init, align 4
  %call111 = call ptr %51(i32 noundef %i.0) #16
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call111, ptr %priv, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end102.if.end112_crit_edge
  %priv113 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %call7.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %priv113 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv113, align 4
  %cmp114 = icmp eq ptr %54, null
  br i1 %cmp114, label %if.then116, label %cleanup

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %done

cleanup:                                          ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %crypt, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i, ptr %56, align 4
  br label %if.end118

if.end118:                                        ; preds = %cleanup, %lor.lhs.false92.if.end118_crit_edge
  %58 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %extra, align 4
  %and119 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.land.lhs.true125_crit_edge, label %lor.lhs.false121

if.end118.land.lhs.true125_crit_edge:             ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true125

lor.lhs.false121:                                 ; preds = %if.end118
  %key_len = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %60 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %key_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp123.not = icmp eq i16 %61, 0
  br i1 %cmp123.not, label %lor.lhs.false121.if.end148_crit_edge, label %lor.lhs.false121.land.lhs.true125_crit_edge

lor.lhs.false121.land.lhs.true125_crit_edge:      ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true125

lor.lhs.false121.if.end148_crit_edge:             ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end148

land.lhs.true125:                                 ; preds = %lor.lhs.false121.land.lhs.true125_crit_edge, %if.end118.land.lhs.true125_crit_edge
  %62 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %crypt, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %ops126 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %ops126 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops126, align 4
  %set_key = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %set_key to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_key, align 4
  %tobool127.not = icmp eq ptr %69, null
  br i1 %tobool127.not, label %land.lhs.true125.if.end148_crit_edge, label %land.lhs.true128

land.lhs.true125.if.end148_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end148

land.lhs.true128:                                 ; preds = %land.lhs.true125
  %key = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %key_len132 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %70 = ptrtoint ptr %key_len132 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %key_len132, align 2
  %conv133 = zext i16 %71 to i32
  %rx_seq = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 2
  %priv135 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %65, i32 0, i32 2
  %72 = ptrtoint ptr %priv135 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv135, align 4
  %call136 = call i32 %69(ptr noundef %key, i32 noundef %conv133, ptr noundef %rx_seq, ptr noundef %73) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %do.end142, label %land.lhs.true128.if.end148_crit_edge

land.lhs.true128.if.end148_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end148

do.end142:                                        ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #18
  %dev144 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %74 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev144, align 4
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %75) #19
  br label %done

if.end148:                                        ; preds = %land.lhs.true128.if.end148_crit_edge, %land.lhs.true125.if.end148_crit_edge, %lor.lhs.false121.if.end148_crit_edge
  %76 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %extra, align 4
  %and150 = and i32 %77, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  %tobool82.not.not = xor i1 %tobool82.not, true
  %brmerge = select i1 %tobool151.not, i1 true, i1 %tobool82.not.not
  br i1 %brmerge, label %if.end148.if.end158_crit_edge, label %if.then154

if.end148.if.end158_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end158

if.then154:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #18
  %tx_keyidx156 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75, i32 3
  %78 = ptrtoint ptr %tx_keyidx156 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %i.0, ptr %tx_keyidx156, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %if.end148.if.end158_crit_edge
  br i1 %tobool82.not, label %land.lhs.true161, label %if.end158.if.then185_crit_edge

if.end158.if.then185_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then185

land.lhs.true161:                                 ; preds = %if.end158
  %key_len162 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %79 = ptrtoint ptr %key_len162 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %key_len162, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp164.not = icmp eq i16 %80, 0
  br i1 %cmp164.not, label %land.lhs.true161.land.lhs.true192.sink.split_crit_edge, label %for.body.preheader

land.lhs.true161.land.lhs.true192.sink.split_crit_edge: ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true192.sink.split

for.body.preheader:                               ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp169.not = icmp eq i32 %i.0, 0
  br i1 %cmp169.not, label %land.lhs.true171.1.thread, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %for.body.preheader
  %arrayidx174 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 0
  %81 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx174, align 4
  %tobool175.not = icmp eq ptr %82, null
  br i1 %tobool175.not, label %for.inc, label %land.lhs.true171.land.lhs.true192.sink.split_crit_edge

land.lhs.true171.land.lhs.true192.sink.split_crit_edge: ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true192.sink.split

for.inc:                                          ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0)
  %cmp169.not.1 = icmp eq i32 %i.0, 1
  br i1 %cmp169.not.1, label %for.inc.land.lhs.true171.2_crit_edge, label %land.lhs.true171.1

for.inc.land.lhs.true171.2_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true171.2

land.lhs.true171.1:                               ; preds = %for.inc
  %arrayidx174.1 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 1
  %83 = ptrtoint ptr %arrayidx174.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx174.1, align 4
  %tobool175.not.1 = icmp eq ptr %84, null
  br i1 %tobool175.not.1, label %for.inc.1, label %land.lhs.true171.1.land.lhs.true192.sink.split_crit_edge

land.lhs.true171.1.land.lhs.true192.sink.split_crit_edge: ; preds = %land.lhs.true171.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true192.sink.split

land.lhs.true171.1.thread:                        ; preds = %for.body.preheader
  %arrayidx174.1307 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 1
  %85 = ptrtoint ptr %arrayidx174.1307 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx174.1307, align 4
  %tobool175.not.1308 = icmp eq ptr %86, null
  br i1 %tobool175.not.1308, label %land.lhs.true171.1.thread.land.lhs.true171.2_crit_edge, label %land.lhs.true171.1.thread.land.lhs.true192.sink.split_crit_edge

land.lhs.true171.1.thread.land.lhs.true192.sink.split_crit_edge: ; preds = %land.lhs.true171.1.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true192.sink.split

land.lhs.true171.1.thread.land.lhs.true171.2_crit_edge: ; preds = %land.lhs.true171.1.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true171.2

for.inc.1:                                        ; preds = %land.lhs.true171.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0)
  %cmp169.not.2 = icmp eq i32 %i.0, 2
  br i1 %cmp169.not.2, label %for.inc.1.land.lhs.true171.3_crit_edge, label %for.inc.1.land.lhs.true171.2_crit_edge

for.inc.1.land.lhs.true171.2_crit_edge:           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true171.2

for.inc.1.land.lhs.true171.3_crit_edge:           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true171.3

land.lhs.true171.2:                               ; preds = %for.inc.1.land.lhs.true171.2_crit_edge, %land.lhs.true171.1.thread.land.lhs.true171.2_crit_edge, %for.inc.land.lhs.true171.2_crit_edge
  %arrayidx174.2 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 2
  %87 = ptrtoint ptr %arrayidx174.2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx174.2, align 4
  %tobool175.not.2 = icmp eq ptr %88, null
  br i1 %tobool175.not.2, label %for.inc.2, label %land.lhs.true171.2.land.lhs.true192.sink.split_crit_edge

land.lhs.true171.2.land.lhs.true192.sink.split_crit_edge: ; preds = %land.lhs.true171.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true192.sink.split

for.inc.2:                                        ; preds = %land.lhs.true171.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0)
  %cmp169.not.3 = icmp eq i32 %i.0, 3
  br i1 %cmp169.not.3, label %for.inc.2.for.inc.3_crit_edge, label %for.inc.2.land.lhs.true171.3_crit_edge

for.inc.2.land.lhs.true171.3_crit_edge:           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true171.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

land.lhs.true171.3:                               ; preds = %for.inc.2.land.lhs.true171.3_crit_edge, %for.inc.1.land.lhs.true171.3_crit_edge
  %arrayidx174.3 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 3
  %89 = ptrtoint ptr %arrayidx174.3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx174.3, align 4
  %tobool175.not.3 = icmp eq ptr %90, null
  br i1 %tobool175.not.3, label %land.lhs.true171.3.for.inc.3_crit_edge, label %land.lhs.true171.3.land.lhs.true192.sink.split_crit_edge

land.lhs.true171.3.land.lhs.true192.sink.split_crit_edge: ; preds = %land.lhs.true171.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true192.sink.split

land.lhs.true171.3.for.inc.3_crit_edge:           ; preds = %land.lhs.true171.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true171.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %tx_keyidx181 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75, i32 3
  %91 = ptrtoint ptr %tx_keyidx181 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %i.0, ptr %tx_keyidx181, align 4
  br label %land.lhs.true192.sink.split

done:                                             ; preds = %do.end142, %if.then116, %if.then96.done_crit_edge, %do.end75, %do.end, %if.then50, %if.then48.done_crit_edge
  %ret.2 = phi i32 [ 0, %if.then50 ], [ 0, %if.then48.done_crit_edge ], [ -95, %do.end ], [ -95, %do.end75 ], [ -22, %do.end142 ], [ -12, %if.then96.done_crit_edge ], [ -22, %if.then116 ]
  %tobool184.not = icmp eq ptr %sta_ptr.0, null
  br i1 %tobool184.not, label %done.if.end186_crit_edge, label %done.if.then185_crit_edge

done.if.then185_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then185

done.if.end186_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end186

if.then185:                                       ; preds = %done.if.then185_crit_edge, %if.end158.if.then185_crit_edge
  %ret.2298 = phi i32 [ %ret.2, %done.if.then185_crit_edge ], [ 0, %if.end158.if.then185_crit_edge ]
  call void @hostap_handle_sta_release(ptr noundef nonnull %sta_ptr.0) #16
  br label %if.end186

if.end186:                                        ; preds = %if.then185, %done.if.end186_crit_edge
  %ret.2294 = phi i32 [ %ret.2298, %if.then185 ], [ %ret.2, %done.if.end186_crit_edge ]
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %flags, align 2
  %94 = and i16 %93, 8192
  %and189 = zext i16 %94 to i32
  %open_wep = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 76
  %95 = ptrtoint ptr %open_wep to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and189, ptr %open_wep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2294)
  %cmp190 = icmp eq i32 %ret.2294, 0
  br i1 %cmp190, label %if.end186.land.lhs.true192_crit_edge, label %if.end186.cleanup205_crit_edge

if.end186.cleanup205_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup205

if.end186.land.lhs.true192_crit_edge:             ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true192

land.lhs.true192.sink.split:                      ; preds = %for.inc.3, %land.lhs.true171.3.land.lhs.true192.sink.split_crit_edge, %land.lhs.true171.2.land.lhs.true192.sink.split_crit_edge, %land.lhs.true171.1.thread.land.lhs.true192.sink.split_crit_edge, %land.lhs.true171.1.land.lhs.true192.sink.split_crit_edge, %land.lhs.true171.land.lhs.true192.sink.split_crit_edge, %land.lhs.true161.land.lhs.true192.sink.split_crit_edge
  %96 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %flags, align 2
  %98 = and i16 %97, 8192
  %and189316 = zext i16 %98 to i32
  %open_wep317 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 76
  %99 = ptrtoint ptr %open_wep317 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %and189316, ptr %open_wep317, align 4
  br label %land.lhs.true192

land.lhs.true192:                                 ; preds = %land.lhs.true192.sink.split, %if.end186.land.lhs.true192_crit_edge
  %call193 = call i32 @hostap_set_encryption(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %lor.lhs.false195, label %land.lhs.true192.if.then203_crit_edge

land.lhs.true192.if.then203_crit_edge:            ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then203

lor.lhs.false195:                                 ; preds = %land.lhs.true192
  %iw_mode196 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 30
  %100 = ptrtoint ptr %iw_mode196 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %iw_mode196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp197.not = icmp eq i32 %101, 2
  br i1 %cmp197.not, label %lor.lhs.false195.cleanup205_crit_edge, label %land.lhs.true199

lor.lhs.false195.cleanup205_crit_edge:            ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup205

land.lhs.true199:                                 ; preds = %lor.lhs.false195
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %102 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %103, i32 0, i32 11
  %104 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reset_port, align 4
  %dev200 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %106 = ptrtoint ptr %dev200 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev200, align 4
  %call201 = call i32 %105(ptr noundef %107) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %land.lhs.true199.cleanup205_crit_edge, label %land.lhs.true199.if.then203_crit_edge

land.lhs.true199.if.then203_crit_edge:            ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then203

land.lhs.true199.cleanup205_crit_edge:            ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup205

if.then203:                                       ; preds = %land.lhs.true199.if.then203_crit_edge, %land.lhs.true192.if.then203_crit_edge
  br label %cleanup205

cleanup205:                                       ; preds = %if.then203, %land.lhs.true199.cleanup205_crit_edge, %lor.lhs.false195.cleanup205_crit_edge, %if.end186.cleanup205_crit_edge, %if.then29.cleanup205_crit_edge, %if.else21.cleanup205_crit_edge, %if.end8.cleanup205_crit_edge, %entry.cleanup205_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup205_crit_edge ], [ -22, %if.end8.cleanup205_crit_edge ], [ -22, %if.else21.cleanup205_crit_edge ], [ -22, %if.then29.cleanup205_crit_edge ], [ -22, %if.then203 ], [ 0, %land.lhs.true199.cleanup205_crit_edge ], [ 0, %lor.lhs.false195.cleanup205_crit_edge ], [ %ret.2294, %if.end186.cleanup205_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crypt) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_giwencodeext(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %erq, ptr noundef %extra) #1 align 64 {
entry:
  %crypt = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crypt) #16
  %2 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %crypt, align 4, !annotation !281
  %length = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %length, align 4
  %conv = zext i16 %4 to i32
  %sub = add nsw i32 %conv, -40
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %4)
  %cmp = icmp ult i16 %4, 40
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 255
  %8 = add nsw i16 %7, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4, i16 %8)
  %9 = icmp ult i16 %8, -4
  br i1 %9, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %tx_keyidx = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75, i32 3
  %10 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_keyidx, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %and = zext i16 %7 to i32
  %dec = add nsw i32 %and, -1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %i.0 = phi i32 [ %11, %if.then8 ], [ %dec, %if.else ]
  %sa_data = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %sa_data to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sa_data, align 2
  %add.ptr1.i = getelementptr %struct.iw_encode_ext, ptr %extra, i32 0, i32 3, i32 1, i32 2
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %15, %13
  %add.ptr3.i = getelementptr %struct.iw_encode_ext, ptr %extra, i32 0, i32 3, i32 1, i32 4
  %16 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 %i.0
  %18 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx, ptr %crypt, align 4
  br label %if.end21

if.else15:                                        ; preds = %if.end9
  %ap = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ap, align 4
  %call16 = call ptr @ap_crypt_get_ptrs(ptr noundef %20, ptr noundef %sa_data, i32 noundef 0, ptr noundef nonnull %crypt) #16
  %cmp17 = icmp eq ptr %call16, null
  br i1 %cmp17, label %if.else15.cleanup_crit_edge, label %if.else15.if.end21_crit_edge

if.else15.if.end21_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21:                                         ; preds = %if.else15.if.end21_crit_edge, %if.then12
  %sta_ptr.0 = phi ptr [ null, %if.then12 ], [ %call16, %if.else15.if.end21_crit_edge ]
  %i.1 = phi i32 [ %i.0, %if.then12 ], [ 0, %if.else15.if.end21_crit_edge ]
  %21 = trunc i32 %i.1 to i16
  %conv22 = add i16 %21, 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv22, ptr %flags, align 2
  %23 = call ptr @memset(ptr %extra, i32 0, i32 40)
  %24 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crypt, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %cmp24 = icmp eq ptr %27, null
  br i1 %cmp24, label %if.end21.if.then29_crit_edge, label %lor.lhs.false26

if.end21.if.then29_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

lor.lhs.false26:                                  ; preds = %if.end21
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %cmp27 = icmp eq ptr %29, null
  br i1 %cmp27, label %lor.lhs.false26.if.then29_crit_edge, label %if.else33

lor.lhs.false26.if.then29_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false26.if.then29_crit_edge, %if.end21.if.then29_crit_edge
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags, align 2
  %32 = or i16 %31, -32768
  store i16 %32, ptr %flags, align 2
  br label %if.end85

if.else33:                                        ; preds = %lor.lhs.false26
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %29, align 4
  %call35 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(4) @.str.70) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.else33.if.end59_crit_edge, label %if.else40

if.else33.if.end59_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.else40:                                        ; preds = %if.else33
  %call43 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(5) @.str.82) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.else40.if.end59_crit_edge, label %if.else48

if.else40.if.end59_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.else48:                                        ; preds = %if.else40
  %call51 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(5) @.str.84) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.else48.if.end59_crit_edge, label %if.else48.cleanup_crit_edge

if.else48.cleanup_crit_edge:                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else48.if.end59_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.end59:                                         ; preds = %if.else48.if.end59_crit_edge, %if.else40.if.end59_crit_edge, %if.else33.if.end59_crit_edge
  %.sink = phi i16 [ 1, %if.else33.if.end59_crit_edge ], [ 2, %if.else40.if.end59_crit_edge ], [ 3, %if.else48.if.end59_crit_edge ]
  %alg47 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %35 = ptrtoint ptr %alg47 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %.sink, ptr %alg47, align 4
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %25, align 4
  %ops60 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ops60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops60, align 4
  %get_key = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %get_key to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_key, align 4
  %tobool.not = icmp eq ptr %41, null
  br i1 %tobool.not, label %if.end59.if.end85_crit_edge, label %if.then61

if.end59.if.end85_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.then61:                                        ; preds = %if.end59
  %key = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %tx_seq = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 1
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %37, i32 0, i32 2
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 4
  %call66 = call i32 %41(ptr noundef %key, i32 noundef %sub, ptr noundef %tx_seq, ptr noundef %43) #16
  %conv67 = trunc i32 %call66 to i16
  %key_len68 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %44 = ptrtoint ptr %key_len68 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv67, ptr %key_len68, align 2
  %conv70 = and i32 %call66, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv70)
  %tobool71.not = icmp eq i32 %conv70, 0
  br i1 %tobool71.not, label %if.then61.if.end85_crit_edge, label %land.lhs.true

if.then61.if.end85_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

land.lhs.true:                                    ; preds = %if.then61
  %alg72 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %45 = ptrtoint ptr %alg72 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %alg72, align 4
  %47 = and i16 %46, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %47)
  %switch = icmp eq i16 %47, 2
  br i1 %switch, label %if.then81, label %land.lhs.true.if.end85_crit_edge

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.then81:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %extra, align 4
  %or82 = or i32 %49, 1
  store i32 %or82, ptr %extra, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %land.lhs.true.if.end85_crit_edge, %if.then61.if.end85_crit_edge, %if.end59.if.end85_crit_edge, %if.then29
  %tobool86.not = icmp eq ptr %sta_ptr.0, null
  br i1 %tobool86.not, label %if.end85.cleanup_crit_edge, label %if.then87

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  call void @hostap_handle_sta_release(ptr noundef nonnull %sta_ptr.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end85.cleanup_crit_edge, %if.else48.cleanup_crit_edge, %if.else15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else15.cleanup_crit_edge ], [ -22, %if.else48.cleanup_crit_edge ], [ 0, %if.then87 ], [ 0, %if.end85.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crypt) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_set_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostap_monitor_mode_disable(ptr noundef %local) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 6
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %1) #19
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %type, align 16
  %func = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 92
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func, align 4
  %cmd = getelementptr inbounds %struct.prism2_helper_functions, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 4
  %call1 = tail call i32 %6(ptr noundef nonnull %1, i16 noundef zeroext 3896, i16 noundef zeroext 0, ptr noundef null, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 @hostap_set_encryption(ptr noundef %local) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostap_monitor_mode_enable(ptr nocapture noundef readonly %local) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #19
  %ddev.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 6
  %2 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %entry.hostap_monitor_set_type.exit_crit_edge, label %if.end.i

entry.hostap_monitor_set_type.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %hostap_monitor_set_type.exit

if.end.i:                                         ; preds = %entry
  %monitor_type.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 66
  %4 = ptrtoint ptr %monitor_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitor_type.i, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.hostap_monitor_mode_enable, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %7)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %switch.lookup, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i16 [ %switch.load, %switch.lookup ], [ 801, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 32
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink.i, ptr %type.i, align 16
  br label %hostap_monitor_set_type.exit

hostap_monitor_set_type.exit:                     ; preds = %cleanup.sink.split.i, %entry.hostap_monitor_set_type.exit_crit_edge
  %call2 = tail call i32 @hostap_set_word(ptr noundef %1, i32 noundef 64512, i16 noundef zeroext 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %hostap_monitor_set_type.exit.cleanup.sink.split_crit_edge

hostap_monitor_set_type.exit.cleanup.sink.split_crit_edge: ; preds = %hostap_monitor_set_type.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end:                                           ; preds = %hostap_monitor_set_type.exit
  %call8 = tail call i32 @hostap_set_word(ptr noundef %1, i32 noundef 64552, i16 noundef zeroext 144) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end
  %func = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 92
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset_port, align 4
  %call17 = tail call i32 %12(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end16.cleanup.sink.split_crit_edge

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end16
  %13 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func, align 4
  %cmd = getelementptr inbounds %struct.prism2_helper_functions, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd, align 4
  %call20 = tail call i32 %16(ptr noundef %1, i16 noundef zeroext 2872, i16 noundef zeroext 0, ptr noundef null, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.sink.split:                               ; preds = %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %hostap_monitor_set_type.exit.cleanup.sink.split_crit_edge
  %.str.24.sink = phi ptr [ @.str.18, %hostap_monitor_set_type.exit.cleanup.sink.split_crit_edge ], [ @.str.21, %if.end.cleanup.sink.split_crit_edge ], [ @.str.24, %if.end16.cleanup.sink.split_crit_edge ], [ @.str.24, %lor.lhs.false.cleanup.sink.split_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24.sink) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hostap_get_porttype(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_set_encryption(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prism2_sta_send_mgmt(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prism2_ap_get_sta_qual(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prism2_ap_translate_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__prism2_translate_scan(ptr nocapture noundef readonly %local, ptr noundef %info, ptr noundef %scan, ptr noundef %bss, ptr noundef %current_ev, ptr noundef %end_buf) unnamed_addr #1 align 64 {
entry:
  %iwe = alloca %struct.iw_event, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iwe) #16
  %0 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 2
  %tobool.not = icmp eq ptr %bss, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ssid1 = getelementptr inbounds %struct.hostap_bss_info, ptr %bss, i32 0, i32 5
  %ssid_len2 = getelementptr inbounds %struct.hostap_bss_info, ptr %bss, i32 0, i32 6
  %4 = ptrtoint ptr %ssid_len2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssid_len2, align 4
  %bssid3 = getelementptr inbounds %struct.hostap_bss_info, ptr %bss, i32 0, i32 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ssid5 = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %scan, i32 0, i32 7
  %ssid_len7 = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %scan, i32 0, i32 6
  %6 = ptrtoint ptr %ssid_len7 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %ssid_len7, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %bssid8 = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %scan, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ssid.0 = phi ptr [ %ssid1, %if.then ], [ %ssid5, %if.else ]
  %bssid.0 = phi ptr [ %bssid3, %if.then ], [ %bssid8, %if.else ]
  %ssid_len.0 = phi i32 [ %5, %if.then ], [ %conv, %if.else ]
  %9 = tail call i32 @llvm.umin.i32(i32 %ssid_len.0, i32 32)
  %10 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -29931, ptr %0, align 2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %1, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %sa_data, ptr %bssid.0, i32 6)
  %call = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %current_ev, ptr noundef %end_buf, ptr noundef nonnull %iwe, i32 noundef 20) #16
  %14 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -29925, ptr %0, align 2
  %conv16 = trunc i32 %9 to i16
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv16, ptr %2, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %3, align 2
  %call19 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call, ptr noundef %end_buf, ptr noundef nonnull %iwe, ptr noundef %ssid.0) #16
  %18 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -29945, ptr %0, align 2
  br i1 %tobool.not, label %if.else23, label %if.then22

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %capab_info = getelementptr inbounds %struct.hostap_bss_info, ptr %bss, i32 0, i32 4
  %20 = ptrtoint ptr %capab_info to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %capab_info, align 2
  br label %if.end24

if.else23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %capability = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %scan, i32 0, i32 5
  %22 = ptrtoint ptr %capability to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %capability, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then22
  %capabilities.0 = phi i16 [ %21, %if.then22 ], [ %24, %if.else23 ]
  %conv25 = zext i16 %capabilities.0 to i32
  %and = and i32 %conv25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end24.if.end37_crit_edge, label %if.then27

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %and29 = and i32 %conv25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %. = select i1 %tobool30.not, i32 1, i32 3
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %., ptr %1, align 4
  %call36 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call19, ptr noundef %end_buf, ptr noundef nonnull %iwe, i32 noundef 8) #16
  br label %if.end37

if.end37:                                         ; preds = %if.then27, %if.end24.if.end37_crit_edge
  %current_ev.addr.0 = phi ptr [ %call36, %if.then27 ], [ %call19, %if.end24.if.end37_crit_edge ]
  %26 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -29947, ptr %0, align 2
  %tobool39.not = icmp eq ptr %scan, null
  br i1 %tobool39.not, label %if.else42, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %scan to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %scan, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv41 = zext i16 %30 to i32
  br label %if.end48

if.else42:                                        ; preds = %if.end37
  br i1 %tobool.not, label %if.else42.if.end86_crit_edge, label %if.then44

if.else42.if.end86_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then44:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #18
  %chan45 = getelementptr inbounds %struct.hostap_bss_info, ptr %bss, i32 0, i32 11
  %31 = ptrtoint ptr %chan45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chan45, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.then40
  %chan.0 = phi i32 [ %conv41, %if.then40 ], [ %32, %if.then44 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chan.0)
  %cmp49 = icmp sgt i32 %chan.0, 0
  br i1 %cmp49, label %if.then51, label %if.end48.if.end55_crit_edge

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add nsw i32 %chan.0, -1
  %arrayidx = getelementptr [14 x i32], ptr @freq_list, i32 0, i32 %sub
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %34, 100000
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %1, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %2, align 4
  %call54 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %current_ev.addr.0, ptr noundef %end_buf, ptr noundef nonnull %iwe, i32 noundef 12) #16
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end48.if.end55_crit_edge
  %current_ev.addr.1 = phi ptr [ %call54, %if.then51 ], [ %current_ev.addr.0, %if.end48.if.end55_crit_edge ]
  br i1 %tobool39.not, label %if.end55.if.end86_crit_edge, label %if.then57

if.end55.if.end86_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then57:                                        ; preds = %if.end55
  %37 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -29695, ptr %0, align 2
  %last_scan_type = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 108
  %39 = ptrtoint ptr %last_scan_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %last_scan_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp59 = icmp eq i32 %40, 1
  %sl = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %scan, i32 0, i32 2
  %41 = ptrtoint ptr %sl to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %sl, align 1
  br i1 %cmp59, label %if.then61, label %if.else66

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #18
  %43 = lshr i16 %42, 8
  %conv62 = trunc i16 %43 to i8
  %anl = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %scan, i32 0, i32 1
  %44 = ptrtoint ptr %anl to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %anl, align 1
  %46 = lshr i16 %45, 8
  %conv64 = trunc i16 %46 to i8
  br label %if.end83

if.else66:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #18
  %47 = call i16 @llvm.bswap.i16(i16 %42)
  %conv68 = zext i16 %47 to i32
  %mul69 = mul nuw nsw i32 %conv68, 100
  %div = udiv i32 %mul69, 255
  %48 = trunc i32 %div to i8
  %conv71 = add i8 %48, -100
  %anl74 = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %scan, i32 0, i32 1
  %49 = ptrtoint ptr %anl74 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %anl74, align 1
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %conv75 = zext i16 %51 to i32
  %mul76 = mul nuw nsw i32 %conv75, 100
  %div77 = udiv i32 %mul76, 255
  %52 = trunc i32 %div77 to i8
  %conv80 = add i8 %52, -100
  br label %if.end83

if.end83:                                         ; preds = %if.else66, %if.then61
  %conv71.sink = phi i8 [ %conv62, %if.then61 ], [ %conv71, %if.else66 ]
  %conv80.sink = phi i8 [ %conv64, %if.then61 ], [ %conv80, %if.else66 ]
  %53 = getelementptr inbounds %struct.iw_quality, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv71.sink, ptr %53, align 1
  %55 = ptrtoint ptr %sa_data to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv80.sink, ptr %sa_data, align 2
  %updated = getelementptr inbounds %struct.iw_quality, ptr %1, i32 0, i32 3
  %56 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 30, ptr %updated, align 1
  %call85 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %current_ev.addr.1, ptr noundef %end_buf, ptr noundef nonnull %iwe, i32 noundef 8) #16
  br label %if.end86

if.end86:                                         ; preds = %if.end83, %if.end55.if.end86_crit_edge, %if.else42.if.end86_crit_edge
  %current_ev.addr.2 = phi ptr [ %call85, %if.end83 ], [ %current_ev.addr.1, %if.end55.if.end86_crit_edge ], [ %current_ev.addr.0, %if.else42.if.end86_crit_edge ]
  %57 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -29909, ptr %0, align 2
  %and89 = and i32 %conv25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %.293 = select i1 %tobool90.not, i16 -32768, i16 2048
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %.293, ptr %3, align 2
  %call100 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %current_ev.addr.2, ptr noundef %end_buf, ptr noundef nonnull %iwe, ptr noundef nonnull @.str.47) #16
  br i1 %tobool39.not, label %if.end86.if.end125_crit_edge, label %if.then102

if.end86.if.end125_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end125

if.then102:                                       ; preds = %if.end86
  %60 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -29919, ptr %0, align 2
  %add.ptr = getelementptr i8, ptr %call100, i32 4
  %sup_rates = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %scan, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end113.for.body_crit_edge, %if.then102
  %current_val.0302 = phi ptr [ %add.ptr, %if.then102 ], [ %call119, %if.end113.for.body_crit_edge ]
  %i.0301 = phi i32 [ 0, %if.then102 ], [ %inc, %if.end113.for.body_crit_edge ]
  %arrayidx108 = getelementptr i8, ptr %sup_rates, i32 %i.0301
  %62 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx108, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp110 = icmp eq i8 %63, 0
  br i1 %cmp110, label %for.body.for.end_crit_edge, label %if.end113

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end113:                                        ; preds = %for.body
  %64 = and i8 %63, 127
  %and116 = zext i8 %64 to i32
  %mul117 = mul nuw nsw i32 %and116, 500000
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul117, ptr %1, align 4
  %call119 = call ptr @iwe_stream_add_value(ptr noundef %info, ptr noundef %call100, ptr noundef %current_val.0302, ptr noundef %end_buf, ptr noundef nonnull %iwe, i32 noundef 12) #16
  %inc = add nuw nsw i32 %i.0301, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.end113.for.end_crit_edge, label %if.end113.for.body_crit_edge

if.end113.for.body_crit_edge:                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end113.for.end_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.end113.for.end_crit_edge, %for.body.for.end_crit_edge
  %current_val.0.lcssa = phi ptr [ %current_val.0302, %for.body.for.end_crit_edge ], [ %call119, %if.end113.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %current_val.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call100 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub)
  %cmp121 = icmp sgt i32 %sub.ptr.sub, 4
  %spec.select = select i1 %cmp121, ptr %current_val.0.lcssa, ptr %call100
  br label %if.end125

if.end125:                                        ; preds = %for.end, %if.end86.if.end125_crit_edge
  %current_ev.addr.3 = phi ptr [ %call100, %if.end86.if.end125_crit_edge ], [ %spec.select, %for.end ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 2592, i32 noundef 158) #21
  %tobool127.not = icmp eq ptr %call7.i, null
  %brmerge = or i1 %tobool39.not, %tobool127.not
  br i1 %brmerge, label %if.end125.if.end163_crit_edge, label %if.then129

if.end125.if.end163_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end163

if.then129:                                       ; preds = %if.end125
  %67 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -29694, ptr %0, align 2
  %beacon_interval = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %scan, i32 0, i32 4
  %69 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %beacon_interval, align 1
  %71 = call i16 @llvm.bswap.i16(i16 %70)
  %conv131 = zext i16 %71 to i32
  %call132 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.48, i32 noundef %conv131)
  %call133 = call i32 @strlen(ptr noundef nonnull %call7.i) #24
  %conv134 = trunc i32 %call133 to i16
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv134, ptr %2, align 4
  %call137 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %current_ev.addr.3, ptr noundef %end_buf, ptr noundef nonnull %iwe, ptr noundef nonnull %call7.i) #16
  %73 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -29694, ptr %0, align 2
  %rate = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %scan, i32 0, i32 9
  %75 = ptrtoint ptr %rate to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %rate, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76)
  %conv139 = zext i16 %77 to i32
  %call140 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.49, i32 noundef %conv139)
  %call141 = call i32 @strlen(ptr noundef nonnull %call7.i) #24
  %conv142 = trunc i32 %call141 to i16
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv142, ptr %2, align 4
  %call145 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call137, ptr noundef %end_buf, ptr noundef nonnull %iwe, ptr noundef nonnull %call7.i) #16
  %last_scan_type146 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 108
  %79 = ptrtoint ptr %last_scan_type146 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %last_scan_type146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp147 = icmp ne i32 %80, 1
  %and151 = and i32 %conv25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  %or.cond = select i1 %cmp147, i1 true, i1 %tobool152.not
  br i1 %or.cond, label %if.then129.if.end163_crit_edge, label %if.then153

if.then129.if.end163_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end163

if.then153:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #18
  %81 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 -29694, ptr %0, align 2
  %atim = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %scan, i32 0, i32 10
  %83 = ptrtoint ptr %atim to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %atim, align 1
  %85 = call i16 @llvm.bswap.i16(i16 %84)
  %conv155 = zext i16 %85 to i32
  %call156 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.50, i32 noundef %conv155)
  %call157 = call i32 @strlen(ptr noundef nonnull %call7.i) #24
  %conv158 = trunc i32 %call157 to i16
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv158, ptr %2, align 4
  %call161 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call145, ptr noundef %end_buf, ptr noundef nonnull %iwe, ptr noundef nonnull %call7.i) #16
  br label %if.end163

if.end163:                                        ; preds = %if.then153, %if.then129.if.end163_crit_edge, %if.end125.if.end163_crit_edge
  %current_ev.addr.4 = phi ptr [ %call161, %if.then153 ], [ %call145, %if.then129.if.end163_crit_edge ], [ %current_ev.addr.3, %if.end125.if.end163_crit_edge ]
  call void @kfree(ptr noundef %call7.i) #16
  br i1 %tobool.not, label %if.end163.if.end197_crit_edge, label %land.lhs.true165

if.end163.if.end197_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end197

land.lhs.true165:                                 ; preds = %if.end163
  %wpa_ie_len = getelementptr inbounds %struct.hostap_bss_info, ptr %bss, i32 0, i32 8
  %87 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wpa_ie_len, align 4
  %89 = add i32 %88, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %89)
  %90 = icmp ult i32 %89, 64
  br i1 %90, label %if.then172, label %land.lhs.true165.land.lhs.true182_crit_edge

land.lhs.true165.land.lhs.true182_crit_edge:      ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true182

if.then172:                                       ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #18
  %91 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %92 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -29691, ptr %0, align 2
  %conv175 = trunc i32 %88 to i16
  %93 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv175, ptr %2, align 4
  %wpa_ie = getelementptr inbounds %struct.hostap_bss_info, ptr %bss, i32 0, i32 7
  %call179 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %current_ev.addr.4, ptr noundef %end_buf, ptr noundef nonnull %iwe, ptr noundef %wpa_ie) #16
  br label %land.lhs.true182

land.lhs.true182:                                 ; preds = %if.then172, %land.lhs.true165.land.lhs.true182_crit_edge
  %current_ev.addr.5.ph = phi ptr [ %current_ev.addr.4, %land.lhs.true165.land.lhs.true182_crit_edge ], [ %call179, %if.then172 ]
  %rsn_ie_len = getelementptr inbounds %struct.hostap_bss_info, ptr %bss, i32 0, i32 10
  %94 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rsn_ie_len, align 4
  %96 = add i32 %95, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %96)
  %97 = icmp ult i32 %96, 64
  br i1 %97, label %if.then189, label %land.lhs.true182.if.end197_crit_edge

land.lhs.true182.if.end197_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end197

if.then189:                                       ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #18
  %98 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %99 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 -29691, ptr %0, align 2
  %conv192 = trunc i32 %95 to i16
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv192, ptr %2, align 4
  %rsn_ie = getelementptr inbounds %struct.hostap_bss_info, ptr %bss, i32 0, i32 9
  %call196 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %current_ev.addr.5.ph, ptr noundef %end_buf, ptr noundef nonnull %iwe, ptr noundef %rsn_ie) #16
  br label %if.end197

if.end197:                                        ; preds = %if.then189, %land.lhs.true182.if.end197_crit_edge, %if.end163.if.end197_crit_edge
  %current_ev.addr.6 = phi ptr [ %call196, %if.then189 ], [ %current_ev.addr.5.ph, %land.lhs.true182.if.end197_crit_edge ], [ %current_ev.addr.4, %if.end163.if.end197_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iwe) #16
  ret ptr %current_ev.addr.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_set_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hostap_set_rate(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %basic_rates2 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %basic_rates2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %basic_rates2, align 2
  %tx_rate_control = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %tx_rate_control to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_rate_control, align 4
  %and69 = and i16 %5, %3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and69)
  %tobool.not = icmp eq i16 %and69, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_cmp2(i16 %and69, i16 %3)
  %cmp.not = icmp eq i16 %and69, %3
  %or.cond = select i1 %tobool.not.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %entry.if.end26_crit_edge, label %do.end

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

do.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %dev) #19
  br i1 %tobool.not, label %if.then9, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %tx_rate_control to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_rate_control, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %do.end.if.end_crit_edge
  %basic_rates.0 = phi i16 [ %and69, %do.end.if.end_crit_edge ], [ %7, %if.then9 ]
  %8 = ptrtoint ptr %basic_rates2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %basic_rates.0, ptr %basic_rates2, align 2
  %call15 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64691, i16 noundef zeroext %basic_rates.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end.if.end26_crit_edge, label %do.end20

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %dev) #19
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %if.end.if.end26_crit_edge, %entry.if.end26_crit_edge
  %9 = ptrtoint ptr %tx_rate_control to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_rate_control, align 4
  %call28 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64644, i16 noundef zeroext %10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %if.end26.do.end40_crit_edge

if.end26.do.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end40

lor.lhs.false30:                                  ; preds = %if.end26
  %11 = ptrtoint ptr %tx_rate_control to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tx_rate_control, align 4
  %call32 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64692, i16 noundef zeroext %12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %lor.end, label %lor.lhs.false30.do.end40_crit_edge

lor.lhs.false30.do.end40_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end40

lor.end:                                          ; preds = %lor.lhs.false30
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %13 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_port, align 4
  %call34 = tail call i32 %16(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %lor.end.if.end47_crit_edge, label %lor.end.do.end40_crit_edge

lor.end.do.end40_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end40

lor.end.if.end47_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

do.end40:                                         ; preds = %lor.end.do.end40_crit_edge, %lor.lhs.false30.do.end40_crit_edge, %if.end26.do.end40_crit_edge
  %17 = ptrtoint ptr %tx_rate_control to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tx_rate_control, align 4
  %conv45 = zext i16 %18 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %dev, i32 noundef %conv45) #19
  br label %if.end47

if.end47:                                         ; preds = %do.end40, %lor.end.if.end47_crit_edge
  %19 = phi i32 [ 1, %do.end40 ], [ 0, %lor.end.if.end47_crit_edge ]
  tail call void @hostap_update_rates(ptr noundef %1) #16
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostap_update_rates(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lib80211_crypt_delayed_deinit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lib80211_get_crypto_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prism2_set_genericelement(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %elem, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %add = add i32 %len, 2
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #22
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv = trunc i32 %len to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %call9.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %call9.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i, i32 2
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %elem, i32 %len)
  %generic_elem = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 133
  %5 = ptrtoint ptr %generic_elem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %generic_elem, align 4
  tail call void @kfree(ptr noundef %6) #16
  %7 = ptrtoint ptr %generic_elem to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i, ptr %generic_elem, align 4
  %generic_elem_len = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 134
  %8 = ptrtoint ptr %generic_elem_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %generic_elem_len, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func, align 4
  %set_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %set_rid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_rid, align 4
  %dev5 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev5, align 4
  %call7 = tail call i32 %12(ptr noundef %14, i16 noundef zeroext -952, ptr noundef nonnull %call9.i, i32 noundef %add) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_set_roaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ap_crypt_get_ptrs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostap_handle_sta_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_priv_prism2_param(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #1 align 64 {
entry:
  %val = alloca i16, align 2
  %scan_req = alloca %struct.hfa384x_hostscan_request, align 2
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %extra, align 4
  %add.ptr = getelementptr i32, ptr %extra, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #16
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val, align 2, !annotation !281
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %5 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local1, align 4
  %7 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %1, label %do.end533 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %sw.bb6
    i32 5, label %do.end37
    i32 7, label %sw.bb50
    i32 8, label %sw.bb51
    i32 9, label %sw.bb64
    i32 10, label %sw.bb78
    i32 11, label %sw.bb85
    i32 12, label %sw.bb104
    i32 13, label %sw.bb111
    i32 14, label %sw.bb112
    i32 15, label %sw.bb126
    i32 16, label %sw.bb131
    i32 17, label %sw.bb132
    i32 18, label %sw.bb142
    i32 21, label %sw.bb152
    i32 22, label %sw.bb169
    i32 23, label %sw.bb170
    i32 24, label %sw.bb171
    i32 25, label %sw.bb180
    i32 26, label %sw.bb189
    i32 27, label %sw.bb208
    i32 28, label %sw.bb209
    i32 29, label %sw.bb421
    i32 30, label %sw.bb439
    i32 32, label %sw.bb465
    i32 33, label %sw.bb492
    i32 34, label %sw.bb499
    i32 35, label %sw.bb501
    i32 36, label %sw.bb503
    i32 37, label %sw.bb516
    i32 38, label %sw.bb526
    i32 39, label %sw.bb527
    i32 40, label %sw.bb528
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fw_tx_rate_control = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 38
  %8 = ptrtoint ptr %fw_tx_rate_control to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %fw_tx_rate_control, align 4
  br label %sw.epilog538

sw.bb2:                                           ; preds = %entry
  %conv = trunc i32 %3 to i16
  %call3 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64563, i16 noundef zeroext %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sw.bb2.sw.epilog538_crit_edge

sw.bb2.sw.epilog538_crit_edge:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

lor.lhs.false:                                    ; preds = %sw.bb2
  %func = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func, align 4
  %reset_port = getelementptr inbounds %struct.prism2_helper_functions, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %reset_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset_port, align 4
  %call4 = tail call i32 %12(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %lor.lhs.false.sw.epilog538_crit_edge

lor.lhs.false.sw.epilog538_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %beacon_int = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 34
  %13 = ptrtoint ptr %beacon_int to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %beacon_int, align 4
  br label %sw.epilog538

sw.bb6:                                           ; preds = %entry
  %pseudo_adhoc = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 31
  %14 = ptrtoint ptr %pseudo_adhoc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pseudo_adhoc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %15)
  %cmp = icmp eq i32 %3, %15
  br i1 %cmp, label %sw.bb6.sw.epilog538_crit_edge, label %if.end9

sw.bb6.sw.epilog538_crit_edge:                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end9:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %do.end, label %if.end9.sw.epilog538_crit_edge

if.end9.sw.epilog538_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

do.end:                                           ; preds = %if.end9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %dev, i32 noundef %15, i32 noundef %3) #19
  %16 = ptrtoint ptr %pseudo_adhoc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %3, ptr %pseudo_adhoc, align 4
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 30
  %17 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp19.not = icmp eq i32 %18, 1
  br i1 %cmp19.not, label %if.end22, label %do.end.sw.epilog538_crit_edge

do.end.sw.epilog538_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end22:                                         ; preds = %do.end
  %call23 = tail call zeroext i16 @hostap_get_porttype(ptr noundef %6) #16
  %call24 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64512, i16 noundef zeroext %call23) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.sw.epilog538_crit_edge

if.end22.sw.epilog538_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %func28 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %19 = ptrtoint ptr %func28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %func28, align 4
  %reset_port29 = getelementptr inbounds %struct.prism2_helper_functions, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %reset_port29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset_port29, align 4
  %call30 = tail call i32 %22(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %spec.select = select i1 %tobool31.not, i32 0, i32 -22
  br label %sw.epilog538

do.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp41 = icmp eq i32 %3, 0
  %cond = select i1 %cmp41, ptr @.str.99, ptr @.str.100
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %dev, ptr noundef nonnull %cond) #19
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 8, ptr %val, align 2
  %func44 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %24 = ptrtoint ptr %func44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %func44, align 4
  %cmd = getelementptr inbounds %struct.prism2_helper_functions, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd, align 4
  %not.cmp41 = xor i1 %cmp41, true
  %conv48 = zext i1 %not.cmp41 to i16
  %call49 = call i32 %27(ptr noundef %dev, i16 noundef zeroext 5432, i16 noundef zeroext %conv48, ptr noundef nonnull %val, ptr noundef null) #16
  br label %sw.epilog538

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %frame_dump = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 37
  %28 = ptrtoint ptr %frame_dump to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %3, ptr %frame_dump, align 4
  br label %sw.epilog538

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %29 = icmp ugt i32 %3, 3
  br i1 %29, label %sw.bb51.sw.epilog538_crit_edge, label %if.end58

sw.bb51.sw.epilog538_crit_edge:                   ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end58:                                         ; preds = %sw.bb51
  %ap = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 22
  %30 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ap, align 4
  %cmp59.not = icmp eq ptr %31, null
  br i1 %cmp59.not, label %if.end58.sw.epilog538_crit_edge, label %if.then61

if.end58.sw.epilog538_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  %ap_policy = getelementptr inbounds %struct.ap_data, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %ap_policy to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %3, ptr %ap_policy, align 4
  br label %sw.epilog538

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 604800, i32 %3)
  %33 = icmp ugt i32 %3, 604800
  br i1 %33, label %sw.bb64.sw.epilog538_crit_edge, label %if.end71

sw.bb64.sw.epilog538_crit_edge:                   ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end71:                                         ; preds = %sw.bb64
  %ap72 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 22
  %34 = ptrtoint ptr %ap72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ap72, align 4
  %cmp73.not = icmp eq ptr %35, null
  br i1 %cmp73.not, label %if.end71.sw.epilog538_crit_edge, label %if.then75

if.end71.sw.epilog538_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  %mul = mul nuw nsw i32 %3, 100
  %max_inactivity = getelementptr inbounds %struct.ap_data, ptr %35, i32 0, i32 13
  %36 = ptrtoint ptr %max_inactivity to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %max_inactivity, align 4
  br label %sw.epilog538

sw.bb78:                                          ; preds = %entry
  %ap79 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 22
  %37 = ptrtoint ptr %ap79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ap79, align 4
  %cmp80.not = icmp eq ptr %38, null
  br i1 %cmp80.not, label %sw.bb78.sw.epilog538_crit_edge, label %if.then82

sw.bb78.sw.epilog538_crit_edge:                   ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then82:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #18
  %bridge_packets = getelementptr inbounds %struct.ap_data, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %bridge_packets to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %3, ptr %bridge_packets, align 4
  br label %sw.epilog538

sw.bb85:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %40 = icmp ugt i32 %3, 65535
  br i1 %40, label %sw.bb85.sw.epilog538_crit_edge, label %if.end92

sw.bb85.sw.epilog538_crit_edge:                   ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end92:                                         ; preds = %sw.bb85
  %conv93 = trunc i32 %3 to i16
  %call94 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64528, i16 noundef zeroext %conv93) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %lor.lhs.false96, label %if.end92.sw.epilog538_crit_edge

if.end92.sw.epilog538_crit_edge:                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

lor.lhs.false96:                                  ; preds = %if.end92
  %func97 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %41 = ptrtoint ptr %func97 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %func97, align 4
  %reset_port98 = getelementptr inbounds %struct.prism2_helper_functions, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %reset_port98 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reset_port98, align 4
  %call99 = tail call i32 %44(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.else102, label %lor.lhs.false96.sw.epilog538_crit_edge

lor.lhs.false96.sw.epilog538_crit_edge:           ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.else102:                                       ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #18
  %dtim_period = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 35
  %45 = ptrtoint ptr %dtim_period to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %3, ptr %dtim_period, align 4
  br label %sw.epilog538

sw.bb104:                                         ; preds = %entry
  %ap105 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 22
  %46 = ptrtoint ptr %ap105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ap105, align 4
  %cmp106.not = icmp eq ptr %47, null
  br i1 %cmp106.not, label %sw.bb104.sw.epilog538_crit_edge, label %if.then108

sw.bb104.sw.epilog538_crit_edge:                  ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then108:                                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #18
  %nullfunc_ack = getelementptr inbounds %struct.ap_data, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %nullfunc_ack to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %3, ptr %nullfunc_ack, align 4
  br label %sw.epilog538

sw.bb111:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %wds_max_connections = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 59
  %49 = ptrtoint ptr %wds_max_connections to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %3, ptr %wds_max_connections, align 4
  br label %sw.epilog538

sw.bb112:                                         ; preds = %entry
  %ap113 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 22
  %50 = ptrtoint ptr %ap113 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ap113, align 4
  %cmp114.not = icmp eq ptr %51, null
  br i1 %cmp114.not, label %sw.bb112.sw.epilog538_crit_edge, label %if.then116

sw.bb112.sw.epilog538_crit_edge:                  ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then116:                                       ; preds = %sw.bb112
  %autom_ap_wds = getelementptr inbounds %struct.ap_data, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %autom_ap_wds to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %autom_ap_wds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool118.not = icmp ne i32 %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool120.not = icmp eq i32 %3, 0
  %or.cond723 = select i1 %tobool118.not, i1 true, i1 %tobool120.not
  br i1 %or.cond723, label %if.then116.if.end122_crit_edge, label %if.then121

if.then116.if.end122_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end122

if.then121:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @hostap_add_wds_links(ptr noundef %6) #16
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.then116.if.end122_crit_edge
  %54 = ptrtoint ptr %ap113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ap113, align 4
  %autom_ap_wds124 = getelementptr inbounds %struct.ap_data, ptr %55, i32 0, i32 14
  %56 = ptrtoint ptr %autom_ap_wds124 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %3, ptr %autom_ap_wds124, align 4
  br label %sw.epilog538

sw.bb126:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %auth_algs = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 89
  %57 = ptrtoint ptr %auth_algs to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %3, ptr %auth_algs, align 4
  %call127 = tail call i32 @hostap_set_auth_algs(ptr noundef %6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  %spec.select724 = select i1 %tobool128.not, i32 0, i32 -22
  br label %sw.epilog538

sw.bb131:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %monitor_allow_fcserr = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 67
  %58 = ptrtoint ptr %monitor_allow_fcserr to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %3, ptr %monitor_allow_fcserr, align 4
  br label %sw.epilog538

sw.bb132:                                         ; preds = %entry
  %host_encrypt = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 77
  %59 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %3, ptr %host_encrypt, align 4
  %call133 = tail call i32 @hostap_set_encryption(ptr noundef %6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %lor.lhs.false135, label %sw.bb132.if.then140_crit_edge

sw.bb132.if.then140_crit_edge:                    ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then140

lor.lhs.false135:                                 ; preds = %sw.bb132
  %func136 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %60 = ptrtoint ptr %func136 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %func136, align 4
  %reset_port137 = getelementptr inbounds %struct.prism2_helper_functions, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %reset_port137 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reset_port137, align 4
  %call138 = tail call i32 %63(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %lor.lhs.false135.sw.epilog538_crit_edge, label %lor.lhs.false135.if.then140_crit_edge

lor.lhs.false135.if.then140_crit_edge:            ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then140

lor.lhs.false135.sw.epilog538_crit_edge:          ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then140:                                       ; preds = %lor.lhs.false135.if.then140_crit_edge, %sw.bb132.if.then140_crit_edge
  br label %sw.epilog538

sw.bb142:                                         ; preds = %entry
  %host_decrypt = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 78
  %64 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %3, ptr %host_decrypt, align 4
  %call143 = tail call i32 @hostap_set_encryption(ptr noundef %6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %lor.lhs.false145, label %sw.bb142.if.then150_crit_edge

sw.bb142.if.then150_crit_edge:                    ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then150

lor.lhs.false145:                                 ; preds = %sw.bb142
  %func146 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %65 = ptrtoint ptr %func146 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %func146, align 4
  %reset_port147 = getelementptr inbounds %struct.prism2_helper_functions, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %reset_port147 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reset_port147, align 4
  %call148 = tail call i32 %68(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %lor.lhs.false145.sw.epilog538_crit_edge, label %lor.lhs.false145.if.then150_crit_edge

lor.lhs.false145.if.then150_crit_edge:            ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then150

lor.lhs.false145.sw.epilog538_crit_edge:          ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then150:                                       ; preds = %lor.lhs.false145.if.then150_crit_edge, %sw.bb142.if.then150_crit_edge
  br label %sw.epilog538

sw.bb152:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %69 = icmp ugt i32 %3, 2
  br i1 %69, label %sw.bb152.sw.epilog538_crit_edge, label %if.end159

sw.bb152.sw.epilog538_crit_edge:                  ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end159:                                        ; preds = %sw.bb152
  %host_roaming = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 104
  %70 = ptrtoint ptr %host_roaming to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %3, ptr %host_roaming, align 4
  %call160 = tail call i32 @hostap_set_roaming(ptr noundef %6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %lor.lhs.false162, label %if.end159.if.then167_crit_edge

if.end159.if.then167_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then167

lor.lhs.false162:                                 ; preds = %if.end159
  %func163 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %71 = ptrtoint ptr %func163 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %func163, align 4
  %reset_port164 = getelementptr inbounds %struct.prism2_helper_functions, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %reset_port164 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reset_port164, align 4
  %call165 = tail call i32 %74(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %lor.lhs.false162.sw.epilog538_crit_edge, label %lor.lhs.false162.if.then167_crit_edge

lor.lhs.false162.if.then167_crit_edge:            ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then167

lor.lhs.false162.sw.epilog538_crit_edge:          ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then167:                                       ; preds = %lor.lhs.false162.if.then167_crit_edge, %if.end159.if.then167_crit_edge
  br label %sw.epilog538

sw.bb169:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bcrx_sta_key = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 81
  %75 = ptrtoint ptr %bcrx_sta_key to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %3, ptr %bcrx_sta_key, align 4
  br label %sw.epilog538

sw.bb170:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ieee_802_1x = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 84
  %76 = ptrtoint ptr %ieee_802_1x to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %3, ptr %ieee_802_1x, align 4
  br label %sw.epilog538

sw.bb171:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %77 = icmp ugt i32 %3, 3
  br i1 %77, label %sw.bb171.sw.epilog538_crit_edge, label %if.end178

sw.bb171.sw.epilog538_crit_edge:                  ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end178:                                        ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #18
  %antsel_tx = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 85
  %78 = ptrtoint ptr %antsel_tx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %3, ptr %antsel_tx, align 4
  %call179 = tail call i32 @hostap_set_antsel(ptr noundef %6) #16
  br label %sw.epilog538

sw.bb180:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %79 = icmp ugt i32 %3, 3
  br i1 %79, label %sw.bb180.sw.epilog538_crit_edge, label %if.end187

sw.bb180.sw.epilog538_crit_edge:                  ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end187:                                        ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #18
  %antsel_rx = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 86
  %80 = ptrtoint ptr %antsel_rx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %3, ptr %antsel_rx, align 4
  %call188 = tail call i32 @hostap_set_antsel(ptr noundef %6) #16
  br label %sw.epilog538

sw.bb189:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch734 = icmp ult i32 %3, 4
  br i1 %switch734, label %if.end202, label %sw.bb189.sw.epilog538_crit_edge

sw.bb189.sw.epilog538_crit_edge:                  ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end202:                                        ; preds = %sw.bb189
  %monitor_type = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 66
  %81 = ptrtoint ptr %monitor_type to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %3, ptr %monitor_type, align 4
  %iw_mode203 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 30
  %82 = ptrtoint ptr %iw_mode203 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %iw_mode203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %83)
  %cmp204 = icmp eq i32 %83, 6
  br i1 %cmp204, label %if.then206, label %if.end202.sw.epilog538_crit_edge

if.end202.sw.epilog538_crit_edge:                 ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then206:                                       ; preds = %if.end202
  %ddev.i = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 6
  %84 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ddev.i, align 4
  %cmp.i = icmp eq ptr %85, null
  br i1 %cmp.i, label %if.then206.sw.epilog538_crit_edge, label %if.end.i

if.then206.sw.epilog538_crit_edge:                ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end.i:                                         ; preds = %if.then206
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %86 = icmp ult i32 %switch.tableidx, 3
  br i1 %86, label %switch.lookup, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.prism2_ioctl_priv_prism2_param, i32 0, i32 %switch.tableidx
  %87 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %87)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %switch.lookup, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i16 [ %switch.load, %switch.lookup ], [ 801, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 32
  %88 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %.sink.i, ptr %type.i, align 16
  br label %sw.epilog538

sw.bb208:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %wds_type = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 61
  %89 = ptrtoint ptr %wds_type to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %3, ptr %wds_type, align 4
  br label %sw.epilog538

sw.bb209:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %scan_req) #16
  %90 = getelementptr inbounds i8, ptr %scan_req, i32 4
  %91 = call ptr @memset(ptr %90, i32 0, i32 34)
  %92 = ptrtoint ptr %scan_req to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -193, ptr %scan_req, align 2
  %switch.tableidx740 = add i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx740)
  %93 = icmp ult i32 %switch.tableidx740, 3
  br i1 %93, label %switch.lookup739, label %sw.bb209.sw.epilog_crit_edge

sw.bb209.sw.epilog_crit_edge:                     ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

switch.lookup739:                                 ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep741 = getelementptr inbounds [3 x i16], ptr @switch.table.prism2_ioctl_priv_prism2_param.144, i32 0, i32 %switch.tableidx740
  %94 = ptrtoint ptr %switch.gep741 to i32
  call void @__asan_load2_noabort(i32 %94)
  %switch.load742 = load i16, ptr %switch.gep741, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup739, %sw.bb209.sw.epilog_crit_edge
  %rate.0 = phi i16 [ 256, %sw.bb209.sw.epilog_crit_edge ], [ %switch.load742, %switch.lookup739 ]
  %txrate = getelementptr inbounds %struct.hfa384x_hostscan_request, ptr %scan_req, i32 0, i32 1
  %95 = ptrtoint ptr %txrate to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %rate.0, ptr %txrate, align 2
  %iw_mode214 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 30
  %96 = ptrtoint ptr %iw_mode214 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %iw_mode214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %97)
  %cmp215 = icmp eq i32 %97, 3
  br i1 %cmp215, label %if.then217, label %sw.epilog.if.end232_crit_edge

sw.epilog.if.end232_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end232

if.then217:                                       ; preds = %sw.epilog
  %call218 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64512, i16 noundef zeroext 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %lor.lhs.false220, label %if.then217.do.end228_crit_edge

if.then217.do.end228_crit_edge:                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end228

lor.lhs.false220:                                 ; preds = %if.then217
  %func221 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %98 = ptrtoint ptr %func221 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %func221, align 4
  %reset_port222 = getelementptr inbounds %struct.prism2_helper_functions, ptr %99, i32 0, i32 11
  %100 = ptrtoint ptr %reset_port222 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reset_port222, align 4
  %call223 = tail call i32 %101(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %lor.lhs.false220.if.end232_crit_edge, label %lor.lhs.false220.do.end228_crit_edge

lor.lhs.false220.do.end228_crit_edge:             ; preds = %lor.lhs.false220
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end228

lor.lhs.false220.if.end232_crit_edge:             ; preds = %lor.lhs.false220
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end232

do.end228:                                        ; preds = %lor.lhs.false220.do.end228_crit_edge, %if.then217.do.end228_crit_edge
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #19
  br label %if.end232

if.end232:                                        ; preds = %do.end228, %lor.lhs.false220.if.end232_crit_edge, %sw.epilog.if.end232_crit_edge
  %func233 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %102 = ptrtoint ptr %func233 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %func233, align 4
  %set_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %103, i32 0, i32 6
  %104 = ptrtoint ptr %set_rid to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %set_rid, align 4
  %call234 = call i32 %105(ptr noundef %dev, i16 noundef zeroext -795, ptr noundef nonnull %scan_req, i32 noundef 38) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.end232.if.end242_crit_edge, label %do.end239

if.end232.if.end242_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end242

do.end239:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #18
  %call241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #19
  br label %if.end242

if.end242:                                        ; preds = %do.end239, %if.end232.if.end242_crit_edge
  %ret.0 = phi i32 [ -22, %do.end239 ], [ 0, %if.end232.if.end242_crit_edge ]
  %106 = ptrtoint ptr %iw_mode214 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %iw_mode214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %cmp244 = icmp eq i32 %107, 3
  br i1 %cmp244, label %if.then246, label %if.end242.if.end420_crit_edge

if.end242.if.end420_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end420

if.then246:                                       ; preds = %if.end242
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #16
  %108 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %109 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %110 = getelementptr inbounds i8, ptr %__wait, i32 12
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 8)
  store i64 -1, ptr %110, align 4
  %112 = call i32 @llvm.read_register.i32(metadata !271) #16
  %and.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %task, align 8
  %116 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %__wait, align 4
  %117 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %115, ptr %108, align 4
  %118 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @default_wake_function, ptr %109, align 4
  %hostscan_wq = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 114
  call void @add_wait_queue(ptr noundef %hostscan_wq, ptr noundef nonnull %__wait) #16
  br label %__here

__here:                                           ; preds = %if.then246
  %119 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 212
  %121 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 ptrtoint (ptr blockaddress(@prism2_ioctl_priv_prism2_param, %__here) to i32), ptr %task_state_change, align 4
  %122 = load ptr, ptr %task, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 1, ptr %122, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !283
  %call317 = call i32 @schedule_timeout(i32 noundef 100) #16
  %124 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %stack.i.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %127, align 4
  %130 = and i32 %129, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.i = icmp eq i32 %130, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %__here.__here375_crit_edge, !prof !284

__here.__here375_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here375

signal_pending.exit:                              ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %127, align 4
  %and1.i.i.i.i.i = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool321.not = icmp eq i32 %and1.i.i.i.i.i, 0
  %spec.select738 = select i1 %tobool321.not, i32 %ret.0, i32 -4
  br label %__here375

__here375:                                        ; preds = %signal_pending.exit, %__here.__here375_crit_edge
  %133 = phi i32 [ -4, %__here.__here375_crit_edge ], [ %spec.select738, %signal_pending.exit ]
  %task_state_change379 = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 212
  %134 = ptrtoint ptr %task_state_change379 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 ptrtoint (ptr blockaddress(@prism2_ioctl_priv_prism2_param, %__here375) to i32), ptr %task_state_change379, align 4
  %135 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %task, align 8
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile i32 0, ptr %136, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !285
  call void @remove_wait_queue(ptr noundef %hostscan_wq, ptr noundef nonnull %__wait) #16
  %call406 = call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64512, i16 noundef zeroext 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call406)
  %tobool407.not = icmp eq i32 %call406, 0
  br i1 %tobool407.not, label %lor.lhs.false408, label %__here375.do.end416_crit_edge

__here375.do.end416_crit_edge:                    ; preds = %__here375
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end416

lor.lhs.false408:                                 ; preds = %__here375
  %138 = ptrtoint ptr %func233 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %func233, align 4
  %reset_port410 = getelementptr inbounds %struct.prism2_helper_functions, ptr %139, i32 0, i32 11
  %140 = ptrtoint ptr %reset_port410 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reset_port410, align 4
  %call411 = call i32 %141(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411)
  %tobool412.not = icmp eq i32 %call411, 0
  br i1 %tobool412.not, label %lor.lhs.false408.if.end419_crit_edge, label %lor.lhs.false408.do.end416_crit_edge

lor.lhs.false408.do.end416_crit_edge:             ; preds = %lor.lhs.false408
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end416

lor.lhs.false408.if.end419_crit_edge:             ; preds = %lor.lhs.false408
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end419

do.end416:                                        ; preds = %lor.lhs.false408.do.end416_crit_edge, %__here375.do.end416_crit_edge
  %call418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #19
  br label %if.end419

if.end419:                                        ; preds = %do.end416, %lor.lhs.false408.if.end419_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #16
  br label %if.end420

if.end420:                                        ; preds = %if.end419, %if.end242.if.end420_crit_edge
  %ret.2 = phi i32 [ %133, %if.end419 ], [ %ret.0, %if.end242.if.end420_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %scan_req) #16
  br label %sw.epilog538

sw.bb421:                                         ; preds = %entry
  %passive_scan_interval = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 116
  %142 = ptrtoint ptr %passive_scan_interval to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %3, ptr %passive_scan_interval, align 4
  %passive_scan_timer = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 115
  %pprev.i.i = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 115, i32 0, i32 1
  %143 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %144, null
  br i1 %tobool.not.i.i.not, label %sw.bb421.if.end427_crit_edge, label %if.then424

sw.bb421.if.end427_crit_edge:                     ; preds = %sw.bb421
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end427

if.then424:                                       ; preds = %sw.bb421
  call void @__sanitizer_cov_trace_pc() #18
  %call426 = tail call i32 @del_timer(ptr noundef %passive_scan_timer) #16
  br label %if.end427

if.end427:                                        ; preds = %if.then424, %sw.bb421.if.end427_crit_edge
  %145 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21474835, i32 %145)
  %146 = icmp ult i32 %145, 21474835
  br i1 %146, label %if.then433, label %if.end427.sw.epilog538_crit_edge

if.end427.sw.epilog538_crit_edge:                 ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then433:                                       ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %147 = load volatile i32, ptr @jiffies, align 128
  %148 = ptrtoint ptr %passive_scan_interval to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %passive_scan_interval, align 4
  %mul435 = mul i32 %149, 100
  %add = add i32 %mul435, %147
  %expires = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 115, i32 1
  %150 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %passive_scan_timer) #16
  br label %sw.epilog538

sw.bb439:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %151 = icmp ugt i32 %3, 3
  br i1 %151, label %sw.bb439.sw.epilog538_crit_edge, label %if.end446

sw.bb439.sw.epilog538_crit_edge:                  ; preds = %sw.bb439
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.end446:                                        ; preds = %sw.bb439
  %enh_sec = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 90
  %152 = ptrtoint ptr %enh_sec to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %3, ptr %enh_sec, align 4
  %conv448 = trunc i32 %3 to i16
  %call449 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64579, i16 noundef zeroext %conv448) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call449)
  %tobool450.not = icmp eq i32 %call449, 0
  br i1 %tobool450.not, label %lor.lhs.false451, label %if.end446.do.end459_crit_edge

if.end446.do.end459_crit_edge:                    ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end459

lor.lhs.false451:                                 ; preds = %if.end446
  %func452 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %153 = ptrtoint ptr %func452 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %func452, align 4
  %reset_port453 = getelementptr inbounds %struct.prism2_helper_functions, ptr %154, i32 0, i32 11
  %155 = ptrtoint ptr %reset_port453 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %reset_port453, align 4
  %call454 = tail call i32 %156(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call454)
  %tobool455.not = icmp eq i32 %call454, 0
  br i1 %tobool455.not, label %lor.lhs.false451.sw.epilog538_crit_edge, label %lor.lhs.false451.do.end459_crit_edge

lor.lhs.false451.do.end459_crit_edge:             ; preds = %lor.lhs.false451
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end459

lor.lhs.false451.sw.epilog538_crit_edge:          ; preds = %lor.lhs.false451
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

do.end459:                                        ; preds = %lor.lhs.false451.do.end459_crit_edge, %if.end446.do.end459_crit_edge
  %call463 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %dev) #19
  br label %sw.epilog538

sw.bb465:                                         ; preds = %entry
  %tx_rate_control = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 39
  %157 = ptrtoint ptr %tx_rate_control to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %tx_rate_control, align 4
  %conv466 = zext i16 %158 to i32
  %and = and i32 %3, %conv466
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %3)
  %cmp467.not = icmp ne i32 %and, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp470 = icmp eq i32 %3, 0
  %or.cond731 = or i1 %cmp470, %cmp467.not
  br i1 %or.cond731, label %do.end475, label %if.end480

do.end475:                                        ; preds = %sw.bb465
  call void @__sanitizer_cov_trace_pc() #18
  %call479 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %dev) #19
  br label %sw.epilog538

if.end480:                                        ; preds = %sw.bb465
  %conv481 = trunc i32 %3 to i16
  %basic_rates = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 40
  %159 = ptrtoint ptr %basic_rates to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv481, ptr %basic_rates, align 2
  %call483 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64691, i16 noundef zeroext %conv481) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call483)
  %tobool484.not = icmp eq i32 %call483, 0
  br i1 %tobool484.not, label %lor.lhs.false485, label %if.end480.if.then490_crit_edge

if.end480.if.then490_crit_edge:                   ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then490

lor.lhs.false485:                                 ; preds = %if.end480
  %func486 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %160 = ptrtoint ptr %func486 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %func486, align 4
  %reset_port487 = getelementptr inbounds %struct.prism2_helper_functions, ptr %161, i32 0, i32 11
  %162 = ptrtoint ptr %reset_port487 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %reset_port487, align 4
  %call488 = tail call i32 %163(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call488)
  %tobool489.not = icmp eq i32 %call488, 0
  br i1 %tobool489.not, label %lor.lhs.false485.sw.epilog538_crit_edge, label %lor.lhs.false485.if.then490_crit_edge

lor.lhs.false485.if.then490_crit_edge:            ; preds = %lor.lhs.false485
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then490

lor.lhs.false485.sw.epilog538_crit_edge:          ; preds = %lor.lhs.false485
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then490:                                       ; preds = %lor.lhs.false485.if.then490_crit_edge, %if.end480.if.then490_crit_edge
  br label %sw.epilog538

sw.bb492:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv493 = trunc i32 %3 to i16
  %tx_rate_control494 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 39
  %164 = ptrtoint ptr %tx_rate_control494 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv493, ptr %tx_rate_control494, align 4
  %call495 = tail call fastcc i32 @hostap_set_rate(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495)
  %tobool496.not = icmp eq i32 %call495, 0
  %spec.select732 = select i1 %tobool496.not, i32 0, i32 -22
  br label %sw.epilog538

sw.bb499:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call500 = tail call i32 @hostap_set_hostapd(ptr noundef %6, i32 noundef %3, i32 noundef 1) #16
  br label %sw.epilog538

sw.bb501:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call502 = tail call i32 @hostap_set_hostapd_sta(ptr noundef %6, i32 noundef %3, i32 noundef 1) #16
  br label %sw.epilog538

sw.bb503:                                         ; preds = %entry
  %wpa = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 130
  %165 = ptrtoint ptr %wpa to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %3, ptr %wpa, align 4
  %sta_fw_ver = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 95
  %166 = ptrtoint ptr %sta_fw_ver to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %sta_fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67328, i32 %167)
  %cmp504 = icmp ult i32 %167, 67328
  br i1 %cmp504, label %sw.bb503.sw.epilog538_crit_edge, label %if.else507

sw.bb503.sw.epilog538_crit_edge:                  ; preds = %sw.bb503
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.else507:                                       ; preds = %sw.bb503
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool508.not = icmp ne i32 %3, 0
  %conv510 = zext i1 %tobool508.not to i16
  %call511 = tail call i32 @hostap_set_word(ptr noundef %dev, i32 noundef 64699, i16 noundef zeroext %conv510) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call511)
  %tobool512.not = icmp eq i32 %call511, 0
  %spec.select733 = select i1 %tobool512.not, i32 0, i32 -22
  br label %sw.epilog538

sw.bb516:                                         ; preds = %entry
  %privacy_invoked = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 79
  %168 = ptrtoint ptr %privacy_invoked to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %3, ptr %privacy_invoked, align 4
  %call517 = tail call i32 @hostap_set_encryption(ptr noundef %6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call517)
  %tobool518.not = icmp eq i32 %call517, 0
  br i1 %tobool518.not, label %lor.lhs.false519, label %sw.bb516.if.then524_crit_edge

sw.bb516.if.then524_crit_edge:                    ; preds = %sw.bb516
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then524

lor.lhs.false519:                                 ; preds = %sw.bb516
  %func520 = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 92
  %169 = ptrtoint ptr %func520 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %func520, align 4
  %reset_port521 = getelementptr inbounds %struct.prism2_helper_functions, ptr %170, i32 0, i32 11
  %171 = ptrtoint ptr %reset_port521 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %reset_port521, align 4
  %call522 = tail call i32 %172(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call522)
  %tobool523.not = icmp eq i32 %call522, 0
  br i1 %tobool523.not, label %lor.lhs.false519.sw.epilog538_crit_edge, label %lor.lhs.false519.if.then524_crit_edge

lor.lhs.false519.if.then524_crit_edge:            ; preds = %lor.lhs.false519
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then524

lor.lhs.false519.sw.epilog538_crit_edge:          ; preds = %lor.lhs.false519
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog538

if.then524:                                       ; preds = %lor.lhs.false519.if.then524_crit_edge, %sw.bb516.if.then524_crit_edge
  br label %sw.epilog538

sw.bb526:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %tkip_countermeasures = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 131
  %173 = ptrtoint ptr %tkip_countermeasures to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %3, ptr %tkip_countermeasures, align 4
  br label %sw.epilog538

sw.bb527:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %drop_unencrypted = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 132
  %174 = ptrtoint ptr %drop_unencrypted to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %3, ptr %drop_unencrypted, align 4
  br label %sw.epilog538

sw.bb528:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv529 = trunc i32 %3 to i16
  %scan_channel_mask = getelementptr inbounds %struct.local_info, ptr %6, i32 0, i32 27
  %175 = ptrtoint ptr %scan_channel_mask to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv529, ptr %scan_channel_mask, align 2
  br label %sw.epilog538

do.end533:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call537 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %dev, i32 noundef %1) #19
  br label %sw.epilog538

sw.epilog538:                                     ; preds = %do.end533, %sw.bb528, %sw.bb527, %sw.bb526, %if.then524, %lor.lhs.false519.sw.epilog538_crit_edge, %if.else507, %sw.bb503.sw.epilog538_crit_edge, %sw.bb501, %sw.bb499, %sw.bb492, %if.then490, %lor.lhs.false485.sw.epilog538_crit_edge, %do.end475, %do.end459, %lor.lhs.false451.sw.epilog538_crit_edge, %sw.bb439.sw.epilog538_crit_edge, %if.then433, %if.end427.sw.epilog538_crit_edge, %if.end420, %sw.bb208, %cleanup.sink.split.i, %if.then206.sw.epilog538_crit_edge, %if.end202.sw.epilog538_crit_edge, %sw.bb189.sw.epilog538_crit_edge, %if.end187, %sw.bb180.sw.epilog538_crit_edge, %if.end178, %sw.bb171.sw.epilog538_crit_edge, %sw.bb170, %sw.bb169, %if.then167, %lor.lhs.false162.sw.epilog538_crit_edge, %sw.bb152.sw.epilog538_crit_edge, %if.then150, %lor.lhs.false145.sw.epilog538_crit_edge, %if.then140, %lor.lhs.false135.sw.epilog538_crit_edge, %sw.bb131, %sw.bb126, %if.end122, %sw.bb112.sw.epilog538_crit_edge, %sw.bb111, %if.then108, %sw.bb104.sw.epilog538_crit_edge, %if.else102, %lor.lhs.false96.sw.epilog538_crit_edge, %if.end92.sw.epilog538_crit_edge, %sw.bb85.sw.epilog538_crit_edge, %if.then82, %sw.bb78.sw.epilog538_crit_edge, %if.then75, %if.end71.sw.epilog538_crit_edge, %sw.bb64.sw.epilog538_crit_edge, %if.then61, %if.end58.sw.epilog538_crit_edge, %sw.bb51.sw.epilog538_crit_edge, %sw.bb50, %do.end37, %if.end27, %if.end22.sw.epilog538_crit_edge, %do.end.sw.epilog538_crit_edge, %if.end9.sw.epilog538_crit_edge, %sw.bb6.sw.epilog538_crit_edge, %if.else, %lor.lhs.false.sw.epilog538_crit_edge, %sw.bb2.sw.epilog538_crit_edge, %sw.bb
  %ret.3 = phi i32 [ -95, %do.end533 ], [ 0, %sw.bb528 ], [ 0, %sw.bb527 ], [ 0, %sw.bb526 ], [ -22, %if.then524 ], [ 0, %lor.lhs.false519.sw.epilog538_crit_edge ], [ %call502, %sw.bb501 ], [ %call500, %sw.bb499 ], [ -22, %do.end475 ], [ -22, %if.then490 ], [ 0, %lor.lhs.false485.sw.epilog538_crit_edge ], [ -95, %do.end459 ], [ 0, %lor.lhs.false451.sw.epilog538_crit_edge ], [ 0, %if.then433 ], [ 0, %if.end427.sw.epilog538_crit_edge ], [ %ret.2, %if.end420 ], [ 0, %sw.bb208 ], [ 0, %if.end202.sw.epilog538_crit_edge ], [ 0, %if.end187 ], [ 0, %if.end178 ], [ 0, %sw.bb170 ], [ 0, %sw.bb169 ], [ -22, %if.then167 ], [ 0, %lor.lhs.false162.sw.epilog538_crit_edge ], [ -22, %if.then150 ], [ 0, %lor.lhs.false145.sw.epilog538_crit_edge ], [ -22, %if.then140 ], [ 0, %lor.lhs.false135.sw.epilog538_crit_edge ], [ 0, %sw.bb131 ], [ 0, %if.end122 ], [ 0, %sw.bb112.sw.epilog538_crit_edge ], [ 0, %sw.bb111 ], [ 0, %if.then108 ], [ 0, %sw.bb104.sw.epilog538_crit_edge ], [ 0, %if.else102 ], [ 0, %if.then82 ], [ 0, %sw.bb78.sw.epilog538_crit_edge ], [ 0, %if.then75 ], [ 0, %if.end71.sw.epilog538_crit_edge ], [ 0, %if.then61 ], [ 0, %if.end58.sw.epilog538_crit_edge ], [ 0, %sw.bb50 ], [ 0, %do.end37 ], [ 0, %sw.bb6.sw.epilog538_crit_edge ], [ 0, %do.end.sw.epilog538_crit_edge ], [ 0, %if.else ], [ 0, %sw.bb ], [ -22, %lor.lhs.false.sw.epilog538_crit_edge ], [ -22, %sw.bb2.sw.epilog538_crit_edge ], [ -22, %if.end9.sw.epilog538_crit_edge ], [ -95, %if.end22.sw.epilog538_crit_edge ], [ %spec.select, %if.end27 ], [ -22, %sw.bb51.sw.epilog538_crit_edge ], [ -22, %sw.bb64.sw.epilog538_crit_edge ], [ -22, %sw.bb85.sw.epilog538_crit_edge ], [ -22, %lor.lhs.false96.sw.epilog538_crit_edge ], [ -22, %if.end92.sw.epilog538_crit_edge ], [ %spec.select724, %sw.bb126 ], [ -22, %sw.bb152.sw.epilog538_crit_edge ], [ -22, %sw.bb171.sw.epilog538_crit_edge ], [ -22, %sw.bb180.sw.epilog538_crit_edge ], [ -22, %sw.bb189.sw.epilog538_crit_edge ], [ -22, %sw.bb439.sw.epilog538_crit_edge ], [ %spec.select732, %sw.bb492 ], [ -95, %sw.bb503.sw.epilog538_crit_edge ], [ %spec.select733, %if.else507 ], [ 0, %if.then206.sw.epilog538_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #16
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_priv_get_prism2_param(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %3, label %do.end [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %entry.sw.epilog_crit_edge
    i32 7, label %sw.bb5
    i32 8, label %sw.bb6
    i32 9, label %sw.bb8
    i32 10, label %sw.bb15
    i32 11, label %sw.bb22
    i32 12, label %sw.bb23
    i32 13, label %sw.bb30
    i32 14, label %sw.bb31
    i32 15, label %sw.bb38
    i32 16, label %sw.bb39
    i32 17, label %sw.bb40
    i32 18, label %sw.bb41
    i32 21, label %sw.bb42
    i32 22, label %sw.bb43
    i32 23, label %sw.bb44
    i32 24, label %sw.bb45
    i32 25, label %sw.bb46
    i32 26, label %sw.bb47
    i32 27, label %sw.bb48
    i32 28, label %entry.sw.epilog_crit_edge145
    i32 29, label %sw.bb50
    i32 30, label %sw.bb51
    i32 32, label %sw.bb52
    i32 33, label %sw.bb53
    i32 34, label %sw.bb55
    i32 35, label %sw.bb56
    i32 36, label %sw.bb57
    i32 37, label %sw.bb62
    i32 38, label %sw.bb63
    i32 39, label %sw.bb64
    i32 40, label %sw.bb65
  ]

entry.sw.epilog_crit_edge145:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fw_tx_rate_control = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 38
  %5 = ptrtoint ptr %fw_tx_rate_control to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_tx_rate_control, align 4
  %7 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %extra, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %beacon_int = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %beacon_int, align 4
  %10 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %extra, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pseudo_adhoc = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 31
  %11 = ptrtoint ptr %pseudo_adhoc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pseudo_adhoc, align 4
  %13 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %extra, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %frame_dump = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 37
  %14 = ptrtoint ptr %frame_dump to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_dump, align 4
  %16 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %extra, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %ap = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ap, align 4
  %cmp.not = icmp eq ptr %18, null
  br i1 %cmp.not, label %sw.bb6.sw.epilog_crit_edge, label %if.then

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #18
  %ap_policy = getelementptr inbounds %struct.ap_data, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %ap_policy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ap_policy, align 4
  %21 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %extra, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %ap9 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %ap9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ap9, align 4
  %cmp10.not = icmp eq ptr %23, null
  br i1 %cmp10.not, label %sw.bb8.sw.epilog_crit_edge, label %if.then11

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then11:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #18
  %max_inactivity = getelementptr inbounds %struct.ap_data, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %max_inactivity to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_inactivity, align 4
  %div = udiv i32 %25, 100
  %26 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div, ptr %extra, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %ap16 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %27 = ptrtoint ptr %ap16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ap16, align 4
  %cmp17.not = icmp eq ptr %28, null
  br i1 %cmp17.not, label %sw.bb15.sw.epilog_crit_edge, label %if.then18

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #18
  %bridge_packets = getelementptr inbounds %struct.ap_data, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %bridge_packets to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bridge_packets, align 4
  %31 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %extra, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dtim_period = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 35
  %32 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dtim_period, align 4
  %34 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %extra, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %ap24 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %35 = ptrtoint ptr %ap24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ap24, align 4
  %cmp25.not = icmp eq ptr %36, null
  br i1 %cmp25.not, label %sw.bb23.sw.epilog_crit_edge, label %if.then26

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #18
  %nullfunc_ack = getelementptr inbounds %struct.ap_data, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %nullfunc_ack to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nullfunc_ack, align 4
  %39 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %extra, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %wds_max_connections = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 59
  %40 = ptrtoint ptr %wds_max_connections to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wds_max_connections, align 4
  %42 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %extra, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %ap32 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %43 = ptrtoint ptr %ap32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ap32, align 4
  %cmp33.not = icmp eq ptr %44, null
  br i1 %cmp33.not, label %sw.bb31.sw.epilog_crit_edge, label %if.then34

sw.bb31.sw.epilog_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then34:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #18
  %autom_ap_wds = getelementptr inbounds %struct.ap_data, ptr %44, i32 0, i32 14
  %45 = ptrtoint ptr %autom_ap_wds to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %autom_ap_wds, align 4
  %47 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %extra, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %auth_algs = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 89
  %48 = ptrtoint ptr %auth_algs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %auth_algs, align 4
  %50 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %extra, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %monitor_allow_fcserr = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 67
  %51 = ptrtoint ptr %monitor_allow_fcserr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %monitor_allow_fcserr, align 4
  %53 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %extra, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %host_encrypt = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 77
  %54 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %host_encrypt, align 4
  %56 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %extra, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %host_decrypt = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 78
  %57 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %host_decrypt, align 4
  %59 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %extra, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %host_roaming = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 104
  %60 = ptrtoint ptr %host_roaming to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %host_roaming, align 4
  %62 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %extra, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bcrx_sta_key = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 81
  %63 = ptrtoint ptr %bcrx_sta_key to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bcrx_sta_key, align 4
  %65 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %extra, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ieee_802_1x = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 84
  %66 = ptrtoint ptr %ieee_802_1x to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ieee_802_1x, align 4
  %68 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %extra, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %antsel_tx = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 85
  %69 = ptrtoint ptr %antsel_tx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %antsel_tx, align 4
  %71 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %extra, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %antsel_rx = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 86
  %72 = ptrtoint ptr %antsel_rx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %antsel_rx, align 4
  %74 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %extra, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %monitor_type = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 66
  %75 = ptrtoint ptr %monitor_type to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %monitor_type, align 4
  %77 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %extra, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %wds_type = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 61
  %78 = ptrtoint ptr %wds_type to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wds_type, align 4
  %80 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %extra, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %passive_scan_interval = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 116
  %81 = ptrtoint ptr %passive_scan_interval to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %passive_scan_interval, align 4
  %83 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %extra, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %enh_sec = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 90
  %84 = ptrtoint ptr %enh_sec to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %enh_sec, align 4
  %86 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %extra, align 4
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %basic_rates = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 40
  %87 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %basic_rates, align 2
  %conv = zext i16 %88 to i32
  %89 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv, ptr %extra, align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %tx_rate_control = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 39
  %90 = ptrtoint ptr %tx_rate_control to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %tx_rate_control, align 4
  %conv54 = zext i16 %91 to i32
  %92 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv54, ptr %extra, align 4
  br label %sw.epilog

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %hostapd = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 68
  %93 = ptrtoint ptr %hostapd to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hostapd, align 4
  %95 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %extra, align 4
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %hostapd_sta = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 69
  %96 = ptrtoint ptr %hostapd_sta to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hostapd_sta, align 4
  %98 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %extra, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sta_fw_ver = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 95
  %99 = ptrtoint ptr %sta_fw_ver to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sta_fw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67328, i32 %100)
  %cmp58 = icmp ult i32 %100, 67328
  %spec.select = select i1 %cmp58, i32 -95, i32 0
  %wpa = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 130
  %101 = ptrtoint ptr %wpa to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %wpa, align 4
  %103 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %extra, align 4
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %privacy_invoked = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 79
  %104 = ptrtoint ptr %privacy_invoked to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %privacy_invoked, align 4
  %106 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %extra, align 4
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %tkip_countermeasures = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 131
  %107 = ptrtoint ptr %tkip_countermeasures to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tkip_countermeasures, align 4
  %109 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %extra, align 4
  br label %sw.epilog

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %drop_unencrypted = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 132
  %110 = ptrtoint ptr %drop_unencrypted to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %drop_unencrypted, align 4
  %112 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %extra, align 4
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %scan_channel_mask = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 27
  %113 = ptrtoint ptr %scan_channel_mask to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %scan_channel_mask, align 2
  %conv66 = zext i16 %114 to i32
  %115 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv66, ptr %extra, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %dev, i32 noundef %3) #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %if.then34, %sw.bb31.sw.epilog_crit_edge, %sw.bb30, %if.then26, %sw.bb23.sw.epilog_crit_edge, %sw.bb22, %if.then18, %sw.bb15.sw.epilog_crit_edge, %if.then11, %sw.bb8.sw.epilog_crit_edge, %if.then, %sw.bb6.sw.epilog_crit_edge, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge145
  %ret.1 = phi i32 [ -95, %do.end ], [ 0, %sw.bb65 ], [ 0, %sw.bb64 ], [ 0, %sw.bb63 ], [ 0, %sw.bb62 ], [ %spec.select, %sw.bb57 ], [ 0, %sw.bb56 ], [ 0, %sw.bb55 ], [ 0, %sw.bb53 ], [ 0, %sw.bb52 ], [ 0, %sw.bb51 ], [ 0, %sw.bb50 ], [ 0, %sw.bb48 ], [ 0, %sw.bb47 ], [ 0, %sw.bb46 ], [ 0, %sw.bb45 ], [ 0, %sw.bb44 ], [ 0, %sw.bb43 ], [ 0, %sw.bb42 ], [ 0, %sw.bb41 ], [ 0, %sw.bb40 ], [ 0, %sw.bb39 ], [ 0, %sw.bb38 ], [ 0, %if.then34 ], [ 0, %sw.bb30 ], [ 0, %if.then26 ], [ 0, %sw.bb22 ], [ 0, %if.then18 ], [ 0, %if.then11 ], [ 0, %if.then ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ], [ -95, %sw.bb6.sw.epilog_crit_edge ], [ -95, %sw.bb8.sw.epilog_crit_edge ], [ -95, %sw.bb15.sw.epilog_crit_edge ], [ -95, %sw.bb23.sw.epilog_crit_edge ], [ -95, %sw.bb31.sw.epilog_crit_edge ], [ -95, %entry.sw.epilog_crit_edge145 ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_priv_writemif(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #1 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #16
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extra, align 1
  %conv = zext i8 %3 to i16
  %add.ptr = getelementptr i8, ptr %extra, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  %conv2 = zext i8 %5 to i16
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv2, ptr %val, align 2
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %7 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func, align 4
  %cmd = getelementptr inbounds %struct.prism2_helper_functions, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd, align 4
  %call3 = call i32 %10(ptr noundef %dev, i16 noundef zeroext 49, i16 noundef zeroext %conv, ptr noundef nonnull %val, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool.not, i32 0, i32 -95
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #16
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ioctl_priv_readmif(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef %extra) #1 align 64 {
entry:
  %resp0 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %resp0) #16
  %0 = ptrtoint ptr %resp0 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %resp0, align 2, !annotation !281
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local1, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %2, i32 0, i32 92
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func, align 4
  %cmd = getelementptr inbounds %struct.prism2_helper_functions, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 4
  %7 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %extra, align 1
  %conv = zext i8 %8 to i16
  %call2 = call i32 %6(ptr noundef %dev, i16 noundef zeroext 48, i16 noundef zeroext %conv, ptr noundef null, ptr noundef nonnull %resp0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %resp0 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %resp0, align 2
  %conv3 = trunc i16 %10 to i8
  %11 = ptrtoint ptr %extra to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3, ptr %extra, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %resp0) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostap_add_wds_links(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_set_auth_algs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_set_antsel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_set_hostapd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_set_hostapd_sta(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prism2_update_comms_qual(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prism2_sta_deauth(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ap_control_flush_macs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ap_control_kickall(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostap_deauth_all_stas(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prism2_hostapd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readnone }
attributes #24 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !162, !164, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !183, !184, !185, !186, !188, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !229, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !250, !251, !252, !254, !255, !257, !258, !259, !261, !262, !263, !264, !266, !267, !269}
!llvm.named.register.sp = !{!271}
!llvm.module.flags = !{!272, !273, !274, !275, !276, !277, !278, !279}
!llvm.ident = !{!280}

!0 = !{ptr @prism2_ethtool_ops, !1, !"prism2_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3858, i32 26}
!2 = !{ptr @hostap_iw_handler_def, !3, !"hostap_iw_handler_def", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3933, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3851, i32 24}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3853, i32 4}
!8 = !{ptr @prism2_handler, !9, !"prism2_handler", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3865, i32 25}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 108, i32 23}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 108, i32 40}
!14 = !{ptr @freq_list, !15, !"freq_list", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intersil/hostap/hostap.h", i32 11, i32 34}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1147, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @prism2_ioctl_siwmode._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @prism2_ioctl_siwmode._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1164, i32 2}
!24 = !{ptr @prism2_ioctl_siwmode._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @prism2_ioctl_siwmode._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1172, i32 3}
!28 = !{ptr @prism2_ioctl_siwmode._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @prism2_ioctl_siwmode._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1111, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hostap_monitor_mode_disable._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hostap_monitor_mode_disable._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1072, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hostap_monitor_mode_enable._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hostap_monitor_mode_enable._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1077, i32 3}
!42 = !{ptr @hostap_monitor_mode_enable._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hostap_monitor_mode_enable._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1088, i32 3}
!46 = !{ptr @hostap_monitor_mode_enable._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hostap_monitor_mode_enable._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1096, i32 3}
!50 = !{ptr @hostap_monitor_mode_enable._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @hostap_monitor_mode_enable._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 692, i32 4}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @prism2_ioctl_siwap._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @prism2_ioctl_siwap._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 701, i32 3}
!59 = !{ptr @prism2_ioctl_siwap._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @prism2_ioctl_siwap._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 657, i32 3}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @hostap_join_ap._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @hostap_join_ap._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 662, i32 2}
!68 = !{ptr @hostap_join_ap._entry.33, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hostap_join_ap._entry_ptr.35, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 499, i32 3}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @prism2_ioctl_giwaplist._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @prism2_ioctl_giwaplist._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1646, i32 3}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @prism2_request_hostscan._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @prism2_request_hostscan._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1683, i32 3}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @prism2_request_scan._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @prism2_request_scan._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2080, i32 4}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @prism2_ioctl_giwscan._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @prism2_ioctl_giwscan._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2085, i32 4}
!92 = !{ptr @prism2_ioctl_giwscan._entry.44, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @prism2_ioctl_giwscan._entry_ptr.46, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1869, i32 69}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1896, i32 16}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1903, i32 16}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1912, i32 17}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 894, i32 3}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @prism2_ioctl_siwessid._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @prism2_ioctl_siwessid._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 289, i32 3}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @hostap_set_rate._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @hostap_set_rate._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 298, i32 4}
!114 = !{ptr @hostap_set_rate._entry.55, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @hostap_set_rate._entry_ptr.57, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 309, i32 3}
!118 = !{ptr @hostap_set_rate._entry.58, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @hostap_set_rate._entry_ptr.60, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1516, i32 4}
!122 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @prism2_ioctl_siwtxpow._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @prism2_ioctl_siwtxpow._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1527, i32 3}
!129 = !{ptr @prism2_ioctl_siwtxpow._entry.65, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @prism2_ioctl_siwtxpow._entry_ptr.67, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 1364, i32 5}
!133 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @prism2_ioctl_siwretry._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @prism2_ioctl_siwretry._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 143, i32 34}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 158, i32 4}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 167, i32 4}
!142 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @prism2_ioctl_siwencode._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @prism2_ioctl_siwencode._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 198, i32 3}
!147 = !{ptr @prism2_ioctl_siwencode._entry.74, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @prism2_ioctl_siwencode._entry_ptr.76, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 208, i32 3}
!151 = !{ptr @prism2_ioctl_siwencode._entry.77, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @prism2_ioctl_siwencode._entry_ptr.79, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 261, i32 3}
!155 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @prism2_ioctl_giwencode._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @prism2_ioctl_giwencode._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3244, i32 9}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3245, i32 12}
!162 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3248, i32 9}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3249, i32 12}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3252, i32 3}
!168 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @prism2_ioctl_siwencodeext._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @prism2_ioctl_siwencodeext._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3264, i32 3}
!173 = !{ptr @prism2_ioctl_siwencodeext._entry.88, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @prism2_ioctl_siwencodeext._entry_ptr.90, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3312, i32 3}
!177 = !{ptr @prism2_ioctl_siwencodeext._entry.91, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @prism2_ioctl_siwencodeext._entry_ptr.93, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @prism2_private_handler, !180, !"prism2_private_handler", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3925, i32 25}
!181 = !{ptr @.str.94, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2342, i32 3}
!183 = !{ptr @.str.95, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @prism2_ioctl_priv_prism2_param._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @prism2_ioctl_priv_prism2_param._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.97, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2360, i32 3}
!188 = !{ptr @prism2_ioctl_priv_prism2_param._entry.96, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @prism2_ioctl_priv_prism2_param._entry_ptr.98, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.99, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.100, !187, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.102, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2526, i32 5}
!194 = !{ptr @prism2_ioctl_priv_prism2_param._entry.101, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @prism2_ioctl_priv_prism2_param._entry_ptr.103, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.105, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2532, i32 4}
!198 = !{ptr @prism2_ioctl_priv_prism2_param._entry.104, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @prism2_ioctl_priv_prism2_param._entry_ptr.106, !197, !"_entry_ptr", i1 false, i1 false}
!200 = distinct !{null, !201, !"__already_done", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2539, i32 4}
!202 = distinct !{null, !203, !"__already_done", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2543, i32 4}
!204 = !{ptr @.str.109, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2549, i32 5}
!206 = !{ptr @prism2_ioctl_priv_prism2_param._entry.108, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @prism2_ioctl_priv_prism2_param._entry_ptr.110, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.112, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2575, i32 4}
!210 = !{ptr @prism2_ioctl_priv_prism2_param._entry.111, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @prism2_ioctl_priv_prism2_param._entry_ptr.113, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.115, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2589, i32 4}
!214 = !{ptr @prism2_ioctl_priv_prism2_param._entry.114, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @prism2_ioctl_priv_prism2_param._entry_ptr.116, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.118, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2645, i32 3}
!218 = !{ptr @prism2_ioctl_priv_prism2_param._entry.117, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @prism2_ioctl_priv_prism2_param._entry_ptr.119, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.120, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2832, i32 3}
!222 = !{ptr @.str.121, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @prism2_ioctl_priv_get_prism2_param._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @prism2_ioctl_priv_get_prism2_param._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @prism2_priv, !226, !"prism2_priv", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2098, i32 34}
!227 = !{ptr @.str.122, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2893, i32 2}
!229 = !{ptr @.str.123, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @prism2_ioctl_priv_monitor._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @prism2_ioctl_priv_monitor._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.124, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2937, i32 2}
!234 = !{ptr @.str.125, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @prism2_ioctl_priv_reset._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @prism2_ioctl_priv_reset._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.127, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2969, i32 3}
!239 = !{ptr @prism2_ioctl_priv_reset._entry.126, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @prism2_ioctl_priv_reset._entry_ptr.128, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.129, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 2982, i32 2}
!243 = !{ptr @.str.130, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @prism2_ioctl_priv_set_rid_word._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @prism2_ioctl_priv_set_rid_word._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.131, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3464, i32 33}
!248 = !{ptr @.str.132, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3482, i32 3}
!250 = !{ptr @prism2_ioctl_set_encryption._entry, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @prism2_ioctl_set_encryption._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @prism2_ioctl_set_encryption._entry.133, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3522, i32 3}
!254 = !{ptr @prism2_ioctl_set_encryption._entry_ptr.134, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.136, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3533, i32 4}
!257 = !{ptr @prism2_ioctl_set_encryption._entry.135, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @prism2_ioctl_set_encryption._entry_ptr.137, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.138, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ioctl.c", i32 3660, i32 2}
!261 = !{ptr @.str.139, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @prism2_ioctl_set_assoc_ap_addr._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @prism2_ioctl_set_assoc_ap_addr._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = distinct !{null, !265, !"__already_done", i1 false, i1 false}
!265 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!266 = !{ptr @.str.140, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.141, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!269 = !{ptr @.str.142, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!271 = !{!"sp"}
!272 = !{i32 1, !"wchar_size", i32 2}
!273 = !{i32 1, !"min_enum_size", i32 4}
!274 = !{i32 8, !"branch-target-enforcement", i32 0}
!275 = !{i32 8, !"sign-return-address", i32 0}
!276 = !{i32 8, !"sign-return-address-all", i32 0}
!277 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!278 = !{i32 7, !"uwtable", i32 1}
!279 = !{i32 7, !"frame-pointer", i32 2}
!280 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!281 = !{!"auto-init"}
!282 = !{i64 2152247535, i64 2152247560}
!283 = !{i64 2156609716}
!284 = !{!"branch_weights", i32 2000, i32 1}
!285 = !{i64 2156614533}
