; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43legacy/main.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43legacy/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.99 }
%union.anon.99 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ssb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.b43legacy_wldev = type { ptr, ptr, %struct.atomic_t, i32, i8, i8, i8, i8, i8, %struct.b43legacy_phy, %union.anon.133, %struct.b43legacy_stats, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, i32, [6 x i32], i32, %struct.b43legacy_noise_calculation, i32, %struct.tasklet_struct, %struct.delayed_work, i32, %struct.work_struct, i16, i8, [58 x %struct.b43legacy_key], %struct.b43legacy_firmware, ptr, %struct.completion, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.b43legacy_phy = type { i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, %struct.anon.130, [2 x i16], [2 x i16], ptr, ptr, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i8, [2 x i16], %struct.anon.131, %struct.anon.132, i32, [26 x i32], [2 x i16], i32, [64 x i8], i8, i16, i16, %struct.atomic_t, i8, i8 }
%struct.anon.130 = type { i8, i16, i16 }
%struct.anon.131 = type { i16, i16, i16, i16 }
%struct.anon.132 = type { i16 }
%union.anon.133 = type { %struct.b43legacy_dma }
%struct.b43legacy_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.b43legacy_stats = type { i8, i32, i32 }
%struct.b43legacy_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_noise_calculation = type { i8, i8, i8, [8 x [4 x i8]] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.134, i32 }
%union.anon.134 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_key = type { ptr, i8, i8 }
%struct.b43legacy_firmware = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.b43legacy_wl = type { ptr, ptr, %struct.spinlock, %struct.mutex, %struct.spinlock, %struct.work_struct, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], %struct.list_head, i8, i8, i8, ptr, i8, i8, i8, %struct.work_struct, [4 x %struct.b43legacy_qos_params], %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.b43legacy_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.135, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.135 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.126, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.anon.126 = type { i64, i64, i8 }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.139, %struct.spinlock, i32, %union.anon.140, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { ptr }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.142, %struct.anon.143, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.142 = type { i8, i8, i8, i8 }
%struct.anon.143 = type { %struct.anon.144, %struct.anon.145 }
%struct.anon.144 = type { i8, i8, i8, i8, i8 }
%struct.anon.145 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.146, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.146 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.141, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.141 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.136, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.136 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.137] }
%struct.anon.137 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.85 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.b43legacy_fw_header = type { i8, i8, [2 x i8], i32 }
%struct.b43legacy_iv = type <{ i16, %union.anon.155 }>
%union.anon.155 = type { i32 }
%struct.b43legacy_plcp_hdr4 = type { %union.anon.197 }
%union.anon.197 = type { i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.157 }
%union.anon.157 = type { %struct.anon.163, [16 x i8] }
%struct.anon.163 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.b43legacy_txstatus = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_description366 = internal constant [57 x i8] c"b43legacy.description=Broadcom B43legacy wireless driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author367 = internal constant [31 x i8] c"b43legacy.author=Martin Langer\00", section ".modinfo", align 1
@__UNIQUE_ID_author368 = internal constant [32 x i8] c"b43legacy.author=Stefano Brivio\00", section ".modinfo", align 1
@__UNIQUE_ID_author369 = internal constant [32 x i8] c"b43legacy.author=Michael Buesch\00", section ".modinfo", align 1
@__UNIQUE_ID_file370 = internal constant [65 x i8] c"b43legacy.file=drivers/net/wireless/broadcom/b43legacy/b43legacy\00", section ".modinfo", align 1
@__UNIQUE_ID_license371 = internal constant [22 x i8] c"b43legacy.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware372 = internal constant [39 x i8] c"b43legacy.firmware=b43legacy/ucode2.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware373 = internal constant [39 x i8] c"b43legacy.firmware=b43legacy/ucode4.fw\00", section ".modinfo", align 1
@__param_str_pio = internal constant [14 x i8] c"b43legacy.pio\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@modparam_pio = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pio = internal constant %struct.kernel_param { ptr @__param_str_pio, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.99 { ptr @modparam_pio } }, section "__param", align 4
@__UNIQUE_ID_piotype374 = internal constant [27 x i8] c"b43legacy.parmtype=pio:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pio375 = internal constant [51 x i8] c"b43legacy.parm=pio:enable(1) / disable(0) PIO mode\00", section ".modinfo", align 1
@__param_str_bad_frames_preempt = internal constant [29 x i8] c"b43legacy.bad_frames_preempt\00", align 1
@modparam_bad_frames_preempt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_bad_frames_preempt = internal constant %struct.kernel_param { ptr @__param_str_bad_frames_preempt, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.99 { ptr @modparam_bad_frames_preempt } }, section "__param", align 4
@__UNIQUE_ID_bad_frames_preempttype376 = internal constant [42 x i8] c"b43legacy.parmtype=bad_frames_preempt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bad_frames_preempt377 = internal constant [79 x i8] c"b43legacy.parm=bad_frames_preempt:enable(1) / disable(0) Bad Frames Preemption\00", section ".modinfo", align 1
@__param_str_fwpostfix = internal constant [20 x i8] c"b43legacy.fwpostfix\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_fwpostfix = internal constant %struct.kparam_string { i32 16, ptr @modparam_fwpostfix }, align 4
@__param_fwpostfix = internal constant %struct.kernel_param { ptr @__param_str_fwpostfix, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.99 { ptr @__param_string_fwpostfix } }, section "__param", align 4
@__UNIQUE_ID_fwpostfixtype378 = internal constant [36 x i8] c"b43legacy.parmtype=fwpostfix:string\00", section ".modinfo", align 1
@__UNIQUE_ID_fwpostfix379 = internal constant [65 x i8] c"b43legacy.parm=fwpostfix:Postfix for the firmware files to load.\00", section ".modinfo", align 1
@b43legacyinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016b43legacy-%s: %pV\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"b43legacyinfo\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/broadcom/b43legacy/main.c\00", [49 x i8] zeroinitializer }, align 32
@b43legacyinfo._entry_ptr = internal global ptr @b43legacyinfo._entry, section ".printk_index", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wlan\00", [27 x i8] zeroinitializer }, align 32
@b43legacyerr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013b43legacy-%s ERROR: %pV\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"b43legacyerr\00", [19 x i8] zeroinitializer }, align 32
@b43legacyerr._entry_ptr = internal global ptr @b43legacyerr._entry, section ".printk_index", align 4
@b43legacywarn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014b43legacy-%s warning: %pV\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"b43legacywarn\00", [18 x i8] zeroinitializer }, align 32
@b43legacywarn._entry_ptr = internal global ptr @b43legacywarn._entry, section ".printk_index", align 4
@b43legacydbg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017b43legacy-%s debug: %pV\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"b43legacydbg\00", [19 x i8] zeroinitializer }, align 32
@b43legacydbg._entry_ptr = internal global ptr @b43legacydbg._entry, section ".printk_index", align 4
@b43legacy_dummy_transmission._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016b43legacy: Test (%s) failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"b43legacy_dummy_transmission\00", [35 x i8] zeroinitializer }, align 32
@b43legacy_dummy_transmission._entry_ptr = internal global ptr @b43legacy_dummy_transmission._entry, section ".printk_index", align 4
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MAC suspend failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Controller RESET (%s) ...\0A\00", [37 x i8] zeroinitializer }, align 32
@b43legacy_ssb_driver = internal global { %struct.ssb_driver, [56 x i8] } { %struct.ssb_driver { ptr @.str.15, ptr @b43legacy_ssb_tbl, ptr @b43legacy_probe, ptr @b43legacy_remove, ptr @b43legacy_suspend, ptr @b43legacy_resume, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_b43legacy__407_4028_b43legacy_init6 = internal global ptr @b43legacy_init, section ".initcall6.init", align 4
@__exitcall_b43legacy_exit = internal global ptr @b43legacy_exit, section ".exitcall.exit", align 4
@modparam_fwpostfix = internal global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"b43legacy\00", [22 x i8] zeroinitializer }, align 32
@b43legacy_ssb_tbl = internal constant { [3 x %struct.ssb_device_id], [46 x i8] } { [3 x %struct.ssb_device_id] [%struct.ssb_device_id { i16 16963, i16 2066, i8 2, i8 0 }, %struct.ssb_device_id { i16 16963, i16 2066, i8 4, i8 0 }, %struct.ssb_device_id zeroinitializer], [46 x i8] zeroinitializer }, align 32
@b43legacy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&wl->firmware_load)\00", [58 x i8] zeroinitializer }, align 32
@b43legacy_hw_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @b43legacy_op_tx, ptr @b43legacy_op_start, ptr @b43legacy_op_stop, ptr null, ptr null, ptr null, ptr @b43legacy_op_add_interface, ptr null, ptr @b43legacy_op_remove_interface, ptr @b43legacy_op_dev_config, ptr @b43legacy_op_bss_info_changed, ptr null, ptr null, ptr null, ptr @b43legacy_op_configure_filter, ptr null, ptr @b43legacy_op_beacon_set_tim, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @b43legacy_op_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @b43legacy_op_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @b43legacy_op_get_survey, ptr @b43legacy_rfkill_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not allocate ieee80211 device\0A\00", [59 x i8] zeroinitializer }, align 32
@b43legacy_wireless_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&wl->irq_lock\00", [18 x i8] zeroinitializer }, align 32
@b43legacy_wireless_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&wl->leds_lock\00", [17 x i8] zeroinitializer }, align 32
@b43legacy_wireless_init.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&wl->mutex\00", [21 x i8] zeroinitializer }, align 32
@b43legacy_wireless_init.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&wl->beacon_update_trigger)\00", [50 x i8] zeroinitializer }, align 32
@b43legacy_wireless_init.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&wl->tx_work)\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Broadcom %04X WLAN found (core revision %u)\0A\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chip initialized\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Microcode not responding\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"YOU ARE TRYING TO LOAD V4 FIRMWARE. Only firmware from binary drivers version 3.x is supported. You must change your firmware files.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Loading firmware version 0x%X, patch level %u (20%.2i-%.2i-%.2i %.2i:%.2i:%.2i)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u.%u\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [132 x i8], [60 x i8] } { [132 x i8] c"You must go to https://wireless.wiki.kernel.org/en/users/Drivers/b43#devicefirmware and download the correct firmware (version 3).\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Initial Values Firmware file-format error.\0A\00", [52 x i8] zeroinitializer }, align 32
@b43legacy_mgmtframe_txantenna._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.35, ptr @.str.2, i32 2110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"b43legacy_mgmtframe_txantenna\00", [34 x i8] zeroinitializer }, align 32
@b43legacy_mgmtframe_txantenna._entry_ptr = internal global ptr @b43legacy_mgmtframe_txantenna._entry, section ".printk_index", align 4
@b43legacy_rate_memory_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.36, ptr @.str.2, i32 2088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"b43legacy_rate_memory_init\00", [37 x i8] zeroinitializer }, align 32
@b43legacy_rate_memory_init._entry_ptr = internal global ptr @b43legacy_rate_memory_init._entry, section ".printk_index", align 4
@b43legacy_write_mac_bssid_templates.zero_addr = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to register the random number generator (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot request IRQ-%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wireless interface started\0A\00", [36 x i8] zeroinitializer }, align 32
@b43legacy_periodic_tasks_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&(work)->work)\00", [63 x i8] zeroinitializer }, align 32
@b43legacy_periodic_tasks_setup.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&(work)->timer\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wireless interface stopped\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Adding Interface type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Removing Interface type %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Radio turned on by software\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"The hardware RF-kill button still turns the radio physically off. Press the button to turn it on.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Radio turned off by software\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Could not find a device for %s-PHY mode\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Reconfiguring PHYmode to %s-PHY\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Fatal: Could not initialize device for newly selected %s-PHY mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Fatal: Could not start device for newly selected %s-PHY mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@phymode_to_string._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.56, ptr @.str.2, i32 2535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phymode_to_string\00", [46 x i8] zeroinitializer }, align 32
@phymode_to_string._entry_ptr = internal global ptr @phymode_to_string._entry, section ".printk_index", align 4
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Set beacon interval to %u\0A\00", [37 x i8] zeroinitializer }, align 32
@__b43legacy_ratetable = internal global [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 2, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 4, i16 0 }, %struct.ieee80211_rate { i32 1, i16 55, i16 11, i16 0 }, %struct.ieee80211_rate { i32 1, i16 110, i16 22, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 12, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 18, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 24, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 36, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 48, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 72, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 96, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 108, i16 0 }], align 4
@.str.59 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"Did not find a valid TIM IE in the beacon template packet. AP or IBSS operation may be broken.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Updated beacon template\0A\00", [39 x i8] zeroinitializer }, align 32
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MAC transmission error\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PHY transmission error\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Too many PHY TX errors, restarting the controller\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PHY TX errors\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Fatal DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMA error\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bus powerup failed\0A\00", [44 x i8] zeroinitializer }, align 32
@b43legacy_wireless_core_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.71, ptr @.str.2, i32 3680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"b43legacy_wireless_core_attach\00", [33 x i8] zeroinitializer }, align 32
@b43legacy_wireless_core_attach._entry_ptr = internal global ptr @b43legacy_wireless_core_attach._entry, section ".printk_index", align 4
@b43legacy_wireless_core_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&dev->restart_work)\00", [58 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"FOUND UNSUPPORTED PHY (Analog %u, Type %u, Revision %u)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Found PHY: Analog %u, Type %u, Revision %u\0A\00", [52 x i8] zeroinitializer }, align 32
@b43legacy_phy_versioning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.75, ptr @.str.2, i32 3054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"b43legacy_phy_versioning\00", [39 x i8] zeroinitializer }, align 32
@b43legacy_phy_versioning._entry_ptr = internal global ptr @b43legacy_phy_versioning._entry, section ".printk_index", align 4
@.str.76 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"FOUND UNSUPPORTED RADIO (Manuf 0x%X, Version 0x%X, Revision %u)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Found Radio: Manuf 0x%X, Version 0x%X, Revision %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to validate the chipaccess\0A\00", [61 x i8] zeroinitializer }, align 32
@b43legacy_band_2GHz_BPHY = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @b43legacy_bg_chantable, ptr @__b43legacy_ratetable, i32 0, i32 14, i32 4, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@b43legacy_band_2GHz_GPHY = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @b43legacy_bg_chantable, ptr @__b43legacy_ratetable, i32 0, i32 14, i32 12, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@b43legacy_bg_chantable = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Controller restart FAILED\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Controller restarted\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ucode2\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ucode4\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ucode5\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcm4\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcm5\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"b0g0initvals5\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"b0g0initvals2\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"b0g0bsinitvals5\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"No Initial Values firmware file for PHY %u, core rev %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"b43legacy%s/%s.fw\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Loading firmware %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to load firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Firmware file \22%s\22 not found or load failed.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Firmware file \22%s\22 format error.\0A\00", [62 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Suspending...\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Device suspended.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Resuming...\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Resume failed at core init\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Resume failed at core start\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Device resumed.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@b43legacy_print_driverinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 4000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016Broadcom 43xx-legacy driver loaded [ Features: %s%s%s%s ]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"b43legacy_print_driverinfo\00", [37 x i8] zeroinitializer }, align 32
@b43legacy_print_driverinfo._entry_ptr = internal global ptr @b43legacy_print_driverinfo._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.108 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 16, i64 17170, i64 17177, i64 17188]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.119 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 8, i64 105, i64 112, i64 117]
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"modparam_pio\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 53, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant [28 x i8] c"modparam_bad_frames_preempt\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 62, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 179, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 198, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 217, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 234, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 617, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1995, i32 25 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3910, i32 25 }
@___asan_gen_.191 = private unnamed_addr constant [21 x i8] c"b43legacy_ssb_driver\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3972, i32 26 }
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"modparam_fwpostfix\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 67, i32 13 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3973, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant [18 x i8] c"b43legacy_ssb_tbl\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 72, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3865, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"b43legacy_hw_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3532, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3795, i32 22 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3822, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3823, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3824, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3826, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3827, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3836, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2248, i32 24 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1723, i32 26 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1748, i32 25 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1756, i32 25 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1765, i32 57 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1481, i32 19 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1835, i32 24 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2110, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2088, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [10 x i8] c"zero_addr\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 526, i32 18 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2430, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2438, i32 20 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2962, i32 25 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2977, i32 24 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2346, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2948, i32 19 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3395, i32 19 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3424, i32 19 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2739, i32 27 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2741, i32 28 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2747, i32 27 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2592, i32 20 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2600, i32 19 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2621, i32 21 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2630, i32 21 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2531, i32 10 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2533, i32 10 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2535, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1270, i32 24 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1012, i32 26 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1016, i32 25 }
@___asan_gen_.360 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 2737, i32 6 }
@___asan_gen_.366 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 1984, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1299, i32 25 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1302, i32 25 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1305, i32 26 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1307, i32 38 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1314, i32 26 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1320, i32 38 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1325, i32 26 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3640, i32 20 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3680, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3697, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3015, i32 25 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3020, i32 24 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3054, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3057, i32 25 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3062, i32 24 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2378, i32 24 }
@___asan_gen_.425 = private unnamed_addr constant [25 x i8] c"b43legacy_band_2GHz_BPHY\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 135, i32 40 }
@___asan_gen_.428 = private unnamed_addr constant [25 x i8] c"b43legacy_band_2GHz_GPHY\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 142, i32 40 }
@___asan_gen_.431 = private unnamed_addr constant [23 x i8] c"b43legacy_bg_chantable\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 118, i32 33 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3586, i32 20 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3588, i32 21 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1573, i32 15 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1575, i32 15 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1577, i32 15 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1584, i32 15 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1586, i32 15 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1596, i32 16 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1598, i32 16 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1614, i32 16 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1644, i32 24 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1507, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1509, i32 25 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1516, i32 26 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1528, i32 25 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1553, i32 24 }
@___asan_gen_.482 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 87, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3921, i32 19 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3931, i32 19 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3942, i32 19 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3948, i32 21 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3956, i32 21 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3961, i32 19 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3987, i32 13 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3990, i32 14 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3993, i32 13 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3996, i32 13 }
@___asan_gen_.518 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.525 = private constant [50 x i8] c"../drivers/net/wireless/broadcom/b43legacy/main.c\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3998, i32 2 }
@llvm.compiler.used = appending global [165 x ptr] [ptr @__UNIQUE_ID_author367, ptr @__UNIQUE_ID_author368, ptr @__UNIQUE_ID_author369, ptr @__UNIQUE_ID_bad_frames_preempt377, ptr @__UNIQUE_ID_bad_frames_preempttype376, ptr @__UNIQUE_ID_description366, ptr @__UNIQUE_ID_file370, ptr @__UNIQUE_ID_firmware372, ptr @__UNIQUE_ID_firmware373, ptr @__UNIQUE_ID_fwpostfix379, ptr @__UNIQUE_ID_fwpostfixtype378, ptr @__UNIQUE_ID_license371, ptr @__UNIQUE_ID_pio375, ptr @__UNIQUE_ID_piotype374, ptr @__exitcall_b43legacy_exit, ptr @__initcall__kmod_b43legacy__407_4028_b43legacy_init6, ptr @__param_bad_frames_preempt, ptr @__param_fwpostfix, ptr @__param_pio, ptr @b43legacy_dummy_transmission._entry, ptr @b43legacy_dummy_transmission._entry_ptr, ptr @b43legacy_exit, ptr @b43legacy_mgmtframe_txantenna._entry, ptr @b43legacy_mgmtframe_txantenna._entry_ptr, ptr @b43legacy_phy_versioning._entry, ptr @b43legacy_phy_versioning._entry_ptr, ptr @b43legacy_print_driverinfo._entry, ptr @b43legacy_print_driverinfo._entry_ptr, ptr @b43legacy_rate_memory_init._entry, ptr @b43legacy_rate_memory_init._entry_ptr, ptr @b43legacy_wireless_core_attach._entry, ptr @b43legacy_wireless_core_attach._entry_ptr, ptr @b43legacydbg._entry, ptr @b43legacydbg._entry_ptr, ptr @b43legacyerr._entry, ptr @b43legacyerr._entry_ptr, ptr @b43legacyinfo._entry, ptr @b43legacyinfo._entry_ptr, ptr @b43legacywarn._entry, ptr @b43legacywarn._entry_ptr, ptr @phymode_to_string._entry, ptr @phymode_to_string._entry_ptr, ptr @modparam_pio, ptr @modparam_bad_frames_preempt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @b43legacy_ssb_driver, ptr @modparam_fwpostfix, ptr @.str.15, ptr @b43legacy_ssb_tbl, ptr @b43legacy_probe.__key, ptr @.str.16, ptr @b43legacy_hw_ops, ptr @.str.17, ptr @b43legacy_wireless_init.__key, ptr @.str.18, ptr @b43legacy_wireless_init.__key.19, ptr @.str.20, ptr @b43legacy_wireless_init.__key.21, ptr @.str.22, ptr @b43legacy_wireless_init.__key.23, ptr @.str.24, ptr @b43legacy_wireless_init.__key.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @b43legacy_write_mac_bssid_templates.zero_addr, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @b43legacy_periodic_tasks_setup.__key, ptr @.str.41, ptr @b43legacy_periodic_tasks_setup.__key.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @skb_queue_head_init.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @b43legacy_wireless_core_attach.__key, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @b43legacy_band_2GHz_BPHY, ptr @b43legacy_band_2GHz_GPHY, ptr @b43legacy_bg_chantable, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @init_completion.__key, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_pio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_bad_frames_preempt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacyinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacyerr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacywarn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacydbg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_dummy_transmission._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ssb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_fwpostfix to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_ssb_tbl to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_hw_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_wireless_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_wireless_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_wireless_init.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_wireless_init.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_wireless_init.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_mgmtframe_txantenna._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_rate_memory_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_write_mac_bssid_templates.zero_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_periodic_tasks_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_periodic_tasks_setup.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phymode_to_string._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_wireless_core_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_wireless_core_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_phy_versioning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_band_2GHz_BPHY to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_band_2GHz_GPHY to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_bg_chantable to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_print_driverinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacyinfo(ptr noundef readonly %wl, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #14
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #14
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !302
  %tobool.not.i = icmp eq ptr %wl, null
  br i1 %tobool.not.i, label %if.end, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.land.lhs.true_crit_edge, label %if.end.i

lor.lhs.false.i.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end.i:                                         ; preds = %lor.lhs.false.i
  %__init_status.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i, i32 noundef 4) #14
  %4 = ptrtoint ptr %__init_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp slt i32 %5, 2
  br i1 %cmp.i, label %if.end.i.land.lhs.true_crit_edge, label %b43legacy_ratelimit.exit

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

b43legacy_ratelimit.exit:                         ; preds = %if.end.i
  %call5.i = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %b43legacy_ratelimit.exit.cleanup_crit_edge, label %b43legacy_ratelimit.exit.land.lhs.true_crit_edge

b43legacy_ratelimit.exit.land.lhs.true_crit_edge: ; preds = %b43legacy_ratelimit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

b43legacy_ratelimit.exit.cleanup_crit_edge:       ; preds = %b43legacy_ratelimit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.va_start(ptr nonnull %args)
  %6 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fmt, ptr %vaf, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %args, ptr %0, align 4
  br label %cond.end

land.lhs.true:                                    ; preds = %b43legacy_ratelimit.exit.land.lhs.true_crit_edge, %if.end.i.land.lhs.true_crit_edge, %lor.lhs.false.i.land.lhs.true_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %8 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fmt, ptr %vaf, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %args, ptr %0, align 4
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %wl, i32 0, i32 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end.i.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i, %cond.true.cond.end_crit_edge, %land.lhs.true.cond.end_crit_edge, %if.end
  %cond = phi ptr [ @.str.3, %land.lhs.true.cond.end_crit_edge ], [ @.str.3, %if.end ], [ %17, %if.end.i.i ], [ %15, %cond.true.cond.end_crit_edge ]
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %cond, ptr noundef nonnull %vaf) #17
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %b43legacy_ratelimit.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacyerr(ptr noundef readonly %wl, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #14
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #14
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !302
  %tobool.not.i = icmp eq ptr %wl, null
  br i1 %tobool.not.i, label %if.end, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.land.lhs.true_crit_edge, label %if.end.i

lor.lhs.false.i.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end.i:                                         ; preds = %lor.lhs.false.i
  %__init_status.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i, i32 noundef 4) #14
  %4 = ptrtoint ptr %__init_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp slt i32 %5, 2
  br i1 %cmp.i, label %if.end.i.land.lhs.true_crit_edge, label %b43legacy_ratelimit.exit

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

b43legacy_ratelimit.exit:                         ; preds = %if.end.i
  %call5.i = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %b43legacy_ratelimit.exit.cleanup_crit_edge, label %b43legacy_ratelimit.exit.land.lhs.true_crit_edge

b43legacy_ratelimit.exit.land.lhs.true_crit_edge: ; preds = %b43legacy_ratelimit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

b43legacy_ratelimit.exit.cleanup_crit_edge:       ; preds = %b43legacy_ratelimit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.va_start(ptr nonnull %args)
  %6 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fmt, ptr %vaf, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %args, ptr %0, align 4
  br label %cond.end

land.lhs.true:                                    ; preds = %b43legacy_ratelimit.exit.land.lhs.true_crit_edge, %if.end.i.land.lhs.true_crit_edge, %lor.lhs.false.i.land.lhs.true_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %8 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fmt, ptr %vaf, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %args, ptr %0, align 4
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %wl, i32 0, i32 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end.i.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i, %cond.true.cond.end_crit_edge, %land.lhs.true.cond.end_crit_edge, %if.end
  %cond = phi ptr [ @.str.3, %land.lhs.true.cond.end_crit_edge ], [ @.str.3, %if.end ], [ %17, %if.end.i.i ], [ %15, %cond.true.cond.end_crit_edge ]
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %cond, ptr noundef nonnull %vaf) #17
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %b43legacy_ratelimit.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacywarn(ptr noundef readonly %wl, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #14
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #14
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !302
  %tobool.not.i = icmp eq ptr %wl, null
  br i1 %tobool.not.i, label %if.end, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.land.lhs.true_crit_edge, label %if.end.i

lor.lhs.false.i.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end.i:                                         ; preds = %lor.lhs.false.i
  %__init_status.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i, i32 noundef 4) #14
  %4 = ptrtoint ptr %__init_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp slt i32 %5, 2
  br i1 %cmp.i, label %if.end.i.land.lhs.true_crit_edge, label %b43legacy_ratelimit.exit

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

b43legacy_ratelimit.exit:                         ; preds = %if.end.i
  %call5.i = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %b43legacy_ratelimit.exit.cleanup_crit_edge, label %b43legacy_ratelimit.exit.land.lhs.true_crit_edge

b43legacy_ratelimit.exit.land.lhs.true_crit_edge: ; preds = %b43legacy_ratelimit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

b43legacy_ratelimit.exit.cleanup_crit_edge:       ; preds = %b43legacy_ratelimit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.va_start(ptr nonnull %args)
  %6 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fmt, ptr %vaf, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %args, ptr %0, align 4
  br label %cond.end

land.lhs.true:                                    ; preds = %b43legacy_ratelimit.exit.land.lhs.true_crit_edge, %if.end.i.land.lhs.true_crit_edge, %lor.lhs.false.i.land.lhs.true_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %8 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fmt, ptr %vaf, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %args, ptr %0, align 4
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %wl, i32 0, i32 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end.i.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i, %cond.true.cond.end_crit_edge, %land.lhs.true.cond.end_crit_edge, %if.end
  %cond = phi ptr [ @.str.3, %land.lhs.true.cond.end_crit_edge ], [ @.str.3, %if.end ], [ %17, %if.end.i.i ], [ %15, %cond.true.cond.end_crit_edge ]
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %cond, ptr noundef nonnull %vaf) #17
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %b43legacy_ratelimit.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacydbg(ptr noundef readonly %wl, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #14
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #14
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !302
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %tobool.not = icmp eq ptr %wl, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %wl, i32 0, i32 1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end.i.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i, %cond.true.cond.end_crit_edge, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ @.str.3, %land.lhs.true.cond.end_crit_edge ], [ @.str.3, %entry.cond.end_crit_edge ], [ %11, %if.end.i.i ], [ %9, %cond.true.cond.end_crit_edge ]
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %cond, ptr noundef nonnull %vaf) #17
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43legacy_shm_read32(ptr nocapture noundef readonly %dev, i16 noundef zeroext %routing, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %routing)
  %cmp = icmp eq i16 %routing, 1
  br i1 %cmp, label %if.then, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then:                                          ; preds = %entry
  %conv2 = zext i16 %offset to i32
  %and = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %do.end, !prof !303

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %and25 = and i32 %conv2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %0 = lshr i16 %offset, 2
  br i1 %tobool26.not, label %if.end.if.end40_crit_edge, label %if.then27

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i = zext i16 %0 to i32
  %or.i = or i32 %conv1.i, 65536
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %6(ptr noundef %2, i16 noundef zeroext 352, i32 noundef %or.i) #14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %12(ptr noundef %8, i16 noundef zeroext 358) #14
  %conv30 = zext i16 %call.i.i to i32
  %shl = shl nuw i32 %conv30, 16
  %conv33 = add nuw nsw i16 %0, 1
  %conv1.i61 = zext i16 %conv33 to i32
  %or.i62 = or i32 %conv1.i61, 65536
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %write32.i.i.i63 = getelementptr inbounds %struct.ssb_bus_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %write32.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i.i63, align 4
  tail call void %18(ptr noundef %14, i16 noundef zeroext 352, i32 noundef %or.i62) #14
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %read16.i.i64 = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %read16.i.i64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read16.i.i64, align 4
  %call.i.i65 = tail call zeroext i16 %24(ptr noundef %20, i16 noundef zeroext 356) #14
  %conv35 = zext i16 %call.i.i65 to i32
  %or = or i32 %shl, %conv35
  br label %cleanup

if.end40:                                         ; preds = %if.end.if.end40_crit_edge, %entry.if.end40_crit_edge
  %offset.addr.0 = phi i16 [ %offset, %entry.if.end40_crit_edge ], [ %0, %if.end.if.end40_crit_edge ]
  %conv.i66 = zext i16 %routing to i32
  %shl.i67 = shl nuw i32 %conv.i66, 16
  %conv1.i68 = zext i16 %offset.addr.0 to i32
  %or.i69 = or i32 %shl.i67, %conv1.i68
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write32.i.i.i70 = getelementptr inbounds %struct.ssb_bus_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %write32.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i.i.i70, align 4
  tail call void %30(ptr noundef %26, i16 noundef zeroext 352, i32 noundef %or.i69) #14
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i.i, align 4
  %call.i.i71 = tail call i32 %36(ptr noundef %32, i16 noundef zeroext 356) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then27
  %retval.0 = phi i32 [ %or, %if.then27 ], [ %call.i.i71, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @b43legacy_shm_read16(ptr nocapture noundef readonly %dev, i16 noundef zeroext %routing, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %routing)
  %cmp = icmp eq i16 %routing, 1
  br i1 %cmp, label %if.then, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then:                                          ; preds = %entry
  %conv2 = zext i16 %offset to i32
  %and = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %do.end, !prof !303

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 303, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %and25 = and i32 %conv2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %0 = lshr i16 %offset, 2
  br i1 %tobool26.not, label %if.end.if.end34_crit_edge, label %if.then27

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i = zext i16 %0 to i32
  %or.i = or i32 %conv1.i, 65536
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %6(ptr noundef %2, i16 noundef zeroext 352, i32 noundef %or.i) #14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %12(ptr noundef %8, i16 noundef zeroext 358) #14
  br label %cleanup

if.end34:                                         ; preds = %if.end.if.end34_crit_edge, %entry.if.end34_crit_edge
  %offset.addr.0 = phi i16 [ %offset, %entry.if.end34_crit_edge ], [ %0, %if.end.if.end34_crit_edge ]
  %conv.i47 = zext i16 %routing to i32
  %shl.i48 = shl nuw i32 %conv.i47, 16
  %conv1.i49 = zext i16 %offset.addr.0 to i32
  %or.i50 = or i32 %shl.i48, %conv1.i49
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %write32.i.i.i51 = getelementptr inbounds %struct.ssb_bus_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %write32.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i.i51, align 4
  tail call void %18(ptr noundef %14, i16 noundef zeroext 352, i32 noundef %or.i50) #14
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %read16.i.i52 = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %read16.i.i52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read16.i.i52, align 4
  %call.i.i53 = tail call zeroext i16 %24(ptr noundef %20, i16 noundef zeroext 356) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then27
  %retval.0 = phi i16 [ %call.i.i, %if.then27 ], [ %call.i.i53, %if.end34 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_shm_write32(ptr nocapture noundef readonly %dev, i16 noundef zeroext %routing, i16 noundef zeroext %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %routing)
  %cmp = icmp eq i16 %routing, 1
  br i1 %cmp, label %if.then, label %entry.if.end42_crit_edge

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then:                                          ; preds = %entry
  %conv2 = zext i16 %offset to i32
  %and = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %do.end, !prof !303

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 325, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %and25 = and i32 %conv2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %0 = lshr i16 %offset, 2
  br i1 %tobool26.not, label %if.end.if.end42_crit_edge, label %if.then27

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i = zext i16 %0 to i32
  %or.i = or i32 %conv1.i, 65536
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %6(ptr noundef %2, i16 noundef zeroext 352, i32 noundef %or.i) #14
  %shr30 = lshr i32 %value, 16
  %conv32 = trunc i32 %shr30 to i16
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write16.i.i, align 4
  tail call void %12(ptr noundef %8, i16 noundef zeroext 358, i16 noundef zeroext %conv32) #14
  %conv35 = add nuw nsw i16 %0, 1
  %conv1.i61 = zext i16 %conv35 to i32
  %or.i62 = or i32 %conv1.i61, 65536
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %write32.i.i.i63 = getelementptr inbounds %struct.ssb_bus_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %write32.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i.i63, align 4
  tail call void %18(ptr noundef %14, i16 noundef zeroext 352, i32 noundef %or.i62) #14
  %conv37 = trunc i32 %value to i16
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %write16.i.i64 = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %write16.i.i64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write16.i.i64, align 4
  tail call void %24(ptr noundef %20, i16 noundef zeroext 356, i16 noundef zeroext %conv37) #14
  br label %return

if.end42:                                         ; preds = %if.end.if.end42_crit_edge, %entry.if.end42_crit_edge
  %offset.addr.0 = phi i16 [ %offset, %entry.if.end42_crit_edge ], [ %0, %if.end.if.end42_crit_edge ]
  %conv.i65 = zext i16 %routing to i32
  %shl.i66 = shl nuw i32 %conv.i65, 16
  %conv1.i67 = zext i16 %offset.addr.0 to i32
  %or.i68 = or i32 %shl.i66, %conv1.i67
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write32.i.i.i69 = getelementptr inbounds %struct.ssb_bus_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %write32.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i.i.i69, align 4
  tail call void %30(ptr noundef %26, i16 noundef zeroext 352, i32 noundef %or.i68) #14
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32.i.i, align 4
  tail call void %36(ptr noundef %32, i16 noundef zeroext 356, i32 noundef %value) #14
  br label %return

return:                                           ; preds = %if.end42, %if.then27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_shm_write16(ptr nocapture noundef readonly %dev, i16 noundef zeroext %routing, i16 noundef zeroext %offset, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %routing)
  %cmp = icmp eq i16 %routing, 1
  br i1 %cmp, label %if.then, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then:                                          ; preds = %entry
  %conv2 = zext i16 %offset to i32
  %and = and i32 %conv2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %do.end, !prof !303

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 348, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %and25 = and i32 %conv2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %0 = lshr i16 %offset, 2
  br i1 %tobool26.not, label %if.end.if.end34_crit_edge, label %if.then27

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv1.i = zext i16 %0 to i32
  %or.i = or i32 %conv1.i, 65536
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %6(ptr noundef %2, i16 noundef zeroext 352, i32 noundef %or.i) #14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write16.i.i, align 4
  tail call void %12(ptr noundef %8, i16 noundef zeroext 358, i16 noundef zeroext %value) #14
  br label %return

if.end34:                                         ; preds = %if.end.if.end34_crit_edge, %entry.if.end34_crit_edge
  %offset.addr.0 = phi i16 [ %offset, %entry.if.end34_crit_edge ], [ %0, %if.end.if.end34_crit_edge ]
  %conv.i46 = zext i16 %routing to i32
  %shl.i47 = shl nuw i32 %conv.i46, 16
  %conv1.i48 = zext i16 %offset.addr.0 to i32
  %or.i49 = or i32 %shl.i47, %conv1.i48
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %write32.i.i.i50 = getelementptr inbounds %struct.ssb_bus_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %write32.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write32.i.i.i50, align 4
  tail call void %18(ptr noundef %14, i16 noundef zeroext 352, i32 noundef %or.i49) #14
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %write16.i.i51 = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %write16.i.i51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write16.i.i51, align 4
  tail call void %24(ptr noundef %20, i16 noundef zeroext 356, i16 noundef zeroext %value) #14
  br label %return

return:                                           ; preds = %if.end34, %if.then27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43legacy_hf_read(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i.i51.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 352, i32 noundef 65560) #14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read16.i.i52.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %read16.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16.i.i52.i, align 4
  %call.i.i53.i = tail call zeroext i16 %11(ptr noundef %7, i16 noundef zeroext 356) #14
  %conv = zext i16 %call.i.i53.i to i32
  %shl = shl nuw i32 %conv, 16
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %17(ptr noundef %13, i16 noundef zeroext 352, i32 noundef 65559) #14
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %23(ptr noundef %19, i16 noundef zeroext 358) #14
  %conv2 = zext i16 %call.i.i.i to i32
  %or = or i32 %shl, %conv2
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_hf_write(ptr nocapture noundef readonly %dev, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %value to i16
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 352, i32 noundef 65559) #14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 358, i16 noundef zeroext %conv) #14
  %shr = lshr i32 %value, 16
  %conv2 = trunc i32 %shr to i16
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write32.i.i.i50.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i.i50.i, align 4
  tail call void %17(ptr noundef %13, i16 noundef zeroext 352, i32 noundef 65560) #14
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write16.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %write16.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write16.i.i51.i, align 4
  tail call void %23(ptr noundef %19, i16 noundef zeroext 356, i16 noundef zeroext %conv2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_tsf_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tsf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  br i1 %cmp, label %entry.do.body_crit_edge, label %entry.do.body10_crit_edge

entry.do.body10_crit_edge:                        ; preds = %entry
  br label %do.body10

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5, i16 noundef zeroext 388) #14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %read32.i.i68 = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read32.i.i68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i68, align 4
  %call.i.i69 = tail call i32 %15(ptr noundef %11, i16 noundef zeroext 384) #14
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %read32.i.i70 = getelementptr inbounds %struct.ssb_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %read32.i.i70 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i70, align 4
  %call.i.i71 = tail call i32 %21(ptr noundef %17, i16 noundef zeroext 388) #14
  %cmp5.not = icmp eq i32 %call.i.i, %call.i.i71
  br i1 %cmp5.not, label %do.end, label %do.body.do.body_crit_edge, !prof !303

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv8 = zext i32 %call.i.i to i64
  %shl = shl nuw i64 %conv8, 32
  %conv9 = zext i32 %call.i.i69 to i64
  %or = or i64 %shl, %conv9
  br label %if.end

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %entry.do.body10_crit_edge
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read16.i.i, align 4
  %call.i.i72 = tail call zeroext i16 %27(ptr noundef %23, i16 noundef zeroext 1592) #14
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %read16.i.i73 = getelementptr inbounds %struct.ssb_bus_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %read16.i.i73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read16.i.i73, align 4
  %call.i.i74 = tail call zeroext i16 %33(ptr noundef %29, i16 noundef zeroext 1590) #14
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %read16.i.i75 = getelementptr inbounds %struct.ssb_bus_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %read16.i.i75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read16.i.i75, align 4
  %call.i.i76 = tail call zeroext i16 %39(ptr noundef %35, i16 noundef zeroext 1588) #14
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %read16.i.i77 = getelementptr inbounds %struct.ssb_bus_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %read16.i.i77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read16.i.i77, align 4
  %call.i.i78 = tail call zeroext i16 %45(ptr noundef %41, i16 noundef zeroext 1586) #14
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %read16.i.i79 = getelementptr inbounds %struct.ssb_bus_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %read16.i.i79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read16.i.i79, align 4
  %call.i.i80 = tail call zeroext i16 %51(ptr noundef %47, i16 noundef zeroext 1592) #14
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %read16.i.i81 = getelementptr inbounds %struct.ssb_bus_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %read16.i.i81 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read16.i.i81, align 4
  %call.i.i82 = tail call zeroext i16 %57(ptr noundef %53, i16 noundef zeroext 1590) #14
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %read16.i.i83 = getelementptr inbounds %struct.ssb_bus_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %read16.i.i83 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read16.i.i83, align 4
  %call.i.i84 = tail call zeroext i16 %63(ptr noundef %59, i16 noundef zeroext 1588) #14
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i.i72, i16 %call.i.i80)
  %cmp21.not = icmp eq i16 %call.i.i72, %call.i.i80
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i.i74, i16 %call.i.i82)
  %cmp25.not = icmp eq i16 %call.i.i74, %call.i.i82
  %or.cond = select i1 %cmp21.not, i1 %cmp25.not, i1 false
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i.i76, i16 %call.i.i84)
  %cmp29.not = icmp eq i16 %call.i.i76, %call.i.i84
  %or.cond67 = select i1 %or.cond, i1 %cmp29.not, i1 false
  br i1 %or.cond67, label %do.end31, label %do.body10.do.body10_crit_edge

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

do.end31:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  %conv32 = zext i16 %call.i.i72 to i64
  %shl33 = shl nuw i64 %conv32, 48
  %conv34 = zext i16 %call.i.i74 to i64
  %shl35 = shl nuw nsw i64 %conv34, 32
  %or36 = or i64 %shl35, %shl33
  %conv37 = zext i16 %call.i.i76 to i64
  %shl38 = shl nuw nsw i64 %conv37, 16
  %or39 = or i64 %shl38, %or36
  %conv40 = zext i16 %call.i.i78 to i64
  %or41 = or i64 %or39, %conv40
  br label %if.end

if.end:                                           ; preds = %do.end31, %do.end
  %storemerge = phi i64 [ %or41, %do.end31 ], [ %or, %do.end ]
  %64 = ptrtoint ptr %tsf to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %storemerge, ptr %tsf, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_tsf_write(ptr nocapture noundef readonly %dev, i64 noundef %tsf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 288) #14
  %or.i = or i32 %call.i.i.i, 268435456
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 288, i32 noundef %or.i) #14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %13, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i = icmp ugt i8 %15, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv3.i = trunc i64 %tsf to i32
  %shr.i = lshr i64 %tsf, 32
  %conv5.i = trunc i64 %shr.i to i32
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %write32.i.i.i3 = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i.i3, align 4
  tail call void %19(ptr noundef %13, i16 noundef zeroext 384, i32 noundef 0) #14
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write32.i.i30.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %write32.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i30.i, align 4
  tail call void %25(ptr noundef %21, i16 noundef zeroext 388, i32 noundef %conv5.i) #14
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %write32.i.i31.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write32.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i31.i, align 4
  tail call void %31(ptr noundef %27, i16 noundef zeroext 384, i32 noundef %conv3.i) #14
  br label %b43legacy_tsf_write_locked.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i = trunc i64 %tsf to i16
  %and8.i = lshr i64 %tsf, 16
  %conv10.i = trunc i64 %and8.i to i16
  %and11.i = lshr i64 %tsf, 32
  %conv13.i = trunc i64 %and11.i to i16
  %shr15.i = lshr i64 %tsf, 48
  %conv16.i = trunc i64 %shr15.i to i16
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %13, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %35(ptr noundef %13, i16 noundef zeroext 1586, i16 noundef zeroext 0) #14
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write16.i.i32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %write16.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write16.i.i32.i, align 4
  tail call void %41(ptr noundef %37, i16 noundef zeroext 1592, i16 noundef zeroext %conv16.i) #14
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %write16.i.i33.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %write16.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write16.i.i33.i, align 4
  tail call void %47(ptr noundef %43, i16 noundef zeroext 1590, i16 noundef zeroext %conv13.i) #14
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %write16.i.i34.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %write16.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write16.i.i34.i, align 4
  tail call void %53(ptr noundef %49, i16 noundef zeroext 1588, i16 noundef zeroext %conv10.i) #14
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %write16.i.i35.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %write16.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write16.i.i35.i, align 4
  tail call void %59(ptr noundef %55, i16 noundef zeroext 1586, i16 noundef zeroext %conv7.i) #14
  br label %b43legacy_tsf_write_locked.exit

b43legacy_tsf_write_locked.exit:                  ; preds = %if.else.i, %if.then.i
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %read32.i.i.i4 = getelementptr inbounds %struct.ssb_bus_ops, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %read32.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read32.i.i.i4, align 4
  %call.i.i.i5 = tail call i32 %65(ptr noundef %61, i16 noundef zeroext 288) #14
  %and.i = and i32 %call.i.i.i5, -268435457
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %write32.i.i.i6 = getelementptr inbounds %struct.ssb_bus_ops, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %write32.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write32.i.i.i6, align 4
  tail call void %71(ptr noundef %67, i16 noundef zeroext 288, i32 noundef %and.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_dummy_transmission(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %.off = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %7(ptr noundef %3, i16 noundef zeroext 288) #14
  %and.i = and i32 %call.i.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool20.not.i, i32 754798, i32 1854147328
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %13(ptr noundef %9, i16 noundef zeroext 304, i32 noundef 0) #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %write32.i.i29.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i29.i, align 4
  tail call void %19(ptr noundef %15, i16 noundef zeroext 308, i32 noundef %spec.select.i) #14
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %read32.i.i.i.1 = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read32.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i.i.1, align 4
  %call.i.i.i.1 = tail call i32 %25(ptr noundef %21, i16 noundef zeroext 288) #14
  %and.i.1 = and i32 %call.i.i.i.1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool20.not.i.1 = icmp eq i32 %and.i.1, 0
  %spec.select.i.1 = select i1 %tobool20.not.i.1, i32 13893632, i32 54272
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %write32.i.i.i.1 = getelementptr inbounds %struct.ssb_bus_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write32.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i.i.1, align 4
  tail call void %31(ptr noundef %27, i16 noundef zeroext 304, i32 noundef 4) #14
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %write32.i.i29.i.1 = getelementptr inbounds %struct.ssb_bus_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %write32.i.i29.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i.i29.i.1, align 4
  tail call void %37(ptr noundef %33, i16 noundef zeroext 308, i32 noundef %spec.select.i.1) #14
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %read32.i.i.i.2 = getelementptr inbounds %struct.ssb_bus_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %read32.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i.i.2, align 4
  %call.i.i.i.2 = tail call i32 %43(ptr noundef %39, i16 noundef zeroext 288) #14
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %write32.i.i.i.2 = getelementptr inbounds %struct.ssb_bus_ops, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %write32.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write32.i.i.i.2, align 4
  tail call void %49(ptr noundef %45, i16 noundef zeroext 304, i32 noundef 8) #14
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %write32.i.i29.i.2 = getelementptr inbounds %struct.ssb_bus_ops, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %write32.i.i29.i.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i29.i.2, align 4
  tail call void %55(ptr noundef %51, i16 noundef zeroext 308, i32 noundef 0) #14
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %read32.i.i.i.3 = getelementptr inbounds %struct.ssb_bus_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %read32.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read32.i.i.i.3, align 4
  %call.i.i.i.3 = tail call i32 %61(ptr noundef %57, i16 noundef zeroext 288) #14
  %and.i.3 = and i32 %call.i.i.i.3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool20.not.i.3 = icmp eq i32 %and.i.3, 0
  %spec.select.i.3 = select i1 %tobool20.not.i.3, i32 16777216, i32 1
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %write32.i.i.i.3 = getelementptr inbounds %struct.ssb_bus_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %write32.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i.i.i.3, align 4
  tail call void %67(ptr noundef %63, i16 noundef zeroext 304, i32 noundef 12) #14
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %write32.i.i29.i.3 = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %write32.i.i29.i.3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write32.i.i29.i.3, align 4
  tail call void %73(ptr noundef %69, i16 noundef zeroext 308, i32 noundef %spec.select.i.3) #14
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %read32.i.i.i.4 = getelementptr inbounds %struct.ssb_bus_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %read32.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32.i.i.i.4, align 4
  %call.i.i.i.4 = tail call i32 %79(ptr noundef %75, i16 noundef zeroext 288) #14
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %write32.i.i.i.4 = getelementptr inbounds %struct.ssb_bus_ops, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %write32.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write32.i.i.i.4, align 4
  tail call void %85(ptr noundef %81, i16 noundef zeroext 304, i32 noundef 16) #14
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %write32.i.i29.i.4 = getelementptr inbounds %struct.ssb_bus_ops, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %write32.i.i29.i.4 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32.i.i29.i.4, align 4
  tail call void %91(ptr noundef %87, i16 noundef zeroext 308, i32 noundef 0) #14
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %97(ptr noundef %93, i16 noundef zeroext 288) #14
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write16.i.i, align 4
  tail call void %103(ptr noundef %99, i16 noundef zeroext 1384, i16 noundef zeroext 0) #14
  %104 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %write16.i.i108 = getelementptr inbounds %struct.ssb_bus_ops, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %write16.i.i108 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write16.i.i108, align 4
  tail call void %109(ptr noundef %105, i16 noundef zeroext 1984, i16 noundef zeroext 0) #14
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %write16.i.i109 = getelementptr inbounds %struct.ssb_bus_ops, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %write16.i.i109 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write16.i.i109, align 4
  tail call void %115(ptr noundef %111, i16 noundef zeroext 1292, i16 noundef zeroext 0) #14
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %write16.i.i110 = getelementptr inbounds %struct.ssb_bus_ops, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %write16.i.i110 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write16.i.i110, align 4
  tail call void %121(ptr noundef %117, i16 noundef zeroext 1288, i16 noundef zeroext 0) #14
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %write16.i.i111 = getelementptr inbounds %struct.ssb_bus_ops, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %write16.i.i111 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write16.i.i111, align 4
  tail call void %127(ptr noundef %123, i16 noundef zeroext 1290, i16 noundef zeroext 0) #14
  %128 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %write16.i.i112 = getelementptr inbounds %struct.ssb_bus_ops, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %write16.i.i112 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write16.i.i112, align 4
  tail call void %133(ptr noundef %129, i16 noundef zeroext 1356, i16 noundef zeroext 0) #14
  %134 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %write16.i.i113 = getelementptr inbounds %struct.ssb_bus_ops, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %write16.i.i113 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write16.i.i113, align 4
  tail call void %139(ptr noundef %135, i16 noundef zeroext 1386, i16 noundef zeroext 20) #14
  %140 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %write16.i.i114 = getelementptr inbounds %struct.ssb_bus_ops, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %write16.i.i114 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write16.i.i114, align 4
  tail call void %145(ptr noundef %141, i16 noundef zeroext 1384, i16 noundef zeroext 2086) #14
  %146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %write16.i.i115 = getelementptr inbounds %struct.ssb_bus_ops, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %write16.i.i115 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write16.i.i115, align 4
  tail call void %151(ptr noundef %147, i16 noundef zeroext 1280, i16 noundef zeroext 0) #14
  %152 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %write16.i.i116 = getelementptr inbounds %struct.ssb_bus_ops, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %write16.i.i116 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write16.i.i116, align 4
  tail call void %157(ptr noundef %153, i16 noundef zeroext 1282, i16 noundef zeroext 48) #14
  %radio_ver = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %158 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %159)
  %cmp19 = icmp eq i16 %159, 8272
  br i1 %cmp19, label %land.lhs.true, label %sw.bb.for.body27.preheader_crit_edge

sw.bb.for.body27.preheader_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body27.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 617, 0\0A.popsection", ""() #14, !srcloc !304
  unreachable

land.lhs.true:                                    ; preds = %sw.bb
  %radio_rev = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 10
  %160 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %radio_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %161)
  %cmp22 = icmp ult i8 %161, 6
  br i1 %cmp22, label %if.then, label %land.lhs.true.for.body27.preheader_crit_edge

land.lhs.true.for.body27.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body27.preheader

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 81, i16 noundef zeroext 23) #14
  br label %for.body27.preheader

for.body27.preheader:                             ; preds = %if.then, %land.lhs.true.for.body27.preheader_crit_edge, %sw.bb.for.body27.preheader_crit_edge
  br label %for.body27

for.body27:                                       ; preds = %if.end31.for.body27_crit_edge, %for.body27.preheader
  %i.1123 = phi i32 [ %inc33, %if.end31.for.body27_crit_edge ], [ 0, %for.body27.preheader ]
  %162 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %read16.i.i, align 4
  %call.i.i117 = tail call zeroext i16 %167(ptr noundef %163, i16 noundef zeroext 1294) #14
  %168 = and i16 %call.i.i117, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %tobool.not = icmp eq i16 %168, 0
  br i1 %tobool.not, label %if.end31, label %for.body27.for.end34_crit_edge

for.body27.for.end34_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

if.end31:                                         ; preds = %for.body27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %169(i32 noundef 2147480) #14
  %inc33 = add nuw nsw i32 %i.1123, 1
  %exitcond.not = icmp eq i32 %inc33, 250
  br i1 %exitcond.not, label %if.end31.for.end34_crit_edge, label %if.end31.for.body27_crit_edge

if.end31.for.body27_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body27

if.end31.for.end34_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.end34:                                        ; preds = %if.end31.for.end34_crit_edge, %for.body27.for.end34_crit_edge
  %170 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %read16.i.i118 = getelementptr inbounds %struct.ssb_bus_ops, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %read16.i.i118 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %read16.i.i118, align 4
  %call.i.i119 = tail call zeroext i16 %175(ptr noundef %171, i16 noundef zeroext 1294) #14
  %176 = and i16 %call.i.i119, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %tobool42.not = icmp eq i16 %176, 0
  br i1 %tobool42.not, label %if.end44, label %for.end34.for.end47_crit_edge

for.end34.for.end47_crit_edge:                    ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

if.end44:                                         ; preds = %for.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %177(i32 noundef 2147480) #14
  %178 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %read16.i.i118.1 = getelementptr inbounds %struct.ssb_bus_ops, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %read16.i.i118.1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %read16.i.i118.1, align 4
  %call.i.i119.1 = tail call zeroext i16 %183(ptr noundef %179, i16 noundef zeroext 1294) #14
  %184 = and i16 %call.i.i119.1, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %tobool42.not.1 = icmp eq i16 %184, 0
  br i1 %tobool42.not.1, label %if.end44.1, label %if.end44.for.end47_crit_edge

if.end44.for.end47_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

if.end44.1:                                       ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %185(i32 noundef 2147480) #14
  %186 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %read16.i.i118.2 = getelementptr inbounds %struct.ssb_bus_ops, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %read16.i.i118.2 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %read16.i.i118.2, align 4
  %call.i.i119.2 = tail call zeroext i16 %191(ptr noundef %187, i16 noundef zeroext 1294) #14
  %192 = and i16 %call.i.i119.2, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %192)
  %tobool42.not.2 = icmp eq i16 %192, 0
  br i1 %tobool42.not.2, label %if.end44.2, label %if.end44.1.for.end47_crit_edge

if.end44.1.for.end47_crit_edge:                   ; preds = %if.end44.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

if.end44.2:                                       ; preds = %if.end44.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %193(i32 noundef 2147480) #14
  %194 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %read16.i.i118.3 = getelementptr inbounds %struct.ssb_bus_ops, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %read16.i.i118.3 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %read16.i.i118.3, align 4
  %call.i.i119.3 = tail call zeroext i16 %199(ptr noundef %195, i16 noundef zeroext 1294) #14
  %200 = and i16 %call.i.i119.3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %200)
  %tobool42.not.3 = icmp eq i16 %200, 0
  br i1 %tobool42.not.3, label %if.end44.3, label %if.end44.2.for.end47_crit_edge

if.end44.2.for.end47_crit_edge:                   ; preds = %if.end44.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

if.end44.3:                                       ; preds = %if.end44.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %201(i32 noundef 2147480) #14
  %202 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  %read16.i.i118.4 = getelementptr inbounds %struct.ssb_bus_ops, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %read16.i.i118.4 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read16.i.i118.4, align 4
  %call.i.i119.4 = tail call zeroext i16 %207(ptr noundef %203, i16 noundef zeroext 1294) #14
  %208 = and i16 %call.i.i119.4, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %208)
  %tobool42.not.4 = icmp eq i16 %208, 0
  br i1 %tobool42.not.4, label %if.end44.4, label %if.end44.3.for.end47_crit_edge

if.end44.3.for.end47_crit_edge:                   ; preds = %if.end44.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

if.end44.4:                                       ; preds = %if.end44.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %209(i32 noundef 2147480) #14
  %210 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %read16.i.i118.5 = getelementptr inbounds %struct.ssb_bus_ops, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %read16.i.i118.5 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %read16.i.i118.5, align 4
  %call.i.i119.5 = tail call zeroext i16 %215(ptr noundef %211, i16 noundef zeroext 1294) #14
  %216 = and i16 %call.i.i119.5, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %216)
  %tobool42.not.5 = icmp eq i16 %216, 0
  br i1 %tobool42.not.5, label %if.end44.5, label %if.end44.4.for.end47_crit_edge

if.end44.4.for.end47_crit_edge:                   ; preds = %if.end44.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

if.end44.5:                                       ; preds = %if.end44.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %217(i32 noundef 2147480) #14
  %218 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 4
  %read16.i.i118.6 = getelementptr inbounds %struct.ssb_bus_ops, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %read16.i.i118.6 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %read16.i.i118.6, align 4
  %call.i.i119.6 = tail call zeroext i16 %223(ptr noundef %219, i16 noundef zeroext 1294) #14
  %224 = and i16 %call.i.i119.6, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %224)
  %tobool42.not.6 = icmp eq i16 %224, 0
  br i1 %tobool42.not.6, label %if.end44.6, label %if.end44.5.for.end47_crit_edge

if.end44.5.for.end47_crit_edge:                   ; preds = %if.end44.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

if.end44.6:                                       ; preds = %if.end44.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %225 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %225(i32 noundef 2147480) #14
  %226 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %read16.i.i118.7 = getelementptr inbounds %struct.ssb_bus_ops, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %read16.i.i118.7 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %read16.i.i118.7, align 4
  %call.i.i119.7 = tail call zeroext i16 %231(ptr noundef %227, i16 noundef zeroext 1294) #14
  %232 = and i16 %call.i.i119.7, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %232)
  %tobool42.not.7 = icmp eq i16 %232, 0
  br i1 %tobool42.not.7, label %if.end44.7, label %if.end44.6.for.end47_crit_edge

if.end44.6.for.end47_crit_edge:                   ; preds = %if.end44.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

if.end44.7:                                       ; preds = %if.end44.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %233(i32 noundef 2147480) #14
  %234 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %read16.i.i118.8 = getelementptr inbounds %struct.ssb_bus_ops, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %read16.i.i118.8 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %read16.i.i118.8, align 4
  %call.i.i119.8 = tail call zeroext i16 %239(ptr noundef %235, i16 noundef zeroext 1294) #14
  %240 = and i16 %call.i.i119.8, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %240)
  %tobool42.not.8 = icmp eq i16 %240, 0
  br i1 %tobool42.not.8, label %if.end44.8, label %if.end44.7.for.end47_crit_edge

if.end44.7.for.end47_crit_edge:                   ; preds = %if.end44.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

if.end44.8:                                       ; preds = %if.end44.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %241 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %241(i32 noundef 2147480) #14
  %242 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %243, align 4
  %read16.i.i118.9 = getelementptr inbounds %struct.ssb_bus_ops, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %read16.i.i118.9 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %read16.i.i118.9, align 4
  %call.i.i119.9 = tail call zeroext i16 %247(ptr noundef %243, i16 noundef zeroext 1294) #14
  %248 = and i16 %call.i.i119.9, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %248)
  %tobool42.not.9 = icmp eq i16 %248, 0
  br i1 %tobool42.not.9, label %if.end44.9, label %if.end44.8.for.end47_crit_edge

if.end44.8.for.end47_crit_edge:                   ; preds = %if.end44.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

if.end44.9:                                       ; preds = %if.end44.8
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %249 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %249(i32 noundef 2147480) #14
  br label %for.end47

for.end47:                                        ; preds = %if.end44.9, %if.end44.8.for.end47_crit_edge, %if.end44.7.for.end47_crit_edge, %if.end44.6.for.end47_crit_edge, %if.end44.5.for.end47_crit_edge, %if.end44.4.for.end47_crit_edge, %if.end44.3.for.end47_crit_edge, %if.end44.2.for.end47_crit_edge, %if.end44.1.for.end47_crit_edge, %if.end44.for.end47_crit_edge, %for.end34.for.end47_crit_edge
  %250 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %read16.i.i120 = getelementptr inbounds %struct.ssb_bus_ops, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %read16.i.i120 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %read16.i.i120, align 4
  %call.i.i121 = tail call zeroext i16 %255(ptr noundef %251, i16 noundef zeroext 1680) #14
  %256 = and i16 %call.i.i121, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %256)
  %tobool55.not = icmp eq i16 %256, 0
  br i1 %tobool55.not, label %for.end47.for.end60_crit_edge, label %if.end57

for.end47.for.end60_crit_edge:                    ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end60

if.end57:                                         ; preds = %for.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %257(i32 noundef 2147480) #14
  %258 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev, align 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %259, align 4
  %read16.i.i120.1 = getelementptr inbounds %struct.ssb_bus_ops, ptr %261, i32 0, i32 1
  %262 = ptrtoint ptr %read16.i.i120.1 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %read16.i.i120.1, align 4
  %call.i.i121.1 = tail call zeroext i16 %263(ptr noundef %259, i16 noundef zeroext 1680) #14
  %264 = and i16 %call.i.i121.1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %264)
  %tobool55.not.1 = icmp eq i16 %264, 0
  br i1 %tobool55.not.1, label %if.end57.for.end60_crit_edge, label %if.end57.1

if.end57.for.end60_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end60

if.end57.1:                                       ; preds = %if.end57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %265(i32 noundef 2147480) #14
  %266 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %267, align 4
  %read16.i.i120.2 = getelementptr inbounds %struct.ssb_bus_ops, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %read16.i.i120.2 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %read16.i.i120.2, align 4
  %call.i.i121.2 = tail call zeroext i16 %271(ptr noundef %267, i16 noundef zeroext 1680) #14
  %272 = and i16 %call.i.i121.2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %272)
  %tobool55.not.2 = icmp eq i16 %272, 0
  br i1 %tobool55.not.2, label %if.end57.1.for.end60_crit_edge, label %if.end57.2

if.end57.1.for.end60_crit_edge:                   ; preds = %if.end57.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end60

if.end57.2:                                       ; preds = %if.end57.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %273 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %273(i32 noundef 2147480) #14
  %274 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %275, align 4
  %read16.i.i120.3 = getelementptr inbounds %struct.ssb_bus_ops, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %read16.i.i120.3 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %read16.i.i120.3, align 4
  %call.i.i121.3 = tail call zeroext i16 %279(ptr noundef %275, i16 noundef zeroext 1680) #14
  %280 = and i16 %call.i.i121.3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %280)
  %tobool55.not.3 = icmp eq i16 %280, 0
  br i1 %tobool55.not.3, label %if.end57.2.for.end60_crit_edge, label %if.end57.3

if.end57.2.for.end60_crit_edge:                   ; preds = %if.end57.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end60

if.end57.3:                                       ; preds = %if.end57.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %281 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %281(i32 noundef 2147480) #14
  %282 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dev, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %283, align 4
  %read16.i.i120.4 = getelementptr inbounds %struct.ssb_bus_ops, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %read16.i.i120.4 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %read16.i.i120.4, align 4
  %call.i.i121.4 = tail call zeroext i16 %287(ptr noundef %283, i16 noundef zeroext 1680) #14
  %288 = and i16 %call.i.i121.4, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %288)
  %tobool55.not.4 = icmp eq i16 %288, 0
  br i1 %tobool55.not.4, label %if.end57.3.for.end60_crit_edge, label %if.end57.4

if.end57.3.for.end60_crit_edge:                   ; preds = %if.end57.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end60

if.end57.4:                                       ; preds = %if.end57.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %289 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %289(i32 noundef 2147480) #14
  %290 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %291, align 4
  %read16.i.i120.5 = getelementptr inbounds %struct.ssb_bus_ops, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %read16.i.i120.5 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %read16.i.i120.5, align 4
  %call.i.i121.5 = tail call zeroext i16 %295(ptr noundef %291, i16 noundef zeroext 1680) #14
  %296 = and i16 %call.i.i121.5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %296)
  %tobool55.not.5 = icmp eq i16 %296, 0
  br i1 %tobool55.not.5, label %if.end57.4.for.end60_crit_edge, label %if.end57.5

if.end57.4.for.end60_crit_edge:                   ; preds = %if.end57.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end60

if.end57.5:                                       ; preds = %if.end57.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %297 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %297(i32 noundef 2147480) #14
  %298 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %299, align 4
  %read16.i.i120.6 = getelementptr inbounds %struct.ssb_bus_ops, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %read16.i.i120.6 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %read16.i.i120.6, align 4
  %call.i.i121.6 = tail call zeroext i16 %303(ptr noundef %299, i16 noundef zeroext 1680) #14
  %304 = and i16 %call.i.i121.6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %304)
  %tobool55.not.6 = icmp eq i16 %304, 0
  br i1 %tobool55.not.6, label %if.end57.5.for.end60_crit_edge, label %if.end57.6

if.end57.5.for.end60_crit_edge:                   ; preds = %if.end57.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end60

if.end57.6:                                       ; preds = %if.end57.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %305 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %305(i32 noundef 2147480) #14
  %306 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev, align 4
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %307, align 4
  %read16.i.i120.7 = getelementptr inbounds %struct.ssb_bus_ops, ptr %309, i32 0, i32 1
  %310 = ptrtoint ptr %read16.i.i120.7 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %read16.i.i120.7, align 4
  %call.i.i121.7 = tail call zeroext i16 %311(ptr noundef %307, i16 noundef zeroext 1680) #14
  %312 = and i16 %call.i.i121.7, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %312)
  %tobool55.not.7 = icmp eq i16 %312, 0
  br i1 %tobool55.not.7, label %if.end57.6.for.end60_crit_edge, label %if.end57.7

if.end57.6.for.end60_crit_edge:                   ; preds = %if.end57.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end60

if.end57.7:                                       ; preds = %if.end57.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %313 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %313(i32 noundef 2147480) #14
  %314 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev, align 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %315, align 4
  %read16.i.i120.8 = getelementptr inbounds %struct.ssb_bus_ops, ptr %317, i32 0, i32 1
  %318 = ptrtoint ptr %read16.i.i120.8 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %read16.i.i120.8, align 4
  %call.i.i121.8 = tail call zeroext i16 %319(ptr noundef %315, i16 noundef zeroext 1680) #14
  %320 = and i16 %call.i.i121.8, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %320)
  %tobool55.not.8 = icmp eq i16 %320, 0
  br i1 %tobool55.not.8, label %if.end57.7.for.end60_crit_edge, label %if.end57.8

if.end57.7.for.end60_crit_edge:                   ; preds = %if.end57.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end60

if.end57.8:                                       ; preds = %if.end57.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %321 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %321(i32 noundef 2147480) #14
  %322 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %dev, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %323, align 4
  %read16.i.i120.9 = getelementptr inbounds %struct.ssb_bus_ops, ptr %325, i32 0, i32 1
  %326 = ptrtoint ptr %read16.i.i120.9 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %read16.i.i120.9, align 4
  %call.i.i121.9 = tail call zeroext i16 %327(ptr noundef %323, i16 noundef zeroext 1680) #14
  %328 = and i16 %call.i.i121.9, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %328)
  %tobool55.not.9 = icmp eq i16 %328, 0
  br i1 %tobool55.not.9, label %if.end57.8.for.end60_crit_edge, label %if.end57.9

if.end57.8.for.end60_crit_edge:                   ; preds = %if.end57.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end60

if.end57.9:                                       ; preds = %if.end57.8
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %329 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %329(i32 noundef 2147480) #14
  br label %for.end60

for.end60:                                        ; preds = %if.end57.9, %if.end57.8.for.end60_crit_edge, %if.end57.7.for.end60_crit_edge, %if.end57.6.for.end60_crit_edge, %if.end57.5.for.end60_crit_edge, %if.end57.4.for.end60_crit_edge, %if.end57.3.for.end60_crit_edge, %if.end57.2.for.end60_crit_edge, %if.end57.1.for.end60_crit_edge, %if.end57.for.end60_crit_edge, %for.end47.for.end60_crit_edge
  %330 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %331)
  %cmp63 = icmp eq i16 %331, 8272
  br i1 %cmp63, label %land.lhs.true65, label %for.end60.if.end71_crit_edge

for.end60.if.end71_crit_edge:                     ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

land.lhs.true65:                                  ; preds = %for.end60
  %radio_rev66 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 10
  %332 = ptrtoint ptr %radio_rev66 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %radio_rev66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %333)
  %cmp68 = icmp ult i8 %333, 6
  br i1 %cmp68, label %if.then70, label %land.lhs.true65.if.end71_crit_edge

land.lhs.true65.if.end71_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then70:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 81, i16 noundef zeroext 55) #14
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %land.lhs.true65.if.end71_crit_edge, %for.end60.if.end71_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_radio_write16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_wireless_core_reset(ptr nocapture noundef %dev, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %or1 = or i32 %flags, 786432
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @ssb_device_enable(ptr noundef %1, i32 noundef %or1) #14
  tail call void @msleep(i32 noundef 2) #14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %3, i16 noundef zeroext 3992) #14
  %or4 = and i32 %call.i, -655361
  %and = or i32 %or4, 131072
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i, align 4
  tail call void %13(ptr noundef %9, i16 noundef zeroext 3992, i32 noundef %and) #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %read32.i39 = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read32.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i39, align 4
  %call.i40 = tail call i32 %19(ptr noundef %15, i16 noundef zeroext 3992) #14
  tail call void @msleep(i32 noundef 1) #14
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write32.i41 = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %write32.i41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i41, align 4
  tail call void %25(ptr noundef %21, i16 noundef zeroext 3992, i32 noundef %or4) #14
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %read32.i42 = getelementptr inbounds %struct.ssb_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read32.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i42, align 4
  %call.i43 = tail call i32 %31(ptr noundef %27, i16 noundef zeroext 3992) #14
  tail call void @msleep(i32 noundef 1) #14
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %37(ptr noundef %33, i16 noundef zeroext 998, i16 noundef zeroext 0) #14
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %43(ptr noundef %39, i16 noundef zeroext 288) #14
  %and14 = and i32 %flags, 536870912
  %and13 = and i32 %call.i.i, 2147482623
  %and14.lobit = lshr exact i32 %and14, 29
  %44 = trunc i32 %and14.lobit to i8
  %45 = shl nuw i32 %and14, 2
  %macctl.0 = or i32 %and13, %45
  %46 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %44, ptr %46, align 1
  %or18 = or i32 %macctl.0, 1024
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i.i, align 4
  tail call void %53(ptr noundef %49, i16 noundef zeroext 288, i32 noundef %or18) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_device_enable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_mac_enable(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_suspended = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mac_suspended to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_suspended, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %mac_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !305

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1942, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !306
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool34.not = icmp eq i32 %and.i, 0
  br i1 %tobool34.not, label %if.end.if.end56_crit_edge, label %do.end50, !prof !303

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

do.end50:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1943, i32 noundef 9, ptr noundef null) #14
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %if.end.if.end56_crit_edge
  %3 = ptrtoint ptr %mac_suspended to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp65 = icmp eq i32 %4, 0
  br i1 %cmp65, label %if.then67, label %if.end56.if.end73_crit_edge

if.end56.if.end73_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then67:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %10(ptr noundef %6, i16 noundef zeroext 288) #14
  %or = or i32 %call.i.i, 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write32.i.i, align 4
  tail call void %16(ptr noundef %12, i16 noundef zeroext 288, i32 noundef %or) #14
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write32.i.i88 = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %write32.i.i88 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i88, align 4
  tail call void %22(ptr noundef %18, i16 noundef zeroext 296, i32 noundef 1) #14
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %read32.i.i89 = getelementptr inbounds %struct.ssb_bus_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %read32.i.i89 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i.i89, align 4
  %call.i.i90 = tail call i32 %28(ptr noundef %24, i16 noundef zeroext 288) #14
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %read32.i.i91 = getelementptr inbounds %struct.ssb_bus_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %read32.i.i91 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32.i.i91, align 4
  %call.i.i92 = tail call i32 %34(ptr noundef %30, i16 noundef zeroext 296) #14
  tail call void @b43legacy_power_saving_ctl_bits(ptr noundef %dev, i32 noundef -1, i32 noundef -1) #14
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %35 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wl, align 4
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %36, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #14
  %irq_mask = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 18
  %37 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq_mask, align 4
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %write32.i.i93 = getelementptr inbounds %struct.ssb_bus_ops, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %write32.i.i93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write32.i.i93, align 4
  tail call void %44(ptr noundef %40, i16 noundef zeroext 300, i32 noundef %38) #14
  %45 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wl, align 4
  %irq_lock72 = getelementptr inbounds %struct.b43legacy_wl, ptr %46, i32 0, i32 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock72) #14
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %if.end56.if.end73_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_power_saving_ctl_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_mac_suspend(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1970) #14
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !306
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end26, !prof !303

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1971, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end26, %entry.if.end_crit_edge
  %mac_suspended = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %mac_suspended to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp40 = icmp slt i32 %2, 0
  br i1 %cmp40, label %do.end57, label %if.end.if.end63_crit_edge, !prof !305

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

do.end57:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1972, i32 noundef 9, ptr noundef null) #14
  %3 = ptrtoint ptr %mac_suspended to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %mac_suspended, align 4
  br label %if.end63

if.end63:                                         ; preds = %do.end57, %if.end.if.end63_crit_edge
  %4 = phi i32 [ %.pr, %do.end57 ], [ %2, %if.end.if.end63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp72 = icmp eq i32 %4, 0
  br i1 %cmp72, label %if.then74, label %if.end63.out_crit_edge

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then74:                                        ; preds = %if.end63
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wl, align 4
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %6, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i.i, align 4
  tail call void %12(ptr noundef %8, i16 noundef zeroext 300, i32 noundef 0) #14
  %13 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wl, align 4
  %irq_lock76 = getelementptr inbounds %struct.b43legacy_wl, ptr %14, i32 0, i32 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock76) #14
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %irq.i = getelementptr inbounds %struct.ssb_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %18) #14
  %isr_tasklet.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 21
  tail call void @tasklet_kill(ptr noundef %isr_tasklet.i) #14
  tail call void @b43legacy_power_saving_ctl_bits(ptr noundef %dev, i32 noundef -1, i32 noundef 1) #14
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %24(ptr noundef %20, i16 noundef zeroext 288) #14
  %and = and i32 %call.i.i, -2
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write32.i.i103 = getelementptr inbounds %struct.ssb_bus_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %write32.i.i103 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i.i103, align 4
  tail call void %30(ptr noundef %26, i16 noundef zeroext 288, i32 noundef %and) #14
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %read32.i.i104 = getelementptr inbounds %struct.ssb_bus_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %read32.i.i104 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i.i104, align 4
  %call.i.i105 = tail call i32 %36(ptr noundef %32, i16 noundef zeroext 296) #14
  br label %for.body

for.body:                                         ; preds = %if.end84.for.body_crit_edge, %if.then74
  %i.0108 = phi i32 [ 40, %if.then74 ], [ %dec, %if.end84.for.body_crit_edge ]
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %read32.i.i106 = getelementptr inbounds %struct.ssb_bus_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %read32.i.i106 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32.i.i106, align 4
  %call.i.i107 = tail call i32 %42(ptr noundef %38, i16 noundef zeroext 296) #14
  %and81 = and i32 %call.i.i107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end84, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end84:                                         ; preds = %for.body
  tail call void @msleep(i32 noundef 1) #14
  %dec = add nsw i32 %i.0108, -1
  %tobool79.not = icmp eq i32 %dec, 0
  br i1 %tobool79.not, label %for.end, label %if.end84.for.body_crit_edge

if.end84.for.body_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %44, ptr noundef nonnull @.str.13)
  br label %out

out:                                              ; preds = %for.end, %for.body.out_crit_edge, %if.end63.out_crit_edge
  %45 = ptrtoint ptr %mac_suspended to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mac_suspended, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %mac_suspended, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_controller_restart(ptr noundef %dev, ptr noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %0 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyinfo(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef %reason)
  %4 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl, align 4
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %restart_work = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 24
  tail call void @ieee80211_queue_work(ptr noundef %7, ptr noundef %restart_work) #14
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ssb_driver_unregister(ptr noundef nonnull @b43legacy_ssb_driver) #14
  tail call void @b43legacy_debugfs_exit() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_debugfs_exit() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43legacy_debugfs_init() #14
  %call = tail call i32 @__ssb_driver_register(ptr noundef nonnull @b43legacy_ssb_driver, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %err_dfs_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105) #17
  br label %cleanup

err_dfs_exit:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @b43legacy_debugfs_exit() #14
  br label %cleanup

cleanup:                                          ; preds = %err_dfs_exit, %if.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %devtypedata.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %devtypedata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtypedata.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then:                                          ; preds = %entry
  %bus.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 4
  %boardinfo.i.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %boardinfo.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %boardinfo.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %5)
  %cmp.i.i = icmp eq i16 %5, 4203
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.b43legacy_sprom_fixup.exit.i_crit_edge

if.then.b43legacy_sprom_fixup.exit.i_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_sprom_fixup.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %type.i.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 78, i16 %7)
  %cmp4.i.i = icmp eq i16 %7, 78
  br i1 %cmp4.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.b43legacy_sprom_fixup.exit.i_crit_edge

land.lhs.true.i.i.b43legacy_sprom_fixup.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_sprom_fixup.exit.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %board_rev.i.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 22, i32 13
  %8 = ptrtoint ptr %board_rev.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %board_rev.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %9)
  %cmp8.i.i = icmp ugt i16 %9, 64
  br i1 %cmp8.i.i, label %if.then.i.i, label %land.lhs.true6.i.i.b43legacy_sprom_fixup.exit.i_crit_edge

land.lhs.true6.i.i.b43legacy_sprom_fixup.exit.i_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_sprom_fixup.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %boardflags_lo.i.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 22, i32 70
  %10 = ptrtoint ptr %boardflags_lo.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %boardflags_lo.i.i, align 4
  %12 = or i16 %11, 2
  store i16 %12, ptr %boardflags_lo.i.i, align 4
  br label %b43legacy_sprom_fixup.exit.i

b43legacy_sprom_fixup.exit.i:                     ; preds = %if.then.i.i, %land.lhs.true6.i.i.b43legacy_sprom_fixup.exit.i_crit_edge, %land.lhs.true.i.i.b43legacy_sprom_fixup.exit.i_crit_edge, %if.then.b43legacy_sprom_fixup.exit.i_crit_edge
  %call.i.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 800, ptr noundef nonnull @b43legacy_hw_ops, ptr noundef null) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %b43legacy_wireless_init.exit, label %if.end.i

if.end.i:                                         ; preds = %b43legacy_sprom_fixup.exit.i
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i.i, align 4
  %or.i.i89.i = or i32 %14, 2066
  store i32 %or.i.i89.i, ptr %flags.i.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy.i, align 8
  %interface_modes.i = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %interface_modes.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 14, ptr %interface_modes.i, align 4
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %queues.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %queues.i, align 4
  %max_rates.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %max_rates.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %max_rates.i, align 1
  %dev3.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev3.i, align 4
  %22 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56, i32 1
  %23 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %parent.i.i.i, align 8
  %et1mac.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 22, i32 4
  %24 = ptrtoint ptr %et1mac.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %et1mac.i, align 4
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr %struct.ssb_bus, ptr %3, i32 0, i32 22, i32 4, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %28 to i32
  %or.i.i90.i = or i32 %25, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i90.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i90.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.else.i_crit_edge, label %is_valid_ether_addr.exit.i.if.end_crit_edge

is_valid_ether_addr.exit.i.if.end_crit_edge:      ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

is_valid_ether_addr.exit.i.if.else.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.else.i:                                        ; preds = %is_valid_ether_addr.exit.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %il0mac.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 22, i32 2
  br label %if.end

b43legacy_wireless_init.exit:                     ; preds = %b43legacy_sprom_fixup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef null, ptr noundef nonnull @.str.17) #14
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %is_valid_ether_addr.exit.i.if.end_crit_edge
  %il0mac.sink.i = phi ptr [ %il0mac.i, %if.else.i ], [ %et1mac.i, %is_valid_ether_addr.exit.i.if.end_crit_edge ]
  %29 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy.i, align 8
  %perm_addr.i93.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 1
  %31 = call ptr @memcpy(ptr %perm_addr.i93.i, ptr %il0mac.sink.i, i32 6)
  %32 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i.i = getelementptr %struct.wiphy, ptr %32, i32 0, i32 14, i32 1
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i, align 1
  %35 = or i8 %34, 32
  store i8 %35, ptr %arrayidx.i.i, align 1
  %priv.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i.i, align 8
  %38 = call ptr @memset(ptr %37, i32 0, i32 800)
  %hw12.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %hw12.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %hw12.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @b43legacy_wireless_init.__key, i16 noundef signext 3) #14
  %leds_lock.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %leds_lock.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @b43legacy_wireless_init.__key.19, i16 noundef signext 3) #14
  %mutex.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @b43legacy_wireless_init.__key.21) #14
  %devlist.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 16
  %40 = ptrtoint ptr %devlist.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %devlist.i, ptr %devlist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 16, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %devlist.i, ptr %prev.i.i, align 4
  %beacon_update_trigger.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 24
  tail call void @__init_work(ptr noundef %beacon_update_trigger.i, i32 noundef 0) #14
  %42 = ptrtoint ptr %beacon_update_trigger.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -64, ptr %beacon_update_trigger.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 24, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @b43legacy_wireless_init.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry25.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 24, i32 1
  %43 = ptrtoint ptr %entry25.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %entry25.i, ptr %entry25.i, align 4
  %prev.i94.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 24, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i94.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %entry25.i, ptr %prev.i94.i, align 4
  %func.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 24, i32 2
  %45 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @b43legacy_beacon_update_trigger_work, ptr %func.i, align 4
  %tx_work.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 26
  tail call void @__init_work(ptr noundef %tx_work.i, i32 noundef 0) #14
  %46 = ptrtoint ptr %tx_work.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %tx_work.i, align 4
  %lockdep_map35.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 26, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map35.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @b43legacy_wireless_init.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry37.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 26, i32 1
  %47 = ptrtoint ptr %entry37.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry37.i, ptr %entry37.i, align 4
  %prev.i95.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 26, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i95.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry37.i, ptr %prev.i95.i, align 4
  %func39.i = getelementptr inbounds %struct.b43legacy_wl, ptr %37, i32 0, i32 26, i32 2
  %49 = ptrtoint ptr %func39.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @b43legacy_tx_work, ptr %func39.i, align 4
  %arrayidx.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 0
  %lock.i.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 0, i32 0, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 0, i32 1
  %52 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %qlen.i.i.i, align 4
  %arrayidx42.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 28, i32 0
  %53 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx42.i, align 1
  %arrayidx.1.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 1
  %lock.i.1.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.1.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %54 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx.1.i, ptr %arrayidx.1.i, align 4
  %prev.i.i.1.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 1, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx.1.i, ptr %prev.i.i.1.i, align 4
  %qlen.i.i.1.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 1, i32 1
  %56 = ptrtoint ptr %qlen.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %qlen.i.i.1.i, align 4
  %arrayidx42.1.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 28, i32 1
  %57 = ptrtoint ptr %arrayidx42.1.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx42.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 2
  %lock.i.2.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.2.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %58 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx.2.i, ptr %arrayidx.2.i, align 4
  %prev.i.i.2.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 2, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx.2.i, ptr %prev.i.i.2.i, align 4
  %qlen.i.i.2.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 2, i32 1
  %60 = ptrtoint ptr %qlen.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %qlen.i.i.2.i, align 4
  %arrayidx42.2.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 28, i32 2
  %61 = ptrtoint ptr %arrayidx42.2.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx42.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 3
  %lock.i.3.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.3.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %62 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx.3.i, ptr %arrayidx.3.i, align 4
  %prev.i.i.3.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 3, i32 0, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx.3.i, ptr %prev.i.i.3.i, align 4
  %qlen.i.i.3.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 27, i32 3, i32 1
  %64 = ptrtoint ptr %qlen.i.i.3.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %qlen.i.i.3.i, align 4
  %arrayidx42.3.i = getelementptr %struct.b43legacy_wl, ptr %37, i32 0, i32 28, i32 3
  %65 = ptrtoint ptr %arrayidx42.3.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx42.3.i, align 1
  tail call void @ssb_set_devtypedata(ptr noundef %dev, ptr noundef %37) #14
  %66 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus.i, align 4
  %chip_id.i = getelementptr inbounds %struct.ssb_bus, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %chip_id.i, align 4
  %conv.i = zext i16 %69 to i32
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 4, i32 2
  %70 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %revision.i, align 4
  %conv44.i = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @b43legacyinfo(ptr noundef %37, ptr noundef nonnull @.str.27, i32 noundef %conv.i, i32 noundef %conv44.i) #14
  %72 = ptrtoint ptr %devtypedata.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %devtypedata.i, align 4
  %tobool5.not = icmp eq ptr %73, null
  br i1 %tobool5.not, label %do.end, label %if.end.if.end28_crit_edge, !prof !305

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3858, i32 noundef 9, ptr noundef null) #14
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end.if.end28_crit_edge, %entry.if.end28_crit_edge
  %wl.0 = phi ptr [ %1, %entry.if.end28_crit_edge ], [ null, %do.end ], [ %73, %if.end.if.end28_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 2920) #18
  %tobool.not.i66 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i66, label %if.end28.err_wireless_exit_crit_edge, label %if.end.i67

if.end28.err_wireless_exit_crit_edge:             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_wireless_exit

if.end.i67:                                       ; preds = %if.end28
  %75 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %dev, ptr %call7.i.i.i, align 8
  %wl2.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %wl2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %wl.0, ptr %wl2.i, align 4
  %__init_status.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__init_status.i, i32 noundef 4) #14
  %77 = ptrtoint ptr %__init_status.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 0, ptr %__init_status.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !307
  %78 = load i32, ptr @modparam_bad_frames_preempt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool9.i = icmp ne i32 %78, 0
  %bad_frames_preempt.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 5
  %frombool.i = zext i1 %tobool9.i to i8
  %79 = ptrtoint ptr %bad_frames_preempt.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %frombool.i, ptr %bad_frames_preempt.i, align 1
  %isr_tasklet.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 21
  tail call void @tasklet_setup(ptr noundef %isr_tasklet.i, ptr noundef nonnull @b43legacy_interrupt_tasklet) #14
  %80 = load i32, ptr @modparam_pio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool10.not.i = icmp eq i32 %80, 0
  br i1 %tobool10.not.i, label %if.end.i67.if.end12.i_crit_edge, label %if.then11.i

if.end.i67.if.end12.i_crit_edge:                  ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #16
  %__using_pio.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %__using_pio.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %__using_pio.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end.i67.if.end12.i_crit_edge
  %list.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 31
  %82 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i68 = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 31, i32 1
  %83 = ptrtoint ptr %prev.i.i68 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %list.i, ptr %prev.i.i68, align 8
  %84 = ptrtoint ptr %wl2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wl2.i, align 4
  %86 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call7.i.i.i, align 8
  %bus3.i.i = getelementptr inbounds %struct.ssb_device, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %bus3.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus3.i.i, align 4
  %bustype.i.i = getelementptr inbounds %struct.ssb_bus, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %bustype.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bustype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i.i69 = icmp eq i32 %91, 1
  br i1 %cmp.i.i69, label %cond.true.i.i, label %if.end12.i.cond.end.i.i_crit_edge

if.end12.i.cond.end.i.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  %92 = getelementptr inbounds %struct.ssb_bus, ptr %89, i32 0, i32 6
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end12.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %94, %cond.true.i.i ], [ null, %if.end12.i.cond.end.i.i_crit_edge ]
  %call.i.i70 = tail call i32 @ssb_bus_powerup(ptr noundef %89, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %tobool.not.i.i = icmp eq i32 %call.i.i70, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i71

if.then.i.i71:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %85, ptr noundef nonnull @.str.70) #14
  br label %err_kfree_wldev.i

if.end.i.i:                                       ; preds = %cond.end.i.i
  %95 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call7.i.i.i, align 8
  %revision.i.i = getelementptr inbounds %struct.ssb_device, ptr %96, i32 0, i32 4, i32 2
  %97 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %98)
  %cmp5.i.i = icmp ugt i8 %98, 4
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.else.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %96, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i36.i = tail call i32 %102(ptr noundef %96, i16 noundef zeroext 3996) #14
  %and.i.i = lshr i32 %call.i.i36.i, 16
  %and.lobit.i.i = and i32 %and.i.i, 1
  %103 = xor i32 %and.lobit.i.i, 1
  br label %if.end24.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %98)
  %cmp19.i.i = icmp eq i8 %98, 4
  %not.cmp19.i.i = xor i1 %cmp19.i.i, true
  %..i.i = zext i1 %not.cmp19.i.i to i32
  %.154.i.i = zext i1 %cmp19.i.i to i32
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.else.i.i, %if.then7.i.i
  %have_bphy.1.i.i = phi i32 [ %103, %if.then7.i.i ], [ %..i.i, %if.else.i.i ]
  %have_gphy.0.i.i = phi i32 [ %and.lobit.i.i, %if.then7.i.i ], [ %.154.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_gphy.0.i.i)
  %tobool25.not.i.i = icmp ne i32 %have_gphy.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_bphy.1.i.i)
  %tobool26.i.i = icmp ne i32 %have_bphy.1.i.i, 0
  %spec.select155.i.i = select i1 %tobool25.not.i.i, i1 true, i1 %tobool26.i.i
  %gmode.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %frombool.i.i = zext i1 %spec.select155.i.i to i8
  %104 = ptrtoint ptr %gmode.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %frombool.i.i, ptr %gmode.i.i, align 1
  %radio_on.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 9, i32 15
  %105 = ptrtoint ptr %radio_on.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %radio_on.i.i, align 4
  %cond32.i.i = select i1 %spec.select155.i.i, i32 536870912, i32 0
  tail call void @b43legacy_wireless_core_reset(ptr noundef nonnull %call7.i.i.i, i32 noundef %cond32.i.i) #14
  %106 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call7.i.i.i, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %read16.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %read16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read16.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i16 %111(ptr noundef %107, i16 noundef zeroext 992) #14
  %shr.i.i.i = lshr i16 %call.i.i.i.i.i, 12
  %conv2.i.i.i = trunc i16 %shr.i.i.i to i8
  %and3.i.i.i = lshr i16 %call.i.i.i.i.i, 8
  %112 = trunc i16 %and3.i.i.i to i8
  %conv5.i.i.i = and i8 %112, 15
  %conv7.i.i.i = trunc i16 %call.i.i.i.i.i to i8
  %conv8.i.i.i = zext i8 %conv5.i.i.i to i32
  %113 = zext i32 %conv8.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv8.i.i.i, label %if.end24.i.i.if.then28.i.i.i_crit_edge [
    i32 1, label %sw.bb.i.i.i
    i32 2, label %sw.bb22.i.i.i
  ]

if.end24.i.i.if.then28.i.i.i_crit_edge:           ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28.i.i.i

sw.bb.i.i.i:                                      ; preds = %if.end24.i.i
  %114 = zext i8 %conv7.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %conv7.i.i.i, label %sw.bb.i.i.i.if.then28.i.i.i_crit_edge [
    i8 2, label %sw.bb.i.i.i.if.end32.i.i.i_crit_edge
    i8 4, label %sw.bb.i.i.i.if.end32.i.i.i_crit_edge80
    i8 6, label %sw.bb.i.i.i.if.end32.i.i.i_crit_edge81
    i8 7, label %sw.bb.i.i.i.if.end32.i.i.i_crit_edge82
  ]

sw.bb.i.i.i.if.end32.i.i.i_crit_edge82:           ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i.i

sw.bb.i.i.i.if.end32.i.i.i_crit_edge81:           ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i.i

sw.bb.i.i.i.if.end32.i.i.i_crit_edge80:           ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i.i

sw.bb.i.i.i.if.end32.i.i.i_crit_edge:             ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i.i

sw.bb.i.i.i.if.then28.i.i.i_crit_edge:            ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28.i.i.i

sw.bb22.i.i.i:                                    ; preds = %if.end24.i.i
  %conv7.mask.i.i.i = and i16 %call.i.i.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %conv7.mask.i.i.i)
  %cmp24.i.i.i = icmp ult i16 %conv7.mask.i.i.i, 9
  br i1 %cmp24.i.i.i, label %sw.bb22.i.i.i.if.end32.i.i.i_crit_edge, label %sw.bb22.i.i.i.if.then28.i.i.i_crit_edge

sw.bb22.i.i.i.if.then28.i.i.i_crit_edge:          ; preds = %sw.bb22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28.i.i.i

sw.bb22.i.i.i.if.end32.i.i.i_crit_edge:           ; preds = %sw.bb22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i.i

if.then28.i.i.i:                                  ; preds = %sw.bb22.i.i.i.if.then28.i.i.i_crit_edge, %sw.bb.i.i.i.if.then28.i.i.i_crit_edge, %if.end24.i.i.if.then28.i.i.i_crit_edge
  %115 = ptrtoint ptr %wl2.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %wl2.i, align 4
  %conv29.i.i.i = zext i16 %shr.i.i.i to i32
  %conv7.mask172.i.i.i = and i16 %call.i.i.i.i.i, 255
  %conv31.i.i.i = zext i16 %conv7.mask172.i.i.i to i32
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %116, ptr noundef nonnull @.str.73, i32 noundef %conv29.i.i.i, i32 noundef %conv8.i.i.i, i32 noundef %conv31.i.i.i) #14
  br label %err_powerdown.i.i

if.end32.i.i.i:                                   ; preds = %sw.bb22.i.i.i.if.end32.i.i.i_crit_edge, %sw.bb.i.i.i.if.end32.i.i.i_crit_edge, %sw.bb.i.i.i.if.end32.i.i.i_crit_edge80, %sw.bb.i.i.i.if.end32.i.i.i_crit_edge81, %sw.bb.i.i.i.if.end32.i.i.i_crit_edge82
  %117 = ptrtoint ptr %wl2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wl2.i, align 4
  %conv34.i.i.i = zext i16 %shr.i.i.i to i32
  %conv7.mask171.i.i.i = and i16 %call.i.i.i.i.i, 255
  %conv36.i.i.i = zext i16 %conv7.mask171.i.i.i to i32
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %118, ptr noundef nonnull @.str.74, i32 noundef %conv34.i.i.i, i32 noundef %conv8.i.i.i, i32 noundef %conv36.i.i.i) #14
  %119 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %call7.i.i.i, align 8
  %bus.i.i.i = getelementptr inbounds %struct.ssb_device, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bus.i.i.i, align 4
  %chip_id.i.i.i = getelementptr inbounds %struct.ssb_bus, ptr %122, i32 0, i32 9
  %123 = ptrtoint ptr %chip_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %chip_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17175, i16 %124)
  %cmp39.i.i.i = icmp eq i16 %124, 17175
  br i1 %cmp39.i.i.i, label %if.then41.i.i.i, label %if.else58.i.i.i

if.then41.i.i.i:                                  ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %chip_rev.i.i.i = getelementptr inbounds %struct.ssb_bus, ptr %122, i32 0, i32 10
  %125 = ptrtoint ptr %chip_rev.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %chip_rev.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %126)
  %switch.selectcmp.i.i.i = icmp eq i8 %126, 1
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 1107624319, i32 1376059775
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %switch.selectcmp177.i.i.i = icmp eq i8 %126, 0
  %switch.select178.i.i.i = select i1 %switch.selectcmp177.i.i.i, i32 839188863, i32 %switch.select.i.i.i
  br label %if.end63.i.i.i

if.else58.i.i.i:                                  ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %127 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %120, align 4
  %write16.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %write16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write16.i.i.i.i.i, align 4
  tail call void %130(ptr noundef %120, i16 noundef zeroext 1014, i16 noundef zeroext 1) #14
  %131 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call7.i.i.i, align 8
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %read16.i.i179.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %read16.i.i179.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read16.i.i179.i.i.i, align 4
  %call.i.i180.i.i.i = tail call zeroext i16 %136(ptr noundef %132, i16 noundef zeroext 1016) #14
  %conv60.i.i.i = zext i16 %call.i.i180.i.i.i to i32
  %shl.i.i.i = shl nuw i32 %conv60.i.i.i, 16
  %137 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %call7.i.i.i, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %write16.i.i181.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %write16.i.i181.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write16.i.i181.i.i.i, align 4
  tail call void %142(ptr noundef %138, i16 noundef zeroext 1014, i16 noundef zeroext 1) #14
  %143 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %call7.i.i.i, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %read16.i.i182.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %read16.i.i182.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %read16.i.i182.i.i.i, align 4
  %call.i.i183.i.i.i = tail call zeroext i16 %148(ptr noundef %144, i16 noundef zeroext 1018) #14
  %conv62.i.i.i = zext i16 %call.i.i183.i.i.i to i32
  %or.i.i.i = or i32 %shl.i.i.i, %conv62.i.i.i
  br label %if.end63.i.i.i

if.end63.i.i.i:                                   ; preds = %if.else58.i.i.i, %if.then41.i.i.i
  %tmp.0.i.i.i = phi i32 [ %or.i.i.i, %if.else58.i.i.i ], [ %switch.select178.i.i.i, %if.then41.i.i.i ]
  %149 = trunc i32 %tmp.0.i.i.i to i16
  %conv65.i.i.i = and i16 %149, 4095
  %and66.i.i.i = lshr i32 %tmp.0.i.i.i, 12
  %conv68.i.i.i = trunc i32 %and66.i.i.i to i16
  %shr70.i.i.i = lshr i32 %tmp.0.i.i.i, 28
  %150 = zext i32 %conv8.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %conv8.i.i.i, label %do.end.i.i.i [
    i32 1, label %sw.bb73.i.i.i
    i32 2, label %sw.epilog101.i.i.i
  ]

sw.bb73.i.i.i:                                    ; preds = %if.end63.i.i.i
  %151 = and i32 %tmp.0.i.i.i, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 33882112, i32 %151)
  %cmp76.not.i.i.i = icmp eq i32 %151, 33882112
  br i1 %cmp76.not.i.i.i, label %sw.bb73.i.i.i.if.end36.i.i_crit_edge, label %sw.bb73.i.i.i.if.then103.i.i.i_crit_edge

sw.bb73.i.i.i.if.then103.i.i.i_crit_edge:         ; preds = %sw.bb73.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then103.i.i.i

sw.bb73.i.i.i.if.end36.i.i_crit_edge:             ; preds = %sw.bb73.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i.i

do.end.i.i.i:                                     ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call89.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3054, 0\0A.popsection", ""() #14, !srcloc !308
  unreachable

sw.epilog101.i.i.i:                               ; preds = %if.end63.i.i.i
  %152 = and i32 %tmp.0.i.i.i, 268431360
  call void @__sanitizer_cov_trace_const_cmp4(i32 33882112, i32 %152)
  %cmp82.not.i.i.i = icmp eq i32 %152, 33882112
  br i1 %cmp82.not.i.i.i, label %sw.epilog101.i.i.i.if.end36.i.i_crit_edge, label %sw.epilog101.i.i.i.if.then103.i.i.i_crit_edge

sw.epilog101.i.i.i.if.then103.i.i.i_crit_edge:    ; preds = %sw.epilog101.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then103.i.i.i

sw.epilog101.i.i.i.if.end36.i.i_crit_edge:        ; preds = %sw.epilog101.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i.i

if.then103.i.i.i:                                 ; preds = %sw.epilog101.i.i.i.if.then103.i.i.i_crit_edge, %sw.bb73.i.i.i.if.then103.i.i.i_crit_edge
  %153 = ptrtoint ptr %wl2.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %wl2.i, align 4
  %conv105.i.i.i = zext i16 %conv65.i.i.i to i32
  %conv106.i.i.i = and i32 %and66.i.i.i, 65535
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %154, ptr noundef nonnull @.str.76, i32 noundef %conv105.i.i.i, i32 noundef %conv106.i.i.i, i32 noundef %shr70.i.i.i) #14
  br label %err_powerdown.i.i

if.end36.i.i:                                     ; preds = %sw.epilog101.i.i.i.if.end36.i.i_crit_edge, %sw.bb73.i.i.i.if.end36.i.i_crit_edge
  %155 = ptrtoint ptr %wl2.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %wl2.i, align 4
  %conv110.i.i.i = zext i16 %conv65.i.i.i to i32
  %conv111.i.i.i = and i32 %and66.i.i.i, 65535
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %156, ptr noundef nonnull @.str.77, i32 noundef %conv110.i.i.i, i32 noundef %conv111.i.i.i, i32 noundef %shr70.i.i.i) #14
  %radio_manuf113.i.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 9, i32 7
  %157 = ptrtoint ptr %radio_manuf113.i.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv65.i.i.i, ptr %radio_manuf113.i.i.i, align 2
  %radio_ver114.i.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 9, i32 8
  %158 = ptrtoint ptr %radio_ver114.i.i.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv68.i.i.i, ptr %radio_ver114.i.i.i, align 4
  %conv115.i.i.i = trunc i32 %shr70.i.i.i to i8
  %radio_rev116.i.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 9, i32 10
  %159 = ptrtoint ptr %radio_rev116.i.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv115.i.i.i, ptr %radio_rev116.i.i.i, align 1
  %analog.i.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 9, i32 2
  %160 = ptrtoint ptr %analog.i.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv2.i.i.i, ptr %analog.i.i.i, align 2
  %type.i.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 9, i32 3
  %161 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv5.i.i.i, ptr %type.i.i.i, align 1
  %rev.i.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 9, i32 4
  %162 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv7.i.i.i, ptr %rev.i.i.i, align 4
  %tobool37.not.i.i = icmp eq ptr %cond.i.i, null
  br i1 %tobool37.not.i.i, label %if.end36.i.i.if.then50.i.i_crit_edge, label %lor.lhs.false.i.i

if.end36.i.i.if.then50.i.i_crit_edge:             ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then50.i.i

lor.lhs.false.i.i:                                ; preds = %if.end36.i.i
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %cond.i.i, i32 0, i32 8
  %163 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %device.i.i, align 2
  %165 = zext i16 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %164, label %lor.lhs.false.i.i.if.then50.i.i_crit_edge [
    i16 17170, label %lor.lhs.false.i.i.if.end68.i.i_crit_edge
    i16 17177, label %lor.lhs.false.i.i.if.end68.i.i_crit_edge83
    i16 17188, label %lor.lhs.false.i.i.if.end68.i.i_crit_edge84
  ]

lor.lhs.false.i.i.if.end68.i.i_crit_edge84:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68.i.i

lor.lhs.false.i.i.if.end68.i.i_crit_edge83:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68.i.i

lor.lhs.false.i.i.if.end68.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68.i.i

lor.lhs.false.i.i.if.then50.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then50.i.i

if.then50.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then50.i.i_crit_edge, %if.end36.i.i.if.then50.i.i_crit_edge
  %trunc.i = trunc i16 %and3.i.i.i to i4
  %166 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %166, ptr @__sancov_gen_cov_switch_values.111)
  switch i4 %trunc.i, label %do.end.i.i [
    i4 1, label %if.then50.i.i.if.end68.i.i_crit_edge
    i4 2, label %sw.bb53.i.i
  ]

if.then50.i.i.if.end68.i.i_crit_edge:             ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68.i.i

sw.bb53.i.i:                                      ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68.i.i

do.end.i.i:                                       ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call56.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3680, 0\0A.popsection", ""() #14, !srcloc !309
  unreachable

if.end68.i.i:                                     ; preds = %sw.bb53.i.i, %if.then50.i.i.if.end68.i.i_crit_edge, %lor.lhs.false.i.i.if.end68.i.i_crit_edge, %lor.lhs.false.i.i.if.end68.i.i_crit_edge83, %lor.lhs.false.i.i.if.end68.i.i_crit_edge84
  %have_bphy.2.i.i = phi i32 [ 0, %sw.bb53.i.i ], [ %have_bphy.1.i.i, %lor.lhs.false.i.i.if.end68.i.i_crit_edge ], [ %have_bphy.1.i.i, %lor.lhs.false.i.i.if.end68.i.i_crit_edge83 ], [ %have_bphy.1.i.i, %lor.lhs.false.i.i.if.end68.i.i_crit_edge84 ], [ 1, %if.then50.i.i.if.end68.i.i_crit_edge ]
  %have_gphy.1.i.i = phi i32 [ 1, %sw.bb53.i.i ], [ %have_gphy.0.i.i, %lor.lhs.false.i.i.if.end68.i.i_crit_edge ], [ %have_gphy.0.i.i, %lor.lhs.false.i.i.if.end68.i.i_crit_edge83 ], [ %have_gphy.0.i.i, %lor.lhs.false.i.i.if.end68.i.i_crit_edge84 ], [ 0, %if.then50.i.i.if.end68.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_gphy.1.i.i)
  %tobool69.not.i.i = icmp eq i32 %have_gphy.1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_bphy.2.i.i)
  %tobool71.i.i = icmp ne i32 %have_bphy.2.i.i, 0
  %not.tobool69.not.i.i = xor i1 %tobool69.not.i.i, true
  %spec.select156.i.i = select i1 %not.tobool69.not.i.i, i1 true, i1 %tobool71.i.i
  %frombool75.i.i = zext i1 %spec.select156.i.i to i8
  %167 = ptrtoint ptr %gmode.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %frombool75.i.i, ptr %gmode.i.i, align 1
  %cond80.i.i = select i1 %spec.select156.i.i, i32 536870912, i32 0
  tail call void @b43legacy_wireless_core_reset(ptr noundef nonnull %call7.i.i.i, i32 noundef %cond80.i.i) #14
  %168 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %call7.i.i.i, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %write32.i.i.i70.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %171, i32 0, i32 5
  %172 = ptrtoint ptr %write32.i.i.i70.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %write32.i.i.i70.i.i.i.i, align 4
  tail call void %173(ptr noundef %169, i16 noundef zeroext 352, i32 noundef 65536) #14
  %174 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %call7.i.i.i, align 8
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %read32.i.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %read32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read32.i.i.i.i.i.i, align 4
  %call.i.i71.i.i.i.i = tail call i32 %179(ptr noundef %175, i16 noundef zeroext 356) #14
  %180 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %call7.i.i.i, align 8
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %write32.i.i.i69.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %183, i32 0, i32 5
  %184 = ptrtoint ptr %write32.i.i.i69.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write32.i.i.i69.i.i.i.i, align 4
  tail call void %185(ptr noundef %181, i16 noundef zeroext 352, i32 noundef 65536) #14
  %186 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %call7.i.i.i, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %write32.i.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %189, i32 0, i32 5
  %190 = ptrtoint ptr %write32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %write32.i.i.i.i.i.i, align 4
  tail call void %191(ptr noundef %187, i16 noundef zeroext 356, i32 noundef -1437248086) #14
  %192 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %call7.i.i.i, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %write32.i.i.i70.i23.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %195, i32 0, i32 5
  %196 = ptrtoint ptr %write32.i.i.i70.i23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %write32.i.i.i70.i23.i.i.i, align 4
  tail call void %197(ptr noundef %193, i16 noundef zeroext 352, i32 noundef 65536) #14
  %198 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %call7.i.i.i, align 8
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %read32.i.i.i24.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %read32.i.i.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read32.i.i.i24.i.i.i, align 4
  %call.i.i71.i25.i.i.i = tail call i32 %203(ptr noundef %199, i16 noundef zeroext 356) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1437248086, i32 %call.i.i71.i25.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i71.i25.i.i.i, -1437248086
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end68.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge

if.end68.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge: ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_validate_chipaccess.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end68.i.i
  %204 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %call7.i.i.i, align 8
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  %write32.i.i.i69.i26.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %207, i32 0, i32 5
  %208 = ptrtoint ptr %write32.i.i.i69.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %write32.i.i.i69.i26.i.i.i, align 4
  tail call void %209(ptr noundef %205, i16 noundef zeroext 352, i32 noundef 65536) #14
  %210 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %call7.i.i.i, align 8
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %write32.i.i.i27.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %213, i32 0, i32 5
  %214 = ptrtoint ptr %write32.i.i.i27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %write32.i.i.i27.i.i.i, align 4
  tail call void %215(ptr noundef %211, i16 noundef zeroext 356, i32 noundef 1437248085) #14
  %216 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %call7.i.i.i, align 8
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 4
  %write32.i.i.i70.i28.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %219, i32 0, i32 5
  %220 = ptrtoint ptr %write32.i.i.i70.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %write32.i.i.i70.i28.i.i.i, align 4
  tail call void %221(ptr noundef %217, i16 noundef zeroext 352, i32 noundef 65536) #14
  %222 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %call7.i.i.i, align 8
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %read32.i.i.i29.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %read32.i.i.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %read32.i.i.i29.i.i.i, align 4
  %call.i.i71.i30.i.i.i = tail call i32 %227(ptr noundef %223, i16 noundef zeroext 356) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1437248085, i32 %call.i.i71.i30.i.i.i)
  %cmp3.not.i.i.i = icmp eq i32 %call.i.i71.i30.i.i.i, 1437248085
  br i1 %cmp3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge

if.end.i.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_validate_chipaccess.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %228 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %call7.i.i.i, align 8
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 4
  %write32.i.i.i69.i31.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %231, i32 0, i32 5
  %232 = ptrtoint ptr %write32.i.i.i69.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %write32.i.i.i69.i31.i.i.i, align 4
  tail call void %233(ptr noundef %229, i16 noundef zeroext 352, i32 noundef 65536) #14
  %234 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %call7.i.i.i, align 8
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %write32.i.i.i32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %237, i32 0, i32 5
  %238 = ptrtoint ptr %write32.i.i.i32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %write32.i.i.i32.i.i.i, align 4
  tail call void %239(ptr noundef %235, i16 noundef zeroext 356, i32 noundef %call.i.i71.i.i.i.i) #14
  %240 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %call7.i.i.i, align 8
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %241, align 4
  %read32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i157.i.i = tail call i32 %245(ptr noundef %241, i16 noundef zeroext 288) #14
  %246 = and i32 %call.i.i.i157.i.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %246)
  %cmp7.not.i.i.i = icmp eq i32 %246, 1024
  br i1 %cmp7.not.i.i.i, label %if.end9.i.i.i, label %if.end5.i.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge

if.end5.i.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_validate_chipaccess.exit.i.i

if.end9.i.i.i:                                    ; preds = %if.end5.i.i.i
  %247 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %call7.i.i.i, align 8
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  %read32.i.i33.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %250, i32 0, i32 2
  %251 = ptrtoint ptr %read32.i.i33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %read32.i.i33.i.i.i, align 4
  %call.i.i34.i.i.i = tail call i32 %252(ptr noundef %248, i16 noundef zeroext 296) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i34.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end84.i.i, label %if.end9.i.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge

if.end9.i.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_validate_chipaccess.exit.i.i

b43legacy_validate_chipaccess.exit.i.i:           ; preds = %if.end9.i.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge, %if.end5.i.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge, %if.end.i.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge, %if.end68.i.i.b43legacy_validate_chipaccess.exit.i.i_crit_edge
  %253 = ptrtoint ptr %wl2.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %wl2.i, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %254, ptr noundef nonnull @.str.78) #14
  br label %err_powerdown.i.i

if.end84.i.i:                                     ; preds = %if.end9.i.i.i
  %255 = ptrtoint ptr %wl2.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %wl2.i, align 4
  %hw1.i.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %256, i32 0, i32 1
  %257 = ptrtoint ptr %hw1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %hw1.i.i.i, align 4
  %phy2.i.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 9
  %259 = ptrtoint ptr %phy2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 0, ptr %phy2.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_bphy.2.i.i)
  %tobool.not.i161.i.i = icmp eq i32 %have_bphy.2.i.i, 0
  br i1 %tobool.not.i161.i.i, label %if.end84.i.i.if.end.i162.i.i_crit_edge, label %if.then.i.i.i

if.end84.i.i.if.end.i162.i.i_crit_edge:           ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i162.i.i

if.then.i.i.i:                                    ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %258, i32 0, i32 1
  %260 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %wiphy.i.i.i, align 8
  %bands.i.i.i = getelementptr inbounds %struct.wiphy, ptr %261, i32 0, i32 53
  %262 = ptrtoint ptr %bands.i.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr @b43legacy_band_2GHz_BPHY, ptr %bands.i.i.i, align 16
  %263 = ptrtoint ptr %phy2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %phy2.i.i.i, align 8
  %265 = or i8 %264, 2
  store i8 %265, ptr %phy2.i.i.i, align 8
  br label %if.end.i162.i.i

if.end.i162.i.i:                                  ; preds = %if.then.i.i.i, %if.end84.i.i.if.end.i162.i.i_crit_edge
  br i1 %tobool69.not.i.i, label %if.end.i162.i.i.b43legacy_setup_modes.exit.i.i_crit_edge, label %if.then6.i.i.i

if.end.i162.i.i.b43legacy_setup_modes.exit.i.i_crit_edge: ; preds = %if.end.i162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_setup_modes.exit.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %wiphy7.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %258, i32 0, i32 1
  %266 = ptrtoint ptr %wiphy7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %wiphy7.i.i.i, align 8
  %bands8.i.i.i = getelementptr inbounds %struct.wiphy, ptr %267, i32 0, i32 53
  %268 = ptrtoint ptr %bands8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr @b43legacy_band_2GHz_GPHY, ptr %bands8.i.i.i, align 16
  %269 = ptrtoint ptr %phy2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %phy2.i.i.i, align 8
  %271 = or i8 %270, 4
  store i8 %271, ptr %phy2.i.i.i, align 8
  br label %b43legacy_setup_modes.exit.i.i

b43legacy_setup_modes.exit.i.i:                   ; preds = %if.then6.i.i.i, %if.end.i162.i.i.b43legacy_setup_modes.exit.i.i_crit_edge
  %272 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %85, align 4
  %tobool89.not.i.i = icmp eq ptr %273, null
  br i1 %tobool89.not.i.i, label %if.then90.i.i, label %b43legacy_setup_modes.exit.i.i.if.end16.i_crit_edge

b43legacy_setup_modes.exit.i.i.if.end16.i_crit_edge: ; preds = %b43legacy_setup_modes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.then90.i.i:                                    ; preds = %b43legacy_setup_modes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %274 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %call7.i.i.i, ptr %85, align 4
  br label %if.end16.i

err_powerdown.i.i:                                ; preds = %b43legacy_validate_chipaccess.exit.i.i, %if.then103.i.i.i, %if.then28.i.i.i
  %err.1.i.i = phi i32 [ -19, %b43legacy_validate_chipaccess.exit.i.i ], [ -95, %if.then28.i.i.i ], [ -95, %if.then103.i.i.i ]
  %call103.i.i = tail call i32 @ssb_bus_may_powerdown(ptr noundef %89) #14
  br label %err_kfree_wldev.i

if.end16.i:                                       ; preds = %if.then90.i.i, %b43legacy_setup_modes.exit.i.i.if.end16.i_crit_edge
  %restart_work.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 24
  tail call void @__init_work(ptr noundef %restart_work.i.i, i32 noundef 0) #14
  %275 = ptrtoint ptr %restart_work.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 -64, ptr %restart_work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 24, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @b43legacy_wireless_core_attach.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry97.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 24, i32 1
  %276 = ptrtoint ptr %entry97.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store volatile ptr %entry97.i.i, ptr %entry97.i.i, align 8
  %prev.i.i.i72 = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 24, i32 1, i32 1
  %277 = ptrtoint ptr %prev.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %entry97.i.i, ptr %prev.i.i.i72, align 4
  %func.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %call7.i.i.i, i32 0, i32 24, i32 2
  %278 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr @b43legacy_chip_reset, ptr %func.i.i, align 8
  tail call void @b43legacy_radio_turn_off(ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext true) #14
  %279 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %call7.i.i.i, align 8
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %280, align 4
  %write16.i.i.i163.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %282, i32 0, i32 4
  %283 = ptrtoint ptr %write16.i.i.i163.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write16.i.i.i163.i.i, align 4
  tail call void %284(ptr noundef %280, i16 noundef zeroext 998, i16 noundef zeroext 244) #14
  %285 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @ssb_device_disable(ptr noundef %286, i32 noundef 0) #14
  %call102.i.i = tail call i32 @ssb_bus_may_powerdown(ptr noundef %89) #14
  %devlist.i73 = getelementptr inbounds %struct.b43legacy_wl, ptr %wl.0, i32 0, i32 16
  %287 = ptrtoint ptr %devlist.i73 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %devlist.i73, align 4
  %call.i.i37.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %devlist.i73, ptr noundef %288) #14
  br i1 %call.i.i37.i, label %if.end.i.i38.i, label %if.end16.i.do.body33_crit_edge

if.end16.i.do.body33_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body33

if.end.i.i38.i:                                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %290 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %288, ptr %list.i, align 4
  %291 = ptrtoint ptr %prev.i.i68 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %devlist.i73, ptr %prev.i.i68, align 8
  %292 = ptrtoint ptr %devlist.i73 to i32
  call void @__asan_store4_noabort(i32 %292)
  store volatile ptr %list.i, ptr %devlist.i73, align 4
  br label %do.body33

err_kfree_wldev.i:                                ; preds = %err_powerdown.i.i, %if.then.i.i71
  %retval.0.i.ph.i = phi i32 [ %call.i.i70, %if.then.i.i71 ], [ %err.1.i.i, %err_powerdown.i.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %err_wireless_exit

do.body33:                                        ; preds = %if.end.i.i38.i, %if.end16.i.do.body33_crit_edge
  %nr_devs.i = getelementptr inbounds %struct.b43legacy_wl, ptr %wl.0, i32 0, i32 17
  %293 = ptrtoint ptr %nr_devs.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %nr_devs.i, align 4
  %inc.i = add i8 %294, 1
  store i8 %inc.i, ptr %nr_devs.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 7
  %295 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %call7.i.i.i, ptr %drvdata.i.i, align 4
  tail call void @b43legacy_debugfs_add_device(ptr noundef nonnull %call7.i.i.i) #14
  %firmware_load = getelementptr inbounds %struct.b43legacy_wl, ptr %wl.0, i32 0, i32 5
  tail call void @__init_work(ptr noundef %firmware_load, i32 noundef 0) #14
  %296 = ptrtoint ptr %firmware_load to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 -64, ptr %firmware_load, align 4
  %lockdep_map = getelementptr inbounds %struct.b43legacy_wl, ptr %wl.0, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @b43legacy_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry37 = getelementptr inbounds %struct.b43legacy_wl, ptr %wl.0, i32 0, i32 5, i32 1
  %297 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %297)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i = getelementptr inbounds %struct.b43legacy_wl, ptr %wl.0, i32 0, i32 5, i32 1, i32 1
  %298 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %entry37, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.b43legacy_wl, ptr %wl.0, i32 0, i32 5, i32 2
  %299 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr @b43legacy_request_firmware, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %300 = load ptr, ptr @system_wq, align 4
  %call.i.i74 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %300, ptr noundef %firmware_load) #14
  br label %cleanup

err_wireless_exit:                                ; preds = %err_kfree_wldev.i, %if.end28.err_wireless_exit_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end28.err_wireless_exit_crit_edge ], [ %retval.0.i.ph.i, %err_kfree_wldev.i ]
  br i1 %tobool.not, label %if.then44, label %err_wireless_exit.cleanup_crit_edge

err_wireless_exit.cleanup_crit_edge:              ; preds = %err_wireless_exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then44:                                        ; preds = %err_wireless_exit
  call void @__sanitizer_cov_trace_pc() #16
  %hw1.i = getelementptr inbounds %struct.b43legacy_wl, ptr %wl.0, i32 0, i32 1
  %301 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %hw1.i, align 4
  tail call void @ssb_set_devtypedata(ptr noundef %dev, ptr noundef null) #14
  tail call void @ieee80211_free_hw(ptr noundef %302) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %err_wireless_exit.cleanup_crit_edge, %do.body33, %b43legacy_wireless_init.exit
  %retval.0 = phi i32 [ 0, %do.body33 ], [ -12, %b43legacy_wireless_init.exit ], [ %retval.0.i.ph, %if.then44 ], [ %retval.0.i.ph, %err_wireless_exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %devtypedata.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %devtypedata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devtypedata.i, align 4
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %restart_work = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 24
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %restart_work) #14
  %firmware_load = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 5
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %firmware_load) #14
  %fw_load_complete = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 30
  tail call void @complete(ptr noundef %fw_load_complete) #14
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !305

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3888, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %fw = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %7, %3
  br i1 %cmp, label %if.then27, label %if.end26.if.end28_crit_edge

if.end26.if.end28_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then27:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %9) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end26.if.end28_crit_edge
  tail call fastcc void @b43legacy_one_core_detach(ptr noundef %dev)
  %devlist = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %devlist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %devlist, align 4
  %cmp.i.not = icmp eq ptr %11, %devlist
  br i1 %cmp.i.not, label %if.then31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %hw1.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1.i, align 4
  tail call void @ssb_set_devtypedata(ptr noundef %dev, ptr noundef null) #14
  tail call void @ieee80211_free_hw(ptr noundef %13) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_suspend(ptr nocapture noundef readonly %dev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %wl1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl1, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %3, ptr noundef nonnull @.str.96)
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %4 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status, align 4
  %suspend_init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %suspend_init_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %suspend_init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_wireless_core_stop(ptr noundef %1)
  %7 = ptrtoint ptr %suspend_init_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %suspend_init_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = phi i32 [ %.pr, %if.then ], [ %5, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp sgt i32 %8, 0
  br i1 %cmp5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_wireless_core_exit(ptr noundef %1)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %3, ptr noundef nonnull @.str.97)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %wl1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl1, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %3, ptr noundef nonnull @.str.98)
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %suspend_init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %suspend_init_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %suspend_init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @b43legacy_wireless_core_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %3, ptr noundef nonnull @.str.99)
  br label %out

if.end4:                                          ; preds = %if.then
  %6 = ptrtoint ptr %suspend_init_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %suspend_init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp6 = icmp sgt i32 %.pr, 1
  br i1 %cmp6, label %if.then7, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then7:                                         ; preds = %if.end4
  %call8 = tail call fastcc i32 @b43legacy_wireless_core_start(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_wireless_core_exit(ptr noundef %1)
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %3, ptr noundef nonnull @.str.100)
  br label %out

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end4.if.end12_crit_edge, %entry.if.end12_crit_edge
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %3, ptr noundef nonnull @.str.101)
  br label %out

out:                                              ; preds = %if.end12, %if.then10, %if.then3
  %err.2 = phi i32 [ %call2, %if.then3 ], [ %call8, %if.then10 ], [ 0, %if.end12 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_request_firmware(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -188
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fw1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %3, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  %6 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %switch.selectcmp = icmp eq i8 %5, 4
  %switch.select = select i1 %switch.selectcmp, ptr @.str.82, ptr @.str.83
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch.selectcmp155 = icmp eq i8 %5, 2
  %switch.select156 = select i1 %switch.selectcmp155, ptr @.str.81, ptr %switch.select
  %call = tail call fastcc i32 @do_request_fw(ptr noundef %1, ptr noundef nonnull %switch.select156, ptr noundef %fw1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then.if.end15_crit_edge, label %if.then.err_load_crit_edge

if.then.err_load_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_load

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.end15:                                         ; preds = %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %pcm = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 28, i32 1
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end29_crit_edge

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp19 = icmp ult i8 %5, 5
  %.str.84..str.85 = select i1 %cmp19, ptr @.str.84, ptr @.str.85
  %call25 = tail call fastcc i32 @do_request_fw(ptr noundef %1, ptr noundef nonnull %.str.84..str.85, ptr noundef %pcm, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then17.if.end29_crit_edge, label %if.then17.err_load_crit_edge

if.then17.err_load_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_load

if.then17.if.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.end29:                                         ; preds = %if.then17.if.end29_crit_edge, %if.end15.if.end29_crit_edge
  %initvals = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 28, i32 2
  %10 = ptrtoint ptr %initvals to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %initvals, align 4
  %tobool30.not = icmp eq ptr %11, null
  br i1 %tobool30.not, label %if.then31, label %if.end29.if.end56_crit_edge

if.end29.if.end56_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then31:                                        ; preds = %if.end29
  %type = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type, align 1
  %.off = add i8 %13, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb, label %if.then31.err_no_initvals_crit_edge

if.then31.err_no_initvals_crit_edge:              ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_no_initvals

sw.bb:                                            ; preds = %if.then31
  %14 = add i8 %5, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %14)
  %15 = icmp ult i8 %14, 6
  br i1 %15, label %sw.bb.sw.epilog_crit_edge, label %if.else40

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.else40:                                        ; preds = %sw.bb
  %16 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %5, label %if.else40.err_no_initvals_crit_edge [
    i8 2, label %if.else40.sw.epilog_crit_edge
    i8 4, label %if.else40.sw.epilog_crit_edge157
  ]

if.else40.sw.epilog_crit_edge157:                 ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.else40.sw.epilog_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.else40.err_no_initvals_crit_edge:              ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_no_initvals

sw.epilog:                                        ; preds = %if.else40.sw.epilog_crit_edge, %if.else40.sw.epilog_crit_edge157, %sw.bb.sw.epilog_crit_edge
  %filename.2 = phi ptr [ @.str.86, %sw.bb.sw.epilog_crit_edge ], [ @.str.87, %if.else40.sw.epilog_crit_edge ], [ @.str.87, %if.else40.sw.epilog_crit_edge157 ]
  %call52 = tail call fastcc i32 @do_request_fw(ptr noundef %1, ptr noundef nonnull %filename.2, ptr noundef %initvals, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %sw.epilog.if.end56_crit_edge, label %sw.epilog.err_load_crit_edge

sw.epilog.err_load_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_load

sw.epilog.if.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.end56:                                         ; preds = %sw.epilog.if.end56_crit_edge, %if.end29.if.end56_crit_edge
  %initvals_band = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 28, i32 3
  %17 = ptrtoint ptr %initvals_band to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %initvals_band, align 4
  %tobool57.not = icmp eq ptr %18, null
  br i1 %tobool57.not, label %if.then58, label %if.end56.if.end96_crit_edge

if.end56.if.end96_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.then58:                                        ; preds = %if.end56
  %type60 = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %type60 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type60, align 1
  %.off152 = add i8 %20, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off152)
  %switch153 = icmp ult i8 %.off152, 2
  br i1 %switch153, label %sw.bb62, label %if.then58.err_no_initvals_crit_edge

if.then58.err_no_initvals_crit_edge:              ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_no_initvals

sw.bb62:                                          ; preds = %if.then58
  %21 = add i8 %5, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %22 = icmp ult i8 %21, 6
  br i1 %22, label %sw.bb62.sw.epilog90_crit_edge, label %if.else71

sw.bb62.sw.epilog90_crit_edge:                    ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog90

if.else71:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp73 = icmp ugt i8 %5, 10
  br i1 %cmp73, label %if.else71.sw.epilog90_crit_edge, label %if.else76

if.else71.sw.epilog90_crit_edge:                  ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog90

if.else76:                                        ; preds = %if.else71
  %23 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %5, label %if.else76.err_no_initvals_crit_edge [
    i8 2, label %if.else76.sw.epilog90_crit_edge
    i8 4, label %if.else76.sw.epilog90_crit_edge158
  ]

if.else76.sw.epilog90_crit_edge158:               ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog90

if.else76.sw.epilog90_crit_edge:                  ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog90

if.else76.err_no_initvals_crit_edge:              ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_no_initvals

sw.epilog90:                                      ; preds = %if.else76.sw.epilog90_crit_edge, %if.else76.sw.epilog90_crit_edge158, %if.else71.sw.epilog90_crit_edge, %sw.bb62.sw.epilog90_crit_edge
  %filename.3 = phi ptr [ @.str.88, %sw.bb62.sw.epilog90_crit_edge ], [ null, %if.else71.sw.epilog90_crit_edge ], [ null, %if.else76.sw.epilog90_crit_edge ], [ null, %if.else76.sw.epilog90_crit_edge158 ]
  %call92 = tail call fastcc i32 @do_request_fw(ptr noundef %1, ptr noundef %filename.3, ptr noundef %initvals_band, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %sw.epilog90.if.end96_crit_edge, label %sw.epilog90.err_load_crit_edge

sw.epilog90.err_load_crit_edge:                   ; preds = %sw.epilog90
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_load

sw.epilog90.if.end96_crit_edge:                   ; preds = %sw.epilog90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.end96:                                         ; preds = %sw.epilog90.if.end96_crit_edge, %if.end56.if.end96_crit_edge
  %hw = getelementptr i8, ptr %work, i32 -184
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %call97 = tail call i32 @ieee80211_register_hw(ptr noundef %25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end96.cleanup_crit_edge, label %err_one_core_detach

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_one_core_detach:                              ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  tail call fastcc void @b43legacy_one_core_detach(ptr noundef %27)
  br label %error

err_load:                                         ; preds = %sw.epilog90.err_load_crit_edge, %sw.epilog.err_load_crit_edge, %if.then17.err_load_crit_edge, %if.then.err_load_crit_edge
  %wl102 = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %wl102 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wl102, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %29, ptr noundef nonnull @.str.33) #14
  br label %error

err_no_initvals:                                  ; preds = %if.else76.err_no_initvals_crit_edge, %if.then58.err_no_initvals_crit_edge, %if.else40.err_no_initvals_crit_edge, %if.then31.err_no_initvals_crit_edge
  %wl103 = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %wl103 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wl103, align 4
  %type105 = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 9, i32 3
  %32 = ptrtoint ptr %type105 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %type105, align 1
  %conv106 = zext i8 %33 to i32
  %conv107 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %31, ptr noundef nonnull @.str.89, i32 noundef %conv106, i32 noundef %conv107)
  br label %error

error:                                            ; preds = %err_no_initvals, %err_load, %err_one_core_detach
  %34 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw1, align 4
  tail call void @release_firmware(ptr noundef %35) #14
  %36 = ptrtoint ptr %fw1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %fw1, align 4
  %pcm.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 28, i32 1
  %37 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcm.i, align 4
  tail call void @release_firmware(ptr noundef %38) #14
  %39 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %pcm.i, align 4
  %initvals.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 28, i32 2
  %40 = ptrtoint ptr %initvals.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %initvals.i, align 4
  tail call void @release_firmware(ptr noundef %41) #14
  %42 = ptrtoint ptr %initvals.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %initvals.i, align 4
  %initvals_band.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 28, i32 3
  %43 = ptrtoint ptr %initvals_band.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %initvals_band.i, align 4
  tail call void @release_firmware(ptr noundef %44) #14
  %45 = ptrtoint ptr %initvals_band.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %initvals_band.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end96.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_beacon_update_trigger_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -428
  %mutex = getelementptr i8, ptr %work, i32 -376
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !prof !305

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %2 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %land.rhs.if.end_crit_edge, !prof !303

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %irq_lock = getelementptr i8, ptr %work, i32 -420
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #14
  tail call fastcc void @handle_irq_beacon(ptr noundef nonnull %1)
  %irq_mask = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 300, i32 noundef %5) #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_tx_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -528
  %mutex = getelementptr i8, ptr %work, i32 -476
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !305

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %2 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %lor.rhs.cleanup_crit_edge, label %for.cond.preheader, !prof !305

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.rhs
  %tx_queue = getelementptr i8, ptr %work, i32 44
  %__using_pio.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 4
  %tx_queue_stopped = getelementptr i8, ptr %work, i32 268
  %hw = getelementptr i8, ptr %work, i32 -524
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %for.cond.preheader
  %err.074 = phi i32 [ 0, %for.cond.preheader ], [ %err.368, %for.inc.while.cond.preheader_crit_edge ]
  %queue_num.072 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.sk_buff_head], ptr %tx_queue, i32 0, i32 %queue_num.072
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not71 = icmp eq i32 %5, 0
  br i1 %tobool6.not71, label %while.end, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call9 = tail call ptr @skb_dequeue(ptr noundef %arrayidx) #14
  %6 = ptrtoint ptr %__using_pio.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %__using_pio.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call i32 @b43legacy_pio_tx(ptr noundef nonnull %1, ptr noundef %call9) #14
  br label %if.end15

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %call14 = tail call i32 @b43legacy_dma_tx(ptr noundef nonnull %1, ptr noundef %call9) #14
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %err.2 = phi i32 [ %call13, %if.then12 ], [ %call14, %if.else ]
  %8 = zext i32 %err.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %err.2, label %if.then29 [
    i32 -28, label %while.end.thread
    i32 0, label %if.end15.if.end30_crit_edge
  ], !prof !311

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

while.end.thread:                                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx18 = getelementptr [4 x i8], ptr %tx_queue_stopped, i32 0, i32 %queue_num.072
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx18, align 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queue(ptr noundef %11, i32 noundef %queue_num.072) #14
  tail call void @skb_queue_head(ptr noundef %arrayidx, ptr noundef %call9) #14
  br label %for.inc

if.then29:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef %call9) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end15.if.end30_crit_edge
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %if.end30.if.then32_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32

while.end:                                        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.074)
  %tobool31.not = icmp eq i32 %err.074, 0
  br i1 %tobool31.not, label %while.end.if.then32_crit_edge, label %while.end.for.inc_crit_edge

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

while.end.if.then32_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32

if.then32:                                        ; preds = %while.end.if.then32_crit_edge, %if.end30.if.then32_crit_edge
  %arrayidx34 = getelementptr [4 x i8], ptr %tx_queue_stopped, i32 0, i32 %queue_num.072
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx34, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %while.end.for.inc_crit_edge, %while.end.thread
  %err.368 = phi i32 [ -28, %while.end.thread ], [ %err.074, %while.end.for.inc_crit_edge ], [ 0, %if.then32 ]
  %inc = add nuw nsw i32 %queue_num.072, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_set_devtypedata(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_op_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp ult i32 %3, 10
  br i1 %cmp, label %if.then, label %if.end, !prof !305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end22_crit_edge, label %do.end, !prof !303

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2498, i32 noundef 9, ptr noundef null) #14
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end.if.end22_crit_edge
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %8 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %queue_mapping, align 8
  %idxprom = zext i16 %9 to i32
  %arrayidx = getelementptr %struct.b43legacy_wl, ptr %1, i32 0, i32 27, i32 %idxprom
  tail call void @skb_queue_tail(ptr noundef %arrayidx, ptr noundef %skb) #14
  %10 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %queue_mapping, align 8
  %idxprom30 = zext i16 %11 to i32
  %arrayidx31 = getelementptr %struct.b43legacy_wl, ptr %1, i32 0, i32 28, i32 %idxprom30
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx31, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool32.not = icmp eq i8 %13, 0
  %hw34 = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %hw34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw34, align 4
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %tx_work = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 26
  tail call void @ieee80211_queue_work(ptr noundef %15, ptr noundef %tx_work) #14
  br label %cleanup

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ieee80211_stop_queue(ptr noundef %15, i32 noundef %idxprom30) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then33, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_op_start(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mac_addr = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 7
  %filter_flags = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %filter_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %filter_flags, align 4
  %beacon0_uploaded = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %beacon0_uploaded to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %beacon0_uploaded, align 4
  %beacon1_uploaded = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %beacon1_uploaded to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %beacon1_uploaded, align 1
  %beacon_templates_virgin = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 23
  %7 = call ptr @memset(ptr %mac_addr, i32 0, i32 12)
  %8 = ptrtoint ptr %beacon_templates_virgin to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %beacon_templates_virgin, align 2
  %radio_enabled = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %radio_enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %radio_enabled, align 2
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %10 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp slt i32 %11, 1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @b43legacy_wireless_core_init(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.out_mutex_unlock_crit_edge

if.then.out_mutex_unlock_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_mutex_unlock

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %12 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp8 = icmp slt i32 %13, 2
  br i1 %cmp8, label %if.then9, label %if.end5.if.end17_crit_edge

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then9:                                         ; preds = %if.end5
  %call10 = tail call fastcc i32 @b43legacy_wireless_core_start(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end17_crit_edge, label %if.then12

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then12:                                        ; preds = %if.then9
  br i1 %cmp, label %if.then14, label %if.then12.out_mutex_unlock_crit_edge

if.then12.out_mutex_unlock_crit_edge:             ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_mutex_unlock

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_wireless_core_exit(ptr noundef %3)
  br label %out_mutex_unlock

if.end17:                                         ; preds = %if.then9.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy, align 8
  tail call void @wiphy_rfkill_start_polling(ptr noundef %15) #14
  br label %out_mutex_unlock

out_mutex_unlock:                                 ; preds = %if.end17, %if.then14, %if.then12.out_mutex_unlock_crit_edge, %if.then.out_mutex_unlock_crit_edge
  %err.2 = phi i32 [ %call3, %if.then.out_mutex_unlock_crit_edge ], [ %call10, %if.then14 ], [ %call10, %if.then12.out_mutex_unlock_crit_edge ], [ 0, %if.end17 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_op_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %beacon_update_trigger = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 24
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %beacon_update_trigger) #14
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %4 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_wireless_core_stop(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @b43legacy_wireless_core_exit(ptr noundef %3)
  %radio_enabled = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %radio_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %radio_enabled, align 2
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_op_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %operating = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %operating to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %operating, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.out_mutex_unlock_crit_edge

if.end.out_mutex_unlock_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_mutex_unlock

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %7)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %operating to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %operating, align 4
  %vif10 = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %vif10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vif, ptr %vif10, align 4
  %12 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vif, align 8
  %if_type = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %if_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %if_type, align 4
  %mac_addr = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 7
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %mac_addr, ptr %addr, i32 6)
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 2
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  tail call fastcc void @b43legacy_adjust_opmode(ptr noundef %9)
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wl.i, align 4
  %operating.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %operating.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %operating.i.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i, label %if.end7.b43legacy_is_mode.exit.thread.i_crit_edge, label %b43legacy_is_mode.exit.i

if.end7.b43legacy_is_mode.exit.thread.i_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_is_mode.exit.thread.i

b43legacy_is_mode.exit.i:                         ; preds = %if.end7
  %if_type.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %17, i32 0, i32 9
  %20 = ptrtoint ptr %if_type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %if_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i.not.i = icmp eq i32 %21, 1
  br i1 %cmp.i.not.i, label %b43legacy_is_mode.exit.i.b43legacy_set_pretbtt.exit_crit_edge, label %b43legacy_is_mode.exit.i.b43legacy_is_mode.exit.thread.i_crit_edge

b43legacy_is_mode.exit.i.b43legacy_is_mode.exit.thread.i_crit_edge: ; preds = %b43legacy_is_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_is_mode.exit.thread.i

b43legacy_is_mode.exit.i.b43legacy_set_pretbtt.exit_crit_edge: ; preds = %b43legacy_is_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_set_pretbtt.exit

b43legacy_is_mode.exit.thread.i:                  ; preds = %b43legacy_is_mode.exit.i.b43legacy_is_mode.exit.thread.i_crit_edge, %if.end7.b43legacy_is_mode.exit.thread.i_crit_edge
  br label %b43legacy_set_pretbtt.exit

b43legacy_set_pretbtt.exit:                       ; preds = %b43legacy_is_mode.exit.thread.i, %b43legacy_is_mode.exit.i.b43legacy_set_pretbtt.exit_crit_edge
  %22 = phi i16 [ 250, %b43legacy_is_mode.exit.thread.i ], [ 2, %b43legacy_is_mode.exit.i.b43legacy_set_pretbtt.exit_crit_edge ]
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %9, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %28(ptr noundef %24, i16 noundef zeroext 352, i32 noundef 65573) #14
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %9, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %34(ptr noundef %30, i16 noundef zeroext 358, i16 noundef zeroext %22) #14
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %9, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %40(ptr noundef %36, i16 noundef zeroext 1554, i16 noundef zeroext %22) #14
  %41 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wl.i, align 4
  %operating.i.i44 = getelementptr inbounds %struct.b43legacy_wl, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %operating.i.i44 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %operating.i.i44, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i45 = icmp eq i8 %44, 0
  br i1 %tobool.not.i.i45, label %b43legacy_set_pretbtt.exit.b43legacy_is_mode.exit.i47.thread_crit_edge, label %b43legacy_is_mode.exit.i47

b43legacy_set_pretbtt.exit.b43legacy_is_mode.exit.i47.thread_crit_edge: ; preds = %b43legacy_set_pretbtt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_is_mode.exit.i47.thread

b43legacy_is_mode.exit.i47:                       ; preds = %b43legacy_set_pretbtt.exit
  call void @__sanitizer_cov_trace_pc() #16
  %if_type.i.i46 = getelementptr inbounds %struct.b43legacy_wl, ptr %42, i32 0, i32 9
  %45 = ptrtoint ptr %if_type.i.i46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %if_type.i.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i.i = icmp eq i32 %46, 1
  %spec.select = select i1 %cmp.i.i, i16 500, i16 1050
  br label %b43legacy_is_mode.exit.i47.thread

b43legacy_is_mode.exit.i47.thread:                ; preds = %b43legacy_is_mode.exit.i47, %b43legacy_set_pretbtt.exit.b43legacy_is_mode.exit.i47.thread_crit_edge
  %47 = phi i16 [ 1050, %b43legacy_set_pretbtt.exit.b43legacy_is_mode.exit.i47.thread_crit_edge ], [ %spec.select, %b43legacy_is_mode.exit.i47 ]
  %radio_ver.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %9, i32 0, i32 9, i32 8
  %48 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %radio_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %49)
  %cmp.i = icmp eq i16 %49, 8272
  br i1 %cmp.i, label %land.lhs.true.i, label %b43legacy_is_mode.exit.i47.thread.b43legacy_set_synth_pu_delay.exit_crit_edge

b43legacy_is_mode.exit.i47.thread.b43legacy_set_synth_pu_delay.exit_crit_edge: ; preds = %b43legacy_is_mode.exit.i47.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_set_synth_pu_delay.exit

land.lhs.true.i:                                  ; preds = %b43legacy_is_mode.exit.i47.thread
  call void @__sanitizer_cov_trace_pc() #16
  %radio_rev.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %9, i32 0, i32 9, i32 10
  %50 = ptrtoint ptr %radio_rev.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %radio_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %51)
  %cmp5.i = icmp eq i8 %51, 8
  %spec.select.i = select i1 %cmp5.i, i16 2400, i16 %47
  br label %b43legacy_set_synth_pu_delay.exit

b43legacy_set_synth_pu_delay.exit:                ; preds = %land.lhs.true.i, %b43legacy_is_mode.exit.i47.thread.b43legacy_set_synth_pu_delay.exit_crit_edge
  %pu_delay.1.i = phi i16 [ %47, %b43legacy_is_mode.exit.i47.thread.b43legacy_set_synth_pu_delay.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %52 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %9, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %write32.i.i.i50.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %write32.i.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write32.i.i.i50.i.i, align 4
  tail call void %57(ptr noundef %53, i16 noundef zeroext 352, i32 noundef 65573) #14
  %58 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %9, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %write16.i.i51.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %write16.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write16.i.i51.i.i, align 4
  tail call void %63(ptr noundef %59, i16 noundef zeroext 356, i16 noundef zeroext %pu_delay.1.i) #14
  tail call fastcc void @b43legacy_write_mac_bssid_templates(ptr noundef %9) #14
  %64 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wl.i, align 4
  %mac_addr.i = getelementptr inbounds %struct.b43legacy_wl, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %9, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %write16.i.i.i.i49 = getelementptr inbounds %struct.ssb_bus_ops, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %write16.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write16.i.i.i.i49, align 4
  tail call void %71(ptr noundef %67, i16 noundef zeroext 1056, i16 noundef zeroext 32) #14
  %72 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %mac_addr.i, align 1
  %arrayidx3.i.i = getelementptr %struct.b43legacy_wl, ptr %65, i32 0, i32 7, i32 1
  %74 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %75 to i16
  %shl.i.i = shl nuw i16 %conv4.i.i, 8
  %conv5.i.i = zext i8 %73 to i16
  %or6.i.i = or i16 %shl.i.i, %conv5.i.i
  %76 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %9, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %write16.i.i39.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %write16.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write16.i.i39.i.i, align 4
  tail call void %81(ptr noundef %77, i16 noundef zeroext 1058, i16 noundef zeroext %or6.i.i) #14
  %arrayidx8.i.i = getelementptr %struct.b43legacy_wl, ptr %65, i32 0, i32 7, i32 2
  %82 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx8.i.i, align 1
  %arrayidx10.i.i = getelementptr %struct.b43legacy_wl, ptr %65, i32 0, i32 7, i32 3
  %84 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %85 to i16
  %shl12.i.i = shl nuw i16 %conv11.i.i, 8
  %conv13.i.i = zext i8 %83 to i16
  %or14.i.i = or i16 %shl12.i.i, %conv13.i.i
  %86 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %9, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %write16.i.i40.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %write16.i.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write16.i.i40.i.i, align 4
  tail call void %91(ptr noundef %87, i16 noundef zeroext 1058, i16 noundef zeroext %or14.i.i) #14
  %arrayidx16.i.i = getelementptr %struct.b43legacy_wl, ptr %65, i32 0, i32 7, i32 4
  %92 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx16.i.i, align 1
  %arrayidx18.i.i = getelementptr %struct.b43legacy_wl, ptr %65, i32 0, i32 7, i32 5
  %94 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx18.i.i, align 1
  %conv19.i.i = zext i8 %95 to i16
  %shl20.i.i = shl nuw i16 %conv19.i.i, 8
  %conv21.i.i = zext i8 %93 to i16
  %or22.i.i = or i16 %shl20.i.i, %conv21.i.i
  %96 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %9, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %write16.i.i41.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %write16.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write16.i.i41.i.i, align 4
  tail call void %101(ptr noundef %97, i16 noundef zeroext 1058, i16 noundef zeroext %or22.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call16) #14
  br label %out_mutex_unlock

out_mutex_unlock:                                 ; preds = %b43legacy_set_synth_pu_delay.exit, %if.end.out_mutex_unlock_crit_edge
  %err.0 = phi i32 [ -95, %if.end.out_mutex_unlock_crit_edge ], [ 0, %b43legacy_set_synth_pu_delay.exit ]
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %out_mutex_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_mutex_unlock ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_op_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef readonly %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %5)
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %operating = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %operating to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %operating, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !305

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3428, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %vif22 = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %vif22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vif22, align 4
  %cmp.not = icmp eq ptr %9, %vif
  br i1 %cmp.not, label %if.end.if.end44_crit_edge, label %do.end38, !prof !303

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3429, i32 noundef 9, ptr noundef null) #14
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %10 = ptrtoint ptr %vif22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vif22, align 4
  %11 = ptrtoint ptr %operating to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %operating, align 4
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 2
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  tail call fastcc void @b43legacy_adjust_opmode(ptr noundef %3)
  %mac_addr = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 7
  %12 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  tail call fastcc void @b43legacy_write_mac_bssid_templates(ptr noundef %3) #14
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wl.i, align 4
  %mac_addr.i = getelementptr inbounds %struct.b43legacy_wl, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %20(ptr noundef %16, i16 noundef zeroext 1056, i16 noundef zeroext 32) #14
  %21 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mac_addr.i, align 1
  %arrayidx3.i.i = getelementptr %struct.b43legacy_wl, ptr %14, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %24 to i16
  %shl.i.i = shl nuw i16 %conv4.i.i, 8
  %conv5.i.i = zext i8 %22 to i16
  %or6.i.i = or i16 %shl.i.i, %conv5.i.i
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write16.i.i39.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %write16.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write16.i.i39.i.i, align 4
  tail call void %30(ptr noundef %26, i16 noundef zeroext 1058, i16 noundef zeroext %or6.i.i) #14
  %arrayidx8.i.i = getelementptr %struct.b43legacy_wl, ptr %14, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8.i.i, align 1
  %arrayidx10.i.i = getelementptr %struct.b43legacy_wl, ptr %14, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %34 to i16
  %shl12.i.i = shl nuw i16 %conv11.i.i, 8
  %conv13.i.i = zext i8 %32 to i16
  %or14.i.i = or i16 %shl12.i.i, %conv13.i.i
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %write16.i.i40.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %write16.i.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write16.i.i40.i.i, align 4
  tail call void %40(ptr noundef %36, i16 noundef zeroext 1058, i16 noundef zeroext %or14.i.i) #14
  %arrayidx16.i.i = getelementptr %struct.b43legacy_wl, ptr %14, i32 0, i32 7, i32 4
  %41 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx16.i.i, align 1
  %arrayidx18.i.i = getelementptr %struct.b43legacy_wl, ptr %14, i32 0, i32 7, i32 5
  %43 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx18.i.i, align 1
  %conv19.i.i = zext i8 %44 to i16
  %shl20.i.i = shl nuw i16 %conv19.i.i, 8
  %conv21.i.i = zext i8 %42 to i16
  %or22.i.i = or i16 %shl20.i.i, %conv21.i.i
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %write16.i.i41.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %write16.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write16.i.i41.i.i, align 4
  tail call void %50(ptr noundef %46, i16 noundef zeroext 1058, i16 noundef zeroext %or22.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call59) #14
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_op_dev_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %and = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %short_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 6
  %4 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %short_frame_max_tx_count, align 4
  %long_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 5
  %6 = ptrtoint ptr %long_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %long_frame_max_tx_count, align 1
  %8 = tail call i8 @llvm.umin.i8(i8 %5, i8 15)
  %9 = zext i8 %8 to i16
  %10 = tail call i8 @llvm.umin.i8(i8 %7, i8 15)
  %11 = zext i8 %10 to i16
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write32.i.i.i50.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i.i50.i.i, align 4
  tail call void %17(ptr noundef %13, i16 noundef zeroext 352, i32 noundef 131078) #14
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write16.i.i51.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %write16.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write16.i.i51.i.i, align 4
  tail call void %23(ptr noundef %19, i16 noundef zeroext 356, i16 noundef zeroext %9) #14
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %write32.i.i.i50.i16.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %write32.i.i.i50.i16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write32.i.i.i50.i16.i, align 4
  tail call void %29(ptr noundef %25, i16 noundef zeroext 352, i32 noundef 131079) #14
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write16.i.i51.i17.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write16.i.i51.i17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i.i51.i17.i, align 4
  tail call void %35(ptr noundef %31, i16 noundef zeroext 356, i16 noundef zeroext %11) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %changed, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.out_unlock_mutex_crit_edge, label %if.end7

if.end.out_unlock_mutex_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock_mutex

if.end7:                                          ; preds = %if.end
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %36 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chandef, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cond = icmp eq i32 %39, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %type = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 9, i32 3
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp = icmp eq i8 %41, 1
  %. = select i1 %cmp, i32 2, i32 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2699, i32 noundef 9, ptr noundef null) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  %new_phymode.0 = phi i32 [ 65535, %do.end ], [ %., %sw.bb ]
  %devlist.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 16
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %sw.epilog
  %.pn.in.i.i = phi ptr [ %devlist.i.i, %sw.epilog ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %42 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %devlist.i.i
  br i1 %cmp.not.i.i, label %if.then.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %phy.i.i = getelementptr i8, ptr %.pn.i.i, i32 -2884
  %43 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %phy.i.i, align 4
  %conv.i.i = zext i8 %44 to i32
  %and.i.i = and i32 %new_phymode.0, %conv.i.i
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %if.end.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

if.then.i:                                        ; preds = %for.cond.i.i
  %trunc172 = trunc i32 %new_phymode.0 to i16
  %45 = zext i16 %trunc172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.115)
  switch i16 %trunc172, label %do.end.i.i [
    i16 2, label %if.then.i.phymode_to_string.exit.i_crit_edge
    i16 4, label %sw.bb1.i.i
  ]

if.then.i.phymode_to_string.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phymode_to_string.exit.i

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phymode_to_string.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2535, 0\0A.popsection", ""() #14, !srcloc !312
  unreachable

phymode_to_string.exit.i:                         ; preds = %sw.bb1.i.i, %if.then.i.phymode_to_string.exit.i_crit_edge
  %retval.0.i106.i = phi ptr [ @.str.55, %sw.bb1.i.i ], [ @.str.54, %if.then.i.phymode_to_string.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef nonnull %retval.0.i106.i) #14
  br label %out_unlock_mutex

if.end.i:                                         ; preds = %for.body.i.i
  %d.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -2908
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %d.0.le.i.i, %47
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %gmode3.i = getelementptr i8, ptr %.pn.i.i, i32 -2883
  %48 = ptrtoint ptr %gmode3.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %gmode3.i, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp11.i = icmp eq i8 %49, 1
  br i1 %cmp11.i, label %land.lhs.true.i.do.body34_crit_edge, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

land.lhs.true.i.do.body34_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body34

if.end13.i:                                       ; preds = %land.lhs.true.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %trunc = trunc i32 %new_phymode.0 to i16
  %50 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.116)
  switch i16 %trunc, label %do.end.i109.i [
    i16 2, label %if.end13.i.phymode_to_string.exit111.i_crit_edge
    i16 4, label %sw.bb1.i107.i
  ]

if.end13.i.phymode_to_string.exit111.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phymode_to_string.exit111.i

sw.bb1.i107.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phymode_to_string.exit111.i

do.end.i109.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i108.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2535, 0\0A.popsection", ""() #14, !srcloc !312
  unreachable

phymode_to_string.exit111.i:                      ; preds = %sw.bb1.i107.i, %if.end13.i.phymode_to_string.exit111.i_crit_edge
  %retval.0.i110.i = phi ptr [ @.str.55, %sw.bb1.i107.i ], [ @.str.54, %if.end13.i.phymode_to_string.exit111.i_crit_edge ]
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef nonnull %retval.0.i110.i) #14
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %__init_status.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %52, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status.i, i32 noundef 4) #14
  %53 = ptrtoint ptr %__init_status.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %__init_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp17.i = icmp sgt i32 %54, 1
  br i1 %cmp17.i, label %if.end19.thread.i, label %if.end19.i

if.end19.thread.i:                                ; preds = %phymode_to_string.exit111.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_wireless_core_stop(ptr noundef %52) #14
  br label %if.then21.i

if.end19.i:                                       ; preds = %phymode_to_string.exit111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp20.i = icmp eq i32 %54, 1
  br i1 %cmp20.i, label %if.end19.i.if.then21.i_crit_edge, label %if.end19.i.if.end22.i_crit_edge

if.end19.i.if.end22.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

if.end19.i.if.then21.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.end19.i.if.then21.i_crit_edge, %if.end19.thread.i
  tail call fastcc void @b43legacy_wireless_core_exit(ptr noundef %52) #14
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end22.i_crit_edge
  %cmp20144.i = phi i1 [ true, %if.then21.i ], [ false, %if.end19.i.if.end22.i_crit_edge ]
  %cmp23.not.i = icmp eq ptr %52, %d.0.le.i.i
  br i1 %cmp23.not.i, label %if.end22.i.if.end25.i_crit_edge, label %if.then24.i

if.end22.i.if.end25.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i112.i = tail call i32 %60(ptr noundef %56, i16 noundef zeroext 3992) #14
  %and.i113.i = and i32 %call.i.i112.i, -537526273
  %or2.i.i = or i32 %and.i113.i, 655360
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %56, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %64(ptr noundef %56, i16 noundef zeroext 3992, i32 noundef %or2.i.i) #14
  tail call void @msleep(i32 noundef 1) #14
  %65 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %56, align 4
  %read32.i15.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %read32.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read32.i15.i.i, align 4
  %call.i16.i.i = tail call i32 %68(ptr noundef %56, i16 noundef zeroext 3992) #14
  %and4.i.i = and i32 %call.i16.i.i, -655361
  %or5.i.i = or i32 %and4.i.i, 524288
  %69 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %56, align 4
  %write32.i17.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %write32.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write32.i17.i.i, align 4
  tail call void %72(ptr noundef %56, i16 noundef zeroext 3992, i32 noundef %or5.i.i) #14
  tail call void @msleep(i32 noundef 1) #14
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end25.i_crit_edge
  %gmode28.i = getelementptr i8, ptr %.pn.i.i, i32 -2883
  %73 = ptrtoint ptr %gmode28.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %gmode28.i, align 1
  br i1 %cmp20144.i, label %if.then30.i, label %if.end25.i.if.end36.i_crit_edge

if.end25.i.if.end36.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then30.i:                                      ; preds = %if.end25.i
  %call31.i = tail call fastcc i32 @b43legacy_wireless_core_init(ptr noundef %d.0.le.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.then30.i.if.end36.i_crit_edge, label %if.then33.i

if.then30.i.if.end36.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.then30.i
  %74 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.117)
  switch i16 %trunc, label %do.end.i116.i [
    i16 2, label %if.then33.i.phymode_to_string.exit118.i_crit_edge
    i16 4, label %sw.bb1.i114.i
  ]

if.then33.i.phymode_to_string.exit118.i_crit_edge: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phymode_to_string.exit118.i

sw.bb1.i114.i:                                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phymode_to_string.exit118.i

do.end.i116.i:                                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i115.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2535, 0\0A.popsection", ""() #14, !srcloc !312
  unreachable

phymode_to_string.exit118.i:                      ; preds = %sw.bb1.i114.i, %if.then33.i.phymode_to_string.exit118.i_crit_edge
  %retval.0.i117.i = phi ptr [ @.str.55, %sw.bb1.i114.i ], [ @.str.54, %if.then33.i.phymode_to_string.exit118.i_crit_edge ]
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %1, ptr noundef nonnull @.str.52, ptr noundef nonnull %retval.0.i117.i) #14
  br label %init_failure.i

if.end36.i:                                       ; preds = %if.then30.i.if.end36.i_crit_edge, %if.end25.i.if.end36.i_crit_edge
  br i1 %cmp17.i, label %if.then38.i, label %if.end36.i.if.end44.i_crit_edge

if.end36.i.if.end44.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

if.then38.i:                                      ; preds = %if.end36.i
  %call39.i = tail call fastcc i32 @b43legacy_wireless_core_start(ptr noundef %d.0.le.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then38.i.if.end44.i_crit_edge, label %if.then41.i

if.then38.i.if.end44.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

if.then41.i:                                      ; preds = %if.then38.i
  %75 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.118)
  switch i16 %trunc, label %do.end.i121.i [
    i16 2, label %if.then41.i.phymode_to_string.exit123.i_crit_edge
    i16 4, label %sw.bb1.i119.i
  ]

if.then41.i.phymode_to_string.exit123.i_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phymode_to_string.exit123.i

sw.bb1.i119.i:                                    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %phymode_to_string.exit123.i

do.end.i121.i:                                    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2535, 0\0A.popsection", ""() #14, !srcloc !312
  unreachable

phymode_to_string.exit123.i:                      ; preds = %sw.bb1.i119.i, %if.then41.i.phymode_to_string.exit123.i_crit_edge
  %retval.0.i122.i = phi ptr [ @.str.55, %sw.bb1.i119.i ], [ @.str.54, %if.then41.i.phymode_to_string.exit123.i_crit_edge ]
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %1, ptr noundef nonnull @.str.53, ptr noundef nonnull %retval.0.i122.i) #14
  tail call fastcc void @b43legacy_wireless_core_exit(ptr noundef %d.0.le.i.i) #14
  br label %init_failure.i

if.end44.i:                                       ; preds = %if.then38.i.if.end44.i_crit_edge, %if.end36.i.if.end44.i_crit_edge
  %__init_status45.i = getelementptr i8, ptr %.pn.i.i, i32 -2900
  %call.i.i105.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status45.i, i32 noundef 4) #14
  %76 = ptrtoint ptr %__init_status45.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %__init_status45.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %54)
  %cmp47.not.i = icmp eq i32 %77, %54
  br i1 %cmp47.not.i, label %if.end44.i.if.end65.i_crit_edge, label %do.end.i, !prof !303

if.end44.i.if.end65.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65.i

do.end.i:                                         ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2637, i32 noundef 9, ptr noundef null) #14
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.end.i, %if.end44.i.if.end65.i_crit_edge
  %78 = ptrtoint ptr %d.0.le.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %d.0.le.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %83(ptr noundef %79, i16 noundef zeroext 352, i32 noundef 65551) #14
  %84 = ptrtoint ptr %d.0.le.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %d.0.le.i.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %89(ptr noundef %85, i16 noundef zeroext 358, i16 noundef zeroext 0) #14
  %90 = ptrtoint ptr %d.0.le.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %d.0.le.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %write32.i.i.i63.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %write32.i.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write32.i.i.i63.i.i, align 4
  tail call void %95(ptr noundef %91, i16 noundef zeroext 352, i32 noundef 65552) #14
  %96 = ptrtoint ptr %d.0.le.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %d.0.le.i.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %write16.i.i64.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %write16.i.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write16.i.i64.i.i, align 4
  tail call void %101(ptr noundef %97, i16 noundef zeroext 356, i16 noundef zeroext 0) #14
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %d.0.le.i.i, ptr %1, align 4
  br label %do.body34

init_failure.i:                                   ; preds = %phymode_to_string.exit123.i, %phymode_to_string.exit118.i
  %err.0.i = phi i32 [ %call31.i, %phymode_to_string.exit118.i ], [ %call39.i, %phymode_to_string.exit123.i ]
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %1, align 4
  br label %out_unlock_mutex

do.body34:                                        ; preds = %if.end65.i, %land.lhs.true.i.do.body34_crit_edge
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 2
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %104 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %cmp45 = icmp slt i32 %105, 2
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call39) #14
  br label %out_unlock_mutex

if.end49:                                         ; preds = %do.body34
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %3, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write32.i.i, align 4
  tail call void %111(ptr noundef %107, i16 noundef zeroext 300, i32 noundef 0) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call39) #14
  %112 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %3, align 4
  %irq.i = getelementptr inbounds %struct.ssb_device, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %115) #14
  %isr_tasklet.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 21
  tail call void @tasklet_kill(ptr noundef %isr_tasklet.i) #14
  %116 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %hw_value, align 2
  %channel = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 9, i32 39
  %120 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %channel, align 4
  %122 = zext i8 %121 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %119, i16 %122)
  %cmp55.not = icmp eq i16 %119, %122
  br i1 %cmp55.not, label %if.end49.if.end63_crit_edge, label %if.then57

if.end49.if.end63_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %conv61 = trunc i16 %119 to i8
  %call62 = tail call i32 @b43legacy_radio_selectchannel(ptr noundef %3, i8 noundef zeroext %conv61, i32 noundef 0) #14
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.end49.if.end63_crit_edge
  %123 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %hw, align 4
  %wl71 = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 1
  %125 = ptrtoint ptr %wl71 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wl71, align 4
  %radiotap_enabled = getelementptr inbounds %struct.b43legacy_wl, ptr %126, i32 0, i32 18
  %127 = trunc i32 %124 to i8
  %128 = and i8 %127, 1
  %129 = ptrtoint ptr %radiotap_enabled to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %radiotap_enabled, align 1
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 1
  %130 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %power_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp72.not = icmp eq i32 %131, 0
  br i1 %cmp72.not, label %if.end63.if.end85_crit_edge, label %if.then74

if.end63.if.end85_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then74:                                        ; preds = %if.end63
  %power_level76 = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 9, i32 30
  %132 = ptrtoint ptr %power_level76 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %power_level76, align 2
  %conv77 = zext i8 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %conv77)
  %cmp78.not = icmp eq i32 %131, %conv77
  br i1 %cmp78.not, label %if.then74.if.end85_crit_edge, label %if.then80

if.then74.if.end85_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then80:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  %conv82 = trunc i32 %131 to i8
  %134 = ptrtoint ptr %power_level76 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv82, ptr %power_level76, align 2
  tail call void @b43legacy_phy_xmitpower(ptr noundef %3) #14
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.then74.if.end85_crit_edge, %if.end63.if.end85_crit_edge
  tail call fastcc void @b43legacy_mgmtframe_txantenna(ptr noundef %3)
  %radio_enabled = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 19
  %135 = ptrtoint ptr %radio_enabled to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %radio_enabled, align 2, !range !310
  %radio_on = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 9, i32 15
  %137 = ptrtoint ptr %radio_on to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %radio_on, align 4, !range !310
  call void @__sanitizer_cov_trace_cmp1(i8 %136, i8 %138)
  %cmp90.not = icmp eq i8 %136, %138
  br i1 %cmp90.not, label %if.end85.do.body106_crit_edge, label %if.then92

if.end85.do.body106_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body106

if.then92:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool86.not = icmp eq i8 %136, 0
  br i1 %tobool86.not, label %if.else101, label %if.then95

if.then95:                                        ; preds = %if.then92
  tail call void @b43legacy_radio_turn_on(ptr noundef %3) #14
  %139 = ptrtoint ptr %wl71 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %wl71, align 4
  tail call void (ptr, ptr, ...) @b43legacyinfo(ptr noundef %140, ptr noundef nonnull @.str.47)
  %radio_hw_enable = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 8
  %141 = ptrtoint ptr %radio_hw_enable to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %radio_hw_enable, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool97.not = icmp eq i8 %142, 0
  br i1 %tobool97.not, label %if.then95.do.body106.sink.split_crit_edge, label %if.then95.do.body106_crit_edge

if.then95.do.body106_crit_edge:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body106

if.then95.do.body106.sink.split_crit_edge:        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body106.sink.split

if.else101:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @b43legacy_radio_turn_off(ptr noundef %3, i1 noundef zeroext false) #14
  br label %do.body106.sink.split

do.body106.sink.split:                            ; preds = %if.else101, %if.then95.do.body106.sink.split_crit_edge
  %.str.49.sink = phi ptr [ @.str.49, %if.else101 ], [ @.str.48, %if.then95.do.body106.sink.split_crit_edge ]
  %143 = ptrtoint ptr %wl71 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %wl71, align 4
  tail call void (ptr, ptr, ...) @b43legacyinfo(ptr noundef %144, ptr noundef nonnull %.str.49.sink)
  br label %do.body106

do.body106:                                       ; preds = %do.body106.sink.split, %if.then95.do.body106_crit_edge, %if.end85.do.body106_crit_edge
  %call114 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  %irq_mask = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 18
  %145 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %irq_mask, align 4
  %147 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %3, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %write32.i.i167 = getelementptr inbounds %struct.ssb_bus_ops, ptr %150, i32 0, i32 5
  %151 = ptrtoint ptr %write32.i.i167 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write32.i.i167, align 4
  tail call void %152(ptr noundef %148, i16 noundef zeroext 300, i32 noundef %146) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call114) #14
  br label %out_unlock_mutex

out_unlock_mutex:                                 ; preds = %do.body106, %if.then47, %init_failure.i, %phymode_to_string.exit.i, %if.end.out_unlock_mutex_crit_edge
  %err.0 = phi i32 [ 0, %if.then47 ], [ 0, %do.body106 ], [ 0, %if.end.out_unlock_mutex_crit_edge ], [ -3, %phymode_to_string.exit.i ], [ %err.0.i, %init_failure.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_op_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef readnone %vif, ptr nocapture noundef readonly %conf, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %vif1 = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif1, align 4
  %cmp.not = icmp eq ptr %3, %vif
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !303

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2816, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 2
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %5, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %6 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp31 = icmp slt i32 %7, 2
  br i1 %cmp31, label %if.end.out_unlock_mutex_crit_edge, label %if.end35

if.end.out_unlock_mutex_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock_mutex

if.end35:                                         ; preds = %if.end
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i, align 4
  tail call void %13(ptr noundef %9, i16 noundef zeroext 300, i32 noundef 0) #14
  %and = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.end35.if.end45_crit_edge, label %if.then37

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then37:                                        ; preds = %if.end35
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %irq.i = getelementptr inbounds %struct.ssb_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %17) #14
  %isr_tasklet.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %5, i32 0, i32 21
  tail call void @tasklet_kill(ptr noundef %isr_tasklet.i) #14
  %18 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conf, align 8
  %tobool38.not = icmp eq ptr %19, null
  %bssid42 = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 8
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  %20 = call ptr @memcpy(ptr %bssid42, ptr %19, i32 6)
  br label %if.end45

if.else:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #16
  %21 = call ptr @memset(ptr %bssid42, i32 0, i32 6)
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then39, %if.end35.if.end45_crit_edge
  %call.i.i142 = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %22 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp48 = icmp sgt i32 %23, 0
  br i1 %cmp48, label %if.then50, label %if.end45.if.end63_crit_edge

if.end45.if.end63_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then50:                                        ; preds = %if.end45
  %and51 = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.then50.if.end58_crit_edge, label %land.lhs.true

if.then50.if.end58_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

land.lhs.true:                                    ; preds = %if.then50
  %operating.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %operating.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %operating.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end58_crit_edge, label %b43legacy_is_mode.exit

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

b43legacy_is_mode.exit:                           ; preds = %land.lhs.true
  %if_type.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %if_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i.not = icmp eq i32 %27, 3
  br i1 %cmp.i.not, label %b43legacy_is_mode.exit.if.then57_crit_edge, label %b43legacy_is_mode.exit149

b43legacy_is_mode.exit.if.then57_crit_edge:       ; preds = %b43legacy_is_mode.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57

b43legacy_is_mode.exit149:                        ; preds = %b43legacy_is_mode.exit
  %28 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %if_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i146.not = icmp eq i32 %29, 1
  br i1 %cmp.i146.not, label %b43legacy_is_mode.exit149.if.then57_crit_edge, label %b43legacy_is_mode.exit149.if.end58_crit_edge

b43legacy_is_mode.exit149.if.end58_crit_edge:     ; preds = %b43legacy_is_mode.exit149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

b43legacy_is_mode.exit149.if.then57_crit_edge:    ; preds = %b43legacy_is_mode.exit149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57

if.then57:                                        ; preds = %b43legacy_is_mode.exit149.if.then57_crit_edge, %b43legacy_is_mode.exit.if.then57_crit_edge
  %hw.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw.i, align 4
  %32 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vif1, align 4
  %call.i.i150 = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %31, ptr noundef %33, ptr noundef null, ptr noundef null) #14
  %tobool.not.i151 = icmp eq ptr %call.i.i150, null
  br i1 %tobool.not.i151, label %if.then57.if.end58_crit_edge, label %if.end.i, !prof !305

if.then57.if.end58_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.end.i:                                         ; preds = %if.then57
  %current_beacon.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 20
  %34 = ptrtoint ptr %current_beacon.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %current_beacon.i, align 4
  %tobool4.not.i = icmp eq ptr %35, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %35, i32 noundef 1) #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %36 = ptrtoint ptr %current_beacon.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i150, ptr %current_beacon.i, align 4
  %beacon0_uploaded.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 21
  %37 = ptrtoint ptr %beacon0_uploaded.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %beacon0_uploaded.i, align 4
  %beacon1_uploaded.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 22
  %38 = ptrtoint ptr %beacon1_uploaded.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %beacon1_uploaded.i, align 1
  %39 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw.i, align 4
  %beacon_update_trigger.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 24
  tail call void @ieee80211_queue_work(ptr noundef %40, ptr noundef %beacon_update_trigger.i) #14
  br label %if.end58

if.end58:                                         ; preds = %if.end7.i, %if.then57.if.end58_crit_edge, %b43legacy_is_mode.exit149.if.end58_crit_edge, %land.lhs.true.if.end58_crit_edge, %if.then50.if.end58_crit_edge
  br i1 %tobool36.not, label %if.end58.if.end63_crit_edge, label %if.then61

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_write_mac_bssid_templates(ptr noundef %5)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end58.if.end63_crit_edge, %if.end45.if.end63_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call25) #14
  tail call void @b43legacy_mac_suspend(ptr noundef %5)
  %and65 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.if.end74_crit_edge, label %land.lhs.true67

if.end63.if.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

land.lhs.true67:                                  ; preds = %if.end63
  %operating.i152 = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %operating.i152 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %operating.i152, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i153 = icmp eq i8 %42, 0
  br i1 %tobool.not.i153, label %land.lhs.true67.if.end74_crit_edge, label %b43legacy_is_mode.exit158

land.lhs.true67.if.end74_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

b43legacy_is_mode.exit158:                        ; preds = %land.lhs.true67
  %if_type.i154 = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %if_type.i154 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %if_type.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp.i155.not = icmp eq i32 %44, 3
  br i1 %cmp.i155.not, label %b43legacy_is_mode.exit158.if.then73_crit_edge, label %b43legacy_is_mode.exit165

b43legacy_is_mode.exit158.if.then73_crit_edge:    ; preds = %b43legacy_is_mode.exit158
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

b43legacy_is_mode.exit165:                        ; preds = %b43legacy_is_mode.exit158
  %45 = ptrtoint ptr %if_type.i154 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %if_type.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i162.not = icmp eq i32 %46, 1
  br i1 %cmp.i162.not, label %b43legacy_is_mode.exit165.if.then73_crit_edge, label %b43legacy_is_mode.exit165.if.end74_crit_edge

b43legacy_is_mode.exit165.if.end74_crit_edge:     ; preds = %b43legacy_is_mode.exit165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

b43legacy_is_mode.exit165.if.then73_crit_edge:    ; preds = %b43legacy_is_mode.exit165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

if.then73:                                        ; preds = %b43legacy_is_mode.exit165.if.then73_crit_edge, %b43legacy_is_mode.exit158.if.then73_crit_edge
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 19
  %47 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %beacon_int, align 2
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %5, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %54(ptr noundef %50, i16 noundef zeroext 288) #14
  %or.i.i = or i32 %call.i.i.i.i, 268435456
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %5, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %60(ptr noundef %56, i16 noundef zeroext 288, i32 noundef %or.i.i) #14
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %5, align 4
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %62, i32 0, i32 4, i32 2
  %63 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp.i166 = icmp ugt i8 %64, 2
  br i1 %cmp.i166, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  %conv3.i = zext i16 %48 to i32
  %shl.i = shl nuw i32 %conv3.i, 16
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %68(ptr noundef %62, i16 noundef zeroext 392, i32 noundef %shl.i) #14
  %shl5.i = shl nuw nsw i32 %conv3.i, 10
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %5, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %write32.i.i20.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %write32.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write32.i.i20.i, align 4
  tail call void %74(ptr noundef %70, i16 noundef zeroext 396, i32 noundef %shl5.i) #14
  br label %b43legacy_set_beacon_int.exit

if.else.i:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  %75 = lshr i16 %48, 6
  %76 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %62, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %79(ptr noundef %62, i16 noundef zeroext 1542, i16 noundef zeroext %75) #14
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %5, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %write16.i.i21.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %write16.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write16.i.i21.i, align 4
  tail call void %85(ptr noundef %81, i16 noundef zeroext 1552, i16 noundef zeroext %48) #14
  %.pre.i = zext i16 %48 to i32
  br label %b43legacy_set_beacon_int.exit

b43legacy_set_beacon_int.exit:                    ; preds = %if.else.i, %if.then.i
  %conv8.pre-phi.i = phi i32 [ %.pre.i, %if.else.i ], [ %conv3.i, %if.then.i ]
  %86 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %5, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %read32.i.i.i22.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %read32.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read32.i.i.i22.i, align 4
  %call.i.i.i23.i = tail call i32 %91(ptr noundef %87, i16 noundef zeroext 288) #14
  %and.i.i = and i32 %call.i.i.i23.i, -268435457
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %5, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %write32.i.i.i24.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %write32.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write32.i.i.i24.i, align 4
  tail call void %97(ptr noundef %93, i16 noundef zeroext 288, i32 noundef %and.i.i) #14
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %5, i32 0, i32 1
  %98 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %99, ptr noundef nonnull @.str.58, i32 noundef %conv8.pre-phi.i) #14
  br label %if.end74

if.end74:                                         ; preds = %b43legacy_set_beacon_int.exit, %b43legacy_is_mode.exit165.if.end74_crit_edge, %land.lhs.true67.if.end74_crit_edge, %if.end63.if.end74_crit_edge
  %and75 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end78_crit_edge, label %if.then77

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then77:                                        ; preds = %if.end74
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 24
  %100 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %basic_rates, align 8
  %wl.i168 = getelementptr inbounds %struct.b43legacy_wldev, ptr %5, i32 0, i32 1
  %102 = ptrtoint ptr %wl.i168 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wl.i168, align 4
  %hw.i169 = getelementptr inbounds %struct.b43legacy_wl, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %hw.i169 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw.i169, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wiphy.i, align 8
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %107, i32 0, i32 53
  %108 = ptrtoint ptr %bands.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bands.i, align 16
  %n_bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %n_bitrates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp81.i = icmp sgt i32 %111, 0
  br i1 %cmp81.i, label %for.body.lr.ph.i, label %if.then77.if.end78_crit_edge

if.then77.if.end78_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

for.body.lr.ph.i:                                 ; preds = %if.then77
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %109, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end37.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.082.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end37.i.for.body.i_crit_edge ]
  %112 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bitrates.i, align 4
  %hw_value.i = getelementptr %struct.ieee80211_rate, ptr %113, i32 %i.082.i, i32 2
  %114 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %hw_value.i, align 2
  %116 = zext i16 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.119)
  switch i16 %115, label %if.else.i172 [
    i16 2, label %for.body.i.if.then.i171_crit_edge
    i16 4, label %for.body.i.if.then.i171_crit_edge187
    i16 11, label %for.body.i.if.then.i171_crit_edge188
    i16 22, label %for.body.i.if.then.i171_crit_edge189
  ]

for.body.i.if.then.i171_crit_edge189:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i171

for.body.i.if.then.i171_crit_edge188:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i171

for.body.i.if.then.i171_crit_edge187:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i171

for.body.i.if.then.i171_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i171

if.then.i171:                                     ; preds = %for.body.i.if.then.i171_crit_edge, %for.body.i.if.then.i171_crit_edge187, %for.body.i.if.then.i171_crit_edge188, %for.body.i.if.then.i171_crit_edge189
  %conv3.i170 = trunc i16 %115 to i8
  %call4.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_cck(i8 noundef zeroext %conv3.i170) #14
  br label %if.end.i173

if.else.i172:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv9.i = trunc i16 %115 to i8
  %call10.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_ofdm(i8 noundef zeroext %conv9.i) #14
  br label %if.end.i173

if.end.i173:                                      ; preds = %if.else.i172, %if.then.i171
  %basic.0.i = phi i32 [ 1248, %if.then.i171 ], [ 1184, %if.else.i172 ]
  %direct.0.i = phi i32 [ 1216, %if.then.i171 ], [ 1152, %if.else.i172 ]
  %offset.0.in.in.i = phi i8 [ %call4.i, %if.then.i171 ], [ %call10.i, %if.else.i172 ]
  %bitrate.i = getelementptr %struct.ieee80211_rate, ptr %113, i32 %i.082.i, i32 1
  %117 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %bitrate.i, align 4
  %conv15.i = zext i16 %118 to i32
  %call16.i = tail call ptr @ieee80211_get_response_rate(ptr noundef %109, i32 noundef %101, i32 noundef %conv15.i) #14
  %hw_value17.i = getelementptr inbounds %struct.ieee80211_rate, ptr %call16.i, i32 0, i32 2
  %119 = ptrtoint ptr %hw_value17.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %hw_value17.i, align 2
  %121 = zext i16 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.120)
  switch i16 %120, label %if.else29.i [
    i16 2, label %if.end.i173.if.then21.i_crit_edge
    i16 4, label %if.end.i173.if.then21.i_crit_edge190
    i16 11, label %if.end.i173.if.then21.i_crit_edge191
    i16 22, label %if.end.i173.if.then21.i_crit_edge192
  ]

if.end.i173.if.then21.i_crit_edge192:             ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21.i

if.end.i173.if.then21.i_crit_edge191:             ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21.i

if.end.i173.if.then21.i_crit_edge190:             ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21.i

if.end.i173.if.then21.i_crit_edge:                ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.end.i173.if.then21.i_crit_edge, %if.end.i173.if.then21.i_crit_edge190, %if.end.i173.if.then21.i_crit_edge191, %if.end.i173.if.then21.i_crit_edge192
  %conv23.i = trunc i16 %120 to i8
  %call24.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_cck(i8 noundef zeroext %conv23.i) #14
  br label %if.end37.i

if.else29.i:                                      ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #16
  %conv31.i = trunc i16 %120 to i8
  %call32.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_ofdm(i8 noundef zeroext %conv31.i) #14
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else29.i, %if.then21.i
  %basic_offset.0.in.in.i = phi i8 [ %call24.i, %if.then21.i ], [ %call32.i, %if.else29.i ]
  %basic_offset.0.in.i = shl i8 %basic_offset.0.in.in.i, 1
  %122 = and i8 %basic_offset.0.in.i, 28
  %mul.i = zext i8 %122 to i32
  %add.i = or i32 %direct.0.i, %mul.i
  %123 = and i8 %basic_offset.0.in.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool26.not.i.i = icmp eq i8 %123, 0
  %124 = lshr exact i32 %add.i, 2
  %or.i50.i.i = or i32 %124, 65536
  %125 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %5, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %write32.i.i.i51.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %write32.i.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write32.i.i.i51.i.i, align 4
  tail call void %130(ptr noundef %126, i16 noundef zeroext 352, i32 noundef %or.i50.i.i) #14
  %131 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %5, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %read16.i.i52.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %read16.i.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read16.i.i52.i.i, align 4
  %..i = select i1 %tobool26.not.i.i, i16 356, i16 358
  %call.i.i.i.i174 = tail call zeroext i16 %136(ptr noundef %132, i16 noundef zeroext %..i) #14
  %offset.0.in.i = shl i8 %offset.0.in.in.i, 1
  %137 = and i8 %offset.0.in.i, 28
  %mul44.i = zext i8 %137 to i32
  %add45.i = or i32 %basic.0.i, %mul44.i
  %138 = and i8 %offset.0.in.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool26.not.i72.i = icmp eq i8 %138, 0
  %139 = lshr exact i32 %add45.i, 2
  %or.i49.i.i = or i32 %139, 65536
  %140 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %5, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %write32.i.i.i50.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %143, i32 0, i32 5
  %144 = ptrtoint ptr %write32.i.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write32.i.i.i50.i.i, align 4
  tail call void %145(ptr noundef %141, i16 noundef zeroext 352, i32 noundef %or.i49.i.i) #14
  %146 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %5, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %write16.i.i51.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %write16.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write16.i.i51.i.i, align 4
  %.83.i = select i1 %tobool26.not.i72.i, i16 356, i16 358
  tail call void %151(ptr noundef %147, i16 noundef zeroext %.83.i, i16 noundef zeroext %call.i.i.i.i174) #14
  %inc.i = add nuw nsw i32 %i.082.i, 1
  %152 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %n_bitrates.i, align 4
  %cmp.i175 = icmp slt i32 %inc.i, %153
  br i1 %cmp.i175, label %if.end37.i.for.body.i_crit_edge, label %if.end37.i.if.end78_crit_edge

if.end37.i.if.end78_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.end37.i.for.body.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end78:                                         ; preds = %if.end37.i.if.end78_crit_edge, %if.then77.if.end78_crit_edge, %if.end74.if.end78_crit_edge
  %and79 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end86_crit_edge, label %if.then81

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then81:                                        ; preds = %if.end78
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 16
  %154 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %use_short_slot, align 2, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool82.not = icmp eq i8 %155, 0
  %type.i.i176 = getelementptr inbounds %struct.b43legacy_wldev, ptr %5, i32 0, i32 9, i32 3
  %156 = ptrtoint ptr %type.i.i176 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %type.i.i176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %157)
  %cmp.not.i.i177 = icmp eq i8 %157, 2
  br i1 %tobool82.not, label %if.else84, label %if.then83

if.then83:                                        ; preds = %if.then81
  br i1 %cmp.not.i.i177, label %if.end.i.i, label %if.then83.if.end86_crit_edge

if.then83.if.end86_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.end.i.i:                                       ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  %158 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %5, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %163(ptr noundef %159, i16 noundef zeroext 1668, i16 noundef zeroext 519) #14
  %164 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %5, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %write32.i.i.i50.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %167, i32 0, i32 5
  %168 = ptrtoint ptr %write32.i.i.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write32.i.i.i50.i.i.i, align 4
  tail call void %169(ptr noundef %165, i16 noundef zeroext 352, i32 noundef 65540) #14
  %170 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %5, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %write16.i.i51.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %173, i32 0, i32 4
  %174 = ptrtoint ptr %write16.i.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write16.i.i51.i.i.i, align 4
  tail call void %175(ptr noundef %171, i16 noundef zeroext 356, i16 noundef zeroext 9) #14
  br label %if.end86

if.else84:                                        ; preds = %if.then81
  br i1 %cmp.not.i.i177, label %if.end.i.i181, label %if.else84.if.end86_crit_edge

if.else84.if.end86_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.end.i.i181:                                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #16
  %176 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %5, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 4
  %write16.i.i.i.i178 = getelementptr inbounds %struct.ssb_bus_ops, ptr %179, i32 0, i32 4
  %180 = ptrtoint ptr %write16.i.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %write16.i.i.i.i178, align 4
  tail call void %181(ptr noundef %177, i16 noundef zeroext 1668, i16 noundef zeroext 530) #14
  %182 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %5, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %write32.i.i.i50.i.i.i179 = getelementptr inbounds %struct.ssb_bus_ops, ptr %185, i32 0, i32 5
  %186 = ptrtoint ptr %write32.i.i.i50.i.i.i179 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write32.i.i.i50.i.i.i179, align 4
  tail call void %187(ptr noundef %183, i16 noundef zeroext 352, i32 noundef 65540) #14
  %188 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %5, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  %write16.i.i51.i.i.i180 = getelementptr inbounds %struct.ssb_bus_ops, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %write16.i.i51.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write16.i.i51.i.i.i180, align 4
  tail call void %193(ptr noundef %189, i16 noundef zeroext 356, i16 noundef zeroext 20) #14
  br label %if.end86

if.end86:                                         ; preds = %if.end.i.i181, %if.else84.if.end86_crit_edge, %if.end.i.i, %if.then83.if.end86_crit_edge, %if.end78.if.end86_crit_edge
  tail call void @b43legacy_mac_enable(ptr noundef %5)
  %call96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  %irq_mask = getelementptr inbounds %struct.b43legacy_wldev, ptr %5, i32 0, i32 18
  %194 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %irq_mask, align 4
  %196 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %5, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %write32.i.i182 = getelementptr inbounds %struct.ssb_bus_ops, ptr %199, i32 0, i32 5
  %200 = ptrtoint ptr %write32.i.i182 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %write32.i.i182, align 4
  tail call void %201(ptr noundef %197, i16 noundef zeroext 300, i32 noundef %195) #14
  br label %out_unlock_mutex

out_unlock_mutex:                                 ; preds = %if.end86, %if.end.out_unlock_mutex_crit_edge
  %call96.sink = phi i32 [ %call96, %if.end86 ], [ %call25, %if.end.out_unlock_mutex_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call96.sink) #14
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_op_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed, ptr nocapture noundef %fflags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %fflags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fflags, align 4
  br label %cleanup

do.body1:                                         ; preds = %entry
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  %5 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fflags, align 4
  %and = and i32 %6, 126
  store i32 %and, ptr %fflags, align 4
  %and6 = and i32 %changed, 126
  %filter_flags = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %filter_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %filter_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body1.if.end12_crit_edge, label %land.lhs.true

do.body1.if.end12_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true:                                    ; preds = %do.body1
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %8 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp sgt i32 %9, 0
  br i1 %cmp9, label %if.then11, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_adjust_opmode(ptr noundef nonnull %3)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true.if.end12_crit_edge, %do.body1.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_op_beacon_set_tim(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %sta, i1 noundef zeroext %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  %hw.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %vif.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif.i, align 4
  %call.i.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %3, ptr noundef %5, ptr noundef null, ptr noundef null) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.b43legacy_update_templates.exit_crit_edge, label %if.end.i, !prof !305

entry.b43legacy_update_templates.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_update_templates.exit

if.end.i:                                         ; preds = %entry
  %current_beacon.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %current_beacon.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_beacon.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %8 = ptrtoint ptr %current_beacon.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %current_beacon.i, align 4
  %beacon0_uploaded.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %beacon0_uploaded.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %beacon0_uploaded.i, align 4
  %beacon1_uploaded.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %beacon1_uploaded.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %beacon1_uploaded.i, align 1
  %11 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i, align 4
  %beacon_update_trigger.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 24
  tail call void @ieee80211_queue_work(ptr noundef %12, ptr noundef %beacon_update_trigger.i) #14
  br label %b43legacy_update_templates.exit

b43legacy_update_templates.exit:                  ; preds = %if.end7.i, %entry.b43legacy_update_templates.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_op_get_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  %ieee_stats = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 12
  %2 = call ptr @memcpy(ptr %stats, ptr %ieee_stats, i32 16)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @b43legacy_op_conf_tx(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readnone %params) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @b43legacy_op_get_survey(ptr nocapture noundef readonly %hw, i32 noundef %idx, ptr nocapture noundef writeonly %survey) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp.not = icmp eq i32 %idx, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %6 = ptrtoint ptr %survey to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %survey, align 8
  %filled = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %7 = ptrtoint ptr %filled to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %filled, align 8
  %stats = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stats, align 4
  %noise = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 9
  %10 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %noise, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_rfkill_poll(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @b43legacy_wireless_core_init(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wl1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl1, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %bus3 = getelementptr inbounds %struct.ssb_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus3, align 4
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %6 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !303

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3259, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call27 = tail call i32 @ssb_bus_powerup(ptr noundef %5, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call32 = tail call i32 @ssb_device_is_enabled(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %gmode = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gmode, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool35.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool35.not, i32 0, i32 536870912
  tail call void @b43legacy_wireless_core_reset(ptr noundef %dev, i32 noundef %cond)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end30.if.end36_crit_edge
  %type = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type, align 1
  %.off = add i8 %13, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then43, label %if.end36.if.end49_crit_edge

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then43:                                        ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 168) #18
  %_lo_pairs = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 19
  %15 = ptrtoint ptr %_lo_pairs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i, ptr %_lo_pairs, align 4
  %tobool46.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool46.not, label %if.then43.cleanup_crit_edge, label %if.then43.if.end49_crit_edge

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end49:                                         ; preds = %if.then43.if.end49_crit_edge, %if.end36.if.end49_crit_edge
  %dfq_valid.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 6
  %16 = ptrtoint ptr %dfq_valid.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %dfq_valid.i, align 2
  %stats.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 11
  %17 = call ptr @memset(ptr %stats.i, i32 0, i32 12)
  %minlowsig.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 17
  %18 = ptrtoint ptr %minlowsig.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %minlowsig.i.i, align 4
  %minlowsigpos.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 18
  %19 = ptrtoint ptr %minlowsigpos.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %minlowsigpos.i.i, align 4
  %radio_hw_enable.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 8
  %20 = ptrtoint ptr %radio_hw_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %radio_hw_enable.i.i, align 4
  %savedpctlreg.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 6
  %21 = ptrtoint ptr %savedpctlreg.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %savedpctlreg.i.i, align 4
  %aci_enable.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 12
  %22 = ptrtoint ptr %aci_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %aci_enable.i.i, align 1
  %aci_wlan_automatic.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 13
  %23 = ptrtoint ptr %aci_wlan_automatic.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %aci_wlan_automatic.i.i, align 2
  %aci_hw_rssi.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 14
  %24 = ptrtoint ptr %aci_hw_rssi.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %aci_hw_rssi.i.i, align 1
  %_lo_pairs.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 19
  %25 = ptrtoint ptr %_lo_pairs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_lo_pairs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end49.if.end.i.i_crit_edge, label %if.then.i.i

if.end49.if.end.i.i_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %27 = call ptr @memset(ptr %26, i32 0, i32 168)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end49.if.end.i.i_crit_edge
  %max_lb_gain.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 25
  %28 = ptrtoint ptr %max_lb_gain.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %max_lb_gain.i.i, align 4
  %trsw_rx_gain.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 26
  %29 = ptrtoint ptr %trsw_rx_gain.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %trsw_rx_gain.i.i, align 2
  %call.i.i251 = tail call zeroext i16 @b43legacy_default_baseband_attenuation(ptr noundef %dev) #14
  %30 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32
  %bbatt.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 1
  %31 = ptrtoint ptr %bbatt.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %call.i.i251, ptr %bbatt.i.i, align 2
  %call2.i.i = tail call zeroext i16 @b43legacy_default_radio_attenuation(ptr noundef %dev) #14
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %call2.i.i, ptr %30, align 4
  %call3.i.i = tail call zeroext i16 @b43legacy_default_txctl1(ptr noundef %dev) #14
  %txctl1.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 2
  %33 = ptrtoint ptr %txctl1.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %call3.i.i, ptr %txctl1.i.i, align 4
  %34 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 33
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %34, align 4
  %nrssislope.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 37
  %36 = ptrtoint ptr %nrssislope.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %nrssislope.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 36
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1000, ptr %arrayidx.i.i, align 2
  %arrayidx.1.i.i = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 36, i32 1
  %38 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1000, ptr %arrayidx.1.i.i, align 2
  br label %for.body6.i.i

for.body6.i.i:                                    ; preds = %for.body6.i.i.for.body6.i.i_crit_edge, %if.end.i.i
  %i.141.i.i = phi i32 [ %inc9.i.i, %for.body6.i.i.for.body6.i.i_crit_edge ], [ 0, %if.end.i.i ]
  %conv.i.i = trunc i32 %i.141.i.i to i8
  %arrayidx7.i.i = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 38, i32 %i.141.i.i
  %39 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i.i, ptr %arrayidx7.i.i, align 1
  %inc9.i.i = add nuw nsw i32 %i.141.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc9.i.i, 64
  br i1 %exitcond.not.i.i, label %setup_struct_wldev_for_init.exit, label %for.body6.i.i.for.body6.i.i_crit_edge

for.body6.i.i.for.body6.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6.i.i

setup_struct_wldev_for_init.exit:                 ; preds = %for.body6.i.i
  %lofcal.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 40
  %40 = ptrtoint ptr %lofcal.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %lofcal.i.i, align 2
  %initval.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 41
  %41 = ptrtoint ptr %initval.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %initval.i.i, align 4
  %interfmode.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 34
  %42 = ptrtoint ptr %interfmode.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %interfmode.i.i, align 4
  %channel.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 39
  %43 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %channel.i.i, align 4
  %irq_reason.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 16
  %irq_mask.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 18
  %44 = call ptr @memset(ptr %irq_reason.i, i32 0, i32 28)
  %45 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 939887205, ptr %irq_mask.i, align 4
  %mac_suspended.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 20
  %46 = ptrtoint ptr %mac_suspended.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %mac_suspended.i, align 4
  %noisecalc.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 19
  %47 = call ptr @memset(ptr %noisecalc.i, i32 0, i32 35)
  %call50 = tail call i32 @b43legacy_phy_init_tssi2dbm_table(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %setup_struct_wldev_for_init.exit.err_kfree_lo_control_crit_edge

setup_struct_wldev_for_init.exit.err_kfree_lo_control_crit_edge: ; preds = %setup_struct_wldev_for_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_kfree_lo_control

if.end53:                                         ; preds = %setup_struct_wldev_for_init.exit
  %pcicore = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 18
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %call55 = tail call i32 @ssb_pcicore_dev_irqvecs_enable(ptr noundef %pcicore, ptr noundef %49) #14
  %call.i = tail call zeroext i16 @b43legacy_default_baseband_attenuation(ptr noundef %dev) #14
  %50 = ptrtoint ptr %bbatt.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %call.i, ptr %bbatt.i.i, align 2
  %call2.i = tail call zeroext i16 @b43legacy_default_radio_attenuation(ptr noundef %dev) #14
  %51 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %call2.i, ptr %30, align 4
  %call3.i = tail call zeroext i16 @b43legacy_default_txctl1(ptr noundef %dev) #14
  %52 = ptrtoint ptr %txctl1.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %call3.i, ptr %txctl1.i.i, align 4
  %txctl2.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 3
  %53 = ptrtoint ptr %txctl2.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -1, ptr %txctl2.i, align 2
  %54 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %34, align 4
  %55 = ptrtoint ptr %nrssislope.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %nrssislope.i.i, align 4
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -1000, ptr %arrayidx.i.i, align 2
  %57 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1000, ptr %arrayidx.1.i.i, align 2
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %if.end53
  %i.143.i = phi i32 [ %inc9.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %if.end53 ]
  %conv.i = trunc i32 %i.143.i to i8
  %arrayidx7.i = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 38, i32 %i.143.i
  %58 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i, ptr %arrayidx7.i, align 1
  %inc9.i = add nuw nsw i32 %i.143.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, 64
  br i1 %exitcond.not.i, label %for.end10.i, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6.i

for.end10.i:                                      ; preds = %for.body6.i
  %59 = ptrtoint ptr %lofcal.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %lofcal.i.i, align 2
  %60 = ptrtoint ptr %initval.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -1, ptr %initval.i.i, align 4
  %61 = ptrtoint ptr %aci_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %aci_enable.i.i, align 1
  %62 = ptrtoint ptr %aci_wlan_automatic.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %aci_wlan_automatic.i.i, align 2
  %63 = ptrtoint ptr %aci_hw_rssi.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %aci_hw_rssi.i.i, align 1
  %antenna_diversity.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 5
  %64 = ptrtoint ptr %antenna_diversity.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %antenna_diversity.i, align 2
  %65 = ptrtoint ptr %minlowsig.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %minlowsig.i.i, align 4
  %66 = ptrtoint ptr %minlowsigpos.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %minlowsigpos.i.i, align 4
  %calibrated.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 9
  %67 = ptrtoint ptr %calibrated.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load.i = load i8, ptr %calibrated.i, align 2
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %calibrated.i, align 2
  %68 = ptrtoint ptr %_lo_pairs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %_lo_pairs.i.i, align 4
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %for.end10.i.prepare_phy_data_for_init.exit_crit_edge, label %if.then.i

for.end10.i.prepare_phy_data_for_init.exit_crit_edge: ; preds = %for.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prepare_phy_data_for_init.exit

if.then.i:                                        ; preds = %for.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = call ptr @memset(ptr %69, i32 0, i32 168)
  br label %prepare_phy_data_for_init.exit

prepare_phy_data_for_init.exit:                   ; preds = %if.then.i, %for.end10.i.prepare_phy_data_for_init.exit_crit_edge
  %loopback_gain.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 31
  %71 = ptrtoint ptr %loopback_gain.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %loopback_gain.i, align 4
  tail call void @b43legacy_phy_calibrate(ptr noundef %dev) #14
  %gmode.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 1
  %72 = ptrtoint ptr %gmode.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %gmode.i, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i252 = icmp eq i8 %73, 0
  %spec.select.i = select i1 %tobool.not.i252, i32 132352, i32 -2147351296
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %79(ptr noundef %75, i16 noundef zeroext 288, i32 noundef %spec.select.i) #14
  %80 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wl1, align 4
  %hw.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw.i.i, align 4
  %wiphy1.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %wiphy1.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wiphy1.i.i, align 8
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %91(ptr noundef %87, i16 noundef zeroext 288) #14
  %and.i.i = and i32 %call.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i253 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i253, label %prepare_phy_data_for_init.exit.if.end.i.i254_crit_edge, label %do.end.i.i, !prof !303

prepare_phy_data_for_init.exit.if.end.i.i254_crit_edge: ; preds = %prepare_phy_data_for_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i254

do.end.i.i:                                       ; preds = %prepare_phy_data_for_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1669, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i254

if.end.i.i254:                                    ; preds = %do.end.i.i, %prepare_phy_data_for_init.exit.if.end.i.i254_crit_edge
  %or.i.i = or i32 %call.i.i.i.i, 4
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %97(ptr noundef %93, i16 noundef zeroext 288, i32 noundef %or.i.i) #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i254
  %i.0249.i.i = phi i32 [ 0, %if.end.i.i254 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %or.i49.i.i.i = or i32 %i.0249.i.i, 131072
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %write32.i.i.i50.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %write32.i.i.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write32.i.i.i50.i.i.i, align 4
  tail call void %103(ptr noundef %99, i16 noundef zeroext 352, i32 noundef %or.i49.i.i.i) #14
  %104 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %write16.i.i51.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %write16.i.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write16.i.i51.i.i.i, align 4
  tail call void %109(ptr noundef %105, i16 noundef zeroext 356, i16 noundef zeroext 0) #14
  %inc.i.i = add nuw nsw i32 %i.0249.i.i, 1
  %exitcond.not.i.i255 = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i255, label %for.body.i.i.for.body25.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.for.body25.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body25.i.i

for.body25.i.i:                                   ; preds = %for.body25.i.i.for.body25.i.i_crit_edge, %for.body.i.i.for.body25.i.i_crit_edge
  %i.1250.i.i = phi i32 [ %add.i.i, %for.body25.i.i.for.body25.i.i_crit_edge ], [ 0, %for.body.i.i.for.body25.i.i_crit_edge ]
  %and25.i.i.i = and i32 %i.1250.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %and25.i.i.i, 0
  %110 = lshr i32 %i.1250.i.i, 2
  %or.i49.i207.i.i = or i32 %110, 65536
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %write32.i.i.i50.i208.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %write32.i.i.i50.i208.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write32.i.i.i50.i208.i.i, align 4
  tail call void %116(ptr noundef %112, i16 noundef zeroext 352, i32 noundef %or.i49.i207.i.i) #14
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %write16.i.i51.i209.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %write16.i.i51.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write16.i.i51.i209.i.i, align 4
  %..i.i = select i1 %tobool26.not.i.i.i, i16 356, i16 358
  tail call void %122(ptr noundef %118, i16 noundef zeroext %..i.i, i16 noundef zeroext 0) #14
  %add.i.i = add nuw nsw i32 %i.1250.i.i, 2
  %cmp23.i.i = icmp ult i32 %i.1250.i.i, 4094
  br i1 %cmp23.i.i, label %for.body25.i.i.for.body25.i.i_crit_edge, label %for.end28.i.i

for.body25.i.i.for.body25.i.i_crit_edge:          ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body25.i.i

for.end28.i.i:                                    ; preds = %for.body25.i.i
  %fw.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 28
  %123 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fw.i.i, align 4
  %data29.i.i = getelementptr inbounds %struct.firmware, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %data29.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data29.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %126, i32 8
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %124, align 4
  %sub.i.i = add i32 %128, -8
  %129 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %134(ptr noundef %130, i16 noundef zeroext 352, i32 noundef 50331648) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp33251.not.i.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp33251.not.i.i, label %for.end28.i.i.for.end38.i.i_crit_edge, label %for.body35.preheader.i.i

for.end28.i.i.for.end38.i.i_crit_edge:            ; preds = %for.end28.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end38.i.i

for.body35.preheader.i.i:                         ; preds = %for.end28.i.i
  %div204.i.i = lshr i32 %sub.i.i, 2
  br label %for.body35.i.i

for.body35.i.i:                                   ; preds = %for.body35.i.i.for.body35.i.i_crit_edge, %for.body35.preheader.i.i
  %i.2252.i.i = phi i32 [ %inc37.i.i, %for.body35.i.i.for.body35.i.i_crit_edge ], [ 0, %for.body35.preheader.i.i ]
  %arrayidx.i.i256 = getelementptr i32, ptr %add.ptr.i.i, i32 %i.2252.i.i
  %135 = ptrtoint ptr %arrayidx.i.i256 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i.i256, align 4
  %137 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %write32.i.i210.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %140, i32 0, i32 5
  %141 = ptrtoint ptr %write32.i.i210.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write32.i.i210.i.i, align 4
  tail call void %142(ptr noundef %138, i16 noundef zeroext 356, i32 noundef %136) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 2147480) #14
  %inc37.i.i = add nuw nsw i32 %i.2252.i.i, 1
  %exitcond255.not.i.i = icmp eq i32 %inc37.i.i, %div204.i.i
  br i1 %exitcond255.not.i.i, label %for.body35.i.i.for.end38.i.i_crit_edge, label %for.body35.i.i.for.body35.i.i_crit_edge

for.body35.i.i.for.body35.i.i_crit_edge:          ; preds = %for.body35.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body35.i.i

for.body35.i.i.for.end38.i.i_crit_edge:           ; preds = %for.body35.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end38.i.i

for.end38.i.i:                                    ; preds = %for.body35.i.i.for.end38.i.i_crit_edge, %for.end28.i.i.for.end38.i.i_crit_edge
  %pcm.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 28, i32 1
  %144 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pcm.i.i, align 4
  %tobool40.not.i.i = icmp eq ptr %145, null
  br i1 %tobool40.not.i.i, label %for.end38.i.i.if.end59.i.i_crit_edge, label %if.then41.i.i

for.end38.i.i.if.end59.i.i_crit_edge:             ; preds = %for.end38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i.i

if.then41.i.i:                                    ; preds = %for.end38.i.i
  %data44.i.i = getelementptr inbounds %struct.firmware, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %data44.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %data44.i.i, align 4
  %add.ptr45.i.i = getelementptr i8, ptr %147, i32 8
  %148 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %145, align 4
  %sub49.i.i = add i32 %149, -8
  %150 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %write32.i.i.i211.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %write32.i.i.i211.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write32.i.i.i211.i.i, align 4
  tail call void %155(ptr noundef %151, i16 noundef zeroext 352, i32 noundef 262634) #14
  %156 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %write32.i.i212.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %159, i32 0, i32 5
  %160 = ptrtoint ptr %write32.i.i212.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write32.i.i212.i.i, align 4
  tail call void %161(ptr noundef %157, i16 noundef zeroext 356, i32 noundef 16384) #14
  %162 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %write32.i.i.i213.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %165, i32 0, i32 5
  %166 = ptrtoint ptr %write32.i.i.i213.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write32.i.i.i213.i.i, align 4
  tail call void %167(ptr noundef %163, i16 noundef zeroext 352, i32 noundef 262635) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub49.i.i)
  %cmp52253.not.i.i = icmp ult i32 %sub49.i.i, 4
  br i1 %cmp52253.not.i.i, label %if.then41.i.i.if.end59.i.i_crit_edge, label %for.body54.preheader.i.i

if.then41.i.i.if.end59.i.i_crit_edge:             ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i.i

for.body54.preheader.i.i:                         ; preds = %if.then41.i.i
  %div50205.i.i = lshr i32 %sub49.i.i, 2
  br label %for.body54.i.i

for.body54.i.i:                                   ; preds = %for.body54.i.i.for.body54.i.i_crit_edge, %for.body54.preheader.i.i
  %i.3254.i.i = phi i32 [ %inc57.i.i, %for.body54.i.i.for.body54.i.i_crit_edge ], [ 0, %for.body54.preheader.i.i ]
  %arrayidx55.i.i = getelementptr i32, ptr %add.ptr45.i.i, i32 %i.3254.i.i
  %168 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx55.i.i, align 4
  %170 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %write32.i.i214.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %173, i32 0, i32 5
  %174 = ptrtoint ptr %write32.i.i214.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write32.i.i214.i.i, align 4
  tail call void %175(ptr noundef %171, i16 noundef zeroext 356, i32 noundef %169) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %176(i32 noundef 2147480) #14
  %inc57.i.i = add nuw nsw i32 %i.3254.i.i, 1
  %exitcond257.not.i.i = icmp eq i32 %inc57.i.i, %div50205.i.i
  br i1 %exitcond257.not.i.i, label %for.body54.i.i.if.end59.i.i_crit_edge, label %for.body54.i.i.for.body54.i.i_crit_edge

for.body54.i.i.for.body54.i.i_crit_edge:          ; preds = %for.body54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body54.i.i

for.body54.i.i.if.end59.i.i_crit_edge:            ; preds = %for.body54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %for.body54.i.i.if.end59.i.i_crit_edge, %if.then41.i.i.if.end59.i.i_crit_edge, %for.end38.i.i.if.end59.i.i_crit_edge
  %177 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %write32.i.i215.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %180, i32 0, i32 5
  %181 = ptrtoint ptr %write32.i.i215.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write32.i.i215.i.i, align 4
  tail call void %182(ptr noundef %178, i16 noundef zeroext 296, i32 noundef -1) #14
  %183 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %read32.i.i216.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %read32.i.i216.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %read32.i.i216.i.i, align 4
  %call.i.i217.i.i = tail call i32 %188(ptr noundef %184, i16 noundef zeroext 288) #14
  %and61.i.i = and i32 %call.i.i217.i.i, -7
  %or62.i.i = or i32 %and61.i.i, 2
  %189 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  %write32.i.i218.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %192, i32 0, i32 5
  %193 = ptrtoint ptr %write32.i.i218.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write32.i.i218.i.i, align 4
  tail call void %194(ptr noundef %190, i16 noundef zeroext 288, i32 noundef %or62.i.i) #14
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %signal_pending.exit.i.i.while.cond.i.i_crit_edge, %if.end59.i.i
  %i.4.i.i = phi i32 [ 0, %if.end59.i.i ], [ %inc68.i.i, %signal_pending.exit.i.i.while.cond.i.i_crit_edge ]
  %195 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %read32.i.i219.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %198, i32 0, i32 2
  %199 = ptrtoint ptr %read32.i.i219.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %read32.i.i219.i.i, align 4
  %call.i.i220.i.i = tail call i32 %200(ptr noundef %196, i16 noundef zeroext 296) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i220.i.i)
  %cmp64.i.i = icmp eq i32 %call.i.i220.i.i, 1
  br i1 %cmp64.i.i, label %while.end.i.i, label %if.end67.i.i

if.end67.i.i:                                     ; preds = %while.cond.i.i
  %inc68.i.i = add nuw nsw i32 %i.4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %i.4.i.i)
  %exitcond258.i.i = icmp eq i32 %i.4.i.i, 19
  br i1 %exitcond258.i.i, label %if.end67.i.i.error.sink.split.i.i_crit_edge, label %if.end74.i.i

if.end67.i.i.error.sink.split.i.i_crit_edge:      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error.sink.split.i.i

if.end74.i.i:                                     ; preds = %if.end67.i.i
  %call75.i.i = tail call i32 @msleep_interruptible(i32 noundef 50) #14
  %201 = tail call i32 @llvm.read_register.i32(metadata !292) #14
  %and.i221.i.i = and i32 %201, -16384
  %202 = inttoptr i32 %and.i221.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %task.i.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %stack.i.i.i.i, align 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %206, align 4
  %209 = and i32 %208, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool.not.i.i.i = icmp eq i32 %209, 0
  br i1 %tobool.not.i.i.i, label %signal_pending.exit.i.i, label %if.end74.i.i.b43legacy_upload_microcode.exit.i_crit_edge, !prof !303

if.end74.i.i.b43legacy_upload_microcode.exit.i_crit_edge: ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_upload_microcode.exit.i

signal_pending.exit.i.i:                          ; preds = %if.end74.i.i
  %210 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %206, align 4
  %and1.i.i.i.i.i.i.i = and i32 %211, 1
  %tobool78.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %tobool78.not.i.i, label %signal_pending.exit.i.i.while.cond.i.i_crit_edge, label %signal_pending.exit.i.i.b43legacy_upload_microcode.exit.i_crit_edge

signal_pending.exit.i.i.b43legacy_upload_microcode.exit.i_crit_edge: ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_upload_microcode.exit.i

signal_pending.exit.i.i.while.cond.i.i_crit_edge: ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %212 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %read32.i.i223.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %read32.i.i223.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %read32.i.i223.i.i, align 4
  %call.i.i224.i.i = tail call i32 %217(ptr noundef %213, i16 noundef zeroext 296) #14
  %218 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 4
  %write32.i.i.i51.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %221, i32 0, i32 5
  %222 = ptrtoint ptr %write32.i.i.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %write32.i.i.i51.i.i.i, align 4
  tail call void %223(ptr noundef %219, i16 noundef zeroext 352, i32 noundef 65536) #14
  %224 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  %read16.i.i52.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %read16.i.i52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %read16.i.i52.i.i.i, align 4
  %call.i.i53.i.i.i = tail call zeroext i16 %229(ptr noundef %225, i16 noundef zeroext 356) #14
  %230 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %231, align 4
  %write32.i.i.i.i229.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %233, i32 0, i32 5
  %234 = ptrtoint ptr %write32.i.i.i.i229.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write32.i.i.i.i229.i.i, align 4
  tail call void %235(ptr noundef %231, i16 noundef zeroext 352, i32 noundef 65536) #14
  %236 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  %read16.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %read16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %read16.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i16 %241(ptr noundef %237, i16 noundef zeroext 358) #14
  %242 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %243, align 4
  %write32.i.i.i51.i233.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %245, i32 0, i32 5
  %246 = ptrtoint ptr %write32.i.i.i51.i233.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %write32.i.i.i51.i233.i.i, align 4
  tail call void %247(ptr noundef %243, i16 noundef zeroext 352, i32 noundef 65537) #14
  %248 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev, align 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %249, align 4
  %read16.i.i52.i234.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %read16.i.i52.i234.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %read16.i.i52.i234.i.i, align 4
  %call.i.i53.i235.i.i = tail call zeroext i16 %253(ptr noundef %249, i16 noundef zeroext 356) #14
  %254 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %255, align 4
  %write32.i.i.i.i239.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %257, i32 0, i32 5
  %258 = ptrtoint ptr %write32.i.i.i.i239.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %write32.i.i.i.i239.i.i, align 4
  tail call void %259(ptr noundef %255, i16 noundef zeroext 352, i32 noundef 65537) #14
  %260 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %read16.i.i.i240.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %read16.i.i.i240.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %read16.i.i.i240.i.i, align 4
  %call.i.i.i241.i.i = tail call zeroext i16 %265(ptr noundef %261, i16 noundef zeroext 358) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 296, i16 %call.i.i53.i.i.i)
  %cmp87.i.i = icmp ugt i16 %call.i.i53.i.i.i, 296
  br i1 %cmp87.i.i, label %while.end.i.i.error.sink.split.i.i_crit_edge, label %if.end6.i

while.end.i.i.error.sink.split.i.i_crit_edge:     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error.sink.split.i.i

error.sink.split.i.i:                             ; preds = %while.end.i.i.error.sink.split.i.i_crit_edge, %if.end67.i.i.error.sink.split.i.i_crit_edge
  %.str.30.sink.i.i = phi ptr [ @.str.30, %while.end.i.i.error.sink.split.i.i_crit_edge ], [ @.str.29, %if.end67.i.i.error.sink.split.i.i_crit_edge ]
  %err.0.ph.i.i = phi i32 [ -95, %while.end.i.i.error.sink.split.i.i_crit_edge ], [ -19, %if.end67.i.i.error.sink.split.i.i_crit_edge ]
  %266 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %wl1, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %267, ptr noundef nonnull %.str.30.sink.i.i) #14
  %268 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %wl1, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %269, ptr noundef nonnull @.str.33) #14
  br label %b43legacy_upload_microcode.exit.i

b43legacy_upload_microcode.exit.i:                ; preds = %error.sink.split.i.i, %signal_pending.exit.i.i.b43legacy_upload_microcode.exit.i_crit_edge, %if.end74.i.i.b43legacy_upload_microcode.exit.i_crit_edge
  %err.0.i.i = phi i32 [ %err.0.ph.i.i, %error.sink.split.i.i ], [ -4, %if.end74.i.i.b43legacy_upload_microcode.exit.i_crit_edge ], [ -4, %signal_pending.exit.i.i.b43legacy_upload_microcode.exit.i_crit_edge ]
  %270 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %271, align 4
  %read32.i.i244.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %273, i32 0, i32 2
  %274 = ptrtoint ptr %read32.i.i244.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %read32.i.i244.i.i, align 4
  %call.i.i245.i.i = tail call i32 %275(ptr noundef %271, i16 noundef zeroext 288) #14
  %and123.i.i = and i32 %call.i.i245.i.i, -7
  %or124.i.i = or i32 %and123.i.i, 4
  %276 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %277, align 4
  %write32.i.i246.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %279, i32 0, i32 5
  %280 = ptrtoint ptr %write32.i.i246.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %write32.i.i246.i.i, align 4
  tail call void %281(ptr noundef %277, i16 noundef zeroext 288, i32 noundef %or124.i.i) #14
  br label %err_kfree_tssitbl

if.end6.i:                                        ; preds = %while.end.i.i
  %conv86.i.i = zext i16 %call.i.i53.i.i.i to i32
  %282 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %wl1, align 4
  %conv95.i.i = zext i16 %call.i.i.i.i.i to i32
  %conv96.i.i = zext i16 %call.i.i53.i235.i.i to i32
  %284 = lshr i32 %conv96.i.i, 12
  %285 = lshr i32 %conv96.i.i, 8
  %and100.i.i = and i32 %285, 15
  %and102.i.i = and i32 %conv96.i.i, 255
  %conv103.i.i = zext i16 %call.i.i.i241.i.i to i32
  %286 = lshr i32 %conv103.i.i, 11
  %287 = lshr i32 %conv103.i.i, 5
  %and108.i.i = and i32 %287, 63
  %and110.i.i = and i32 %conv103.i.i, 31
  tail call void (ptr, ptr, ...) @b43legacyinfo(ptr noundef %283, ptr noundef nonnull @.str.31, i32 noundef %conv86.i.i, i32 noundef %conv95.i.i, i32 noundef %284, i32 noundef %and100.i.i, i32 noundef %and102.i.i, i32 noundef %286, i32 noundef %and108.i.i, i32 noundef %and110.i.i) #14
  %rev.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 28, i32 4
  %288 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %call.i.i53.i.i.i, ptr %rev.i.i, align 4
  %patch.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 28, i32 5
  %289 = ptrtoint ptr %patch.i.i to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %call.i.i.i.i.i, ptr %patch.i.i, align 2
  %fw_version.i.i = getelementptr inbounds %struct.wiphy, ptr %85, i32 0, i32 38
  %call119.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i.i, i32 noundef 32, ptr noundef nonnull @.str.32, i32 noundef %conv86.i.i, i32 noundef %conv95.i.i) #14
  %290 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev, align 4
  %coreid.i.i = getelementptr inbounds %struct.ssb_device, ptr %291, i32 0, i32 4, i32 1
  %292 = ptrtoint ptr %coreid.i.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %coreid.i.i, align 2
  %conv121.i.i = zext i16 %293 to i32
  %hw_version.i.i = getelementptr inbounds %struct.wiphy, ptr %85, i32 0, i32 39
  %294 = ptrtoint ptr %hw_version.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %conv121.i.i, ptr %hw_version.i.i, align 4
  %295 = load ptr, ptr %dev, align 4
  %bus2.i.i = getelementptr inbounds %struct.ssb_device, ptr %295, i32 0, i32 3
  %296 = ptrtoint ptr %bus2.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %bus2.i.i, align 4
  %298 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %295, align 4
  %read32.i.i.i144.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %299, i32 0, i32 2
  %300 = ptrtoint ptr %read32.i.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %read32.i.i.i144.i, align 4
  %call.i.i.i145.i = tail call i32 %301(ptr noundef %295, i16 noundef zeroext 288) #14
  %and.i146.i = and i32 %call.i.i.i145.i, -49153
  %302 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dev, align 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %303, align 4
  %write32.i.i.i147.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %305, i32 0, i32 5
  %306 = ptrtoint ptr %write32.i.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %write32.i.i.i147.i, align 4
  tail call void %307(ptr noundef %303, i16 noundef zeroext 288, i32 noundef %and.i146.i) #14
  %308 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dev, align 4
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %309, align 4
  %read16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i3.i.i = tail call zeroext i16 %313(ptr noundef %309, i16 noundef zeroext 1182) #14
  %314 = or i16 %call.i.i3.i.i, 15
  %315 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %dev, align 4
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %316, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %318, i32 0, i32 4
  %319 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %320(ptr noundef %316, i16 noundef zeroext 1182, i16 noundef zeroext %314) #14
  %321 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %dev, align 4
  %bus6.i.i = getelementptr inbounds %struct.ssb_device, ptr %322, i32 0, i32 3
  %323 = ptrtoint ptr %bus6.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %bus6.i.i, align 4
  %chip_id.i.i = getelementptr inbounds %struct.ssb_bus, ptr %324, i32 0, i32 9
  %325 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17153, i16 %326)
  %cmp.i.i = icmp eq i16 %326, 17153
  %spec.select.i.i = select i1 %cmp.i.i, i32 127, i32 31
  %spec.select1.i.i = select i1 %cmp.i.i, i32 111, i32 15
  %boardflags_lo.i.i = getelementptr inbounds %struct.ssb_bus, ptr %324, i32 0, i32 22, i32 70
  %327 = ptrtoint ptr %boardflags_lo.i.i to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %boardflags_lo.i.i, align 4
  %329 = and i16 %328, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %329)
  %tobool.not.i148.i = icmp eq i16 %329, 0
  br i1 %tobool.not.i148.i, label %if.end6.i.if.end22.i.i_crit_edge, label %if.then15.i.i

if.end6.i.if.end22.i.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i.i

if.then15.i.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %330 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %322, align 4
  %read16.i.i4.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %331, i32 0, i32 1
  %332 = ptrtoint ptr %read16.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %read16.i.i4.i.i, align 4
  %call.i.i5.i.i = tail call zeroext i16 %333(ptr noundef %322, i16 noundef zeroext 1182) #14
  %334 = or i16 %call.i.i5.i.i, 512
  %335 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dev, align 4
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %336, align 4
  %write16.i.i6.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %338, i32 0, i32 4
  %339 = ptrtoint ptr %write16.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %write16.i.i6.i.i, align 4
  tail call void %340(ptr noundef %336, i16 noundef zeroext 1182, i16 noundef zeroext %334) #14
  %or20.i.i = or i32 %spec.select.i.i, 512
  %or21.i.i = or i32 %spec.select1.i.i, 512
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then15.i.i, %if.end6.i.if.end22.i.i_crit_edge
  %mask.1.i.i = phi i32 [ %or20.i.i, %if.then15.i.i ], [ %spec.select.i.i, %if.end6.i.if.end22.i.i_crit_edge ]
  %set.1.i.i = phi i32 [ %or21.i.i, %if.then15.i.i ], [ %spec.select1.i.i, %if.end6.i.if.end22.i.i_crit_edge ]
  %341 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %dev, align 4
  %revision.i.i = getelementptr inbounds %struct.ssb_device, ptr %342, i32 0, i32 4, i32 2
  %343 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %344)
  %cmp25.i.i = icmp ugt i8 %344, 1
  %or28.i.i = or i32 %mask.1.i.i, 16
  %spec.select2.i.i = select i1 %cmp25.i.i, i32 %or28.i.i, i32 %mask.1.i.i
  %chipco.i.i = getelementptr inbounds %struct.ssb_bus, ptr %297, i32 0, i32 17
  %345 = ptrtoint ptr %chipco.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %chipco.i.i, align 4
  %tobool32.not.i.i = icmp eq ptr %346, null
  br i1 %tobool32.not.i.i, label %cond.end.i.i, label %if.end22.i.i.if.end35.i.i_crit_edge

if.end22.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i.i

cond.end.i.i:                                     ; preds = %if.end22.i.i
  %pcicore.i.i = getelementptr inbounds %struct.ssb_bus, ptr %297, i32 0, i32 18
  %347 = ptrtoint ptr %pcicore.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %pcicore.i.i, align 4
  %tobool33.not.i.i = icmp eq ptr %348, null
  br i1 %tobool33.not.i.i, label %cond.end.i.i.b43legacy_gpio_init.exit.i_crit_edge, label %cond.end.i.i.if.end35.i.i_crit_edge

cond.end.i.i.if.end35.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i.i

cond.end.i.i.b43legacy_gpio_init.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_gpio_init.exit.i

if.end35.i.i:                                     ; preds = %cond.end.i.i.if.end35.i.i_crit_edge, %if.end22.i.i.if.end35.i.i_crit_edge
  %cond9.i.i = phi ptr [ %348, %cond.end.i.i.if.end35.i.i_crit_edge ], [ %346, %if.end22.i.i.if.end35.i.i_crit_edge ]
  %349 = ptrtoint ptr %cond9.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %cond9.i.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %350, i32 0, i32 2
  %351 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i149.i = tail call i32 %352(ptr noundef nonnull %cond9.i.i, i16 noundef zeroext 108) #14
  %neg.i.i = xor i32 %spec.select2.i.i, -1
  %and37.i.i = and i32 %call.i.i149.i, %neg.i.i
  %or38.i.i = or i32 %and37.i.i, %set.1.i.i
  %353 = ptrtoint ptr %cond9.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %cond9.i.i, align 4
  %write32.i.i150.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %354, i32 0, i32 5
  %355 = ptrtoint ptr %write32.i.i150.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %write32.i.i150.i, align 4
  tail call void %356(ptr noundef nonnull %cond9.i.i, i16 noundef zeroext 108, i32 noundef %or38.i.i) #14
  br label %b43legacy_gpio_init.exit.i

b43legacy_gpio_init.exit.i:                       ; preds = %if.end35.i.i, %cond.end.i.i.b43legacy_gpio_init.exit.i_crit_edge
  %initvals.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 28, i32 2
  %357 = ptrtoint ptr %initvals.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %initvals.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %358, i32 0, i32 1
  %359 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %360, i32 8
  %size.i.i = getelementptr inbounds %struct.b43legacy_fw_header, ptr %360, i32 0, i32 3
  %361 = ptrtoint ptr %size.i.i to i32
  call void @__asan_loadN_noabort(i32 %361, i32 4)
  %362 = load i32, ptr %size.i.i, align 1
  %363 = ptrtoint ptr %358 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %358, align 4
  %sub.i152.i = add i32 %364, -8
  %call.i.i257 = tail call fastcc i32 @b43legacy_write_initvals(ptr noundef %dev, ptr noundef %add.ptr.i151.i, i32 noundef %362, i32 noundef %sub.i152.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i257)
  %tobool.not.i153.i = icmp eq i32 %call.i.i257, 0
  br i1 %tobool.not.i153.i, label %if.end.i154.i, label %b43legacy_gpio_init.exit.i.err_gpio_clean.i_crit_edge

b43legacy_gpio_init.exit.i.err_gpio_clean.i_crit_edge: ; preds = %b43legacy_gpio_init.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_gpio_clean.i

if.end.i154.i:                                    ; preds = %b43legacy_gpio_init.exit.i
  %initvals_band.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 28, i32 3
  %365 = ptrtoint ptr %initvals_band.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %initvals_band.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %366, null
  br i1 %tobool6.not.i.i, label %if.end.i154.i.if.end14.i_crit_edge, label %b43legacy_upload_initvals.exit.i

if.end.i154.i.if.end14.i_crit_edge:               ; preds = %if.end.i154.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

b43legacy_upload_initvals.exit.i:                 ; preds = %if.end.i154.i
  %data9.i.i = getelementptr inbounds %struct.firmware, ptr %366, i32 0, i32 1
  %367 = ptrtoint ptr %data9.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %data9.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %368, i32 8
  %size13.i.i = getelementptr inbounds %struct.b43legacy_fw_header, ptr %368, i32 0, i32 3
  %369 = ptrtoint ptr %size13.i.i to i32
  call void @__asan_loadN_noabort(i32 %369, i32 4)
  %370 = load i32, ptr %size13.i.i, align 1
  %371 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %366, align 4
  %sub16.i.i = add i32 %372, -8
  %call17.i.i = tail call fastcc i32 @b43legacy_write_initvals(ptr noundef %dev, ptr noundef %add.ptr12.i.i, i32 noundef %370, i32 noundef %sub16.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool12.not.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool12.not.i, label %b43legacy_upload_initvals.exit.i.if.end14.i_crit_edge, label %b43legacy_upload_initvals.exit.i.err_gpio_clean.i_crit_edge

b43legacy_upload_initvals.exit.i.err_gpio_clean.i_crit_edge: ; preds = %b43legacy_upload_initvals.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_gpio_clean.i

b43legacy_upload_initvals.exit.i.if.end14.i_crit_edge: ; preds = %b43legacy_upload_initvals.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

if.end14.i:                                       ; preds = %b43legacy_upload_initvals.exit.i.if.end14.i_crit_edge, %if.end.i154.i.if.end14.i_crit_edge
  tail call void @b43legacy_radio_turn_on(ptr noundef %dev) #14
  %373 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %dev, align 4
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %374, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %376, i32 0, i32 4
  %377 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %378(ptr noundef %374, i16 noundef zeroext 998, i16 noundef zeroext 0) #14
  %call15.i = tail call i32 @b43legacy_phy_init(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %err_radio_off.i

if.end18.i:                                       ; preds = %if.end14.i
  %379 = ptrtoint ptr %interfmode.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %interfmode.i.i, align 4
  store i32 0, ptr %interfmode.i.i, align 4
  %call20.i = tail call i32 @b43legacy_radio_set_interference_mitigation(ptr noundef %dev, i32 noundef %380) #14
  tail call void @b43legacy_phy_set_antenna_diversity(ptr noundef %dev) #14
  tail call fastcc void @b43legacy_mgmtframe_txantenna(ptr noundef %dev) #14
  %381 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %382)
  %cmp.i = icmp eq i8 %382, 1
  br i1 %cmp.i, label %if.then22.i, label %if.end18.i.if.end27.i_crit_edge

if.end18.i.if.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  %383 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %dev, align 4
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %384, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %386, i32 0, i32 1
  %387 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i156.i = tail call zeroext i16 %388(ptr noundef %384, i16 noundef zeroext 94) #14
  %389 = or i16 %call.i.i156.i, 4
  %390 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %dev, align 4
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %391, align 4
  %write16.i.i157.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %393, i32 0, i32 4
  %394 = ptrtoint ptr %write16.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %write16.i.i157.i, align 4
  tail call void %395(ptr noundef %391, i16 noundef zeroext 94, i16 noundef zeroext %389) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end27.i_crit_edge
  %396 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %dev, align 4
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %397, align 4
  %write32.i.i158.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %399, i32 0, i32 5
  %400 = ptrtoint ptr %write32.i.i158.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %write32.i.i158.i, align 4
  tail call void %401(ptr noundef %397, i16 noundef zeroext 256, i32 noundef 16777216) #14
  %402 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %dev, align 4
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %403, i32 0, i32 4, i32 2
  %404 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %405)
  %cmp30.i = icmp ult i8 %405, 5
  br i1 %cmp30.i, label %if.then32.i, label %if.end27.i.if.end33.i_crit_edge

if.end27.i.if.end33.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then32.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  %406 = ptrtoint ptr %403 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %403, align 4
  %write32.i.i159.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %407, i32 0, i32 5
  %408 = ptrtoint ptr %write32.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %write32.i.i159.i, align 4
  tail call void %409(ptr noundef %403, i16 noundef zeroext 268, i32 noundef 16777216) #14
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %if.end27.i.if.end33.i_crit_edge
  %410 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %dev, align 4
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %411, align 4
  %read32.i.i160.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %413, i32 0, i32 2
  %414 = ptrtoint ptr %read32.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %read32.i.i160.i, align 4
  %call.i.i161.i = tail call i32 %415(ptr noundef %411, i16 noundef zeroext 288) #14
  %and.i = and i32 %call.i.i161.i, -131073
  %416 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %dev, align 4
  %418 = ptrtoint ptr %417 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %417, align 4
  %write32.i.i162.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %419, i32 0, i32 5
  %420 = ptrtoint ptr %write32.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %write32.i.i162.i, align 4
  tail call void %421(ptr noundef %417, i16 noundef zeroext 288, i32 noundef %and.i) #14
  %422 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %dev, align 4
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %423, align 4
  %read32.i.i163.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %425, i32 0, i32 2
  %426 = ptrtoint ptr %read32.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %read32.i.i163.i, align 4
  %call.i.i164.i = tail call i32 %427(ptr noundef %423, i16 noundef zeroext 288) #14
  %or36.i = or i32 %call.i.i164.i, 131072
  %428 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %dev, align 4
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %429, align 4
  %write32.i.i165.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %431, i32 0, i32 5
  %432 = ptrtoint ptr %write32.i.i165.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %write32.i.i165.i, align 4
  tail call void %433(ptr noundef %429, i16 noundef zeroext 288, i32 noundef %or36.i) #14
  %__using_pio.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 4
  %434 = ptrtoint ptr %__using_pio.i.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %__using_pio.i.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool38.not.i = icmp eq i8 %435, 0
  br i1 %tobool38.not.i, label %if.end33.i.if.end40.i_crit_edge, label %if.then39.i

if.end33.i.if.end40.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

if.then39.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %436 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dev, align 4
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %437, align 4
  %write32.i.i166.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %439, i32 0, i32 5
  %440 = ptrtoint ptr %write32.i.i166.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %write32.i.i166.i, align 4
  tail call void %441(ptr noundef %437, i16 noundef zeroext 528, i32 noundef 256) #14
  %442 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %dev, align 4
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %443, align 4
  %write32.i.i167.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %445, i32 0, i32 5
  %446 = ptrtoint ptr %write32.i.i167.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %write32.i.i167.i, align 4
  tail call void %447(ptr noundef %443, i16 noundef zeroext 560, i32 noundef 256) #14
  %448 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %dev, align 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %449, align 4
  %write32.i.i168.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %451, i32 0, i32 5
  %452 = ptrtoint ptr %write32.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %write32.i.i168.i, align 4
  tail call void %453(ptr noundef %449, i16 noundef zeroext 592, i32 noundef 256) #14
  %454 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %dev, align 4
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %455, align 4
  %write32.i.i169.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %457, i32 0, i32 5
  %458 = ptrtoint ptr %write32.i.i169.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %write32.i.i169.i, align 4
  tail call void %459(ptr noundef %455, i16 noundef zeroext 624, i32 noundef 256) #14
  %460 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %dev, align 4
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %461, align 4
  %write32.i.i.i50.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %463, i32 0, i32 5
  %464 = ptrtoint ptr %write32.i.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %write32.i.i.i50.i.i, align 4
  tail call void %465(ptr noundef %461, i16 noundef zeroext 352, i32 noundef 65549) #14
  %466 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %dev, align 4
  %468 = ptrtoint ptr %467 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %467, align 4
  %write16.i.i51.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %469, i32 0, i32 4
  %470 = ptrtoint ptr %write16.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %write16.i.i51.i.i, align 4
  tail call void %471(ptr noundef %467, i16 noundef zeroext 356, i16 noundef zeroext 0) #14
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then39.i, %if.end33.i.if.end40.i_crit_edge
  %472 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %dev, align 4
  %474 = ptrtoint ptr %473 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %473, align 4
  %write32.i.i.i50.i172.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %475, i32 0, i32 5
  %476 = ptrtoint ptr %write32.i.i.i50.i172.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %write32.i.i.i50.i172.i, align 4
  tail call void %477(ptr noundef %473, i16 noundef zeroext 352, i32 noundef 65565) #14
  %478 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %dev, align 4
  %480 = ptrtoint ptr %479 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %479, align 4
  %write16.i.i51.i173.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %481, i32 0, i32 4
  %482 = ptrtoint ptr %write16.i.i51.i173.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %write16.i.i51.i173.i, align 4
  tail call void %483(ptr noundef %479, i16 noundef zeroext 356, i16 noundef zeroext 0) #14
  tail call fastcc void @b43legacy_adjust_opmode(ptr noundef %dev) #14
  %484 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %dev, align 4
  %revision43.i = getelementptr inbounds %struct.ssb_device, ptr %485, i32 0, i32 4, i32 2
  %486 = ptrtoint ptr %revision43.i to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %revision43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %487)
  %cmp45.i = icmp ult i8 %487, 3
  %488 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %485, align 4
  br i1 %cmp45.i, label %if.then47.i, label %if.else.i

if.then47.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  %write16.i.i174.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %489, i32 0, i32 4
  %490 = ptrtoint ptr %write16.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %write16.i.i174.i, align 4
  tail call void %491(ptr noundef %485, i16 noundef zeroext 1550, i16 noundef zeroext 0) #14
  %492 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %dev, align 4
  %494 = ptrtoint ptr %493 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %493, align 4
  %write16.i.i175.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %495, i32 0, i32 4
  %496 = ptrtoint ptr %write16.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %write16.i.i175.i, align 4
  tail call void %497(ptr noundef %493, i16 noundef zeroext 1552, i16 noundef zeroext -32768) #14
  %498 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %dev, align 4
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %499, align 4
  %write16.i.i176.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %501, i32 0, i32 4
  %502 = ptrtoint ptr %write16.i.i176.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %write16.i.i176.i, align 4
  tail call void %503(ptr noundef %499, i16 noundef zeroext 1540, i16 noundef zeroext 0) #14
  %504 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %dev, align 4
  %506 = ptrtoint ptr %505 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %505, align 4
  %write16.i.i177.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %507, i32 0, i32 4
  %508 = ptrtoint ptr %write16.i.i177.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %write16.i.i177.i, align 4
  tail call void %509(ptr noundef %505, i16 noundef zeroext 1542, i16 noundef zeroext 512) #14
  br label %if.end59

if.else.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  %write32.i.i178.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %489, i32 0, i32 5
  %510 = ptrtoint ptr %write32.i.i178.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %write32.i.i178.i, align 4
  tail call void %511(ptr noundef %485, i16 noundef zeroext 392, i32 noundef -2147483648) #14
  %512 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %dev, align 4
  %514 = ptrtoint ptr %513 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %513, align 4
  %write32.i.i179.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %515, i32 0, i32 5
  %516 = ptrtoint ptr %write32.i.i179.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %write32.i.i179.i, align 4
  tail call void %517(ptr noundef %513, i16 noundef zeroext 396, i32 noundef 33554432) #14
  br label %if.end59

err_radio_off.i:                                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @b43legacy_radio_turn_off(ptr noundef %dev, i1 noundef zeroext true) #14
  br label %err_gpio_clean.i

err_gpio_clean.i:                                 ; preds = %err_radio_off.i, %b43legacy_upload_initvals.exit.i.err_gpio_clean.i_crit_edge, %b43legacy_gpio_init.exit.i.err_gpio_clean.i_crit_edge
  %err.1.i = phi i32 [ %call17.i.i, %b43legacy_upload_initvals.exit.i.err_gpio_clean.i_crit_edge ], [ %call15.i, %err_radio_off.i ], [ %call.i.i257, %b43legacy_gpio_init.exit.i.err_gpio_clean.i_crit_edge ]
  %518 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %dev, align 4
  %bus2.i189.i = getelementptr inbounds %struct.ssb_device, ptr %519, i32 0, i32 3
  %520 = ptrtoint ptr %bus2.i189.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %bus2.i189.i, align 4
  %chipco.i190.i = getelementptr inbounds %struct.ssb_bus, ptr %521, i32 0, i32 17
  %522 = ptrtoint ptr %chipco.i190.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %chipco.i190.i, align 4
  %tobool.not.i191.i = icmp eq ptr %523, null
  br i1 %tobool.not.i191.i, label %cond.end.i193.i, label %err_gpio_clean.i.if.end.i195.i_crit_edge

err_gpio_clean.i.if.end.i195.i_crit_edge:         ; preds = %err_gpio_clean.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i195.i

cond.end.i193.i:                                  ; preds = %err_gpio_clean.i
  %pcicore.i192.i = getelementptr inbounds %struct.ssb_bus, ptr %521, i32 0, i32 18
  %524 = ptrtoint ptr %pcicore.i192.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %pcicore.i192.i, align 4
  %tobool5.not.i.i = icmp eq ptr %525, null
  br i1 %tobool5.not.i.i, label %cond.end.i193.i.err_kfree_tssitbl_crit_edge, label %cond.end.i193.i.if.end.i195.i_crit_edge

cond.end.i193.i.if.end.i195.i_crit_edge:          ; preds = %cond.end.i193.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i195.i

cond.end.i193.i.err_kfree_tssitbl_crit_edge:      ; preds = %cond.end.i193.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_kfree_tssitbl

if.end.i195.i:                                    ; preds = %cond.end.i193.i.if.end.i195.i_crit_edge, %err_gpio_clean.i.if.end.i195.i_crit_edge
  %cond12.i.i = phi ptr [ %525, %cond.end.i193.i.if.end.i195.i_crit_edge ], [ %523, %err_gpio_clean.i.if.end.i195.i_crit_edge ]
  %526 = ptrtoint ptr %cond12.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %cond12.i.i, align 4
  %write32.i.i194.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %527, i32 0, i32 5
  %528 = ptrtoint ptr %write32.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %write32.i.i194.i, align 4
  tail call void %529(ptr noundef nonnull %cond12.i.i, i16 noundef zeroext 108, i32 noundef 0) #14
  br label %err_kfree_tssitbl

if.end59:                                         ; preds = %if.else.i, %if.then47.i
  %530 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %dev, align 4
  %532 = ptrtoint ptr %531 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %531, align 4
  %write32.i.i180.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %533, i32 0, i32 5
  %534 = ptrtoint ptr %write32.i.i180.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %write32.i.i180.i, align 4
  tail call void %535(ptr noundef %531, i16 noundef zeroext 296, i32 noundef 16384) #14
  %536 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %dev, align 4
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %537, align 4
  %write32.i.i181.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %539, i32 0, i32 5
  %540 = ptrtoint ptr %write32.i.i181.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %write32.i.i181.i, align 4
  tail call void %541(ptr noundef %537, i16 noundef zeroext 36, i32 noundef 121856) #14
  %542 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %dev, align 4
  %544 = ptrtoint ptr %543 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %543, align 4
  %write32.i.i182.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %545, i32 0, i32 5
  %546 = ptrtoint ptr %write32.i.i182.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %write32.i.i182.i, align 4
  tail call void %547(ptr noundef %543, i16 noundef zeroext 44, i32 noundef 56320) #14
  %548 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %dev, align 4
  %550 = ptrtoint ptr %549 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %549, align 4
  %write32.i.i183.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %551, i32 0, i32 5
  %552 = ptrtoint ptr %write32.i.i183.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %write32.i.i183.i, align 4
  tail call void %553(ptr noundef %549, i16 noundef zeroext 52, i32 noundef 56320) #14
  %554 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %dev, align 4
  %556 = ptrtoint ptr %555 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %555, align 4
  %write32.i.i184.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %557, i32 0, i32 5
  %558 = ptrtoint ptr %write32.i.i184.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %write32.i.i184.i, align 4
  tail call void %559(ptr noundef %555, i16 noundef zeroext 60, i32 noundef 121856) #14
  %560 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %dev, align 4
  %562 = ptrtoint ptr %561 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %561, align 4
  %write32.i.i185.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %563, i32 0, i32 5
  %564 = ptrtoint ptr %write32.i.i185.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %write32.i.i185.i, align 4
  tail call void %565(ptr noundef %561, i16 noundef zeroext 68, i32 noundef 56320) #14
  %566 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %dev, align 4
  %568 = ptrtoint ptr %567 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %567, align 4
  %write32.i.i186.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %569, i32 0, i32 5
  %570 = ptrtoint ptr %write32.i.i186.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %write32.i.i186.i, align 4
  tail call void %571(ptr noundef %567, i16 noundef zeroext 76, i32 noundef 56320) #14
  %572 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %dev, align 4
  %574 = ptrtoint ptr %573 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %573, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %575, i32 0, i32 2
  %576 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %read32.i.i, align 4
  %call.i187.i = tail call i32 %577(ptr noundef %573, i16 noundef zeroext 3992) #14
  %or51.i = or i32 %call.i187.i, 1048576
  %578 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %dev, align 4
  %580 = ptrtoint ptr %579 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %579, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %581, i32 0, i32 5
  %582 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %write32.i.i, align 4
  tail call void %583(ptr noundef %579, i16 noundef zeroext 3992, i32 noundef %or51.i) #14
  %584 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %dev, align 4
  %bus.i = getelementptr inbounds %struct.ssb_device, ptr %585, i32 0, i32 3
  %586 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %bus.i, align 4
  %fast_pwrup_delay.i = getelementptr inbounds %struct.ssb_bus, ptr %587, i32 0, i32 17, i32 3
  %588 = ptrtoint ptr %fast_pwrup_delay.i to i32
  call void @__asan_load2_noabort(i32 %588)
  %589 = load i16, ptr %fast_pwrup_delay.i, align 4
  %590 = ptrtoint ptr %585 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %585, align 4
  %write16.i.i188.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %591, i32 0, i32 4
  %592 = ptrtoint ptr %write16.i.i188.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %write16.i.i188.i, align 4
  tail call void %593(ptr noundef %585, i16 noundef zeroext 1704, i16 noundef zeroext %589) #14
  %txerr_cnt.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %txerr_cnt.i, i32 noundef 4) #14
  %594 = ptrtoint ptr %txerr_cnt.i to i32
  call void @__asan_store4_noabort(i32 %594)
  store volatile i32 1000, ptr %txerr_cnt.i, align 4
  %595 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %wl1, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %596, ptr noundef nonnull @.str.28) #14
  %597 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %dev, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %598, i32 0, i32 4, i32 2
  %599 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %revision, align 4
  %conv61 = zext i8 %600 to i16
  %601 = ptrtoint ptr %598 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %598, align 4
  %write32.i.i.i.i259 = getelementptr inbounds %struct.ssb_bus_ops, ptr %602, i32 0, i32 5
  %603 = ptrtoint ptr %write32.i.i.i.i259 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %write32.i.i.i.i259, align 4
  tail call void %604(ptr noundef %598, i16 noundef zeroext 352, i32 noundef 65541) #14
  %605 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %dev, align 4
  %607 = ptrtoint ptr %606 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %606, align 4
  %write16.i.i.i260 = getelementptr inbounds %struct.ssb_bus_ops, ptr %608, i32 0, i32 4
  %609 = ptrtoint ptr %write16.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %write16.i.i.i260, align 4
  tail call void %610(ptr noundef %606, i16 noundef zeroext 358, i16 noundef zeroext %conv61) #14
  %611 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %dev, align 4
  %613 = ptrtoint ptr %612 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %612, align 4
  %write32.i.i.i51.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %614, i32 0, i32 5
  %615 = ptrtoint ptr %write32.i.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %write32.i.i.i51.i.i, align 4
  tail call void %616(ptr noundef %612, i16 noundef zeroext 352, i32 noundef 65560) #14
  %617 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %dev, align 4
  %619 = ptrtoint ptr %618 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %618, align 4
  %read16.i.i52.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %620, i32 0, i32 1
  %621 = ptrtoint ptr %read16.i.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %read16.i.i52.i.i, align 4
  %call.i.i53.i.i = tail call zeroext i16 %622(ptr noundef %618, i16 noundef zeroext 356) #14
  %conv.i261 = zext i16 %call.i.i53.i.i to i32
  %shl.i = shl nuw i32 %conv.i261, 16
  %623 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %dev, align 4
  %625 = ptrtoint ptr %624 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %624, align 4
  %write32.i.i.i.i.i262 = getelementptr inbounds %struct.ssb_bus_ops, ptr %626, i32 0, i32 5
  %627 = ptrtoint ptr %write32.i.i.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %write32.i.i.i.i.i262, align 4
  tail call void %628(ptr noundef %624, i16 noundef zeroext 352, i32 noundef 65559) #14
  %629 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %dev, align 4
  %631 = ptrtoint ptr %630 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %630, align 4
  %read16.i.i.i.i263 = getelementptr inbounds %struct.ssb_bus_ops, ptr %632, i32 0, i32 1
  %633 = ptrtoint ptr %read16.i.i.i.i263 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %read16.i.i.i.i263, align 4
  %call.i.i.i.i264 = tail call zeroext i16 %634(ptr noundef %630, i16 noundef zeroext 358) #14
  %conv2.i = zext i16 %call.i.i.i.i264 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %635 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %type, align 1
  %637 = zext i8 %636 to i64
  call void @__sanitizer_cov_trace_switch(i64 %637, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %636, label %if.end59.if.end96_crit_edge [
    i8 2, label %if.then67
    i8 1, label %if.then83
  ]

if.end59.if.end96_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.then67:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %rev = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 4
  %638 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %638)
  %639 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %639)
  %cmp69 = icmp eq i8 %639, 1
  %spec.select.v = select i1 %cmp69, i32 34, i32 2
  %spec.select = or i32 %spec.select.v, %or.i
  %boardflags_lo = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 22, i32 70
  %640 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_load2_noabort(i32 %640)
  %641 = load i16, ptr %boardflags_lo, align 4
  %642 = shl i16 %641, 5
  %643 = and i16 %642, 64
  %644 = zext i16 %643 to i32
  %645 = or i32 %spec.select, %644
  br label %if.end96

if.then83:                                        ; preds = %if.end59
  %or84 = or i32 %or.i, 2
  %rev85 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 4
  %646 = ptrtoint ptr %rev85 to i32
  call void @__asan_load1_noabort(i32 %646)
  %647 = load i8, ptr %rev85, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %647)
  %cmp87 = icmp ugt i8 %647, 1
  br i1 %cmp87, label %land.lhs.true, label %if.then83.if.end96_crit_edge

if.then83.if.end96_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

land.lhs.true:                                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #16
  %radio_ver = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %648 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %648)
  %649 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %649)
  %cmp90 = icmp eq i16 %649, 8272
  %and93 = and i32 %or84, -33
  %spec.select247 = select i1 %cmp90, i32 %and93, i32 %or84
  br label %if.end96

if.end96:                                         ; preds = %land.lhs.true, %if.then83.if.end96_crit_edge, %if.then67, %if.end59.if.end96_crit_edge
  %hf.1 = phi i32 [ %or84, %if.then83.if.end96_crit_edge ], [ %or.i, %if.end59.if.end96_crit_edge ], [ %spec.select247, %land.lhs.true ], [ %645, %if.then67 ]
  %conv.i265 = trunc i32 %hf.1 to i16
  %650 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %dev, align 4
  %652 = ptrtoint ptr %651 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %651, align 4
  %write32.i.i.i.i.i266 = getelementptr inbounds %struct.ssb_bus_ops, ptr %653, i32 0, i32 5
  %654 = ptrtoint ptr %write32.i.i.i.i.i266 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %write32.i.i.i.i.i266, align 4
  tail call void %655(ptr noundef %651, i16 noundef zeroext 352, i32 noundef 65559) #14
  %656 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %dev, align 4
  %658 = ptrtoint ptr %657 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %657, align 4
  %write16.i.i.i.i267 = getelementptr inbounds %struct.ssb_bus_ops, ptr %659, i32 0, i32 4
  %660 = ptrtoint ptr %write16.i.i.i.i267 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %write16.i.i.i.i267, align 4
  tail call void %661(ptr noundef %657, i16 noundef zeroext 358, i16 noundef zeroext %conv.i265) #14
  %shr.i = lshr i32 %hf.1, 16
  %conv2.i268 = trunc i32 %shr.i to i16
  %662 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %dev, align 4
  %664 = ptrtoint ptr %663 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %663, align 4
  %write32.i.i.i50.i.i269 = getelementptr inbounds %struct.ssb_bus_ops, ptr %665, i32 0, i32 5
  %666 = ptrtoint ptr %write32.i.i.i50.i.i269 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %write32.i.i.i50.i.i269, align 4
  tail call void %667(ptr noundef %663, i16 noundef zeroext 352, i32 noundef 65560) #14
  %668 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %dev, align 4
  %670 = ptrtoint ptr %669 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %669, align 4
  %write16.i.i51.i.i270 = getelementptr inbounds %struct.ssb_bus_ops, ptr %671, i32 0, i32 4
  %672 = ptrtoint ptr %write16.i.i51.i.i270 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %write16.i.i51.i.i270, align 4
  tail call void %673(ptr noundef %669, i16 noundef zeroext 356, i16 noundef zeroext %conv2.i268) #14
  %674 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %dev, align 4
  %676 = ptrtoint ptr %675 to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %675, align 4
  %write32.i.i.i50.i.i271 = getelementptr inbounds %struct.ssb_bus_ops, ptr %677, i32 0, i32 5
  %678 = ptrtoint ptr %write32.i.i.i50.i.i271 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %write32.i.i.i50.i.i271, align 4
  tail call void %679(ptr noundef %675, i16 noundef zeroext 352, i32 noundef 131078) #14
  %680 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %dev, align 4
  %682 = ptrtoint ptr %681 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %681, align 4
  %write16.i.i51.i.i272 = getelementptr inbounds %struct.ssb_bus_ops, ptr %683, i32 0, i32 4
  %684 = ptrtoint ptr %write16.i.i51.i.i272 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %write16.i.i51.i.i272, align 4
  tail call void %685(ptr noundef %681, i16 noundef zeroext 356, i16 noundef zeroext 7) #14
  %686 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %dev, align 4
  %688 = ptrtoint ptr %687 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %687, align 4
  %write32.i.i.i50.i16.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %689, i32 0, i32 5
  %690 = ptrtoint ptr %write32.i.i.i50.i16.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %write32.i.i.i50.i16.i, align 4
  tail call void %691(ptr noundef %687, i16 noundef zeroext 352, i32 noundef 131079) #14
  %692 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %dev, align 4
  %694 = ptrtoint ptr %693 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %693, align 4
  %write16.i.i51.i17.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %695, i32 0, i32 4
  %696 = ptrtoint ptr %write16.i.i51.i17.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %write16.i.i51.i17.i, align 4
  tail call void %697(ptr noundef %693, i16 noundef zeroext 356, i16 noundef zeroext 4) #14
  %698 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %dev, align 4
  %700 = ptrtoint ptr %699 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %699, align 4
  %write32.i.i.i50.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %701, i32 0, i32 5
  %702 = ptrtoint ptr %write32.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %write32.i.i.i50.i, align 4
  tail call void %703(ptr noundef %699, i16 noundef zeroext 352, i32 noundef 65553) #14
  %704 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %dev, align 4
  %706 = ptrtoint ptr %705 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %705, align 4
  %write16.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %707, i32 0, i32 4
  %708 = ptrtoint ptr %write16.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %write16.i.i51.i, align 4
  tail call void %709(ptr noundef %705, i16 noundef zeroext 356, i16 noundef zeroext 3) #14
  %710 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %dev, align 4
  %712 = ptrtoint ptr %711 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %711, align 4
  %write32.i.i.i.i275 = getelementptr inbounds %struct.ssb_bus_ops, ptr %713, i32 0, i32 5
  %714 = ptrtoint ptr %write32.i.i.i.i275 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %write32.i.i.i.i275, align 4
  tail call void %715(ptr noundef %711, i16 noundef zeroext 352, i32 noundef 65553) #14
  %716 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %dev, align 4
  %718 = ptrtoint ptr %717 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %717, align 4
  %write16.i.i.i276 = getelementptr inbounds %struct.ssb_bus_ops, ptr %719, i32 0, i32 4
  %720 = ptrtoint ptr %write16.i.i.i276 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %write16.i.i.i276, align 4
  tail call void %721(ptr noundef %717, i16 noundef zeroext 358, i16 noundef zeroext 2) #14
  %722 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %dev, align 4
  %724 = ptrtoint ptr %723 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %723, align 4
  %write32.i.i.i50.i278 = getelementptr inbounds %struct.ssb_bus_ops, ptr %725, i32 0, i32 5
  %726 = ptrtoint ptr %write32.i.i.i50.i278 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %write32.i.i.i50.i278, align 4
  tail call void %727(ptr noundef %723, i16 noundef zeroext 352, i32 noundef 65565) #14
  %728 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %dev, align 4
  %730 = ptrtoint ptr %729 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %729, align 4
  %write16.i.i51.i279 = getelementptr inbounds %struct.ssb_bus_ops, ptr %731, i32 0, i32 4
  %732 = ptrtoint ptr %write16.i.i51.i279 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %write16.i.i51.i279, align 4
  tail call void %733(ptr noundef %729, i16 noundef zeroext 356, i16 noundef zeroext 1) #14
  %734 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %734)
  %735 = load i8, ptr %type, align 1
  %736 = zext i8 %735 to i64
  call void @__sanitizer_cov_trace_switch(i64 %736, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %735, label %do.end.i [
    i8 2, label %sw.bb.i
    i8 1, label %if.end96.b43legacy_rate_memory_init.exit_crit_edge
  ]

if.end96.b43legacy_rate_memory_init.exit_crit_edge: ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_rate_memory_init.exit

sw.bb.i:                                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i281 = tail call zeroext i8 @b43legacy_plcp_get_ratecode_ofdm(i8 noundef zeroext 12) #14
  %737 = and i8 %call.i.i281, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %737)
  %tobool26.not.i.i.i282 = icmp eq i8 %737, 0
  %738 = lshr i8 %call.i.i281, 1
  %739 = and i8 %738, 7
  %add10.i.i = zext i8 %739 to i32
  %or.i50.i.i.i = or i32 %add10.i.i, 65824
  %740 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %dev, align 4
  %742 = ptrtoint ptr %741 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %741, align 4
  %write32.i.i.i51.i.i.i283 = getelementptr inbounds %struct.ssb_bus_ops, ptr %743, i32 0, i32 5
  %744 = ptrtoint ptr %write32.i.i.i51.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %write32.i.i.i51.i.i.i283, align 4
  tail call void %745(ptr noundef %741, i16 noundef zeroext 352, i32 noundef %or.i50.i.i.i) #14
  %746 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %dev, align 4
  %748 = ptrtoint ptr %747 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %747, align 4
  %read16.i.i52.i.i.i284 = getelementptr inbounds %struct.ssb_bus_ops, ptr %749, i32 0, i32 1
  %750 = ptrtoint ptr %read16.i.i52.i.i.i284 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %read16.i.i52.i.i.i284, align 4
  %..i.i285 = select i1 %tobool26.not.i.i.i282, i16 356, i16 358
  %call.i.i.i.i.i286 = tail call zeroext i16 %751(ptr noundef %747, i16 noundef zeroext %..i.i285) #14
  %or.i49.i.i.i287 = or i32 %add10.i.i, 65832
  %752 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %dev, align 4
  %754 = ptrtoint ptr %753 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %753, align 4
  %write32.i.i.i50.i.i.i288 = getelementptr inbounds %struct.ssb_bus_ops, ptr %755, i32 0, i32 5
  %756 = ptrtoint ptr %write32.i.i.i50.i.i.i288 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %write32.i.i.i50.i.i.i288, align 4
  tail call void %757(ptr noundef %753, i16 noundef zeroext 352, i32 noundef %or.i49.i.i.i287) #14
  %758 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %dev, align 4
  %760 = ptrtoint ptr %759 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %759, align 4
  %write16.i.i51.i.i.i289 = getelementptr inbounds %struct.ssb_bus_ops, ptr %761, i32 0, i32 4
  %762 = ptrtoint ptr %write16.i.i51.i.i.i289 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %write16.i.i51.i.i.i289, align 4
  tail call void %763(ptr noundef %759, i16 noundef zeroext %..i.i285, i16 noundef zeroext %call.i.i.i.i.i286) #14
  %call.i21.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_ofdm(i8 noundef zeroext 24) #14
  %764 = and i8 %call.i21.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %764)
  %tobool26.not.i.i24.i = icmp eq i8 %764, 0
  %765 = lshr i8 %call.i21.i, 1
  %766 = and i8 %765, 7
  %add10.i23.i = zext i8 %766 to i32
  %or.i50.i.i26.i = or i32 %add10.i23.i, 65824
  %767 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %dev, align 4
  %769 = ptrtoint ptr %768 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %768, align 4
  %write32.i.i.i51.i.i27.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %770, i32 0, i32 5
  %771 = ptrtoint ptr %write32.i.i.i51.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %write32.i.i.i51.i.i27.i, align 4
  tail call void %772(ptr noundef %768, i16 noundef zeroext 352, i32 noundef %or.i50.i.i26.i) #14
  %773 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %dev, align 4
  %775 = ptrtoint ptr %774 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %774, align 4
  %read16.i.i52.i.i28.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %776, i32 0, i32 1
  %777 = ptrtoint ptr %read16.i.i52.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %read16.i.i52.i.i28.i, align 4
  %..i29.i = select i1 %tobool26.not.i.i24.i, i16 356, i16 358
  %call.i.i.i.i30.i = tail call zeroext i16 %778(ptr noundef %774, i16 noundef zeroext %..i29.i) #14
  %or.i49.i.i34.i = or i32 %add10.i23.i, 65832
  %779 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %dev, align 4
  %781 = ptrtoint ptr %780 to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %780, align 4
  %write32.i.i.i50.i.i35.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %782, i32 0, i32 5
  %783 = ptrtoint ptr %write32.i.i.i50.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %write32.i.i.i50.i.i35.i, align 4
  tail call void %784(ptr noundef %780, i16 noundef zeroext 352, i32 noundef %or.i49.i.i34.i) #14
  %785 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %dev, align 4
  %787 = ptrtoint ptr %786 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %786, align 4
  %write16.i.i51.i.i36.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %788, i32 0, i32 4
  %789 = ptrtoint ptr %write16.i.i51.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %write16.i.i51.i.i36.i, align 4
  tail call void %790(ptr noundef %786, i16 noundef zeroext %..i29.i, i16 noundef zeroext %call.i.i.i.i30.i) #14
  %call.i38.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_ofdm(i8 noundef zeroext 36) #14
  %791 = and i8 %call.i38.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %791)
  %tobool26.not.i.i41.i = icmp eq i8 %791, 0
  %792 = lshr i8 %call.i38.i, 1
  %793 = and i8 %792, 7
  %add10.i40.i = zext i8 %793 to i32
  %or.i50.i.i43.i = or i32 %add10.i40.i, 65824
  %794 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %dev, align 4
  %796 = ptrtoint ptr %795 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %795, align 4
  %write32.i.i.i51.i.i44.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %797, i32 0, i32 5
  %798 = ptrtoint ptr %write32.i.i.i51.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %write32.i.i.i51.i.i44.i, align 4
  tail call void %799(ptr noundef %795, i16 noundef zeroext 352, i32 noundef %or.i50.i.i43.i) #14
  %800 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %dev, align 4
  %802 = ptrtoint ptr %801 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %801, align 4
  %read16.i.i52.i.i45.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %803, i32 0, i32 1
  %804 = ptrtoint ptr %read16.i.i52.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %read16.i.i52.i.i45.i, align 4
  %..i46.i = select i1 %tobool26.not.i.i41.i, i16 356, i16 358
  %call.i.i.i.i47.i = tail call zeroext i16 %805(ptr noundef %801, i16 noundef zeroext %..i46.i) #14
  %or.i49.i.i51.i = or i32 %add10.i40.i, 65832
  %806 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %dev, align 4
  %808 = ptrtoint ptr %807 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %807, align 4
  %write32.i.i.i50.i.i52.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %809, i32 0, i32 5
  %810 = ptrtoint ptr %write32.i.i.i50.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %write32.i.i.i50.i.i52.i, align 4
  tail call void %811(ptr noundef %807, i16 noundef zeroext 352, i32 noundef %or.i49.i.i51.i) #14
  %812 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %dev, align 4
  %814 = ptrtoint ptr %813 to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %813, align 4
  %write16.i.i51.i.i53.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %815, i32 0, i32 4
  %816 = ptrtoint ptr %write16.i.i51.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %write16.i.i51.i.i53.i, align 4
  tail call void %817(ptr noundef %813, i16 noundef zeroext %..i46.i, i16 noundef zeroext %call.i.i.i.i47.i) #14
  %call.i55.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_ofdm(i8 noundef zeroext 48) #14
  %818 = and i8 %call.i55.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %818)
  %tobool26.not.i.i58.i = icmp eq i8 %818, 0
  %819 = lshr i8 %call.i55.i, 1
  %820 = and i8 %819, 7
  %add10.i57.i = zext i8 %820 to i32
  %or.i50.i.i60.i = or i32 %add10.i57.i, 65824
  %821 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %dev, align 4
  %823 = ptrtoint ptr %822 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %822, align 4
  %write32.i.i.i51.i.i61.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %824, i32 0, i32 5
  %825 = ptrtoint ptr %write32.i.i.i51.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %write32.i.i.i51.i.i61.i, align 4
  tail call void %826(ptr noundef %822, i16 noundef zeroext 352, i32 noundef %or.i50.i.i60.i) #14
  %827 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %dev, align 4
  %829 = ptrtoint ptr %828 to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %828, align 4
  %read16.i.i52.i.i62.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %830, i32 0, i32 1
  %831 = ptrtoint ptr %read16.i.i52.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %read16.i.i52.i.i62.i, align 4
  %..i63.i = select i1 %tobool26.not.i.i58.i, i16 356, i16 358
  %call.i.i.i.i64.i = tail call zeroext i16 %832(ptr noundef %828, i16 noundef zeroext %..i63.i) #14
  %or.i49.i.i68.i = or i32 %add10.i57.i, 65832
  %833 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %dev, align 4
  %835 = ptrtoint ptr %834 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %834, align 4
  %write32.i.i.i50.i.i69.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %836, i32 0, i32 5
  %837 = ptrtoint ptr %write32.i.i.i50.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %write32.i.i.i50.i.i69.i, align 4
  tail call void %838(ptr noundef %834, i16 noundef zeroext 352, i32 noundef %or.i49.i.i68.i) #14
  %839 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %dev, align 4
  %841 = ptrtoint ptr %840 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %840, align 4
  %write16.i.i51.i.i70.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %842, i32 0, i32 4
  %843 = ptrtoint ptr %write16.i.i51.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %write16.i.i51.i.i70.i, align 4
  tail call void %844(ptr noundef %840, i16 noundef zeroext %..i63.i, i16 noundef zeroext %call.i.i.i.i64.i) #14
  %call.i72.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_ofdm(i8 noundef zeroext 72) #14
  %845 = and i8 %call.i72.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %845)
  %tobool26.not.i.i75.i = icmp eq i8 %845, 0
  %846 = lshr i8 %call.i72.i, 1
  %847 = and i8 %846, 7
  %add10.i74.i = zext i8 %847 to i32
  %or.i50.i.i77.i = or i32 %add10.i74.i, 65824
  %848 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %dev, align 4
  %850 = ptrtoint ptr %849 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %849, align 4
  %write32.i.i.i51.i.i78.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %851, i32 0, i32 5
  %852 = ptrtoint ptr %write32.i.i.i51.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %write32.i.i.i51.i.i78.i, align 4
  tail call void %853(ptr noundef %849, i16 noundef zeroext 352, i32 noundef %or.i50.i.i77.i) #14
  %854 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %dev, align 4
  %856 = ptrtoint ptr %855 to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %855, align 4
  %read16.i.i52.i.i79.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %857, i32 0, i32 1
  %858 = ptrtoint ptr %read16.i.i52.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %read16.i.i52.i.i79.i, align 4
  %..i80.i = select i1 %tobool26.not.i.i75.i, i16 356, i16 358
  %call.i.i.i.i81.i = tail call zeroext i16 %859(ptr noundef %855, i16 noundef zeroext %..i80.i) #14
  %or.i49.i.i85.i = or i32 %add10.i74.i, 65832
  %860 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %dev, align 4
  %862 = ptrtoint ptr %861 to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %861, align 4
  %write32.i.i.i50.i.i86.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %863, i32 0, i32 5
  %864 = ptrtoint ptr %write32.i.i.i50.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %write32.i.i.i50.i.i86.i, align 4
  tail call void %865(ptr noundef %861, i16 noundef zeroext 352, i32 noundef %or.i49.i.i85.i) #14
  %866 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %dev, align 4
  %868 = ptrtoint ptr %867 to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %867, align 4
  %write16.i.i51.i.i87.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %869, i32 0, i32 4
  %870 = ptrtoint ptr %write16.i.i51.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %write16.i.i51.i.i87.i, align 4
  tail call void %871(ptr noundef %867, i16 noundef zeroext %..i80.i, i16 noundef zeroext %call.i.i.i.i81.i) #14
  %call.i89.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_ofdm(i8 noundef zeroext 96) #14
  %872 = and i8 %call.i89.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %872)
  %tobool26.not.i.i92.i = icmp eq i8 %872, 0
  %873 = lshr i8 %call.i89.i, 1
  %874 = and i8 %873, 7
  %add10.i91.i = zext i8 %874 to i32
  %or.i50.i.i94.i = or i32 %add10.i91.i, 65824
  %875 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load ptr, ptr %dev, align 4
  %877 = ptrtoint ptr %876 to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %876, align 4
  %write32.i.i.i51.i.i95.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %878, i32 0, i32 5
  %879 = ptrtoint ptr %write32.i.i.i51.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %write32.i.i.i51.i.i95.i, align 4
  tail call void %880(ptr noundef %876, i16 noundef zeroext 352, i32 noundef %or.i50.i.i94.i) #14
  %881 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %dev, align 4
  %883 = ptrtoint ptr %882 to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %882, align 4
  %read16.i.i52.i.i96.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %884, i32 0, i32 1
  %885 = ptrtoint ptr %read16.i.i52.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %read16.i.i52.i.i96.i, align 4
  %..i97.i = select i1 %tobool26.not.i.i92.i, i16 356, i16 358
  %call.i.i.i.i98.i = tail call zeroext i16 %886(ptr noundef %882, i16 noundef zeroext %..i97.i) #14
  %or.i49.i.i102.i = or i32 %add10.i91.i, 65832
  %887 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %dev, align 4
  %889 = ptrtoint ptr %888 to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %888, align 4
  %write32.i.i.i50.i.i103.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %890, i32 0, i32 5
  %891 = ptrtoint ptr %write32.i.i.i50.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %write32.i.i.i50.i.i103.i, align 4
  tail call void %892(ptr noundef %888, i16 noundef zeroext 352, i32 noundef %or.i49.i.i102.i) #14
  %893 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %dev, align 4
  %895 = ptrtoint ptr %894 to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %894, align 4
  %write16.i.i51.i.i104.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %896, i32 0, i32 4
  %897 = ptrtoint ptr %write16.i.i51.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %write16.i.i51.i.i104.i, align 4
  tail call void %898(ptr noundef %894, i16 noundef zeroext %..i97.i, i16 noundef zeroext %call.i.i.i.i98.i) #14
  %call.i106.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_ofdm(i8 noundef zeroext 108) #14
  %899 = and i8 %call.i106.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %899)
  %tobool26.not.i.i109.i = icmp eq i8 %899, 0
  %900 = lshr i8 %call.i106.i, 1
  %901 = and i8 %900, 7
  %add10.i108.i = zext i8 %901 to i32
  %or.i50.i.i111.i = or i32 %add10.i108.i, 65824
  %902 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load ptr, ptr %dev, align 4
  %904 = ptrtoint ptr %903 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %903, align 4
  %write32.i.i.i51.i.i112.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %905, i32 0, i32 5
  %906 = ptrtoint ptr %write32.i.i.i51.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %write32.i.i.i51.i.i112.i, align 4
  tail call void %907(ptr noundef %903, i16 noundef zeroext 352, i32 noundef %or.i50.i.i111.i) #14
  %908 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %dev, align 4
  %910 = ptrtoint ptr %909 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %909, align 4
  %read16.i.i52.i.i113.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %911, i32 0, i32 1
  %912 = ptrtoint ptr %read16.i.i52.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %read16.i.i52.i.i113.i, align 4
  %..i114.i = select i1 %tobool26.not.i.i109.i, i16 356, i16 358
  %call.i.i.i.i115.i = tail call zeroext i16 %913(ptr noundef %909, i16 noundef zeroext %..i114.i) #14
  %or.i49.i.i119.i = or i32 %add10.i108.i, 65832
  %914 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %dev, align 4
  %916 = ptrtoint ptr %915 to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %915, align 4
  %write32.i.i.i50.i.i120.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %917, i32 0, i32 5
  %918 = ptrtoint ptr %write32.i.i.i50.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %write32.i.i.i50.i.i120.i, align 4
  tail call void %919(ptr noundef %915, i16 noundef zeroext 352, i32 noundef %or.i49.i.i119.i) #14
  %920 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %dev, align 4
  %922 = ptrtoint ptr %921 to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %921, align 4
  %write16.i.i51.i.i121.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %923, i32 0, i32 4
  %924 = ptrtoint ptr %write16.i.i51.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %write16.i.i51.i.i121.i, align 4
  tail call void %925(ptr noundef %921, i16 noundef zeroext %..i114.i, i16 noundef zeroext %call.i.i.i.i115.i) #14
  br label %b43legacy_rate_memory_init.exit

do.end.i:                                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  %call.i290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2088, 0\0A.popsection", ""() #14, !srcloc !313
  unreachable

b43legacy_rate_memory_init.exit:                  ; preds = %sw.bb.i, %if.end96.b43legacy_rate_memory_init.exit_crit_edge
  %call5.i.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_cck(i8 noundef zeroext 2) #14
  %926 = and i8 %call5.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %926)
  %tobool26.not.i.i125.i = icmp eq i8 %926, 0
  %927 = lshr i8 %call5.i.i, 1
  %928 = and i8 %927, 7
  %add10.i124.i = zext i8 %928 to i32
  %or.i50.i.i127.i = or i32 %add10.i124.i, 65840
  %929 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %dev, align 4
  %931 = ptrtoint ptr %930 to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %930, align 4
  %write32.i.i.i51.i.i128.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %932, i32 0, i32 5
  %933 = ptrtoint ptr %write32.i.i.i51.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load ptr, ptr %write32.i.i.i51.i.i128.i, align 4
  tail call void %934(ptr noundef %930, i16 noundef zeroext 352, i32 noundef %or.i50.i.i127.i) #14
  %935 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load ptr, ptr %dev, align 4
  %937 = ptrtoint ptr %936 to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %936, align 4
  %read16.i.i52.i.i129.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %938, i32 0, i32 1
  %939 = ptrtoint ptr %read16.i.i52.i.i129.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %read16.i.i52.i.i129.i, align 4
  %..i130.i = select i1 %tobool26.not.i.i125.i, i16 356, i16 358
  %call.i.i.i.i131.i = tail call zeroext i16 %940(ptr noundef %936, i16 noundef zeroext %..i130.i) #14
  %or.i49.i.i135.i = or i32 %add10.i124.i, 65848
  %941 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %dev, align 4
  %943 = ptrtoint ptr %942 to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %942, align 4
  %write32.i.i.i50.i.i136.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %944, i32 0, i32 5
  %945 = ptrtoint ptr %write32.i.i.i50.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %write32.i.i.i50.i.i136.i, align 4
  tail call void %946(ptr noundef %942, i16 noundef zeroext 352, i32 noundef %or.i49.i.i135.i) #14
  %947 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %dev, align 4
  %949 = ptrtoint ptr %948 to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %948, align 4
  %write16.i.i51.i.i137.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %950, i32 0, i32 4
  %951 = ptrtoint ptr %write16.i.i51.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %write16.i.i51.i.i137.i, align 4
  tail call void %952(ptr noundef %948, i16 noundef zeroext %..i130.i, i16 noundef zeroext %call.i.i.i.i131.i) #14
  %call5.i139.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_cck(i8 noundef zeroext 4) #14
  %953 = and i8 %call5.i139.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %953)
  %tobool26.not.i.i142.i = icmp eq i8 %953, 0
  %954 = lshr i8 %call5.i139.i, 1
  %955 = and i8 %954, 7
  %add10.i141.i = zext i8 %955 to i32
  %or.i50.i.i144.i = or i32 %add10.i141.i, 65840
  %956 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %dev, align 4
  %958 = ptrtoint ptr %957 to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %957, align 4
  %write32.i.i.i51.i.i145.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %959, i32 0, i32 5
  %960 = ptrtoint ptr %write32.i.i.i51.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load ptr, ptr %write32.i.i.i51.i.i145.i, align 4
  tail call void %961(ptr noundef %957, i16 noundef zeroext 352, i32 noundef %or.i50.i.i144.i) #14
  %962 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %dev, align 4
  %964 = ptrtoint ptr %963 to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %963, align 4
  %read16.i.i52.i.i146.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %965, i32 0, i32 1
  %966 = ptrtoint ptr %read16.i.i52.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %read16.i.i52.i.i146.i, align 4
  %..i147.i = select i1 %tobool26.not.i.i142.i, i16 356, i16 358
  %call.i.i.i.i148.i = tail call zeroext i16 %967(ptr noundef %963, i16 noundef zeroext %..i147.i) #14
  %or.i49.i.i152.i = or i32 %add10.i141.i, 65848
  %968 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %dev, align 4
  %970 = ptrtoint ptr %969 to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %969, align 4
  %write32.i.i.i50.i.i153.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %971, i32 0, i32 5
  %972 = ptrtoint ptr %write32.i.i.i50.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %write32.i.i.i50.i.i153.i, align 4
  tail call void %973(ptr noundef %969, i16 noundef zeroext 352, i32 noundef %or.i49.i.i152.i) #14
  %974 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %dev, align 4
  %976 = ptrtoint ptr %975 to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %975, align 4
  %write16.i.i51.i.i154.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %977, i32 0, i32 4
  %978 = ptrtoint ptr %write16.i.i51.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %write16.i.i51.i.i154.i, align 4
  tail call void %979(ptr noundef %975, i16 noundef zeroext %..i147.i, i16 noundef zeroext %call.i.i.i.i148.i) #14
  %call5.i156.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_cck(i8 noundef zeroext 11) #14
  %980 = and i8 %call5.i156.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %980)
  %tobool26.not.i.i159.i = icmp eq i8 %980, 0
  %981 = lshr i8 %call5.i156.i, 1
  %982 = and i8 %981, 7
  %add10.i158.i = zext i8 %982 to i32
  %or.i50.i.i161.i = or i32 %add10.i158.i, 65840
  %983 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load ptr, ptr %dev, align 4
  %985 = ptrtoint ptr %984 to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %984, align 4
  %write32.i.i.i51.i.i162.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %986, i32 0, i32 5
  %987 = ptrtoint ptr %write32.i.i.i51.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %write32.i.i.i51.i.i162.i, align 4
  tail call void %988(ptr noundef %984, i16 noundef zeroext 352, i32 noundef %or.i50.i.i161.i) #14
  %989 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %dev, align 4
  %991 = ptrtoint ptr %990 to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %990, align 4
  %read16.i.i52.i.i163.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %992, i32 0, i32 1
  %993 = ptrtoint ptr %read16.i.i52.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %read16.i.i52.i.i163.i, align 4
  %..i164.i = select i1 %tobool26.not.i.i159.i, i16 356, i16 358
  %call.i.i.i.i165.i = tail call zeroext i16 %994(ptr noundef %990, i16 noundef zeroext %..i164.i) #14
  %or.i49.i.i169.i = or i32 %add10.i158.i, 65848
  %995 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %dev, align 4
  %997 = ptrtoint ptr %996 to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %996, align 4
  %write32.i.i.i50.i.i170.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %998, i32 0, i32 5
  %999 = ptrtoint ptr %write32.i.i.i50.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %write32.i.i.i50.i.i170.i, align 4
  tail call void %1000(ptr noundef %996, i16 noundef zeroext 352, i32 noundef %or.i49.i.i169.i) #14
  %1001 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load ptr, ptr %dev, align 4
  %1003 = ptrtoint ptr %1002 to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %1002, align 4
  %write16.i.i51.i.i171.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1004, i32 0, i32 4
  %1005 = ptrtoint ptr %write16.i.i51.i.i171.i to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %write16.i.i51.i.i171.i, align 4
  tail call void %1006(ptr noundef %1002, i16 noundef zeroext %..i164.i, i16 noundef zeroext %call.i.i.i.i165.i) #14
  %call5.i173.i = tail call zeroext i8 @b43legacy_plcp_get_ratecode_cck(i8 noundef zeroext 22) #14
  %1007 = and i8 %call5.i173.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1007)
  %tobool26.not.i.i176.i = icmp eq i8 %1007, 0
  %1008 = lshr i8 %call5.i173.i, 1
  %1009 = and i8 %1008, 7
  %add10.i175.i = zext i8 %1009 to i32
  %or.i50.i.i178.i = or i32 %add10.i175.i, 65840
  %1010 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %dev, align 4
  %1012 = ptrtoint ptr %1011 to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load ptr, ptr %1011, align 4
  %write32.i.i.i51.i.i179.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1013, i32 0, i32 5
  %1014 = ptrtoint ptr %write32.i.i.i51.i.i179.i to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %write32.i.i.i51.i.i179.i, align 4
  tail call void %1015(ptr noundef %1011, i16 noundef zeroext 352, i32 noundef %or.i50.i.i178.i) #14
  %1016 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %dev, align 4
  %1018 = ptrtoint ptr %1017 to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %1017, align 4
  %read16.i.i52.i.i180.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1019, i32 0, i32 1
  %1020 = ptrtoint ptr %read16.i.i52.i.i180.i to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %read16.i.i52.i.i180.i, align 4
  %..i181.i = select i1 %tobool26.not.i.i176.i, i16 356, i16 358
  %call.i.i.i.i182.i = tail call zeroext i16 %1021(ptr noundef %1017, i16 noundef zeroext %..i181.i) #14
  %or.i49.i.i186.i = or i32 %add10.i175.i, 65848
  %1022 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %dev, align 4
  %1024 = ptrtoint ptr %1023 to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load ptr, ptr %1023, align 4
  %write32.i.i.i50.i.i187.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1025, i32 0, i32 5
  %1026 = ptrtoint ptr %write32.i.i.i50.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %write32.i.i.i50.i.i187.i, align 4
  tail call void %1027(ptr noundef %1023, i16 noundef zeroext 352, i32 noundef %or.i49.i.i186.i) #14
  %1028 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %dev, align 4
  %1030 = ptrtoint ptr %1029 to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %1029, align 4
  %write16.i.i51.i.i188.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1031, i32 0, i32 4
  %1032 = ptrtoint ptr %write16.i.i51.i.i188.i to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %write16.i.i51.i.i188.i, align 4
  tail call void %1033(ptr noundef %1029, i16 noundef zeroext %..i181.i, i16 noundef zeroext %call.i.i.i.i182.i) #14
  %1034 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %1034)
  %1035 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1035)
  %cmp99 = icmp eq i8 %1035, 1
  %1036 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %dev, align 4
  %1038 = ptrtoint ptr %1037 to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load ptr, ptr %1037, align 4
  %write32.i.i.i50.i291 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1039, i32 0, i32 5
  %1040 = ptrtoint ptr %write32.i.i.i50.i291 to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load ptr, ptr %write32.i.i.i50.i291, align 4
  tail call void %1041(ptr noundef %1037, i16 noundef zeroext 352, i32 noundef 131075) #14
  %1042 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load ptr, ptr %dev, align 4
  %1044 = ptrtoint ptr %1043 to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load ptr, ptr %1043, align 4
  %write16.i.i51.i292 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1045, i32 0, i32 4
  %1046 = ptrtoint ptr %write16.i.i51.i292 to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load ptr, ptr %write16.i.i51.i292, align 4
  %. = select i1 %cmp99, i16 31, i16 15
  tail call void %1047(ptr noundef %1043, i16 noundef zeroext 356, i16 noundef zeroext %.) #14
  %1048 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %dev, align 4
  %1050 = ptrtoint ptr %1049 to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load ptr, ptr %1049, align 4
  %write32.i.i.i50.i295 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1051, i32 0, i32 5
  %1052 = ptrtoint ptr %write32.i.i.i50.i295 to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load ptr, ptr %write32.i.i.i50.i295, align 4
  tail call void %1053(ptr noundef %1049, i16 noundef zeroext 352, i32 noundef 131076) #14
  %1054 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load ptr, ptr %dev, align 4
  %1056 = ptrtoint ptr %1055 to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load ptr, ptr %1055, align 4
  %write16.i.i51.i296 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1057, i32 0, i32 4
  %1058 = ptrtoint ptr %write16.i.i51.i296 to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %write16.i.i51.i296, align 4
  tail call void %1059(ptr noundef %1055, i16 noundef zeroext 356, i16 noundef zeroext 1023) #14
  br label %do.body104

do.body104:                                       ; preds = %do.cond115.do.body104_crit_edge, %b43legacy_rate_memory_init.exit
  %1060 = ptrtoint ptr %__using_pio.i.i to i32
  call void @__asan_load1_noabort(i32 %1060)
  %1061 = load i8, ptr %__using_pio.i.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1061)
  %tobool106.not = icmp eq i8 %1061, 0
  br i1 %tobool106.not, label %if.else109, label %if.then107

if.then107:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #16
  %call108 = tail call i32 @b43legacy_pio_init(ptr noundef %dev) #14
  br label %do.cond115

if.else109:                                       ; preds = %do.body104
  %call110 = tail call i32 @b43legacy_dma_init(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %do.cond115.thread, label %if.else109.do.cond115_crit_edge

if.else109.do.cond115_crit_edge:                  ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond115

do.cond115.thread:                                ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @b43legacy_qos_init(ptr noundef %dev) #14
  br label %if.end121

do.cond115:                                       ; preds = %if.else109.do.cond115_crit_edge, %if.then107
  %err.0 = phi i32 [ %call108, %if.then107 ], [ %call110, %if.else109.do.cond115_crit_edge ]
  %1062 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1062, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %err.0, label %err_chip_exit [
    i32 -11, label %do.cond115.do.body104_crit_edge
    i32 0, label %do.cond115.if.end121_crit_edge
  ]

do.cond115.if.end121_crit_edge:                   ; preds = %do.cond115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

do.cond115.do.body104_crit_edge:                  ; preds = %do.cond115
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body104

if.end121:                                        ; preds = %do.cond115.if.end121_crit_edge, %do.cond115.thread
  %radio_ver.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %1063 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %1063)
  %1064 = load i16, ptr %radio_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %1064)
  %cmp.i299 = icmp eq i16 %1064, 8272
  br i1 %cmp.i299, label %land.lhs.true.i, label %if.end121.b43legacy_set_synth_pu_delay.exit_crit_edge

if.end121.b43legacy_set_synth_pu_delay.exit_crit_edge: ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_set_synth_pu_delay.exit

land.lhs.true.i:                                  ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  %radio_rev.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 10
  %1065 = ptrtoint ptr %radio_rev.i to i32
  call void @__asan_load1_noabort(i32 %1065)
  %1066 = load i8, ptr %radio_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1066)
  %cmp5.i = icmp eq i8 %1066, 8
  %spec.select.i300 = select i1 %cmp5.i, i16 2400, i16 500
  br label %b43legacy_set_synth_pu_delay.exit

b43legacy_set_synth_pu_delay.exit:                ; preds = %land.lhs.true.i, %if.end121.b43legacy_set_synth_pu_delay.exit_crit_edge
  %pu_delay.1.i = phi i16 [ 500, %if.end121.b43legacy_set_synth_pu_delay.exit_crit_edge ], [ %spec.select.i300, %land.lhs.true.i ]
  %1067 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1067)
  %1068 = load ptr, ptr %dev, align 4
  %1069 = ptrtoint ptr %1068 to i32
  call void @__asan_load4_noabort(i32 %1069)
  %1070 = load ptr, ptr %1068, align 4
  %write32.i.i.i50.i.i301 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1070, i32 0, i32 5
  %1071 = ptrtoint ptr %write32.i.i.i50.i.i301 to i32
  call void @__asan_load4_noabort(i32 %1071)
  %1072 = load ptr, ptr %write32.i.i.i50.i.i301, align 4
  tail call void %1072(ptr noundef %1068, i16 noundef zeroext 352, i32 noundef 65573) #14
  %1073 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load ptr, ptr %dev, align 4
  %1075 = ptrtoint ptr %1074 to i32
  call void @__asan_load4_noabort(i32 %1075)
  %1076 = load ptr, ptr %1074, align 4
  %write16.i.i51.i.i302 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1076, i32 0, i32 4
  %1077 = ptrtoint ptr %write16.i.i51.i.i302 to i32
  call void @__asan_load4_noabort(i32 %1077)
  %1078 = load ptr, ptr %write16.i.i51.i.i302, align 4
  tail call void %1078(ptr noundef %1074, i16 noundef zeroext 356, i16 noundef zeroext %pu_delay.1.i) #14
  %call122 = tail call i32 @ssb_bus_powerup(ptr noundef %5, i1 noundef zeroext true) #14
  tail call fastcc void @b43legacy_write_mac_bssid_templates(ptr noundef %dev) #14
  %1079 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load ptr, ptr %wl1, align 4
  %mac_addr.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1080, i32 0, i32 7
  %1081 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1081)
  %1082 = load ptr, ptr %dev, align 4
  %1083 = ptrtoint ptr %1082 to i32
  call void @__asan_load4_noabort(i32 %1083)
  %1084 = load ptr, ptr %1082, align 4
  %write16.i.i.i.i304 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1084, i32 0, i32 4
  %1085 = ptrtoint ptr %write16.i.i.i.i304 to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load ptr, ptr %write16.i.i.i.i304, align 4
  tail call void %1086(ptr noundef %1082, i16 noundef zeroext 1056, i16 noundef zeroext 32) #14
  %1087 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %1087)
  %1088 = load i8, ptr %mac_addr.i, align 1
  %arrayidx3.i.i = getelementptr %struct.b43legacy_wl, ptr %1080, i32 0, i32 7, i32 1
  %1089 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %1089)
  %1090 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %1090 to i16
  %shl.i.i = shl nuw i16 %conv4.i.i, 8
  %conv5.i.i = zext i8 %1088 to i16
  %or6.i.i = or i16 %shl.i.i, %conv5.i.i
  %1091 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load ptr, ptr %dev, align 4
  %1093 = ptrtoint ptr %1092 to i32
  call void @__asan_load4_noabort(i32 %1093)
  %1094 = load ptr, ptr %1092, align 4
  %write16.i.i39.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1094, i32 0, i32 4
  %1095 = ptrtoint ptr %write16.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load ptr, ptr %write16.i.i39.i.i, align 4
  tail call void %1096(ptr noundef %1092, i16 noundef zeroext 1058, i16 noundef zeroext %or6.i.i) #14
  %arrayidx8.i.i = getelementptr %struct.b43legacy_wl, ptr %1080, i32 0, i32 7, i32 2
  %1097 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %1097)
  %1098 = load i8, ptr %arrayidx8.i.i, align 1
  %arrayidx10.i.i = getelementptr %struct.b43legacy_wl, ptr %1080, i32 0, i32 7, i32 3
  %1099 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %1099)
  %1100 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %1100 to i16
  %shl12.i.i = shl nuw i16 %conv11.i.i, 8
  %conv13.i.i = zext i8 %1098 to i16
  %or14.i.i = or i16 %shl12.i.i, %conv13.i.i
  %1101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load ptr, ptr %dev, align 4
  %1103 = ptrtoint ptr %1102 to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load ptr, ptr %1102, align 4
  %write16.i.i40.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1104, i32 0, i32 4
  %1105 = ptrtoint ptr %write16.i.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load ptr, ptr %write16.i.i40.i.i, align 4
  tail call void %1106(ptr noundef %1102, i16 noundef zeroext 1058, i16 noundef zeroext %or14.i.i) #14
  %arrayidx16.i.i = getelementptr %struct.b43legacy_wl, ptr %1080, i32 0, i32 7, i32 4
  %1107 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %1107)
  %1108 = load i8, ptr %arrayidx16.i.i, align 1
  %arrayidx18.i.i = getelementptr %struct.b43legacy_wl, ptr %1080, i32 0, i32 7, i32 5
  %1109 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %1109)
  %1110 = load i8, ptr %arrayidx18.i.i, align 1
  %conv19.i.i = zext i8 %1110 to i16
  %shl20.i.i = shl nuw i16 %conv19.i.i, 8
  %conv21.i.i = zext i8 %1108 to i16
  %or22.i.i = or i16 %shl20.i.i, %conv21.i.i
  %1111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1111)
  %1112 = load ptr, ptr %dev, align 4
  %1113 = ptrtoint ptr %1112 to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load ptr, ptr %1112, align 4
  %write16.i.i41.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1114, i32 0, i32 4
  %1115 = ptrtoint ptr %write16.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load ptr, ptr %write16.i.i41.i.i, align 4
  tail call void %1116(ptr noundef %1112, i16 noundef zeroext 1058, i16 noundef zeroext %or22.i.i) #14
  %1117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load ptr, ptr %dev, align 4
  %revision.i305 = getelementptr inbounds %struct.ssb_device, ptr %1118, i32 0, i32 4, i32 2
  %1119 = ptrtoint ptr %revision.i305 to i32
  call void @__asan_load1_noabort(i32 %1119)
  %1120 = load i8, ptr %revision.i305, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1120)
  %cmp.i306 = icmp ugt i8 %1120, 4
  %conv3.i = select i1 %cmp.i306, i8 58, i8 20
  %max_nr_keys.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 26
  %1121 = ptrtoint ptr %max_nr_keys.i to i32
  call void @__asan_store1_noabort(i32 %1121)
  store i8 %conv3.i, ptr %max_nr_keys.i, align 2
  %1122 = ptrtoint ptr %1118 to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load ptr, ptr %1118, align 4
  %write32.i.i.i.i.i307 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1123, i32 0, i32 5
  %1124 = ptrtoint ptr %write32.i.i.i.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load ptr, ptr %write32.i.i.i.i.i307, align 4
  tail call void %1125(ptr noundef %1118, i16 noundef zeroext 352, i32 noundef 65557) #14
  %1126 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load ptr, ptr %dev, align 4
  %1128 = ptrtoint ptr %1127 to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load ptr, ptr %1127, align 4
  %read16.i.i.i.i308 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1129, i32 0, i32 1
  %1130 = ptrtoint ptr %read16.i.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1130)
  %1131 = load ptr, ptr %read16.i.i.i.i308, align 4
  %call.i.i.i.i309 = tail call zeroext i16 %1131(ptr noundef %1127, i16 noundef zeroext 358) #14
  %ktp.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 25
  %mul.i = shl i16 %call.i.i.i.i309, 1
  %1132 = ptrtoint ptr %ktp.i to i32
  call void @__asan_store2_noabort(i32 %1132)
  store i16 %mul.i, ptr %ktp.i, align 4
  %1133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1133)
  %1134 = load ptr, ptr %dev, align 4
  %revision31.i = getelementptr inbounds %struct.ssb_device, ptr %1134, i32 0, i32 4, i32 2
  %1135 = ptrtoint ptr %revision31.i to i32
  call void @__asan_load1_noabort(i32 %1135)
  %1136 = load i8, ptr %revision31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1136)
  %cmp33.i = icmp ugt i8 %1136, 4
  br i1 %cmp33.i, label %if.then35.i, label %b43legacy_set_synth_pu_delay.exit.b43legacy_security_init.exit_crit_edge

b43legacy_set_synth_pu_delay.exit.b43legacy_security_init.exit_crit_edge: ; preds = %b43legacy_set_synth_pu_delay.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_security_init.exit

if.then35.i:                                      ; preds = %b43legacy_set_synth_pu_delay.exit
  call void @__sanitizer_cov_trace_pc() #16
  %1137 = ptrtoint ptr %max_nr_keys.i to i32
  call void @__asan_load1_noabort(i32 %1137)
  %1138 = load i8, ptr %max_nr_keys.i, align 2
  %conv37.i = zext i8 %1138 to i16
  %sub.i = add nsw i16 %conv37.i, -8
  %1139 = ptrtoint ptr %1134 to i32
  call void @__asan_load4_noabort(i32 %1139)
  %1140 = load ptr, ptr %1134, align 4
  %write16.i.i.i310 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1140, i32 0, i32 4
  %1141 = ptrtoint ptr %write16.i.i.i310 to i32
  call void @__asan_load4_noabort(i32 %1141)
  %1142 = load ptr, ptr %write16.i.i.i310, align 4
  tail call void %1142(ptr noundef %1134, i16 noundef zeroext 1084, i16 noundef zeroext %sub.i) #14
  br label %b43legacy_security_init.exit

b43legacy_security_init.exit:                     ; preds = %if.then35.i, %b43legacy_set_synth_pu_delay.exit.b43legacy_security_init.exit_crit_edge
  %rng_name.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 15
  %hw.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 1
  %1143 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %1143)
  %1144 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1144, i32 0, i32 1
  %1145 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %1145)
  %1146 = load ptr, ptr %wiphy.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.wiphy, ptr %1146, i32 0, i32 56, i32 3
  %1147 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1147)
  %1148 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i311 = icmp eq ptr %1148, null
  br i1 %tobool.not.i.i.i311, label %if.end.i.i.i, label %b43legacy_security_init.exit.wiphy_name.exit.i_crit_edge

b43legacy_security_init.exit.wiphy_name.exit.i_crit_edge: ; preds = %b43legacy_security_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %wiphy_name.exit.i

if.end.i.i.i:                                     ; preds = %b43legacy_security_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %1146, i32 0, i32 56
  %1149 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1149)
  %1150 = load ptr, ptr %dev.i.i, align 4
  br label %wiphy_name.exit.i

wiphy_name.exit.i:                                ; preds = %if.end.i.i.i, %b43legacy_security_init.exit.wiphy_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %1150, %if.end.i.i.i ], [ %1148, %b43legacy_security_init.exit.wiphy_name.exit.i_crit_edge ]
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %rng_name.i, i32 noundef 31, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i.i) #14
  %rng.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 13
  %1151 = ptrtoint ptr %rng.i to i32
  call void @__asan_store4_noabort(i32 %1151)
  store ptr %rng_name.i, ptr %rng.i, align 4
  %data_read.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 13, i32 4
  %1152 = ptrtoint ptr %data_read.i to i32
  call void @__asan_store4_noabort(i32 %1152)
  store ptr @b43legacy_rng_read, ptr %data_read.i, align 4
  %1153 = ptrtoint ptr %1 to i32
  %priv.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 13, i32 6
  %1154 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %1154)
  store i32 %1153, ptr %priv.i, align 4
  %rng_initialized.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 14
  %1155 = ptrtoint ptr %rng_initialized.i to i32
  call void @__asan_store1_noabort(i32 %1155)
  store i8 1, ptr %rng_initialized.i, align 4
  %call7.i = tail call i32 @hwrng_register(ptr noundef %rng.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i312 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i312, label %wiphy_name.exit.i.b43legacy_rng_init.exit_crit_edge, label %if.then.i313

wiphy_name.exit.i.b43legacy_rng_init.exit_crit_edge: ; preds = %wiphy_name.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_rng_init.exit

if.then.i313:                                     ; preds = %wiphy_name.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %1156 = ptrtoint ptr %rng_initialized.i to i32
  call void @__asan_store1_noabort(i32 %1156)
  store i8 0, ptr %rng_initialized.i, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %call7.i) #14
  br label %b43legacy_rng_init.exit

b43legacy_rng_init.exit:                          ; preds = %if.then.i313, %wiphy_name.exit.i.b43legacy_rng_init.exit_crit_edge
  %1157 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load ptr, ptr %wl1, align 4
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %1158, i32 0, i32 1
  %1159 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %1160) #14
  %call.i.i249 = tail call zeroext i1 @__kasan_check_write(ptr noundef %__init_status, i32 noundef 4) #14
  %1161 = ptrtoint ptr %__init_status to i32
  call void @__asan_store4_noabort(i32 %1161)
  store volatile i32 1, ptr %__init_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !314
  tail call void @b43legacy_leds_init(ptr noundef %dev) #14
  br label %cleanup

err_chip_exit:                                    ; preds = %do.cond115
  tail call void @b43legacy_radio_turn_off(ptr noundef %dev, i1 noundef zeroext true) #14
  %1162 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1162)
  %1163 = load ptr, ptr %dev, align 4
  %bus2.i.i314 = getelementptr inbounds %struct.ssb_device, ptr %1163, i32 0, i32 3
  %1164 = ptrtoint ptr %bus2.i.i314 to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load ptr, ptr %bus2.i.i314, align 4
  %chipco.i.i315 = getelementptr inbounds %struct.ssb_bus, ptr %1165, i32 0, i32 17
  %1166 = ptrtoint ptr %chipco.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load ptr, ptr %chipco.i.i315, align 4
  %tobool.not.i.i316 = icmp eq ptr %1167, null
  br i1 %tobool.not.i.i316, label %cond.end.i.i319, label %err_chip_exit.if.end.i.i322_crit_edge

err_chip_exit.if.end.i.i322_crit_edge:            ; preds = %err_chip_exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i322

cond.end.i.i319:                                  ; preds = %err_chip_exit
  %pcicore.i.i317 = getelementptr inbounds %struct.ssb_bus, ptr %1165, i32 0, i32 18
  %1168 = ptrtoint ptr %pcicore.i.i317 to i32
  call void @__asan_load4_noabort(i32 %1168)
  %1169 = load ptr, ptr %pcicore.i.i317, align 4
  %tobool5.not.i.i318 = icmp eq ptr %1169, null
  br i1 %tobool5.not.i.i318, label %cond.end.i.i319.err_kfree_tssitbl_crit_edge, label %cond.end.i.i319.if.end.i.i322_crit_edge

cond.end.i.i319.if.end.i.i322_crit_edge:          ; preds = %cond.end.i.i319
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i322

cond.end.i.i319.err_kfree_tssitbl_crit_edge:      ; preds = %cond.end.i.i319
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_kfree_tssitbl

if.end.i.i322:                                    ; preds = %cond.end.i.i319.if.end.i.i322_crit_edge, %err_chip_exit.if.end.i.i322_crit_edge
  %cond12.i.i320 = phi ptr [ %1169, %cond.end.i.i319.if.end.i.i322_crit_edge ], [ %1167, %err_chip_exit.if.end.i.i322_crit_edge ]
  %1170 = ptrtoint ptr %cond12.i.i320 to i32
  call void @__asan_load4_noabort(i32 %1170)
  %1171 = load ptr, ptr %cond12.i.i320, align 4
  %write32.i.i.i321 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1171, i32 0, i32 5
  %1172 = ptrtoint ptr %write32.i.i.i321 to i32
  call void @__asan_load4_noabort(i32 %1172)
  %1173 = load ptr, ptr %write32.i.i.i321, align 4
  tail call void %1173(ptr noundef nonnull %cond12.i.i320, i16 noundef zeroext 108, i32 noundef 0) #14
  br label %err_kfree_tssitbl

err_kfree_tssitbl:                                ; preds = %if.end.i.i322, %cond.end.i.i319.err_kfree_tssitbl_crit_edge, %if.end.i195.i, %cond.end.i193.i.err_kfree_tssitbl_crit_edge, %b43legacy_upload_microcode.exit.i
  %err.2 = phi i32 [ %err.0, %cond.end.i.i319.err_kfree_tssitbl_crit_edge ], [ %err.0, %if.end.i.i322 ], [ %err.1.i, %if.end.i195.i ], [ %err.1.i, %cond.end.i193.i.err_kfree_tssitbl_crit_edge ], [ %err.0.i.i, %b43legacy_upload_microcode.exit.i ]
  %dyn_tssi_tbl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 11
  %1174 = ptrtoint ptr %dyn_tssi_tbl to i32
  call void @__asan_load1_noabort(i32 %1174)
  %1175 = load i8, ptr %dyn_tssi_tbl, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1175)
  %tobool135.not = icmp eq i8 %1175, 0
  br i1 %tobool135.not, label %err_kfree_tssitbl.err_kfree_lo_control_crit_edge, label %if.then136

err_kfree_tssitbl.err_kfree_lo_control_crit_edge: ; preds = %err_kfree_tssitbl
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_kfree_lo_control

if.then136:                                       ; preds = %err_kfree_tssitbl
  call void @__sanitizer_cov_trace_pc() #16
  %tssi2dbm = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 20
  %1176 = ptrtoint ptr %tssi2dbm to i32
  call void @__asan_load4_noabort(i32 %1176)
  %1177 = load ptr, ptr %tssi2dbm, align 4
  tail call void @kfree(ptr noundef %1177) #14
  br label %err_kfree_lo_control

err_kfree_lo_control:                             ; preds = %if.then136, %err_kfree_tssitbl.err_kfree_lo_control_crit_edge, %setup_struct_wldev_for_init.exit.err_kfree_lo_control_crit_edge
  %err.3 = phi i32 [ %call50, %setup_struct_wldev_for_init.exit.err_kfree_lo_control_crit_edge ], [ %err.2, %if.then136 ], [ %err.2, %err_kfree_tssitbl.err_kfree_lo_control_crit_edge ]
  %lo_control = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 24
  %1178 = ptrtoint ptr %lo_control to i32
  call void @__asan_load4_noabort(i32 %1178)
  %1179 = load ptr, ptr %lo_control, align 4
  tail call void @kfree(ptr noundef %1179) #14
  %1180 = ptrtoint ptr %lo_control to i32
  call void @__asan_store4_noabort(i32 %1180)
  store ptr null, ptr %lo_control, align 4
  %call139 = tail call i32 @ssb_bus_may_powerdown(ptr noundef %5) #14
  %call.i.i250 = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %1181 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %1181)
  %1182 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1182)
  %cmp143.not = icmp eq i32 %1182, 0
  br i1 %cmp143.not, label %err_kfree_lo_control.cleanup_crit_edge, label %do.end160, !prof !303

err_kfree_lo_control.cleanup_crit_edge:           ; preds = %err_kfree_lo_control
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end160:                                        ; preds = %err_kfree_lo_control
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3372, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end160, %err_kfree_lo_control.cleanup_crit_edge, %b43legacy_rng_init.exit, %if.then43.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then43.cleanup_crit_edge ], [ %call27, %if.end.cleanup_crit_edge ], [ 0, %b43legacy_rng_init.exit ], [ %err.3, %do.end160 ], [ %err.3, %err_kfree_lo_control.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @b43legacy_wireless_core_start(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %0 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !303

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2956, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %3, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp.i = icmp ult i8 %5, 5
  br i1 %cmp.i, label %if.end.drain_txstatus_queue.exit_crit_edge, label %while.cond.preheader.i

if.end.drain_txstatus_queue.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %drain_txstatus_queue.exit

while.cond.preheader.i:                           ; preds = %if.end
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %read32.i.i10.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i10.i, align 4
  %call.i.i11.i = tail call i32 %9(ptr noundef %3, i16 noundef zeroext 368) #14
  %and12.i = and i32 %call.i.i11.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not13.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not13.i, label %while.cond.preheader.i.drain_txstatus_queue.exit_crit_edge, label %while.cond.preheader.i.if.end4.i_crit_edge

while.cond.preheader.i.if.end4.i_crit_edge:       ; preds = %while.cond.preheader.i
  br label %if.end4.i

while.cond.preheader.i.drain_txstatus_queue.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drain_txstatus_queue.exit

if.end4.i:                                        ; preds = %if.end4.i.if.end4.i_crit_edge, %while.cond.preheader.i.if.end4.i_crit_edge
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %read32.i.i8.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read32.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i8.i, align 4
  %call.i.i9.i = tail call i32 %15(ptr noundef %11, i16 noundef zeroext 372) #14
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %21(ptr noundef %17, i16 noundef zeroext 368) #14
  %and.i = and i32 %call.i.i.i, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.i.drain_txstatus_queue.exit_crit_edge, label %if.end4.i.if.end4.i_crit_edge

if.end4.i.if.end4.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.end4.i.drain_txstatus_queue.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %drain_txstatus_queue.exit

drain_txstatus_queue.exit:                        ; preds = %if.end4.i.drain_txstatus_queue.exit_crit_edge, %while.cond.preheader.i.drain_txstatus_queue.exit_crit_edge, %if.end.drain_txstatus_queue.exit_crit_edge
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.ssb_device, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %25, ptr noundef nonnull @b43legacy_interrupt_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.15, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  %wl26 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %26 = ptrtoint ptr %wl26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wl26, align 4
  br i1 %tobool21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %drain_txstatus_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %irq24 = getelementptr inbounds %struct.ssb_device, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %irq24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq24, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %27, ptr noundef nonnull @.str.39, i32 noundef %31)
  br label %out

if.end25:                                         ; preds = %drain_txstatus_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %33) #14
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %__init_status, i32 noundef 4) #14
  %34 = ptrtoint ptr %__init_status to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 2, ptr %__init_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !315
  tail call void @b43legacy_mac_enable(ptr noundef %dev)
  %irq_mask = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 18
  %35 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq_mask, align 4
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.i, align 4
  tail call void %42(ptr noundef %38, i16 noundef zeroext 300, i32 noundef %36) #14
  %periodic_work.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 22
  %periodic_state.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 23
  %43 = ptrtoint ptr %periodic_state.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %periodic_state.i, align 4
  tail call void @__init_work(ptr noundef %periodic_work.i, i32 noundef 0) #14
  %44 = ptrtoint ptr %periodic_work.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %periodic_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 22, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @b43legacy_periodic_tasks_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry6.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 22, i32 0, i32 1
  %45 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 22, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry6.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 22, i32 0, i32 2
  %47 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @b43legacy_periodic_work_handler, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 22, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.43, ptr noundef nonnull @b43legacy_periodic_tasks_setup.__key.42) #14
  %48 = ptrtoint ptr %wl26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wl26, align 4
  %hw.i = getelementptr inbounds %struct.b43legacy_wl, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %51, ptr noundef %periodic_work.i, i32 noundef 0) #14
  %52 = ptrtoint ptr %wl26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wl26, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %53, ptr noundef nonnull @.str.40)
  br label %out

out:                                              ; preds = %if.end25, %if.then22
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_wireless_core_exit(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %0 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !305

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3178, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i75 = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %2 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp22.not = icmp eq i32 %3, 1
  br i1 %cmp22.not, label %do.body25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body25:                                        ; preds = %if.end
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %__init_status, i32 noundef 4) #14
  %4 = ptrtoint ptr %__init_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %__init_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !316
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i.i, align 4
  %call.i.i77 = tail call i32 %10(ptr noundef %6, i16 noundef zeroext 288) #14
  %and = and i32 %call.i.i77, -7
  %or = or i32 %and, 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write32.i.i, align 4
  tail call void %16(ptr noundef %12, i16 noundef zeroext 288, i32 noundef %or) #14
  tail call void @b43legacy_leds_exit(ptr noundef %dev) #14
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %17 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wl, align 4
  %rng_initialized.i = getelementptr inbounds %struct.b43legacy_wl, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %rng_initialized.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rng_initialized.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %do.body25.b43legacy_rng_exit.exit_crit_edge, label %if.then.i

do.body25.b43legacy_rng_exit.exit_crit_edge:      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_rng_exit.exit

if.then.i:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  %rng.i = getelementptr inbounds %struct.b43legacy_wl, ptr %18, i32 0, i32 13
  tail call void @hwrng_unregister(ptr noundef %rng.i) #14
  br label %b43legacy_rng_exit.exit

b43legacy_rng_exit.exit:                          ; preds = %if.then.i, %do.body25.b43legacy_rng_exit.exit_crit_edge
  tail call void @b43legacy_pio_free(ptr noundef %dev) #14
  tail call void @b43legacy_dma_free(ptr noundef %dev) #14
  tail call void @b43legacy_radio_turn_off(ptr noundef %dev, i1 noundef zeroext true) #14
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %bus2.i.i = getelementptr inbounds %struct.ssb_device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bus2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus2.i.i, align 4
  %chipco.i.i = getelementptr inbounds %struct.ssb_bus, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %chipco.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chipco.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %cond.end.i.i, label %b43legacy_rng_exit.exit.if.end.i.i_crit_edge

b43legacy_rng_exit.exit.if.end.i.i_crit_edge:     ; preds = %b43legacy_rng_exit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

cond.end.i.i:                                     ; preds = %b43legacy_rng_exit.exit
  %pcicore.i.i = getelementptr inbounds %struct.ssb_bus, ptr %24, i32 0, i32 18
  %27 = ptrtoint ptr %pcicore.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcicore.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %28, null
  br i1 %tobool5.not.i.i, label %cond.end.i.i.b43legacy_chip_exit.exit_crit_edge, label %cond.end.i.i.if.end.i.i_crit_edge

cond.end.i.i.if.end.i.i_crit_edge:                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

cond.end.i.i.b43legacy_chip_exit.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_chip_exit.exit

if.end.i.i:                                       ; preds = %cond.end.i.i.if.end.i.i_crit_edge, %b43legacy_rng_exit.exit.if.end.i.i_crit_edge
  %cond12.i.i = phi ptr [ %28, %cond.end.i.i.if.end.i.i_crit_edge ], [ %26, %b43legacy_rng_exit.exit.if.end.i.i_crit_edge ]
  %29 = ptrtoint ptr %cond12.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond12.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %32(ptr noundef nonnull %cond12.i.i, i16 noundef zeroext 108, i32 noundef 0) #14
  br label %b43legacy_chip_exit.exit

b43legacy_chip_exit.exit:                         ; preds = %if.end.i.i, %cond.end.i.i.b43legacy_chip_exit.exit_crit_edge
  tail call void @b43legacy_radio_turn_off(ptr noundef %dev, i1 noundef zeroext true) #14
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %38(ptr noundef %34, i16 noundef zeroext 998, i16 noundef zeroext 244) #14
  %dyn_tssi_tbl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 11
  %39 = ptrtoint ptr %dyn_tssi_tbl to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dyn_tssi_tbl, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool36.not = icmp eq i8 %40, 0
  br i1 %tobool36.not, label %b43legacy_chip_exit.exit.if.end38_crit_edge, label %if.then37

b43legacy_chip_exit.exit.if.end38_crit_edge:      ; preds = %b43legacy_chip_exit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then37:                                        ; preds = %b43legacy_chip_exit.exit
  call void @__sanitizer_cov_trace_pc() #16
  %tssi2dbm = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 20
  %41 = ptrtoint ptr %tssi2dbm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tssi2dbm, align 4
  tail call void @kfree(ptr noundef %42) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %b43legacy_chip_exit.exit.if.end38_crit_edge
  %lo_control = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 24
  %43 = ptrtoint ptr %lo_control to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lo_control, align 4
  tail call void @kfree(ptr noundef %44) #14
  %45 = ptrtoint ptr %lo_control to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %lo_control, align 4
  %46 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wl, align 4
  %current_beacon = getelementptr inbounds %struct.b43legacy_wl, ptr %47, i32 0, i32 20
  %48 = ptrtoint ptr %current_beacon to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %current_beacon, align 4
  %tobool41.not = icmp eq ptr %49, null
  br i1 %tobool41.not, label %if.end38.if.end47_crit_edge, label %if.then42

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %49, i32 noundef 1) #14
  %50 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wl, align 4
  %current_beacon46 = getelementptr inbounds %struct.b43legacy_wl, ptr %51, i32 0, i32 20
  %52 = ptrtoint ptr %current_beacon46 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %current_beacon46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end38.if.end47_crit_edge
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  tail call void @ssb_device_disable(ptr noundef %54, i32 noundef 0) #14
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus, align 4
  %call50 = tail call i32 @ssb_bus_may_powerdown(ptr noundef %58) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_start_polling(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_bus_powerup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_device_is_enabled(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_phy_init_tssi2dbm_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_pcicore_dev_irqvecs_enable(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_phy_calibrate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_pio_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_dma_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_qos_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_leds_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_bus_may_powerdown(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43legacy_default_baseband_attenuation(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43legacy_default_radio_attenuation(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43legacy_default_txctl1(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_radio_turn_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_phy_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_radio_set_interference_mitigation(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_phy_set_antenna_diversity(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_mgmtframe_txantenna(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i.i51.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 352, i32 noundef 65557) #14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read16.i.i52.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %read16.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16.i.i52.i, align 4
  %call.i.i53.i = tail call zeroext i16 %11(ptr noundef %7, i16 noundef zeroext 356) #14
  %12 = and i16 %call.i.i53.i, -961
  %13 = or i16 %12, 768
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %write32.i.i.i50.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i.i50.i, align 4
  tail call void %19(ptr noundef %15, i16 noundef zeroext 352, i32 noundef 65557) #14
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write16.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %write16.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write16.i.i51.i, align 4
  tail call void %25(ptr noundef %21, i16 noundef zeroext 356, i16 noundef zeroext %13) #14
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %31(ptr noundef %27, i16 noundef zeroext 352, i32 noundef 65544) #14
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %37(ptr noundef %33, i16 noundef zeroext 358) #14
  %38 = and i16 %call.i.i.i, -961
  %39 = or i16 %38, 768
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %write32.i.i.i.i1 = getelementptr inbounds %struct.ssb_bus_ops, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %write32.i.i.i.i1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i.i.i.i1, align 4
  tail call void %45(ptr noundef %41, i16 noundef zeroext 352, i32 noundef 65544) #14
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %51(ptr noundef %47, i16 noundef zeroext 358, i16 noundef zeroext %39) #14
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %write32.i.i.i51.i2 = getelementptr inbounds %struct.ssb_bus_ops, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %write32.i.i.i51.i2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write32.i.i.i51.i2, align 4
  tail call void %57(ptr noundef %53, i16 noundef zeroext 352, i32 noundef 65634) #14
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %read16.i.i52.i3 = getelementptr inbounds %struct.ssb_bus_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %read16.i.i52.i3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read16.i.i52.i3, align 4
  %call.i.i53.i4 = tail call zeroext i16 %63(ptr noundef %59, i16 noundef zeroext 356) #14
  %64 = and i16 %call.i.i53.i4, -961
  %65 = or i16 %64, 768
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %write32.i.i.i50.i5 = getelementptr inbounds %struct.ssb_bus_ops, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %write32.i.i.i50.i5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write32.i.i.i50.i5, align 4
  tail call void %71(ptr noundef %67, i16 noundef zeroext 352, i32 noundef 65634) #14
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %write16.i.i51.i6 = getelementptr inbounds %struct.ssb_bus_ops, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %write16.i.i51.i6 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write16.i.i51.i6, align 4
  tail call void %77(ptr noundef %73, i16 noundef zeroext 356, i16 noundef zeroext %65) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_adjust_opmode(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wl1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl1, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3, i16 noundef zeroext 288) #14
  %and6 = and i32 %call.i.i, -32899073
  %operating.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %operating.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %operating.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.b43legacy_is_mode.exit95.thread_crit_edge, label %b43legacy_is_mode.exit

entry.b43legacy_is_mode.exit95.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_is_mode.exit95.thread

b43legacy_is_mode.exit:                           ; preds = %entry
  %if_type.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %if_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 3
  br i1 %cmp.i.not, label %if.then, label %b43legacy_is_mode.exit95

if.then:                                          ; preds = %b43legacy_is_mode.exit
  call void @__sanitizer_cov_trace_pc() #16
  %or8 = or i32 %and6, 393216
  br label %if.end13

b43legacy_is_mode.exit95:                         ; preds = %b43legacy_is_mode.exit
  %12 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %if_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i92.not = icmp eq i32 %13, 1
  br i1 %cmp.i92.not, label %b43legacy_is_mode.exit95.if.end13_crit_edge, label %b43legacy_is_mode.exit95.b43legacy_is_mode.exit95.thread_crit_edge

b43legacy_is_mode.exit95.b43legacy_is_mode.exit95.thread_crit_edge: ; preds = %b43legacy_is_mode.exit95
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_is_mode.exit95.thread

b43legacy_is_mode.exit95.if.end13_crit_edge:      ; preds = %b43legacy_is_mode.exit95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

b43legacy_is_mode.exit95.thread:                  ; preds = %b43legacy_is_mode.exit95.b43legacy_is_mode.exit95.thread_crit_edge, %entry.b43legacy_is_mode.exit95.thread_crit_edge
  %or98101 = or i32 %and6, 131072
  br label %if.end13

if.end13:                                         ; preds = %b43legacy_is_mode.exit95.thread, %b43legacy_is_mode.exit95.if.end13_crit_edge, %if.then
  %ctl.0 = phi i32 [ %or8, %if.then ], [ %or98101, %b43legacy_is_mode.exit95.thread ], [ %and6, %b43legacy_is_mode.exit95.if.end13_crit_edge ]
  %filter_flags = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %filter_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %filter_flags, align 4
  %and14 = shl i32 %15, 17
  %16 = and i32 %and14, 4194304
  %17 = or i32 %16, %ctl.0
  %and20 = shl i32 %15, 21
  %18 = and i32 %and20, 8388608
  %19 = or i32 %17, %18
  %and26 = shl i32 %15, 18
  %20 = and i32 %and26, 2097152
  %21 = or i32 %19, %20
  %and32 = shl i32 %15, 16
  %22 = and i32 %and32, 1048576
  %23 = or i32 %21, %22
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %25, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %27)
  %cmp = icmp ult i8 %27, 5
  %or40 = or i32 %23, 16777216
  %ctl.5 = select i1 %cmp, i32 %or40, i32 %23
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i, align 4
  tail call void %31(ptr noundef %25, i16 noundef zeroext 288, i32 noundef %ctl.5) #14
  %32 = and i32 %ctl.5, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %32)
  %33 = icmp eq i32 %32, 131072
  br i1 %33, label %if.then46, label %if.end13.if.end60_crit_edge

if.end13.if.end60_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then46:                                        ; preds = %if.end13
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17158, i16 %39)
  %cmp49 = icmp eq i16 %39, 17158
  br i1 %cmp49, label %land.lhs.true51, label %if.then46.if.else58_crit_edge

if.then46.if.else58_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else58

land.lhs.true51:                                  ; preds = %if.then46
  %chip_rev = getelementptr inbounds %struct.ssb_bus, ptr %37, i32 0, i32 10
  %40 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %chip_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp55 = icmp eq i8 %41, 3
  br i1 %cmp55, label %land.lhs.true51.if.end60_crit_edge, label %land.lhs.true51.if.else58_crit_edge

land.lhs.true51.if.else58_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else58

land.lhs.true51.if.end60_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.else58:                                        ; preds = %land.lhs.true51.if.else58_crit_edge, %if.then46.if.else58_crit_edge
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %land.lhs.true51.if.end60_crit_edge, %if.end13.if.end60_crit_edge
  %cfp_pretbtt.0 = phi i16 [ 50, %if.else58 ], [ 2, %if.end13.if.end60_crit_edge ], [ 100, %land.lhs.true51.if.end60_crit_edge ]
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write16.i.i, align 4
  tail call void %47(ptr noundef %43, i16 noundef zeroext 1554, i16 noundef zeroext %cfp_pretbtt.0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_radio_turn_off(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @b43legacy_write_initvals(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ivals, i32 noundef %count, i32 noundef %array_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp66.not = icmp eq i32 %count, 0
  br i1 %cmp66.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %iv.068 = phi ptr [ %add.ptr27, %for.inc.for.body_crit_edge ], [ %ivals, %entry.for.body_crit_edge ]
  %array_size.addr.067 = phi i32 [ %array_size.addr.3, %for.inc.for.body_crit_edge ], [ %array_size, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %array_size.addr.067)
  %cmp1 = icmp ult i32 %array_size.addr.067, 2
  br i1 %cmp1, label %for.body.err_format_crit_edge, label %if.end

for.body.err_format_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_format

if.end:                                           ; preds = %for.body
  %sub = add i32 %array_size.addr.067, -2
  %0 = ptrtoint ptr %iv.068 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %iv.068, align 1
  %and4 = and i16 %1, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %and4)
  %cmp7 = icmp ugt i16 %and4, 4095
  br i1 %cmp7, label %if.end.err_format_crit_edge, label %if.end10

if.end.err_format_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_format

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not = icmp sgt i16 %1, -1
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp13 = icmp ult i32 %sub, 4
  br i1 %cmp13, label %if.then12.err_format_crit_edge, label %cleanup.thread

if.then12.err_format_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_format

cleanup.thread:                                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %sub17 = add i32 %array_size.addr.067, -6
  %data = getelementptr inbounds %struct.b43legacy_iv, ptr %iv.068, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %data, align 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i, align 4
  tail call void %9(ptr noundef %5, i16 noundef zeroext %and4, i32 noundef %3) #14
  br label %for.inc

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp20 = icmp ult i32 %sub, 2
  br i1 %cmp20, label %if.else.err_format_crit_edge, label %cleanup28.thread

if.else.err_format_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_format

cleanup28.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %sub24 = add i32 %array_size.addr.067, -4
  %data25 = getelementptr inbounds %struct.b43legacy_iv, ptr %iv.068, i32 0, i32 1
  %10 = ptrtoint ptr %data25 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %data25, align 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write16.i.i, align 4
  tail call void %17(ptr noundef %13, i16 noundef zeroext %and4, i16 noundef zeroext %11) #14
  br label %for.inc

for.inc:                                          ; preds = %cleanup28.thread, %cleanup.thread
  %.sink = phi i32 [ 4, %cleanup28.thread ], [ 6, %cleanup.thread ]
  %array_size.addr.3 = phi i32 [ %sub24, %cleanup28.thread ], [ %sub17, %cleanup.thread ]
  %add.ptr27 = getelementptr i8, ptr %iv.068, i32 %.sink
  %inc = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %array_size.addr.0.lcssa = phi i32 [ %array_size, %entry.for.end_crit_edge ], [ %array_size.addr.3, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %array_size.addr.0.lcssa)
  %tobool32.not = icmp eq i32 %array_size.addr.0.lcssa, 0
  br i1 %tobool32.not, label %for.end.cleanup36_crit_edge, label %for.end.err_format_crit_edge

for.end.err_format_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_format

for.end.cleanup36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup36

err_format:                                       ; preds = %for.end.err_format_crit_edge, %if.else.err_format_crit_edge, %if.then12.err_format_crit_edge, %if.end.err_format_crit_edge, %for.body.err_format_crit_edge
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %19, ptr noundef nonnull @.str.34)
  %20 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %21, ptr noundef nonnull @.str.33) #14
  br label %cleanup36

cleanup36:                                        ; preds = %err_format, %for.end.cleanup36_crit_edge
  %retval.0 = phi i32 [ -71, %err_format ], [ 0, %for.end.cleanup36_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @b43legacy_plcp_get_ratecode_ofdm(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @b43legacy_plcp_get_ratecode_cck(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_write_mac_bssid_templates(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  %mac_bssid = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %mac_addr = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 7
  %bssid2 = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mac_bssid) #14
  %2 = getelementptr inbounds [12 x i8], ptr %mac_bssid, i32 0, i32 6
  %tobool.not = icmp eq ptr %bssid2, null
  %spec.store.select = select i1 %tobool.not, ptr @b43legacy_write_mac_bssid_templates.zero_addr, ptr %bssid2
  %tobool4.not = icmp eq ptr %mac_addr, null
  %spec.store.select29 = select i1 %tobool4.not, ptr @b43legacy_write_mac_bssid_templates.zero_addr, ptr %mac_addr
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %8(ptr noundef %4, i16 noundef zeroext 1056, i16 noundef zeroext 35) #14
  %9 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %spec.store.select, align 1
  %arrayidx3.i = getelementptr i8, ptr %spec.store.select, i32 1
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %12 to i16
  %shl.i = shl nuw i16 %conv4.i, 8
  %conv5.i = zext i8 %10 to i16
  %or6.i = or i16 %shl.i, %conv5.i
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %write16.i.i39.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %write16.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write16.i.i39.i, align 4
  tail call void %18(ptr noundef %14, i16 noundef zeroext 1058, i16 noundef zeroext %or6.i) #14
  %arrayidx8.i = getelementptr i8, ptr %spec.store.select, i32 2
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %spec.store.select, i32 3
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %22 to i16
  %shl12.i = shl nuw i16 %conv11.i, 8
  %conv13.i = zext i8 %20 to i16
  %or14.i = or i16 %shl12.i, %conv13.i
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %write16.i.i40.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %write16.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write16.i.i40.i, align 4
  tail call void %28(ptr noundef %24, i16 noundef zeroext 1058, i16 noundef zeroext %or14.i) #14
  %arrayidx16.i = getelementptr i8, ptr %spec.store.select, i32 4
  %29 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx16.i, align 1
  %arrayidx18.i = getelementptr i8, ptr %spec.store.select, i32 5
  %31 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %32 to i16
  %shl20.i = shl nuw i16 %conv19.i, 8
  %conv21.i = zext i8 %30 to i16
  %or22.i = or i16 %shl20.i, %conv21.i
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %write16.i.i41.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %write16.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write16.i.i41.i, align 4
  tail call void %38(ptr noundef %34, i16 noundef zeroext 1058, i16 noundef zeroext %or22.i) #14
  %39 = call ptr @memcpy(ptr %mac_bssid, ptr %spec.store.select29, i32 6)
  %40 = call ptr @memcpy(ptr %2, ptr %spec.store.select, i32 6)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.075 = phi i32 [ 0, %entry ], [ %add28, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x i8], ptr %mac_bssid, i32 0, i32 %i.075
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %42 to i32
  %add9 = or i32 %i.075, 1
  %arrayidx10 = getelementptr [12 x i8], ptr %mac_bssid, i32 0, i32 %add9
  %43 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %44 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %or = or i32 %shl, %conv
  %add12 = or i32 %i.075, 2
  %arrayidx13 = getelementptr [12 x i8], ptr %mac_bssid, i32 0, i32 %add12
  %45 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %46 to i32
  %shl15 = shl nuw nsw i32 %conv14, 16
  %or16 = or i32 %or, %shl15
  %add17 = or i32 %i.075, 3
  %arrayidx18 = getelementptr [12 x i8], ptr %mac_bssid, i32 0, i32 %add17
  %47 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %48 to i32
  %shl20 = shl nuw i32 %conv19, 24
  %or21 = or i32 %or16, %shl20
  %conv23 = add nuw nsw i32 %i.075, 32
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %54(ptr noundef %50, i16 noundef zeroext 288) #14
  %and.i = and i32 %call.i.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  %55 = tail call i32 @llvm.bswap.i32(i32 %or21) #14
  %spec.select.i = select i1 %tobool20.not.i, i32 %or21, i32 %55
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %61(ptr noundef %57, i16 noundef zeroext 304, i32 noundef %conv23) #14
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %write32.i.i29.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %write32.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i.i29.i, align 4
  tail call void %67(ptr noundef %63, i16 noundef zeroext 308, i32 noundef %spec.select.i) #14
  %conv25 = add nuw nsw i32 %i.075, 120
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %read32.i.i.i55 = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %read32.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read32.i.i.i55, align 4
  %call.i.i.i56 = tail call i32 %73(ptr noundef %69, i16 noundef zeroext 288) #14
  %and.i57 = and i32 %call.i.i.i56, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool20.not.i58 = icmp eq i32 %and.i57, 0
  %spec.select.i59 = select i1 %tobool20.not.i58, i32 %or21, i32 %55
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %write32.i.i.i60 = getelementptr inbounds %struct.ssb_bus_ops, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %write32.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write32.i.i.i60, align 4
  tail call void %79(ptr noundef %75, i16 noundef zeroext 304, i32 noundef %conv25) #14
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %write32.i.i29.i61 = getelementptr inbounds %struct.ssb_bus_ops, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %write32.i.i29.i61 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write32.i.i29.i61, align 4
  tail call void %85(ptr noundef %81, i16 noundef zeroext 308, i32 noundef %spec.select.i59) #14
  %conv27 = add nuw nsw i32 %i.075, 1144
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %read32.i.i.i67 = getelementptr inbounds %struct.ssb_bus_ops, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %read32.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read32.i.i.i67, align 4
  %call.i.i.i68 = tail call i32 %91(ptr noundef %87, i16 noundef zeroext 288) #14
  %and.i69 = and i32 %call.i.i.i68, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool20.not.i70 = icmp eq i32 %and.i69, 0
  %spec.select.i71 = select i1 %tobool20.not.i70, i32 %or21, i32 %55
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %write32.i.i.i72 = getelementptr inbounds %struct.ssb_bus_ops, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %write32.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write32.i.i.i72, align 4
  tail call void %97(ptr noundef %93, i16 noundef zeroext 304, i32 noundef %conv27) #14
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %write32.i.i29.i73 = getelementptr inbounds %struct.ssb_bus_ops, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %write32.i.i29.i73 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write32.i.i29.i73, align 4
  tail call void %103(ptr noundef %99, i16 noundef zeroext 308, i32 noundef %spec.select.i71) #14
  %add28 = add nuw nsw i32 %i.075, 4
  %cmp = icmp ult i32 %i.075, 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mac_bssid) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_rng_read(ptr nocapture noundef readonly %rng, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %2, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %10(ptr noundef %6, i16 noundef zeroext 1626) #14
  %conv6 = zext i16 %call.i.i to i32
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv6, ptr %data, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #14
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrng_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43legacy_interrupt_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !305

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1421, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #14
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %2 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end28, !prof !305

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end28:                                         ; preds = %if.end
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i, align 4
  %call.i.i86 = tail call i32 %9(ptr noundef %5, i16 noundef zeroext 296) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i86)
  %cmp30 = icmp eq i32 %call.i.i86, -1
  br i1 %cmp30, label %if.end28.out_crit_edge, label %if.end32

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end32:                                         ; preds = %if.end28
  %irq_mask = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 18
  %10 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_mask, align 4
  %and = and i32 %11, %call.i.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end32.out_crit_edge, label %if.end35

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end35:                                         ; preds = %if.end32
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %read32.i.i87 = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read32.i.i87 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i87, align 4
  %call.i.i88 = tail call i32 %17(ptr noundef %13, i16 noundef zeroext 32) #14
  %and37 = and i32 %call.i.i88, 121856
  %dma_reason = getelementptr %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 17
  %18 = ptrtoint ptr %dma_reason to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and37, ptr %dma_reason, align 4
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %read32.i.i89 = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %read32.i.i89 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read32.i.i89, align 4
  %call.i.i90 = tail call i32 %24(ptr noundef %20, i16 noundef zeroext 40) #14
  %and39 = and i32 %call.i.i90, 56320
  %arrayidx41 = getelementptr %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 17, i32 1
  %25 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and39, ptr %arrayidx41, align 4
  %26 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %read32.i.i91 = getelementptr inbounds %struct.ssb_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read32.i.i91 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i91, align 4
  %call.i.i92 = tail call i32 %31(ptr noundef %27, i16 noundef zeroext 48) #14
  %and43 = and i32 %call.i.i92, 56320
  %arrayidx45 = getelementptr %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 17, i32 2
  %32 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and43, ptr %arrayidx45, align 4
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %read32.i.i93 = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %read32.i.i93 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32.i.i93, align 4
  %call.i.i94 = tail call i32 %38(ptr noundef %34, i16 noundef zeroext 56) #14
  %and47 = and i32 %call.i.i94, 121856
  %arrayidx49 = getelementptr %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 17, i32 3
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and47, ptr %arrayidx49, align 4
  %40 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_id, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %read32.i.i95 = getelementptr inbounds %struct.ssb_bus_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %read32.i.i95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i.i95, align 4
  %call.i.i96 = tail call i32 %45(ptr noundef %41, i16 noundef zeroext 64) #14
  %and51 = and i32 %call.i.i96, 56320
  %arrayidx53 = getelementptr %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 17, i32 4
  %46 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and51, ptr %arrayidx53, align 4
  %47 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_id, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %read32.i.i97 = getelementptr inbounds %struct.ssb_bus_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %read32.i.i97 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read32.i.i97, align 4
  %call.i.i98 = tail call i32 %52(ptr noundef %48, i16 noundef zeroext 72) #14
  %and55 = and i32 %call.i.i98, 56320
  %arrayidx57 = getelementptr %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 17, i32 5
  %53 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and55, ptr %arrayidx57, align 4
  %__using_pio.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 4
  %54 = ptrtoint ptr %__using_pio.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %__using_pio.i.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %if.end35.b43legacy_interrupt_ack.exit_crit_edge, label %land.lhs.true.i

if.end35.b43legacy_interrupt_ack.exit_crit_edge:  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_interrupt_ack.exit

land.lhs.true.i:                                  ; preds = %if.end35
  %56 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_id, align 4
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %57, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %59)
  %cmp.i = icmp ult i8 %59, 3
  %and.i = and i32 %and, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %tobool4.not.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %land.lhs.true.i.b43legacy_interrupt_ack.exit_crit_edge

land.lhs.true.i.b43legacy_interrupt_ack.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_interrupt_ack.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  %read16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i16 %63(ptr noundef %57, i16 noundef zeroext 776) #14
  %64 = and i16 %call.i.i.i.i, 1
  %65 = ptrtoint ptr %dma_reason to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_reason, align 4
  %and5.i.i = and i32 %66, -65537
  %67 = zext i16 %64 to i32
  %68 = shl nuw nsw i32 %67, 16
  %and5.sink.i.i = or i32 %68, %and5.i.i
  store i32 %and5.sink.i.i, ptr %dma_reason, align 4
  %69 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_id, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %read16.i.i.i34.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %read16.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read16.i.i.i34.i, align 4
  %call.i.i.i35.i = tail call zeroext i16 %74(ptr noundef %70, i16 noundef zeroext 792) #14
  %75 = and i16 %call.i.i.i35.i, 1
  %76 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx41, align 4
  %and5.i37.i = and i32 %77, -65537
  %78 = zext i16 %75 to i32
  %79 = shl nuw nsw i32 %78, 16
  %and5.sink.i38.i = or i32 %79, %and5.i37.i
  store i32 %and5.sink.i38.i, ptr %arrayidx41, align 4
  %80 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_id, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %read16.i.i.i39.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %read16.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read16.i.i.i39.i, align 4
  %call.i.i.i40.i = tail call zeroext i16 %85(ptr noundef %81, i16 noundef zeroext 808) #14
  %86 = and i16 %call.i.i.i40.i, 1
  %87 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx45, align 4
  %and5.i42.i = and i32 %88, -65537
  %89 = zext i16 %86 to i32
  %90 = shl nuw nsw i32 %89, 16
  %and5.sink.i43.i = or i32 %90, %and5.i42.i
  store i32 %and5.sink.i43.i, ptr %arrayidx45, align 4
  %91 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_id, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %read16.i.i.i44.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %read16.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read16.i.i.i44.i, align 4
  %call.i.i.i45.i = tail call zeroext i16 %96(ptr noundef %92, i16 noundef zeroext 824) #14
  %97 = and i16 %call.i.i.i45.i, 1
  %98 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx49, align 4
  %and5.i47.i = and i32 %99, -65537
  %100 = zext i16 %97 to i32
  %101 = shl nuw nsw i32 %100, 16
  %and5.sink.i48.i = or i32 %101, %and5.i47.i
  store i32 %and5.sink.i48.i, ptr %arrayidx49, align 4
  br label %b43legacy_interrupt_ack.exit

b43legacy_interrupt_ack.exit:                     ; preds = %if.then.i, %land.lhs.true.i.b43legacy_interrupt_ack.exit_crit_edge, %if.end35.b43legacy_interrupt_ack.exit_crit_edge
  %102 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_id, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %107(ptr noundef %103, i16 noundef zeroext 296, i32 noundef %and) #14
  %108 = ptrtoint ptr %dma_reason to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dma_reason, align 4
  %110 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev_id, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %write32.i.i49.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %write32.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write32.i.i49.i, align 4
  tail call void %115(ptr noundef %111, i16 noundef zeroext 32, i32 noundef %109) #14
  %116 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx41, align 4
  %118 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_id, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %write32.i.i50.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %write32.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write32.i.i50.i, align 4
  tail call void %123(ptr noundef %119, i16 noundef zeroext 40, i32 noundef %117) #14
  %124 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx45, align 4
  %126 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev_id, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %write32.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %write32.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write32.i.i51.i, align 4
  tail call void %131(ptr noundef %127, i16 noundef zeroext 48, i32 noundef %125) #14
  %132 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx49, align 4
  %134 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev_id, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %write32.i.i52.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %137, i32 0, i32 5
  %138 = ptrtoint ptr %write32.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write32.i.i52.i, align 4
  tail call void %139(ptr noundef %135, i16 noundef zeroext 56, i32 noundef %133) #14
  %140 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx53, align 4
  %142 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev_id, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %write32.i.i53.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %write32.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write32.i.i53.i, align 4
  tail call void %147(ptr noundef %143, i16 noundef zeroext 64, i32 noundef %141) #14
  %148 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx57, align 4
  %150 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev_id, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %write32.i.i54.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %write32.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write32.i.i54.i, align 4
  tail call void %155(ptr noundef %151, i16 noundef zeroext 72, i32 noundef %149) #14
  %156 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev_id, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %159, i32 0, i32 5
  %160 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write32.i.i, align 4
  tail call void %161(ptr noundef %157, i16 noundef zeroext 300, i32 noundef 0) #14
  %irq_reason = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 16
  %162 = ptrtoint ptr %irq_reason to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %and, ptr %irq_reason, align 4
  %state.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 21, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i99 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i99, label %if.then.i100, label %b43legacy_interrupt_ack.exit.out_crit_edge

b43legacy_interrupt_ack.exit.out_crit_edge:       ; preds = %b43legacy_interrupt_ack.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then.i100:                                     ; preds = %b43legacy_interrupt_ack.exit
  call void @__sanitizer_cov_trace_pc() #16
  %isr_tasklet = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev_id, i32 0, i32 21
  tail call void @__tasklet_schedule(ptr noundef %isr_tasklet) #14
  br label %out

out:                                              ; preds = %if.then.i100, %b43legacy_interrupt_ack.exit.out_crit_edge, %if.end32.out_crit_edge, %if.end28.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %if.end28.out_crit_edge ], [ 1, %if.end32.out_crit_edge ], [ 1, %b43legacy_interrupt_ack.exit.out_crit_edge ], [ 1, %if.then.i100 ]
  %163 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %wl, align 4
  %irq_lock59 = getelementptr inbounds %struct.b43legacy_wl, ptr %164, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock59) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_periodic_work_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2212
  %wl1 = getelementptr i8, ptr %work, i32 -2208
  %0 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl1, align 4
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %__init_status = getelementptr i8, ptr %work, i32 -2204
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %2 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge, !prof !303

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @b43legacy_debug(ptr noundef %add.ptr, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_requeue_crit_edge

if.end.out_requeue_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_requeue

if.end6:                                          ; preds = %if.end
  %periodic_state.i = getelementptr i8, ptr %work, i32 100
  %4 = ptrtoint ptr %periodic_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %periodic_state.i, align 4
  %rem.i = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6.if.end.i_crit_edge

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end6
  %type.i.i = getelementptr i8, ptr %work, i32 -2185
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not.i.i = icmp eq i8 %7, 2
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %rev.i.i = getelementptr i8, ptr %work, i32 -2184
  %8 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp4.i.i = icmp ult i8 %9, 2
  br i1 %cmp4.i.i, label %lor.lhs.false.i.i.if.end.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @b43legacy_mac_suspend(ptr noundef %add.ptr) #14
  tail call void @b43legacy_phy_lo_g_measure(ptr noundef %add.ptr) #14
  tail call void @b43legacy_mac_enable(ptr noundef %add.ptr) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i, %lor.lhs.false.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge, %if.end6.if.end.i_crit_edge
  %rem1.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i)
  %cmp2.i = icmp eq i32 %rem1.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  tail call void @b43legacy_phy_lo_mark_all_unused(ptr noundef %add.ptr) #14
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %bus.i.i = getelementptr inbounds %struct.ssb_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 4
  %boardflags_lo.i.i = getelementptr inbounds %struct.ssb_bus, ptr %13, i32 0, i32 22, i32 70
  %14 = ptrtoint ptr %boardflags_lo.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %boardflags_lo.i.i, align 4
  %16 = and i16 %15, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i.i, label %if.then3.i.if.end4.i_crit_edge, label %if.then.i.i

if.then3.i.if.end4.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @b43legacy_mac_suspend(ptr noundef %add.ptr) #14
  tail call void @b43legacy_calc_nrssi_slope(ptr noundef %add.ptr) #14
  tail call void @b43legacy_mac_enable(ptr noundef %add.ptr) #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.i, %if.then3.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %rem5.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem5.i)
  %cmp6.i = icmp eq i32 %rem5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end4.i.do_periodic_work.exit_crit_edge

if.end4.i.do_periodic_work.exit_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_periodic_work.exit

if.then7.i:                                       ; preds = %if.end4.i
  %calculation_running.i.i.i = getelementptr i8, ptr %work, i32 -63
  %17 = ptrtoint ptr %calculation_running.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %calculation_running.i.i.i, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then7.i.do_periodic_work.exit_crit_edge

if.then7.i.do_periodic_work.exit_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_periodic_work.exit

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  %noisecalc.i.i.i = getelementptr i8, ptr %work, i32 -64
  %channel.i.i.i = getelementptr i8, ptr %work, i32 -1920
  %19 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %channel.i.i.i, align 4
  %21 = ptrtoint ptr %noisecalc.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %noisecalc.i.i.i, align 4
  %22 = ptrtoint ptr %calculation_running.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %calculation_running.i.i.i, align 1
  %nr_samples.i.i.i = getelementptr i8, ptr %work, i32 -62
  %23 = ptrtoint ptr %nr_samples.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %nr_samples.i.i.i, align 2
  tail call fastcc void @b43legacy_generate_noise_sample(ptr noundef %add.ptr) #14
  br label %do_periodic_work.exit

do_periodic_work.exit:                            ; preds = %if.end.i.i.i, %if.then7.i.do_periodic_work.exit_crit_edge, %if.end4.i.do_periodic_work.exit_crit_edge
  tail call void @b43legacy_phy_xmitpower(ptr noundef %add.ptr) #14
  %txerr_cnt.i.i = getelementptr i8, ptr %work, i32 -1912
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %txerr_cnt.i.i, i32 noundef 4) #14
  %24 = ptrtoint ptr %txerr_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1000, ptr %txerr_cnt.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !317
  tail call void @arm_heavy_mb() #14
  %25 = ptrtoint ptr %periodic_state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %periodic_state.i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %periodic_state.i, align 4
  br label %out_requeue

out_requeue:                                      ; preds = %do_periodic_work.exit, %if.end.out_requeue_crit_edge
  %call7 = tail call i32 @b43legacy_debug(ptr noundef %add.ptr, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else, label %out_requeue.if.end12_crit_edge

out_requeue.if.end12_crit_edge:                   ; preds = %out_requeue
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.else:                                          ; preds = %out_requeue
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 @round_jiffies_relative(i32 noundef 1500) #14
  br label %if.end12

if.end12:                                         ; preds = %if.else, %out_requeue.if.end12_crit_edge
  %delay.0 = phi i32 [ %call11, %if.else ], [ 5, %out_requeue.if.end12_crit_edge ]
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %28, ptr noundef %work, i32 noundef %delay.0) #14
  br label %out

out:                                              ; preds = %if.end12, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_debug(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_phy_lo_g_measure(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_phy_lo_mark_all_unused(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_calc_nrssi_slope(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_generate_noise_sample(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i.i50.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i.i50.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 352, i32 noundef 65794) #14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write16.i.i51.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %write16.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i.i51.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 356, i16 noundef zeroext 32639) #14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %17(ptr noundef %13, i16 noundef zeroext 352, i32 noundef 65794) #14
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %23(ptr noundef %19, i16 noundef zeroext 358, i16 noundef zeroext 32639) #14
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %29(ptr noundef %25, i16 noundef zeroext 292) #14
  %or = or i32 %call.i.i, 16
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i.i, align 4
  tail call void %35(ptr noundef %31, i16 noundef zeroext 292, i32 noundef %or) #14
  %noisecalc = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 19
  %36 = ptrtoint ptr %noisecalc to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %noisecalc, align 4
  %channel = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 39
  %38 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %channel, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp.not = icmp eq i8 %37, %39
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !303

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 776, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_phy_xmitpower(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_leds_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_pio_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_dma_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_device_disable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrng_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_wireless_core_stop(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wl1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl1, align 4
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %2 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body2:                                         ; preds = %entry
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i, align 4
  tail call void %9(ptr noundef %5, i16 noundef zeroext 300, i32 noundef 0) #14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i, align 4
  %call.i.i53 = tail call i32 %15(ptr noundef %11, i16 noundef zeroext 300) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call5) #14
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %irq.i = getelementptr inbounds %struct.ssb_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %19) #14
  %isr_tasklet.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 21
  tail call void @tasklet_kill(ptr noundef %isr_tasklet.i) #14
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %__init_status, i32 noundef 4) #14
  %20 = ptrtoint ptr %__init_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %__init_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !318
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  %periodic_work = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 22
  %call20 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %periodic_work) #14
  %tx_work = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 26
  %call21 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %qlen.i = getelementptr %struct.b43legacy_wl, ptr %1, i32 0, i32 27, i32 0, i32 1
  %21 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not54 = icmp eq i32 %22, 0
  br i1 %tobool.not54, label %do.body2.for.inc_crit_edge, label %while.body.lr.ph

do.body2.for.inc_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

while.body.lr.ph:                                 ; preds = %do.body2
  %arrayidx = getelementptr %struct.b43legacy_wl, ptr %1, i32 0, i32 27, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call28 = tail call ptr @skb_dequeue(ptr noundef %arrayidx) #14
  tail call void @consume_skb(ptr noundef %call28) #14
  %23 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i, align 4
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %do.body2.for.inc_crit_edge
  %qlen.i.1 = getelementptr %struct.b43legacy_wl, ptr %1, i32 0, i32 27, i32 1, i32 1
  %25 = ptrtoint ptr %qlen.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not54.1 = icmp eq i32 %26, 0
  br i1 %tobool.not54.1, label %for.inc.for.inc.1_crit_edge, label %while.body.lr.ph.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

while.body.lr.ph.1:                               ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.b43legacy_wl, ptr %1, i32 0, i32 27, i32 1
  br label %while.body.1

while.body.1:                                     ; preds = %while.body.1.while.body.1_crit_edge, %while.body.lr.ph.1
  %call28.1 = tail call ptr @skb_dequeue(ptr noundef %arrayidx.1) #14
  tail call void @consume_skb(ptr noundef %call28.1) #14
  %27 = ptrtoint ptr %qlen.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i.1, align 4
  %tobool.not.1 = icmp eq i32 %28, 0
  br i1 %tobool.not.1, label %while.body.1.for.inc.1_crit_edge, label %while.body.1.while.body.1_crit_edge

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.1

while.body.1.for.inc.1_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %while.body.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %qlen.i.2 = getelementptr %struct.b43legacy_wl, ptr %1, i32 0, i32 27, i32 2, i32 1
  %29 = ptrtoint ptr %qlen.i.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not54.2 = icmp eq i32 %30, 0
  br i1 %tobool.not54.2, label %for.inc.1.for.inc.2_crit_edge, label %while.body.lr.ph.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

while.body.lr.ph.2:                               ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.b43legacy_wl, ptr %1, i32 0, i32 27, i32 2
  br label %while.body.2

while.body.2:                                     ; preds = %while.body.2.while.body.2_crit_edge, %while.body.lr.ph.2
  %call28.2 = tail call ptr @skb_dequeue(ptr noundef %arrayidx.2) #14
  tail call void @consume_skb(ptr noundef %call28.2) #14
  %31 = ptrtoint ptr %qlen.i.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen.i.2, align 4
  %tobool.not.2 = icmp eq i32 %32, 0
  br i1 %tobool.not.2, label %while.body.2.for.inc.2_crit_edge, label %while.body.2.while.body.2_crit_edge

while.body.2.while.body.2_crit_edge:              ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.2

while.body.2.for.inc.2_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

for.inc.2:                                        ; preds = %while.body.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %qlen.i.3 = getelementptr %struct.b43legacy_wl, ptr %1, i32 0, i32 27, i32 3, i32 1
  %33 = ptrtoint ptr %qlen.i.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not54.3 = icmp eq i32 %34, 0
  br i1 %tobool.not54.3, label %for.inc.2.for.inc.3_crit_edge, label %while.body.lr.ph.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

while.body.lr.ph.3:                               ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.b43legacy_wl, ptr %1, i32 0, i32 27, i32 3
  br label %while.body.3

while.body.3:                                     ; preds = %while.body.3.while.body.3_crit_edge, %while.body.lr.ph.3
  %call28.3 = tail call ptr @skb_dequeue(ptr noundef %arrayidx.3) #14
  tail call void @consume_skb(ptr noundef %call28.3) #14
  %35 = ptrtoint ptr %qlen.i.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen.i.3, align 4
  %tobool.not.3 = icmp eq i32 %36, 0
  br i1 %tobool.not.3, label %while.body.3.for.inc.3_crit_edge, label %while.body.3.while.body.3_crit_edge

while.body.3.while.body.3_crit_edge:              ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.3

while.body.3.for.inc.3_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

for.inc.3:                                        ; preds = %while.body.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  tail call void @b43legacy_mac_suspend(ptr noundef %dev)
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.ssb_device, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  %call30 = tail call ptr @free_irq(i32 noundef %40, ptr noundef %dev) #14
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %1, ptr noundef nonnull @.str.44)
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_radio_selectchannel(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_response_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_irq_beacon(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wl1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl1, align 4
  %operating.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %operating.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operating.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %b43legacy_is_mode.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

b43legacy_is_mode.exit:                           ; preds = %entry
  %if_type.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %if_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 3
  br i1 %cmp.i.not, label %if.end, label %b43legacy_is_mode.exit.cleanup_crit_edge

b43legacy_is_mode.exit.cleanup_crit_edge:         ; preds = %b43legacy_is_mode.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %b43legacy_is_mode.exit
  %irq_mask = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_mask, align 4
  %and = and i32 %7, -3
  store i32 %and, ptr %irq_mask, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %9, i16 noundef zeroext 292) #14
  %and3 = and i32 %call.i.i, 1
  %and4 = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool5.not = icmp eq i32 %and3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool6.not = icmp eq i32 %and4, 0
  %14 = and i32 %call.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %.not = icmp eq i32 %14, 3
  br i1 %.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i, align 4
  tail call void %20(ptr noundef %16, i16 noundef zeroext 296, i32 noundef 2) #14
  %21 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_mask, align 4
  %or = or i32 %22, 2
  store i32 %or, ptr %irq_mask, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %beacon_templates_virgin = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 23
  %23 = ptrtoint ptr %beacon_templates_virgin to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %beacon_templates_virgin, align 2, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not = icmp eq i8 %24, 0
  br i1 %tobool10.not, label %if.else, label %if.then13, !prof !303

if.then13:                                        ; preds = %if.end9
  %25 = ptrtoint ptr %beacon_templates_virgin to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %beacon_templates_virgin, align 2
  tail call fastcc void @b43legacy_upload_beacon0(ptr noundef %dev)
  %26 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wl1, align 4
  %beacon1_uploaded.i = getelementptr inbounds %struct.b43legacy_wl, ptr %27, i32 0, i32 22
  %28 = ptrtoint ptr %beacon1_uploaded.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %beacon1_uploaded.i, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i57 = icmp eq i8 %29, 0
  br i1 %tobool.not.i57, label %if.end.i, label %if.then13.b43legacy_upload_beacon1.exit_crit_edge

if.then13.b43legacy_upload_beacon1.exit_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_upload_beacon1.exit

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_write_beacon_template(ptr noundef %dev, i16 noundef zeroext 1128, i16 noundef zeroext 26) #14
  %30 = ptrtoint ptr %beacon1_uploaded.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %beacon1_uploaded.i, align 1
  br label %b43legacy_upload_beacon1.exit

b43legacy_upload_beacon1.exit:                    ; preds = %if.end.i, %if.then13.b43legacy_upload_beacon1.exit_crit_edge
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %read32.i.i58 = getelementptr inbounds %struct.ssb_bus_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %read32.i.i58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i.i58, align 4
  %call.i.i59 = tail call i32 %36(ptr noundef %32, i16 noundef zeroext 292) #14
  %or16 = or i32 %call.i.i59, 1
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %write32.i.i60 = getelementptr inbounds %struct.ssb_bus_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %write32.i.i60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.i60, align 4
  tail call void %42(ptr noundef %38, i16 noundef zeroext 292, i32 noundef %or16) #14
  br label %cleanup

if.else:                                          ; preds = %if.end9
  br i1 %tobool5.not, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_upload_beacon0(ptr noundef %dev)
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %read32.i.i61 = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %read32.i.i61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32.i.i61, align 4
  %call.i.i62 = tail call i32 %48(ptr noundef %44, i16 noundef zeroext 292) #14
  %or20 = or i32 %call.i.i62, 1
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %write32.i.i63 = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %write32.i.i63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write32.i.i63, align 4
  tail call void %54(ptr noundef %50, i16 noundef zeroext 292, i32 noundef %or20) #14
  br label %cleanup

if.else21:                                        ; preds = %if.else
  br i1 %tobool6.not, label %if.then23, label %if.else21.cleanup_crit_edge

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %if.else21
  %55 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wl1, align 4
  %beacon1_uploaded.i65 = getelementptr inbounds %struct.b43legacy_wl, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %beacon1_uploaded.i65 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %beacon1_uploaded.i65, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i66 = icmp eq i8 %58, 0
  br i1 %tobool.not.i66, label %if.end.i67, label %if.then23.b43legacy_upload_beacon1.exit68_crit_edge

if.then23.b43legacy_upload_beacon1.exit68_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_upload_beacon1.exit68

if.end.i67:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_write_beacon_template(ptr noundef %dev, i16 noundef zeroext 1128, i16 noundef zeroext 26) #14
  %59 = ptrtoint ptr %beacon1_uploaded.i65 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %beacon1_uploaded.i65, align 1
  br label %b43legacy_upload_beacon1.exit68

b43legacy_upload_beacon1.exit68:                  ; preds = %if.end.i67, %if.then23.b43legacy_upload_beacon1.exit68_crit_edge
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %read32.i.i69 = getelementptr inbounds %struct.ssb_bus_ops, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %read32.i.i69 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read32.i.i69, align 4
  %call.i.i70 = tail call i32 %65(ptr noundef %61, i16 noundef zeroext 292) #14
  %or25 = or i32 %call.i.i70, 2
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %write32.i.i71 = getelementptr inbounds %struct.ssb_bus_ops, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %write32.i.i71 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write32.i.i71, align 4
  tail call void %71(ptr noundef %67, i16 noundef zeroext 292, i32 noundef %or25) #14
  br label %cleanup

cleanup:                                          ; preds = %b43legacy_upload_beacon1.exit68, %if.else21.cleanup_crit_edge, %if.then18, %b43legacy_upload_beacon1.exit, %if.then7, %b43legacy_is_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_upload_beacon0(ptr noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  %plcp.i39.i = alloca %struct.b43legacy_plcp_hdr4, align 4
  %plcp.i22.i = alloca %struct.b43legacy_plcp_hdr4, align 4
  %plcp.i5.i = alloca %struct.b43legacy_plcp_hdr4, align 4
  %plcp.i.i = alloca %struct.b43legacy_plcp_hdr4, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wl1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl1, align 4
  %beacon0_uploaded = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %beacon0_uploaded to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %beacon0_uploaded, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @b43legacy_write_beacon_template(ptr noundef %dev, i16 noundef zeroext 104, i16 noundef zeroext 24)
  %4 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl1, align 4
  %current_beacon.i = getelementptr inbounds %struct.b43legacy_wl, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %current_beacon.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_beacon.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %conv23.i.i = and i32 %9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %conv23.i.i)
  %cmp24.i.i = icmp ult i32 %conv23.i.i, 36
  br i1 %cmp24.i.i, label %do.end41.i.i, label %if.end8.i.i.i, !prof !305

do.end41.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1069, i32 noundef 9, ptr noundef null) #14
  br label %b43legacy_write_probe_resp_template.exit

if.end8.i.i.i:                                    ; preds = %if.end
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv23.i.i, i32 noundef 2592) #19
  %tobool59.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool59.not.i.i, label %if.end8.i.i.i.b43legacy_write_probe_resp_template.exit_crit_edge, label %if.end69.i.i, !prof !305

if.end8.i.i.i.b43legacy_write_probe_resp_template.exit_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_write_probe_resp_template.exit

if.end69.i.i:                                     ; preds = %if.end8.i.i.i
  %12 = call ptr @memcpy(ptr %call9.i.i.i, ptr %11, i32 36)
  %sub.i.i = add nsw i32 %conv23.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %conv23.i.i)
  %cmp741.i.i = icmp ugt i32 %conv23.i.i, 38
  br i1 %cmp741.i.i, label %if.end69.i.i.for.body.i.i_crit_edge, label %if.end69.i.i.b43legacy_generate_probe_resp.exit.i_crit_edge

if.end69.i.i.b43legacy_generate_probe_resp.exit.i_crit_edge: ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_generate_probe_resp.exit.i

if.end69.i.i.for.body.i.i_crit_edge:              ; preds = %if.end69.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end69.i.i.for.body.i.i_crit_edge
  %conv723.i.i = phi i32 [ %conv72.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 36, %if.end69.i.i.for.body.i.i_crit_edge ]
  %dest_pos.02.i.i = phi i16 [ %dest_pos.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 36, %if.end69.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %conv723.i.i, 1
  %arrayidx.i.i = getelementptr i8, ptr %11, i32 %add.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 1
  %conv77.i.i = zext i8 %14 to i16
  %add78.i.i = add nuw nsw i16 %conv77.i.i, 2
  %arrayidx80.i.i = getelementptr i8, ptr %11, i32 %conv723.i.i
  %15 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx80.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp82.i.i = icmp eq i8 %16, 5
  br i1 %cmp82.i.i, label %for.body.for.inc_crit_edge.i.i, label %if.end85.i.i

for.body.for.inc_crit_edge.i.i:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i.i = zext i16 %add78.i.i to i32
  br label %for.inc.i.i

if.end85.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv86.i.i = zext i16 %dest_pos.02.i.i to i32
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %conv86.i.i
  %conv89.i.i = zext i16 %add78.i.i to i32
  %17 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %arrayidx80.i.i, i32 %conv89.i.i)
  %add92.i.i = add i16 %add78.i.i, %dest_pos.02.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end85.i.i, %for.body.for.inc_crit_edge.i.i
  %conv94.pre-phi.i.i = phi i32 [ %.pre.i.i, %for.body.for.inc_crit_edge.i.i ], [ %conv89.i.i, %if.end85.i.i ]
  %dest_pos.1.i.i = phi i16 [ %dest_pos.02.i.i, %for.body.for.inc_crit_edge.i.i ], [ %add92.i.i, %if.end85.i.i ]
  %add96.i.i = add nuw nsw i32 %conv94.pre-phi.i.i, %conv723.i.i
  %conv72.i.i = and i32 %add96.i.i, 65535
  %cmp74.i.i = icmp slt i32 %conv72.i.i, %sub.i.i
  br i1 %cmp74.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.b43legacy_generate_probe_resp.exit.i_crit_edge

for.inc.i.i.b43legacy_generate_probe_resp.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_generate_probe_resp.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

b43legacy_generate_probe_resp.exit.i:             ; preds = %for.inc.i.i.b43legacy_generate_probe_resp.exit.i_crit_edge, %if.end69.i.i.b43legacy_generate_probe_resp.exit.i_crit_edge
  %dest_pos.0.lcssa.i.i = phi i16 [ 36, %if.end69.i.i.b43legacy_generate_probe_resp.exit.i_crit_edge ], [ %dest_pos.1.i.i, %for.inc.i.i.b43legacy_generate_probe_resp.exit.i_crit_edge ]
  %18 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 20480, ptr %call9.i.i.i, align 128
  %19 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wl1, align 4
  %hw.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i.i, align 4
  %vif.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vif.i.i, align 4
  %conv100.i.i = zext i16 %dest_pos.0.lcssa.i.i to i32
  %call101.i.i = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %22, ptr noundef %24, i32 noundef 0, i32 noundef %conv100.i.i, ptr noundef getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @__b43legacy_ratetable, i32 0, i32 3)) #14
  %duration_id.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %call9.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %duration_id.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %call101.i.i, ptr %duration_id.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plcp.i.i) #14
  %26 = ptrtoint ptr %plcp.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %plcp.i.i, align 4
  %add.i1.i = add i16 %dest_pos.0.lcssa.i.i, 4
  %27 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @__b43legacy_ratetable, i32 0, i32 0, i32 2), align 2
  %conv2.i.i = trunc i16 %27 to i8
  call void @b43legacy_generate_plcp_hdr(ptr noundef nonnull %plcp.i.i, i16 noundef zeroext %add.i1.i, i8 noundef zeroext %conv2.i.i) #14
  %28 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wl1, align 4
  %hw.i3.i = getelementptr inbounds %struct.b43legacy_wl, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %hw.i3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw.i3.i, align 4
  %vif.i4.i = getelementptr inbounds %struct.b43legacy_wl, ptr %29, i32 0, i32 6
  %32 = ptrtoint ptr %vif.i4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vif.i4.i, align 4
  %call.i.i = call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %31, ptr noundef %33, i32 noundef 0, i32 noundef %conv100.i.i, ptr noundef nonnull @__b43legacy_ratetable) #14
  %34 = ptrtoint ptr %plcp.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %plcp.i.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #14
  %conv5.i.i = trunc i32 %36 to i16
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %write32.i.i.i50.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %write32.i.i.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.i.i50.i.i.i, align 4
  call void %42(ptr noundef %38, i16 noundef zeroext 352, i32 noundef 65734) #14
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write16.i.i51.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %write16.i.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write16.i.i51.i.i.i, align 4
  call void %48(ptr noundef %44, i16 noundef zeroext 358, i16 noundef zeroext %conv5.i.i) #14
  %shr.i.i = lshr i32 %36, 16
  %conv9.i.i = trunc i32 %shr.i.i to i16
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %write32.i.i.i50.i36.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %write32.i.i.i50.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write32.i.i.i50.i36.i.i, align 4
  call void %54(ptr noundef %50, i16 noundef zeroext 352, i32 noundef 65735) #14
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %write16.i.i51.i37.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %write16.i.i51.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write16.i.i51.i37.i.i, align 4
  call void %60(ptr noundef %56, i16 noundef zeroext 356, i16 noundef zeroext %conv9.i.i) #14
  %61 = call i16 @llvm.bswap.i16(i16 %call.i.i) #14
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %write32.i.i.i50.i54.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %write32.i.i.i50.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i.i.i50.i54.i.i, align 4
  call void %67(ptr noundef %63, i16 noundef zeroext 352, i32 noundef 65736) #14
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %write16.i.i51.i55.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %write16.i.i51.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write16.i.i51.i55.i.i, align 4
  call void %73(ptr noundef %69, i16 noundef zeroext 356, i16 noundef zeroext %61) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plcp.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plcp.i5.i) #14
  %74 = ptrtoint ptr %plcp.i5.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %plcp.i5.i, align 4
  %75 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @__b43legacy_ratetable, i32 0, i32 1, i32 2), align 2
  %conv2.i8.i = trunc i16 %75 to i8
  call void @b43legacy_generate_plcp_hdr(ptr noundef nonnull %plcp.i5.i, i16 noundef zeroext %add.i1.i, i8 noundef zeroext %conv2.i8.i) #14
  %76 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wl1, align 4
  %hw.i10.i = getelementptr inbounds %struct.b43legacy_wl, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %hw.i10.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw.i10.i, align 4
  %vif.i11.i = getelementptr inbounds %struct.b43legacy_wl, ptr %77, i32 0, i32 6
  %80 = ptrtoint ptr %vif.i11.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vif.i11.i, align 4
  %call.i12.i = call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %79, ptr noundef %81, i32 noundef 0, i32 noundef %conv100.i.i, ptr noundef getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @__b43legacy_ratetable, i32 0, i32 1)) #14
  %82 = ptrtoint ptr %plcp.i5.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %plcp.i5.i, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83) #14
  %conv5.i13.i = trunc i32 %84 to i16
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %write32.i.i.i50.i.i14.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %write32.i.i.i50.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write32.i.i.i50.i.i14.i, align 4
  call void %90(ptr noundef %86, i16 noundef zeroext 352, i32 noundef 65739) #14
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %write16.i.i51.i.i15.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %write16.i.i51.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write16.i.i51.i.i15.i, align 4
  call void %96(ptr noundef %92, i16 noundef zeroext 356, i16 noundef zeroext %conv5.i13.i) #14
  %shr.i16.i = lshr i32 %84, 16
  %conv9.i17.i = trunc i32 %shr.i16.i to i16
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %write32.i.i.i50.i36.i18.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %write32.i.i.i50.i36.i18.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write32.i.i.i50.i36.i18.i, align 4
  call void %102(ptr noundef %98, i16 noundef zeroext 352, i32 noundef 65739) #14
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %write16.i.i51.i37.i19.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %write16.i.i51.i37.i19.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write16.i.i51.i37.i19.i, align 4
  call void %108(ptr noundef %104, i16 noundef zeroext 358, i16 noundef zeroext %conv9.i17.i) #14
  %109 = call i16 @llvm.bswap.i16(i16 %call.i12.i) #14
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %write32.i.i.i50.i54.i20.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %write32.i.i.i50.i54.i20.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write32.i.i.i50.i54.i20.i, align 4
  call void %115(ptr noundef %111, i16 noundef zeroext 352, i32 noundef 65740) #14
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %write16.i.i51.i55.i21.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %write16.i.i51.i55.i21.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write16.i.i51.i55.i21.i, align 4
  call void %121(ptr noundef %117, i16 noundef zeroext 358, i16 noundef zeroext %109) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plcp.i5.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plcp.i22.i) #14
  %122 = ptrtoint ptr %plcp.i22.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %plcp.i22.i, align 4
  %123 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @__b43legacy_ratetable, i32 0, i32 2, i32 2), align 2
  %conv2.i25.i = trunc i16 %123 to i8
  call void @b43legacy_generate_plcp_hdr(ptr noundef nonnull %plcp.i22.i, i16 noundef zeroext %add.i1.i, i8 noundef zeroext %conv2.i25.i) #14
  %124 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wl1, align 4
  %hw.i27.i = getelementptr inbounds %struct.b43legacy_wl, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %hw.i27.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw.i27.i, align 4
  %vif.i28.i = getelementptr inbounds %struct.b43legacy_wl, ptr %125, i32 0, i32 6
  %128 = ptrtoint ptr %vif.i28.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %vif.i28.i, align 4
  %call.i29.i = call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %127, ptr noundef %129, i32 noundef 0, i32 noundef %conv100.i.i, ptr noundef getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @__b43legacy_ratetable, i32 0, i32 2)) #14
  %130 = ptrtoint ptr %plcp.i22.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %plcp.i22.i, align 4
  %132 = call i32 @llvm.bswap.i32(i32 %131) #14
  %conv5.i30.i = trunc i32 %132 to i16
  %133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %write32.i.i.i50.i.i31.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %write32.i.i.i50.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write32.i.i.i50.i.i31.i, align 4
  call void %138(ptr noundef %134, i16 noundef zeroext 352, i32 noundef 65743) #14
  %139 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %write16.i.i51.i.i32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %write16.i.i51.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write16.i.i51.i.i32.i, align 4
  call void %144(ptr noundef %140, i16 noundef zeroext 358, i16 noundef zeroext %conv5.i30.i) #14
  %shr.i33.i = lshr i32 %132, 16
  %conv9.i34.i = trunc i32 %shr.i33.i to i16
  %145 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %write32.i.i.i50.i36.i35.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %148, i32 0, i32 5
  %149 = ptrtoint ptr %write32.i.i.i50.i36.i35.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write32.i.i.i50.i36.i35.i, align 4
  call void %150(ptr noundef %146, i16 noundef zeroext 352, i32 noundef 65744) #14
  %151 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %write16.i.i51.i37.i36.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %write16.i.i51.i37.i36.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write16.i.i51.i37.i36.i, align 4
  call void %156(ptr noundef %152, i16 noundef zeroext 356, i16 noundef zeroext %conv9.i34.i) #14
  %157 = call i16 @llvm.bswap.i16(i16 %call.i29.i) #14
  %158 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %write32.i.i.i50.i54.i37.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %161, i32 0, i32 5
  %162 = ptrtoint ptr %write32.i.i.i50.i54.i37.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write32.i.i.i50.i54.i37.i, align 4
  call void %163(ptr noundef %159, i16 noundef zeroext 352, i32 noundef 65745) #14
  %164 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %write16.i.i51.i55.i38.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %167, i32 0, i32 4
  %168 = ptrtoint ptr %write16.i.i51.i55.i38.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write16.i.i51.i55.i38.i, align 4
  call void %169(ptr noundef %165, i16 noundef zeroext 356, i16 noundef zeroext %157) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plcp.i22.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plcp.i39.i) #14
  %170 = ptrtoint ptr %plcp.i39.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %plcp.i39.i, align 4
  %171 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @__b43legacy_ratetable, i32 0, i32 3, i32 2), align 2
  %conv2.i42.i = trunc i16 %171 to i8
  call void @b43legacy_generate_plcp_hdr(ptr noundef nonnull %plcp.i39.i, i16 noundef zeroext %add.i1.i, i8 noundef zeroext %conv2.i42.i) #14
  %172 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %wl1, align 4
  %hw.i44.i = getelementptr inbounds %struct.b43legacy_wl, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %hw.i44.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hw.i44.i, align 4
  %vif.i45.i = getelementptr inbounds %struct.b43legacy_wl, ptr %173, i32 0, i32 6
  %176 = ptrtoint ptr %vif.i45.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %vif.i45.i, align 4
  %call.i46.i = call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %175, ptr noundef %177, i32 noundef 0, i32 noundef %conv100.i.i, ptr noundef getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @__b43legacy_ratetable, i32 0, i32 3)) #14
  %178 = ptrtoint ptr %plcp.i39.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %plcp.i39.i, align 4
  %180 = call i32 @llvm.bswap.i32(i32 %179) #14
  %conv5.i47.i = trunc i32 %180 to i16
  %181 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %write32.i.i.i50.i.i48.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %184, i32 0, i32 5
  %185 = ptrtoint ptr %write32.i.i.i50.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write32.i.i.i50.i.i48.i, align 4
  call void %186(ptr noundef %182, i16 noundef zeroext 352, i32 noundef 65748) #14
  %187 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %write16.i.i51.i.i49.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %190, i32 0, i32 4
  %191 = ptrtoint ptr %write16.i.i51.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %write16.i.i51.i.i49.i, align 4
  call void %192(ptr noundef %188, i16 noundef zeroext 356, i16 noundef zeroext %conv5.i47.i) #14
  %shr.i50.i = lshr i32 %180, 16
  %conv9.i51.i = trunc i32 %shr.i50.i to i16
  %193 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 4
  %write32.i.i.i50.i36.i52.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %196, i32 0, i32 5
  %197 = ptrtoint ptr %write32.i.i.i50.i36.i52.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %write32.i.i.i50.i36.i52.i, align 4
  call void %198(ptr noundef %194, i16 noundef zeroext 352, i32 noundef 65748) #14
  %199 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %write16.i.i51.i37.i53.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %write16.i.i51.i37.i53.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %write16.i.i51.i37.i53.i, align 4
  call void %204(ptr noundef %200, i16 noundef zeroext 358, i16 noundef zeroext %conv9.i51.i) #14
  %205 = call i16 @llvm.bswap.i16(i16 %call.i46.i) #14
  %206 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %207, align 4
  %write32.i.i.i50.i54.i54.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %209, i32 0, i32 5
  %210 = ptrtoint ptr %write32.i.i.i50.i54.i54.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write32.i.i.i50.i54.i54.i, align 4
  call void %211(ptr noundef %207, i16 noundef zeroext 352, i32 noundef 65749) #14
  %212 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %write16.i.i51.i55.i55.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %215, i32 0, i32 4
  %216 = ptrtoint ptr %write16.i.i51.i55.i55.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %write16.i.i51.i55.i55.i, align 4
  call void %217(ptr noundef %213, i16 noundef zeroext 358, i16 noundef zeroext %205) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plcp.i39.i) #14
  %218 = call i16 @llvm.umin.i16(i16 %dest_pos.0.lcssa.i.i, i16 506) #14
  %219 = load i16, ptr getelementptr inbounds ([12 x %struct.ieee80211_rate], ptr @__b43legacy_ratetable, i32 0, i32 3, i32 2), align 2
  %conv7.i = trunc i16 %219 to i8
  call fastcc void @b43legacy_write_template_common(ptr noundef %dev, ptr noundef nonnull %call9.i.i.i, i16 noundef zeroext %218, i16 noundef zeroext 616, i16 noundef zeroext 74, i8 noundef zeroext %conv7.i) #14
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #14
  br label %b43legacy_write_probe_resp_template.exit

b43legacy_write_probe_resp_template.exit:         ; preds = %b43legacy_generate_probe_resp.exit.i, %if.end8.i.i.i.b43legacy_write_probe_resp_template.exit_crit_edge, %do.end41.i.i
  %220 = ptrtoint ptr %beacon0_uploaded to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 1, ptr %beacon0_uploaded, align 4
  br label %cleanup

cleanup:                                          ; preds = %b43legacy_write_probe_resp_template.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_write_beacon_template(ptr nocapture noundef readonly %dev, i16 noundef zeroext %ram_offset, i16 noundef zeroext %shm_size_offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %current_beacon = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %current_beacon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_beacon, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len5, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 506)
  %9 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp slt i8 %11, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b49.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge, label %if.then.i, !prof !303

land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ieee80211_get_tx_rate.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 2737, i32 noundef 9, ptr noundef null) #14
  br label %ieee80211_get_tx_rate.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy.i, align 8
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %arrayidx40.i = getelementptr %struct.wiphy, ptr %15, i32 0, i32 53, i32 %bf.lshr.i
  %17 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx40.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bitrates.i, align 4
  %idxprom51.i = zext i8 %11 to i32
  %arrayidx44.i = getelementptr %struct.ieee80211_rate, ptr %20, i32 %idxprom51.i
  br label %ieee80211_get_tx_rate.exit

ieee80211_get_tx_rate.exit:                       ; preds = %if.end39.i, %if.then.i, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx44.i, %if.end39.i ], [ null, %if.then.i ], [ null, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge ]
  %hw_value = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i, i32 0, i32 2
  %21 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hw_value, align 2
  %conv8 = trunc i32 %8 to i16
  %conv9 = trunc i16 %22 to i8
  tail call fastcc void @b43legacy_write_template_common(ptr noundef %dev, ptr noundef %5, i16 noundef zeroext %conv8, i16 noundef zeroext %ram_offset, i16 noundef zeroext %shm_size_offset, i8 noundef zeroext %conv9)
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %write32.i.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %write32.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32.i.i.i51.i, align 4
  tail call void %28(ptr noundef %24, i16 noundef zeroext 352, i32 noundef 65557) #14
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %read16.i.i52.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %read16.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read16.i.i52.i, align 4
  %call.i.i53.i = tail call zeroext i16 %34(ptr noundef %30, i16 noundef zeroext 356) #14
  %35 = and i16 %call.i.i53.i, -980
  %36 = or i16 %35, 768
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %write32.i.i.i50.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %write32.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32.i.i.i50.i, align 4
  tail call void %42(ptr noundef %38, i16 noundef zeroext 352, i32 noundef 65557) #14
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write16.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %write16.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write16.i.i51.i, align 4
  tail call void %48(ptr noundef %44, i16 noundef zeroext 356, i16 noundef zeroext %36) #14
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 6, i32 1, i32 2
  %sub = add nsw i32 %8, -36
  %sub26 = add nsw i32 %8, -38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26)
  %cmp27116.not = icmp eq i32 %sub26, 0
  br i1 %cmp27116.not, label %ieee80211_get_tx_rate.exit.if.then60_crit_edge, label %ieee80211_get_tx_rate.exit.for.body_crit_edge

ieee80211_get_tx_rate.exit.for.body_crit_edge:    ; preds = %ieee80211_get_tx_rate.exit
  br label %for.body

ieee80211_get_tx_rate.exit.if.then60_crit_edge:   ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then60

for.body:                                         ; preds = %cleanup58.for.body_crit_edge, %ieee80211_get_tx_rate.exit.for.body_crit_edge
  %i.0117 = phi i32 [ %add35, %cleanup58.for.body_crit_edge ], [ 0, %ieee80211_get_tx_rate.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %variable, i32 %i.0117
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx, align 1
  %add = add nuw i32 %i.0117, 1
  %arrayidx29 = getelementptr i8, ptr %variable, i32 %add
  %51 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %50)
  %cmp31 = icmp eq i8 %50, 5
  %conv33 = zext i8 %52 to i32
  %add34 = add i32 %i.0117, 2
  %add35 = add i32 %add34, %conv33
  br i1 %cmp31, label %if.then, label %cleanup58

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add35)
  %cmp36 = icmp ult i32 %sub, %add35
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %52)
  %cmp40 = icmp ult i8 %52, 4
  %or.cond = select i1 %cmp36, i1 true, i1 %cmp40
  br i1 %or.cond, label %if.then.if.then60_crit_edge, label %cleanup58.thread.thread

if.then.if.then60_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then60

cleanup58.thread.thread:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %53 = trunc i32 %i.0117 to i16
  %conv49 = add i16 %53, 42
  %add50 = add i32 %i.0117, 3
  %arrayidx51 = getelementptr i8, ptr %variable, i32 %add50
  %54 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %55 to i16
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %61(ptr noundef %57, i16 noundef zeroext 352, i32 noundef 65543) #14
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %67(ptr noundef %63, i16 noundef zeroext 358, i16 noundef zeroext %conv49) #14
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %write32.i.i.i.i108 = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %write32.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write32.i.i.i.i108, align 4
  tail call void %73(ptr noundef %69, i16 noundef zeroext 352, i32 noundef 65540) #14
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %write16.i.i.i109 = getelementptr inbounds %struct.ssb_bus_ops, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %write16.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write16.i.i.i109, align 4
  tail call void %79(ptr noundef %75, i16 noundef zeroext 358, i16 noundef zeroext %conv52) #14
  %80 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %81, ptr noundef nonnull @.str.60)
  br label %if.end63

cleanup58:                                        ; preds = %for.body
  %cmp27 = icmp ult i32 %add35, %sub26
  br i1 %cmp27, label %cleanup58.for.body_crit_edge, label %cleanup58.if.then60_crit_edge

cleanup58.if.then60_crit_edge:                    ; preds = %cleanup58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then60

cleanup58.for.body_crit_edge:                     ; preds = %cleanup58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.then60:                                        ; preds = %cleanup58.if.then60_crit_edge, %if.then.if.then60_crit_edge, %ieee80211_get_tx_rate.exit.if.then60_crit_edge
  %82 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacywarn(ptr noundef %83, ptr noundef nonnull @.str.59)
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %cleanup58.thread.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_write_template_common(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, i16 noundef zeroext %size, i16 noundef zeroext %ram_offset, i16 noundef zeroext %shm_size_offset, i8 noundef zeroext %rate) unnamed_addr #0 align 64 {
entry:
  %plcp = alloca %struct.b43legacy_plcp_hdr4, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plcp) #14
  %0 = ptrtoint ptr %plcp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %plcp, align 4
  %conv = zext i16 %size to i32
  %add = add i16 %size, 4
  call void @b43legacy_generate_plcp_hdr(ptr noundef nonnull %plcp, i16 noundef zeroext %add, i8 noundef zeroext %rate) #14
  %1 = ptrtoint ptr %plcp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %plcp, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %conv.i = zext i16 %ram_offset to i32
  %rem.i = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %entry.b43legacy_ram_write.exit_crit_edge, label %do.end.i, !prof !303

entry.b43legacy_ram_write.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_ram_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 246, i32 noundef 9, ptr noundef null) #14
  br label %b43legacy_ram_write.exit

b43legacy_ram_write.exit:                         ; preds = %do.end.i, %entry.b43legacy_ram_write.exit_crit_edge
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = call i32 %9(ptr noundef %5, i16 noundef zeroext 288) #14
  %and.i = and i32 %call.i.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool20.not.i, i32 %3, i32 %2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i.i, align 4
  call void %15(ptr noundef %11, i16 noundef zeroext 304, i32 noundef %conv.i) #14
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %write32.i.i29.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %write32.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32.i.i29.i, align 4
  call void %21(ptr noundef %17, i16 noundef zeroext 308, i32 noundef %spec.select.i) #14
  %add3 = add i16 %ram_offset, 4
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 1
  %conv5 = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv5, 16
  %arrayidx6 = getelementptr i8, ptr %data, i32 1
  %24 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %25 to i32
  %shl8 = shl nuw i32 %conv7, 24
  %or = or i32 %shl8, %shl
  %conv.i86 = zext i16 %add3 to i32
  %rem.i87 = and i32 %conv.i86, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i87)
  %cmp.not.i88 = icmp eq i32 %rem.i87, 0
  br i1 %cmp.not.i88, label %b43legacy_ram_write.exit.b43legacy_ram_write.exit97_crit_edge, label %do.end.i89, !prof !303

b43legacy_ram_write.exit.b43legacy_ram_write.exit97_crit_edge: ; preds = %b43legacy_ram_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_ram_write.exit97

do.end.i89:                                       ; preds = %b43legacy_ram_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 246, i32 noundef 9, ptr noundef null) #14
  br label %b43legacy_ram_write.exit97

b43legacy_ram_write.exit97:                       ; preds = %do.end.i89, %b43legacy_ram_write.exit.b43legacy_ram_write.exit97_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %read32.i.i.i90 = getelementptr inbounds %struct.ssb_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read32.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i.i90, align 4
  %call.i.i.i91 = call i32 %31(ptr noundef %27, i16 noundef zeroext 288) #14
  %and.i92 = and i32 %call.i.i.i91, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool20.not.i93 = icmp eq i32 %and.i92, 0
  %32 = call i32 @llvm.bswap.i32(i32 %or) #14
  %spec.select.i94 = select i1 %tobool20.not.i93, i32 %or, i32 %32
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %write32.i.i.i95 = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %write32.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write32.i.i.i95, align 4
  call void %38(ptr noundef %34, i16 noundef zeroext 304, i32 noundef %conv.i86) #14
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %write32.i.i29.i96 = getelementptr inbounds %struct.ssb_bus_ops, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %write32.i.i29.i96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write32.i.i29.i96, align 4
  call void %44(ptr noundef %40, i16 noundef zeroext 308, i32 noundef %spec.select.i94) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %size)
  %cmp112 = icmp ugt i16 %size, 2
  br i1 %cmp112, label %for.body.lr.ph, label %b43legacy_ram_write.exit97.for.end_crit_edge

b43legacy_ram_write.exit97.for.end_crit_edge:     ; preds = %b43legacy_ram_write.exit97
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %b43legacy_ram_write.exit97
  %45 = add i16 %ram_offset, 6
  br label %for.body

for.body:                                         ; preds = %b43legacy_ram_write.exit109.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 2, %for.body.lr.ph ], [ %add51, %b43legacy_ram_write.exit109.for.body_crit_edge ]
  %arrayidx15 = getelementptr i8, ptr %data, i32 %i.0113
  %46 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %47 to i32
  %add17 = or i32 %i.0113, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %conv)
  %cmp19 = icmp ult i32 %add17, %conv
  br i1 %cmp19, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx22 = getelementptr i8, ptr %data, i32 %add17
  %48 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %49 to i32
  %shl24 = shl nuw nsw i32 %conv23, 8
  %or25 = or i32 %shl24, %conv16
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %tmp.0 = phi i32 [ %or25, %if.then ], [ %conv16, %for.body.if.end_crit_edge ]
  %add26 = add nuw nsw i32 %i.0113, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %conv)
  %cmp28 = icmp ult i32 %add26, %conv
  br i1 %cmp28, label %if.then30, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx32 = getelementptr i8, ptr %data, i32 %add26
  %50 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %51 to i32
  %shl34 = shl nuw nsw i32 %conv33, 16
  %or35 = or i32 %shl34, %tmp.0
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end.if.end36_crit_edge
  %tmp.1 = phi i32 [ %or35, %if.then30 ], [ %tmp.0, %if.end.if.end36_crit_edge ]
  %add37 = add nuw nsw i32 %i.0113, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %conv)
  %cmp39 = icmp ult i32 %add37, %conv
  br i1 %cmp39, label %if.then41, label %if.end36.if.end47_crit_edge

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx43 = getelementptr i8, ptr %data, i32 %add37
  %52 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %53 to i32
  %shl45 = shl nuw i32 %conv44, 24
  %or46 = or i32 %shl45, %tmp.1
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end36.if.end47_crit_edge
  %tmp.2 = phi i32 [ %or46, %if.then41 ], [ %tmp.1, %if.end36.if.end47_crit_edge ]
  %54 = trunc i32 %i.0113 to i16
  %conv50 = add i16 %45, %54
  %conv.i98 = zext i16 %conv50 to i32
  %rem.i99 = and i32 %conv.i98, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i99)
  %cmp.not.i100 = icmp eq i32 %rem.i99, 0
  br i1 %cmp.not.i100, label %if.end47.b43legacy_ram_write.exit109_crit_edge, label %do.end.i101, !prof !303

if.end47.b43legacy_ram_write.exit109_crit_edge:   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %b43legacy_ram_write.exit109

do.end.i101:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 246, i32 noundef 9, ptr noundef null) #14
  br label %b43legacy_ram_write.exit109

b43legacy_ram_write.exit109:                      ; preds = %do.end.i101, %if.end47.b43legacy_ram_write.exit109_crit_edge
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %read32.i.i.i102 = getelementptr inbounds %struct.ssb_bus_ops, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %read32.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read32.i.i.i102, align 4
  %call.i.i.i103 = call i32 %60(ptr noundef %56, i16 noundef zeroext 288) #14
  %and.i104 = and i32 %call.i.i.i103, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool20.not.i105 = icmp eq i32 %and.i104, 0
  %61 = call i32 @llvm.bswap.i32(i32 %tmp.2) #14
  %spec.select.i106 = select i1 %tobool20.not.i105, i32 %tmp.2, i32 %61
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %write32.i.i.i107 = getelementptr inbounds %struct.ssb_bus_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %write32.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i.i.i107, align 4
  call void %67(ptr noundef %63, i16 noundef zeroext 304, i32 noundef %conv.i98) #14
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %write32.i.i29.i108 = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %write32.i.i29.i108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write32.i.i29.i108, align 4
  call void %73(ptr noundef %69, i16 noundef zeroext 308, i32 noundef %spec.select.i106) #14
  %add51 = add nuw nsw i32 %i.0113, 4
  %cmp = icmp ult i32 %add51, %conv
  br i1 %cmp, label %b43legacy_ram_write.exit109.for.body_crit_edge, label %b43legacy_ram_write.exit109.for.end_crit_edge

b43legacy_ram_write.exit109.for.end_crit_edge:    ; preds = %b43legacy_ram_write.exit109
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

b43legacy_ram_write.exit109.for.body_crit_edge:   ; preds = %b43legacy_ram_write.exit109
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %b43legacy_ram_write.exit109.for.end_crit_edge, %b43legacy_ram_write.exit97.for.end_crit_edge
  %conv2.i = zext i16 %shm_size_offset to i32
  %and.i110 = and i32 %conv2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %cmp3.not.i = icmp eq i32 %and.i110, 0
  br i1 %cmp3.not.i, label %for.end.if.end.i_crit_edge, label %do.end.i111, !prof !303

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i111:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 348, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i111, %for.end.if.end.i_crit_edge
  %add53 = add i16 %size, 6
  %and25.i = and i32 %conv2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %74 = lshr i16 %shm_size_offset, 2
  %conv1.i48.i = zext i16 %74 to i32
  %or.i49.i = or i32 %conv1.i48.i, 65536
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %write32.i.i.i50.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %write32.i.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write32.i.i.i50.i, align 4
  call void %80(ptr noundef %76, i16 noundef zeroext 352, i32 noundef %or.i49.i) #14
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %write16.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %write16.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write16.i.i51.i, align 4
  %. = select i1 %tobool26.not.i, i16 356, i16 358
  call void %86(ptr noundef %82, i16 noundef zeroext %., i16 noundef zeroext %add53) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plcp) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_generate_plcp_hdr(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_generic_frame_duration(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_pio_tx(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_dma_tx(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_interrupt_tasklet(ptr noundef %t) #0 align 64 {
entry:
  %stat.i = alloca %struct.b43legacy_txstatus, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -2188
  %wl = getelementptr i8, ptr %t, i32 -2184
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #14
  %__init_status = getelementptr i8, ptr %t, i32 -2180
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %2 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp slt i32 %3, 1
  br i1 %cmp7, label %do.end18, label %entry.if.end_crit_edge, !prof !305

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1290, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end18, %entry.if.end_crit_edge
  %irq_reason = getelementptr i8, ptr %t, i32 -72
  %4 = ptrtoint ptr %irq_reason to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_reason, align 4
  %dma_reason33 = getelementptr i8, ptr %t, i32 -68
  %6 = ptrtoint ptr %dma_reason33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %dma_reason.sroa.0.0.copyload = load i32, ptr %dma_reason33, align 4
  %dma_reason.sroa.7.0.dma_reason33.sroa_idx = getelementptr i8, ptr %t, i32 -64
  %7 = ptrtoint ptr %dma_reason.sroa.7.0.dma_reason33.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %dma_reason.sroa.7.0.copyload = load i32, ptr %dma_reason.sroa.7.0.dma_reason33.sroa_idx, align 4
  %dma_reason.sroa.11.0.dma_reason33.sroa_idx = getelementptr i8, ptr %t, i32 -60
  %8 = ptrtoint ptr %dma_reason.sroa.11.0.dma_reason33.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %dma_reason.sroa.11.0.copyload = load i32, ptr %dma_reason.sroa.11.0.dma_reason33.sroa_idx, align 4
  %dma_reason.sroa.15.0.dma_reason33.sroa_idx = getelementptr i8, ptr %t, i32 -56
  %9 = ptrtoint ptr %dma_reason.sroa.15.0.dma_reason33.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %dma_reason.sroa.15.0.copyload = load i32, ptr %dma_reason.sroa.15.0.dma_reason33.sroa_idx, align 4
  %dma_reason.sroa.19.0.dma_reason33.sroa_idx = getelementptr i8, ptr %t, i32 -52
  %10 = ptrtoint ptr %dma_reason.sroa.19.0.dma_reason33.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %dma_reason.sroa.19.0.copyload = load i32, ptr %dma_reason.sroa.19.0.dma_reason33.sroa_idx, align 4
  %dma_reason.sroa.23.0.dma_reason33.sroa_idx = getelementptr i8, ptr %t, i32 -48
  %11 = ptrtoint ptr %dma_reason.sroa.23.0.dma_reason33.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %dma_reason.sroa.23.0.copyload = load i32, ptr %dma_reason.sroa.23.0.dma_reason33.sroa_idx, align 4
  %or.1 = or i32 %dma_reason.sroa.7.0.copyload, %dma_reason.sroa.0.0.copyload
  %or.2 = or i32 %dma_reason.sroa.11.0.copyload, %or.1
  %or.3 = or i32 %dma_reason.sroa.15.0.copyload, %or.2
  %or.4 = or i32 %dma_reason.sroa.19.0.copyload, %or.3
  %or.5 = or i32 %dma_reason.sroa.23.0.copyload, %or.4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.end.if.end45_crit_edge, label %if.then43, !prof !303

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then43:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %13, ptr noundef nonnull @.str.63)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end.if.end45_crit_edge
  %and46 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end66_crit_edge, label %if.then54, !prof !303

if.end45.if.end66_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then54:                                        ; preds = %if.end45
  %14 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %15, ptr noundef nonnull @.str.64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !319
  %txerr_cnt = getelementptr i8, ptr %t, i32 -1888
  %call.i.i347 = tail call zeroext i1 @__kasan_check_write(ptr noundef %txerr_cnt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr %txerr_cnt, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %txerr_cnt, ptr %txerr_cnt, i32 1, ptr elementtype(i32) %txerr_cnt) #14, !srcloc !321
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then63, label %if.then54.if.end66_crit_edge, !prof !305

if.then54.if.end66_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then63:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %18, ptr noundef nonnull @.str.65)
  tail call void @b43legacy_controller_restart(ptr noundef %add.ptr, ptr noundef nonnull @.str.66)
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.then54.if.end66_crit_edge, %if.end45.if.end66_crit_edge
  %and67 = and i32 %or.5, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end110_crit_edge, label %if.then75, !prof !303

if.end66.if.end110_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

if.then75:                                        ; preds = %if.end66
  %and76 = and i32 %or.5, 56320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end88, label %if.then78

if.then78:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %20, ptr noundef nonnull @.str.67, i32 noundef %dma_reason.sroa.0.0.copyload, i32 noundef %dma_reason.sroa.7.0.copyload, i32 noundef %dma_reason.sroa.11.0.copyload, i32 noundef %dma_reason.sroa.15.0.copyload, i32 noundef %dma_reason.sroa.19.0.copyload, i32 noundef %dma_reason.sroa.23.0.copyload)
  tail call void @b43legacy_controller_restart(ptr noundef %add.ptr, ptr noundef nonnull @.str.68)
  %21 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wl, align 4
  %irq_lock87 = getelementptr inbounds %struct.b43legacy_wl, ptr %22, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock87, i32 noundef %call3) #14
  br label %cleanup

if.end88:                                         ; preds = %if.then75
  %and89 = and i32 %or.5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end88.if.end110_crit_edge, label %if.then91

if.end88.if.end110_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %24, ptr noundef nonnull @.str.69, i32 noundef %dma_reason.sroa.0.0.copyload, i32 noundef %dma_reason.sroa.7.0.copyload, i32 noundef %dma_reason.sroa.11.0.copyload, i32 noundef %dma_reason.sroa.15.0.copyload, i32 noundef %dma_reason.sroa.19.0.copyload, i32 noundef %dma_reason.sroa.23.0.copyload)
  br label %if.end110

if.end110:                                        ; preds = %if.then91, %if.end88.if.end110_crit_edge, %if.end66.if.end110_crit_edge
  %and111 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end110.if.end114_crit_edge, label %if.then113

if.end110.if.end114_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

if.then113:                                       ; preds = %if.end110
  %25 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wl, align 4
  %operating.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %operating.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %operating.i.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i, label %if.then113.if.else.i_crit_edge, label %b43legacy_is_mode.exit.i

if.then113.if.else.i_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

b43legacy_is_mode.exit.i:                         ; preds = %if.then113
  %if_type.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %26, i32 0, i32 9
  %29 = ptrtoint ptr %if_type.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %if_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp.i.not.i = icmp eq i32 %30, 3
  br i1 %cmp.i.not.i, label %b43legacy_is_mode.exit.i.if.end.i_crit_edge, label %b43legacy_is_mode.exit.i.if.else.i_crit_edge

b43legacy_is_mode.exit.i.if.else.i_crit_edge:     ; preds = %b43legacy_is_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

b43legacy_is_mode.exit.i.if.end.i_crit_edge:      ; preds = %b43legacy_is_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.else.i:                                        ; preds = %b43legacy_is_mode.exit.i.if.else.i_crit_edge, %if.then113.if.else.i_crit_edge
  tail call void @b43legacy_power_saving_ctl_bits(ptr noundef %add.ptr, i32 noundef -1, i32 noundef -1) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %b43legacy_is_mode.exit.i.if.end.i_crit_edge
  %31 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wl, align 4
  %operating.i9.i = getelementptr inbounds %struct.b43legacy_wl, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %operating.i9.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %operating.i9.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i10.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i10.i, label %if.end.i.if.end114_crit_edge, label %b43legacy_is_mode.exit15.i

if.end.i.if.end114_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

b43legacy_is_mode.exit15.i:                       ; preds = %if.end.i
  %if_type.i11.i = getelementptr inbounds %struct.b43legacy_wl, ptr %32, i32 0, i32 9
  %35 = ptrtoint ptr %if_type.i11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %if_type.i11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i12.not.i = icmp eq i32 %36, 1
  br i1 %cmp.i12.not.i, label %if.then4.i, label %b43legacy_is_mode.exit15.i.if.end114_crit_edge

b43legacy_is_mode.exit15.i.if.end114_crit_edge:   ; preds = %b43legacy_is_mode.exit15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

if.then4.i:                                       ; preds = %b43legacy_is_mode.exit15.i
  call void @__sanitizer_cov_trace_pc() #16
  %dfq_valid.i = getelementptr i8, ptr %t, i32 -2170
  %37 = ptrtoint ptr %dfq_valid.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %dfq_valid.i, align 2
  br label %if.end114

if.end114:                                        ; preds = %if.then4.i, %b43legacy_is_mode.exit15.i.if.end114_crit_edge, %if.end.i.if.end114_crit_edge, %if.end110.if.end114_crit_edge
  %and115 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end114.if.end118_crit_edge, label %if.then117

if.end114.if.end118_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end118

if.then117:                                       ; preds = %if.end114
  %dfq_valid.i348 = getelementptr i8, ptr %t, i32 -2170
  %38 = ptrtoint ptr %dfq_valid.i348 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dfq_valid.i348, align 2, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %if.then117.if.end118_crit_edge, label %if.then.i

if.then117.if.end118_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end118

if.then.i:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %45(ptr noundef %41, i16 noundef zeroext 292) #14
  %or.i = or i32 %call.i.i.i, 4
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %51(ptr noundef %47, i16 noundef zeroext 292, i32 noundef %or.i) #14
  %52 = ptrtoint ptr %dfq_valid.i348 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %dfq_valid.i348, align 2
  br label %if.end118

if.end118:                                        ; preds = %if.then.i, %if.then117.if.end118_crit_edge, %if.end114.if.end118_crit_edge
  %and119 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end122_crit_edge, label %if.then121

if.end118.if.end122_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @handle_irq_beacon(ptr noundef %add.ptr)
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end118.if.end122_crit_edge
  %and123 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end122.if.end126_crit_edge, label %if.end122.while.cond.i_crit_edge

if.end122.while.cond.i_crit_edge:                 ; preds = %if.end122
  br label %while.cond.i

if.end122.if.end126_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end122.while.cond.i_crit_edge
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %read32.i.i.i350 = getelementptr inbounds %struct.ssb_bus_ops, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %read32.i.i.i350 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read32.i.i.i350, align 4
  %call.i.i.i351 = tail call i32 %58(ptr noundef %54, i16 noundef zeroext 320) #14
  %and.i = and i32 %call.i.i.i351, 8
  %tobool.not.i352 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i352, label %handle_irq_pmq.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

handle_irq_pmq.exit:                              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %64(ptr noundef %60, i16 noundef zeroext 320, i16 noundef zeroext 2) #14
  br label %if.end126

if.end126:                                        ; preds = %handle_irq_pmq.exit, %if.end122.if.end126_crit_edge
  %and131 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end126.if.end134_crit_edge, label %if.then133

if.end126.if.end134_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end134

if.then133:                                       ; preds = %if.end126
  %noisecalc.i = getelementptr i8, ptr %t, i32 -40
  %calculation_running.i = getelementptr i8, ptr %t, i32 -39
  %65 = ptrtoint ptr %calculation_running.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %calculation_running.i, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i353 = icmp eq i8 %66, 0
  br i1 %tobool.not.i353, label %do.end.i, label %if.then133.if.end.i354_crit_edge, !prof !305

if.then133.if.end.i354_crit_edge:                 ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i354

do.end.i:                                         ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 803, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i354

if.end.i354:                                      ; preds = %do.end.i, %if.then133.if.end.i354_crit_edge
  %67 = ptrtoint ptr %noisecalc.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %noisecalc.i, align 4
  %channel.i = getelementptr i8, ptr %t, i32 -1896
  %69 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %70)
  %cmp.not.i = icmp eq i8 %68, %70
  br i1 %cmp.not.i, label %if.end27.i, label %if.end.i354.drop_calculation.i_crit_edge

if.end.i354.drop_calculation.i_crit_edge:         ; preds = %if.end.i354
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop_calculation.i

if.end27.i:                                       ; preds = %if.end.i354
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %write32.i.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %write32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write32.i.i.i.i.i.i, align 4
  tail call void %76(ptr noundef %72, i16 noundef zeroext 352, i32 noundef 65794) #14
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %read16.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %read16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read16.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i16 %82(ptr noundef %78, i16 noundef zeroext 358) #14
  %conv.i.i = zext i16 %call.i.i.i.i.i to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 16
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %write32.i.i.i51.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %write32.i.i.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write32.i.i.i51.i.i.i, align 4
  tail call void %88(ptr noundef %84, i16 noundef zeroext 352, i32 noundef 65794) #14
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %read16.i.i52.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %read16.i.i52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read16.i.i52.i.i.i, align 4
  %call.i.i53.i.i.i = tail call zeroext i16 %94(ptr noundef %90, i16 noundef zeroext 356) #14
  %conv2.i.i = zext i16 %call.i.i53.i.i.i to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %95 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %noise.sroa.0.0.extract.shift.i = lshr i32 %95, 24
  %noise.sroa.13.0.extract.shift.i = lshr i32 %95, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %noise.sroa.0.0.extract.shift.i)
  %cmp29.i = icmp eq i32 %noise.sroa.0.0.extract.shift.i, 127
  br i1 %cmp29.i, label %if.end27.i.generate_new.i_crit_edge, label %lor.lhs.false.i

if.end27.i.generate_new.i_crit_edge:              ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %generate_new.i

lor.lhs.false.i:                                  ; preds = %if.end27.i
  %noise.sroa.8.0.extract.shift.i = lshr i32 %95, 16
  %conv32.i = and i32 %noise.sroa.8.0.extract.shift.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv32.i)
  %cmp33.i = icmp eq i32 %conv32.i, 127
  br i1 %cmp33.i, label %lor.lhs.false.i.generate_new.i_crit_edge, label %lor.lhs.false35.i

lor.lhs.false.i.generate_new.i_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %generate_new.i

lor.lhs.false35.i:                                ; preds = %lor.lhs.false.i
  %conv37.i = and i32 %noise.sroa.13.0.extract.shift.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv37.i)
  %cmp38.i = icmp eq i32 %conv37.i, 127
  br i1 %cmp38.i, label %lor.lhs.false35.i.generate_new.i_crit_edge, label %lor.lhs.false40.i

lor.lhs.false35.i.generate_new.i_crit_edge:       ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %generate_new.i

lor.lhs.false40.i:                                ; preds = %lor.lhs.false35.i
  %conv42.i = and i32 %95, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv42.i)
  %cmp43.i = icmp eq i32 %conv42.i, 127
  br i1 %cmp43.i, label %lor.lhs.false40.i.generate_new.i_crit_edge, label %if.end46.i

lor.lhs.false40.i.generate_new.i_crit_edge:       ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %generate_new.i

if.end46.i:                                       ; preds = %lor.lhs.false40.i
  %nr_samples.i = getelementptr i8, ptr %t, i32 -38
  %96 = ptrtoint ptr %nr_samples.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %nr_samples.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %97)
  %cmp50.i = icmp ugt i8 %97, 7
  br i1 %cmp50.i, label %do.end67.i, label %if.end46.i.if.end73.i_crit_edge, !prof !305

if.end46.i.if.end73.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

do.end67.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 812, i32 noundef 9, ptr noundef null) #14
  br label %if.end73.i

if.end73.i:                                       ; preds = %do.end67.i, %if.end46.i.if.end73.i_crit_edge
  %98 = ptrtoint ptr %nr_samples.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %nr_samples.i, align 2
  %100 = tail call i32 @llvm.umin.i32(i32 %noise.sroa.0.0.extract.shift.i, i32 63) #14
  %101 = tail call i32 @llvm.umin.i32(i32 %conv32.i, i32 63) #14
  %102 = tail call i32 @llvm.umin.i32(i32 %conv37.i, i32 63) #14
  %103 = tail call i32 @llvm.umin.i32(i32 %conv42.i, i32 63) #14
  %arrayidx184.i = getelementptr %struct.b43legacy_wldev, ptr %add.ptr, i32 0, i32 9, i32 38, i32 %100
  %104 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx184.i, align 1
  %idxprom186.i = zext i8 %99 to i32
  %arrayidx187.i = getelementptr %struct.b43legacy_wldev, ptr %add.ptr, i32 0, i32 19, i32 3, i32 %idxprom186.i
  %106 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx187.i, align 1
  %arrayidx192.i = getelementptr %struct.b43legacy_wldev, ptr %add.ptr, i32 0, i32 9, i32 38, i32 %101
  %107 = ptrtoint ptr %arrayidx192.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx192.i, align 1
  %arrayidx197.i = getelementptr %struct.b43legacy_wldev, ptr %add.ptr, i32 0, i32 19, i32 3, i32 %idxprom186.i, i32 1
  %109 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %arrayidx197.i, align 1
  %arrayidx201.i = getelementptr %struct.b43legacy_wldev, ptr %add.ptr, i32 0, i32 9, i32 38, i32 %102
  %110 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx201.i, align 1
  %arrayidx206.i = getelementptr %struct.b43legacy_wldev, ptr %add.ptr, i32 0, i32 19, i32 3, i32 %idxprom186.i, i32 2
  %112 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %arrayidx206.i, align 1
  %arrayidx210.i = getelementptr %struct.b43legacy_wldev, ptr %add.ptr, i32 0, i32 9, i32 38, i32 %103
  %113 = ptrtoint ptr %arrayidx210.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx210.i, align 1
  %arrayidx215.i = getelementptr %struct.b43legacy_wldev, ptr %add.ptr, i32 0, i32 19, i32 3, i32 %idxprom186.i, i32 3
  %115 = ptrtoint ptr %arrayidx215.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx215.i, align 1
  %inc.i = add i8 %99, 1
  %116 = ptrtoint ptr %nr_samples.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %inc.i, ptr %nr_samples.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc.i)
  %cmp221.i = icmp eq i8 %inc.i, 8
  br i1 %cmp221.i, label %for.cond227.preheader.preheader.i, label %if.end73.i.generate_new.i_crit_edge

if.end73.i.generate_new.i_crit_edge:              ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %generate_new.i

for.cond227.preheader.preheader.i:                ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx237.i = getelementptr i8, ptr %t, i32 -37
  %117 = ptrtoint ptr %arrayidx237.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx237.i, align 1
  %conv238.i = sext i8 %118 to i16
  %arrayidx237.1.i = getelementptr i8, ptr %t, i32 -36
  %119 = ptrtoint ptr %arrayidx237.1.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx237.1.i, align 1
  %conv238.1.i = sext i8 %120 to i16
  %add.1.i = add nsw i16 %conv238.1.i, %conv238.i
  %arrayidx237.2.i = getelementptr i8, ptr %t, i32 -35
  %121 = ptrtoint ptr %arrayidx237.2.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx237.2.i, align 1
  %conv238.2.i = sext i8 %122 to i16
  %add.2.i = add nsw i16 %add.1.i, %conv238.2.i
  %arrayidx237.3.i = getelementptr i8, ptr %t, i32 -34
  %123 = ptrtoint ptr %arrayidx237.3.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx237.3.i, align 1
  %conv238.3.i = sext i8 %124 to i16
  %add.3.i = add nsw i16 %add.2.i, %conv238.3.i
  %arrayidx237.1344.i = getelementptr i8, ptr %t, i32 -33
  %125 = ptrtoint ptr %arrayidx237.1344.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx237.1344.i, align 1
  %conv238.1345.i = sext i8 %126 to i16
  %add.1346.i = add nsw i16 %add.3.i, %conv238.1345.i
  %arrayidx237.1.1.i = getelementptr i8, ptr %t, i32 -32
  %127 = ptrtoint ptr %arrayidx237.1.1.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx237.1.1.i, align 1
  %conv238.1.1.i = sext i8 %128 to i16
  %add.1.1.i = add nsw i16 %add.1346.i, %conv238.1.1.i
  %arrayidx237.2.1.i = getelementptr i8, ptr %t, i32 -31
  %129 = ptrtoint ptr %arrayidx237.2.1.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx237.2.1.i, align 1
  %conv238.2.1.i = sext i8 %130 to i16
  %add.2.1.i = add nsw i16 %add.1.1.i, %conv238.2.1.i
  %arrayidx237.3.1.i = getelementptr i8, ptr %t, i32 -30
  %131 = ptrtoint ptr %arrayidx237.3.1.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx237.3.1.i, align 1
  %conv238.3.1.i = sext i8 %132 to i16
  %add.3.1.i = add nsw i16 %add.2.1.i, %conv238.3.1.i
  %arrayidx237.2347.i = getelementptr i8, ptr %t, i32 -29
  %133 = ptrtoint ptr %arrayidx237.2347.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx237.2347.i, align 1
  %conv238.2348.i = sext i8 %134 to i16
  %add.2349.i = add nsw i16 %add.3.1.i, %conv238.2348.i
  %arrayidx237.1.2.i = getelementptr i8, ptr %t, i32 -28
  %135 = ptrtoint ptr %arrayidx237.1.2.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx237.1.2.i, align 1
  %conv238.1.2.i = sext i8 %136 to i16
  %add.1.2.i = add nsw i16 %add.2349.i, %conv238.1.2.i
  %arrayidx237.2.2.i = getelementptr i8, ptr %t, i32 -27
  %137 = ptrtoint ptr %arrayidx237.2.2.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx237.2.2.i, align 1
  %conv238.2.2.i = sext i8 %138 to i16
  %add.2.2.i = add nsw i16 %add.1.2.i, %conv238.2.2.i
  %arrayidx237.3.2.i = getelementptr i8, ptr %t, i32 -26
  %139 = ptrtoint ptr %arrayidx237.3.2.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx237.3.2.i, align 1
  %conv238.3.2.i = sext i8 %140 to i16
  %add.3.2.i = add nsw i16 %add.2.2.i, %conv238.3.2.i
  %arrayidx237.3350.i = getelementptr i8, ptr %t, i32 -25
  %141 = ptrtoint ptr %arrayidx237.3350.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx237.3350.i, align 1
  %conv238.3351.i = sext i8 %142 to i16
  %add.3352.i = add nsw i16 %add.3.2.i, %conv238.3351.i
  %arrayidx237.1.3.i = getelementptr i8, ptr %t, i32 -24
  %143 = ptrtoint ptr %arrayidx237.1.3.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx237.1.3.i, align 1
  %conv238.1.3.i = sext i8 %144 to i16
  %add.1.3.i = add nsw i16 %add.3352.i, %conv238.1.3.i
  %arrayidx237.2.3.i = getelementptr i8, ptr %t, i32 -23
  %145 = ptrtoint ptr %arrayidx237.2.3.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx237.2.3.i, align 1
  %conv238.2.3.i = sext i8 %146 to i16
  %add.2.3.i = add nsw i16 %add.1.3.i, %conv238.2.3.i
  %arrayidx237.3.3.i = getelementptr i8, ptr %t, i32 -22
  %147 = ptrtoint ptr %arrayidx237.3.3.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx237.3.3.i, align 1
  %conv238.3.3.i = sext i8 %148 to i16
  %add.3.3.i = add nsw i16 %add.2.3.i, %conv238.3.3.i
  %arrayidx237.4.i = getelementptr i8, ptr %t, i32 -21
  %149 = ptrtoint ptr %arrayidx237.4.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx237.4.i, align 1
  %conv238.4.i = sext i8 %150 to i16
  %add.4.i = add nsw i16 %add.3.3.i, %conv238.4.i
  %arrayidx237.1.4.i = getelementptr i8, ptr %t, i32 -20
  %151 = ptrtoint ptr %arrayidx237.1.4.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx237.1.4.i, align 1
  %conv238.1.4.i = sext i8 %152 to i16
  %add.1.4.i = add nsw i16 %add.4.i, %conv238.1.4.i
  %arrayidx237.2.4.i = getelementptr i8, ptr %t, i32 -19
  %153 = ptrtoint ptr %arrayidx237.2.4.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx237.2.4.i, align 1
  %conv238.2.4.i = sext i8 %154 to i16
  %add.2.4.i = add nsw i16 %add.1.4.i, %conv238.2.4.i
  %arrayidx237.3.4.i = getelementptr i8, ptr %t, i32 -18
  %155 = ptrtoint ptr %arrayidx237.3.4.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx237.3.4.i, align 1
  %conv238.3.4.i = sext i8 %156 to i16
  %add.3.4.i = add nsw i16 %add.2.4.i, %conv238.3.4.i
  %arrayidx237.5.i = getelementptr i8, ptr %t, i32 -17
  %157 = ptrtoint ptr %arrayidx237.5.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx237.5.i, align 1
  %conv238.5.i = sext i8 %158 to i16
  %add.5.i = add nsw i16 %add.3.4.i, %conv238.5.i
  %arrayidx237.1.5.i = getelementptr i8, ptr %t, i32 -16
  %159 = ptrtoint ptr %arrayidx237.1.5.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx237.1.5.i, align 1
  %conv238.1.5.i = sext i8 %160 to i16
  %add.1.5.i = add nsw i16 %add.5.i, %conv238.1.5.i
  %arrayidx237.2.5.i = getelementptr i8, ptr %t, i32 -15
  %161 = ptrtoint ptr %arrayidx237.2.5.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx237.2.5.i, align 1
  %conv238.2.5.i = sext i8 %162 to i16
  %add.2.5.i = add nsw i16 %add.1.5.i, %conv238.2.5.i
  %arrayidx237.3.5.i = getelementptr i8, ptr %t, i32 -14
  %163 = ptrtoint ptr %arrayidx237.3.5.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx237.3.5.i, align 1
  %conv238.3.5.i = sext i8 %164 to i16
  %add.3.5.i = add nsw i16 %add.2.5.i, %conv238.3.5.i
  %arrayidx237.6.i = getelementptr i8, ptr %t, i32 -13
  %165 = ptrtoint ptr %arrayidx237.6.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx237.6.i, align 1
  %conv238.6.i = sext i8 %166 to i16
  %add.6.i = add nsw i16 %add.3.5.i, %conv238.6.i
  %arrayidx237.1.6.i = getelementptr i8, ptr %t, i32 -12
  %167 = ptrtoint ptr %arrayidx237.1.6.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx237.1.6.i, align 1
  %conv238.1.6.i = sext i8 %168 to i16
  %add.1.6.i = add nsw i16 %add.6.i, %conv238.1.6.i
  %arrayidx237.2.6.i = getelementptr i8, ptr %t, i32 -11
  %169 = ptrtoint ptr %arrayidx237.2.6.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx237.2.6.i, align 1
  %conv238.2.6.i = sext i8 %170 to i16
  %add.2.6.i = add nsw i16 %add.1.6.i, %conv238.2.6.i
  %arrayidx237.3.6.i = getelementptr i8, ptr %t, i32 -10
  %171 = ptrtoint ptr %arrayidx237.3.6.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx237.3.6.i, align 1
  %conv238.3.6.i = sext i8 %172 to i16
  %add.3.6.i = add nsw i16 %add.2.6.i, %conv238.3.6.i
  %arrayidx237.7.i = getelementptr i8, ptr %t, i32 -9
  %173 = ptrtoint ptr %arrayidx237.7.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx237.7.i, align 1
  %conv238.7.i = sext i8 %174 to i16
  %add.7.i = add nsw i16 %add.3.6.i, %conv238.7.i
  %arrayidx237.1.7.i = getelementptr i8, ptr %t, i32 -8
  %175 = ptrtoint ptr %arrayidx237.1.7.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx237.1.7.i, align 1
  %conv238.1.7.i = sext i8 %176 to i16
  %add.1.7.i = add nsw i16 %add.7.i, %conv238.1.7.i
  %arrayidx237.2.7.i = getelementptr i8, ptr %t, i32 -7
  %177 = ptrtoint ptr %arrayidx237.2.7.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx237.2.7.i, align 1
  %conv238.2.7.i = sext i8 %178 to i16
  %add.2.7.i = add nsw i16 %add.1.7.i, %conv238.2.7.i
  %arrayidx237.3.7.i = getelementptr i8, ptr %t, i32 -6
  %179 = ptrtoint ptr %arrayidx237.3.7.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx237.3.7.i, align 1
  %conv238.3.7.i = sext i8 %180 to i16
  %add.3.7.i = add nsw i16 %add.2.7.i, %conv238.3.7.i
  %div353.i = sdiv i16 %add.3.7.i, 32
  %mul.i = mul nsw i16 %div353.i, 125
  %add243.i = add nsw i16 %mul.i, 64
  %div244354.i = sdiv i16 %add243.i, 128
  %div244.sext.i = trunc i16 %div244354.i to i8
  %181 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %add.ptr, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %write32.i.i.i51.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %184, i32 0, i32 5
  %185 = ptrtoint ptr %write32.i.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write32.i.i.i51.i.i, align 4
  tail call void %186(ptr noundef %182, i16 noundef zeroext 352, i32 noundef 65795) #14
  %187 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %add.ptr, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %read16.i.i52.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %read16.i.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read16.i.i52.i.i, align 4
  %call.i.i53.i.i = tail call zeroext i16 %192(ptr noundef %188, i16 noundef zeroext 356) #14
  %193 = lshr i16 %call.i.i53.i.i, 7
  %194 = and i16 %193, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %194)
  %cmp250.i = icmp ugt i16 %194, 7
  %average.2.v.i = select i1 %cmp250.i, i8 2, i8 -25
  %average.2.i = add i8 %average.2.v.i, %div244.sext.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %194)
  %cmp256.i = icmp eq i16 %194, 8
  %average.3.v.i = select i1 %cmp256.i, i8 -72, i8 -48
  %average.3.i = add i8 %average.2.i, %average.3.v.i
  %stats.i = getelementptr i8, ptr %t, i32 -1844
  %195 = ptrtoint ptr %stats.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %average.3.i, ptr %stats.i, align 4
  br label %drop_calculation.i

drop_calculation.i:                               ; preds = %for.cond227.preheader.preheader.i, %if.end.i354.drop_calculation.i_crit_edge
  %196 = ptrtoint ptr %calculation_running.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %calculation_running.i, align 1
  br label %if.end134

generate_new.i:                                   ; preds = %if.end73.i.generate_new.i_crit_edge, %lor.lhs.false40.i.generate_new.i_crit_edge, %lor.lhs.false35.i.generate_new.i_crit_edge, %lor.lhs.false.i.generate_new.i_crit_edge, %if.end27.i.generate_new.i_crit_edge
  tail call fastcc void @b43legacy_generate_noise_sample(ptr noundef %add.ptr) #14
  br label %if.end134

if.end134:                                        ; preds = %generate_new.i, %drop_calculation.i, %if.end126.if.end134_crit_edge
  %and136 = and i32 %dma_reason.sroa.0.0.copyload, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end134.if.end143_crit_edge, label %if.then138

if.end134.if.end143_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

if.then138:                                       ; preds = %if.end134
  %__using_pio.i = getelementptr i8, ptr %t, i32 -2172
  %197 = ptrtoint ptr %__using_pio.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %__using_pio.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool140.not = icmp eq i8 %198, 0
  br i1 %tobool140.not, label %if.else, label %if.then141

if.then141:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #16
  %199 = getelementptr i8, ptr %t, i32 -1880
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  tail call void @b43legacy_pio_rx(ptr noundef %201) #14
  br label %if.end143

if.else:                                          ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #16
  %rx_ring0 = getelementptr i8, ptr %t, i32 -1856
  %202 = ptrtoint ptr %rx_ring0 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rx_ring0, align 4
  tail call void @b43legacy_dma_rx(ptr noundef %203) #14
  br label %if.end143

if.end143:                                        ; preds = %if.else, %if.then141, %if.end134.if.end143_crit_edge
  %and146 = and i32 %dma_reason.sroa.7.0.copyload, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end143.if.end169_crit_edge, label %do.end163, !prof !303

if.end143.if.end169_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end169

do.end163:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1356, i32 noundef 9, ptr noundef null) #14
  br label %if.end169

if.end169:                                        ; preds = %do.end163, %if.end143.if.end169_crit_edge
  %and179 = and i32 %dma_reason.sroa.11.0.copyload, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end169.if.end202_crit_edge, label %do.end196, !prof !303

if.end169.if.end202_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end202

do.end196:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1357, i32 noundef 9, ptr noundef null) #14
  br label %if.end202

if.end202:                                        ; preds = %do.end196, %if.end169.if.end202_crit_edge
  %and211 = and i32 %dma_reason.sroa.15.0.copyload, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.end202.if.end219_crit_edge, label %if.then213

if.end202.if.end219_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end219

if.then213:                                       ; preds = %if.end202
  %__using_pio.i355 = getelementptr i8, ptr %t, i32 -2172
  %204 = ptrtoint ptr %__using_pio.i355 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %__using_pio.i355, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool215.not = icmp eq i8 %205, 0
  br i1 %tobool215.not, label %if.else217, label %if.then216

if.then216:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #16
  %queue3 = getelementptr i8, ptr %t, i32 -1868
  %206 = ptrtoint ptr %queue3 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %queue3, align 4
  tail call void @b43legacy_pio_rx(ptr noundef %207) #14
  br label %if.end219

if.else217:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #16
  %rx_ring3 = getelementptr i8, ptr %t, i32 -1852
  %208 = ptrtoint ptr %rx_ring3 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %rx_ring3, align 4
  tail call void @b43legacy_dma_rx(ptr noundef %209) #14
  br label %if.end219

if.end219:                                        ; preds = %if.else217, %if.then216, %if.end202.if.end219_crit_edge
  %and222 = and i32 %dma_reason.sroa.19.0.copyload, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %if.end219.if.end245_crit_edge, label %do.end239, !prof !303

if.end219.if.end245_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end245

do.end239:                                        ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1364, i32 noundef 9, ptr noundef null) #14
  br label %if.end245

if.end245:                                        ; preds = %do.end239, %if.end219.if.end245_crit_edge
  %and255 = and i32 %dma_reason.sroa.23.0.copyload, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  br i1 %tobool256.not, label %if.end245.if.end278_crit_edge, label %do.end272, !prof !303

if.end245.if.end278_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end278

do.end272:                                        ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1365, i32 noundef 9, ptr noundef null) #14
  br label %if.end278

if.end278:                                        ; preds = %do.end272, %if.end245.if.end278_crit_edge
  %and286 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool287.not = icmp eq i32 %and286, 0
  br i1 %tobool287.not, label %if.end278.if.end289_crit_edge, label %if.then288

if.end278.if.end289_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end289

if.then288:                                       ; preds = %if.end278
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stat.i) #14
  %210 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %stat.i, i32 0, i32 1
  %211 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %stat.i, i32 0, i32 2
  %212 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %stat.i, i32 0, i32 3
  %213 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %stat.i, i32 0, i32 4
  %214 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %stat.i, i32 0, i32 5
  %215 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %stat.i, i32 0, i32 6
  %216 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %stat.i, i32 0, i32 7
  %217 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %stat.i, i32 0, i32 8
  %218 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %stat.i, i32 0, i32 9
  %219 = call ptr @memset(ptr %stat.i, i32 255, i32 12)
  %220 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %add.ptr, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %read32.i.i63.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %read32.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %read32.i.i63.i, align 4
  %call.i.i64.i = tail call i32 %225(ptr noundef %221, i16 noundef zeroext 368) #14
  %and65.i = and i32 %call.i.i64.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool.not66.i = icmp eq i32 %and65.i, 0
  br i1 %tobool.not66.i, label %if.then288.handle_irq_transmit_status.exit_crit_edge, label %if.then288.if.end.i360_crit_edge

if.then288.if.end.i360_crit_edge:                 ; preds = %if.then288
  br label %if.end.i360

if.then288.handle_irq_transmit_status.exit_crit_edge: ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #16
  br label %handle_irq_transmit_status.exit

if.end.i360:                                      ; preds = %if.end.i360.if.end.i360_crit_edge, %if.then288.if.end.i360_crit_edge
  %call.i.i67.i = phi i32 [ %call.i.i.i357, %if.end.i360.if.end.i360_crit_edge ], [ %call.i.i64.i, %if.then288.if.end.i360_crit_edge ]
  %226 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %add.ptr, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %read32.i.i61.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %read32.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %read32.i.i61.i, align 4
  %call.i.i62.i = call i32 %231(ptr noundef %227, i16 noundef zeroext 372) #14
  %shr.i = lshr i32 %call.i.i67.i, 16
  %conv.i = trunc i32 %shr.i to i16
  %232 = ptrtoint ptr %stat.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %conv.i, ptr %stat.i, align 2
  %conv3.i = trunc i32 %call.i.i62.i to i16
  %233 = ptrtoint ptr %210 to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %conv3.i, ptr %210, align 2
  %and4.i = lshr i32 %call.i.i62.i, 16
  %conv6.i = trunc i32 %and4.i to i8
  %234 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv6.i, ptr %211, align 2
  %and10.i = lshr i32 %call.i.i67.i, 12
  %235 = trunc i32 %and10.i to i8
  %conv12.i = and i8 %235, 15
  %236 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %conv12.i, ptr %212, align 1
  %and14.i = lshr i32 %call.i.i67.i, 8
  %237 = trunc i32 %and14.i to i8
  %conv16.i = and i8 %237, 15
  %238 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv16.i, ptr %213, align 2
  %239 = trunc i32 %call.i.i67.i to i8
  %240 = lshr i8 %239, 2
  %conv20.i = and i8 %240, 7
  %241 = ptrtoint ptr %214 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv20.i, ptr %214, align 1
  %242 = lshr i8 %239, 7
  %243 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %215, align 2
  %244 = lshr i8 %239, 6
  %245 = and i8 %244, 1
  %246 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %216, align 1
  %247 = lshr i8 %239, 5
  %248 = and i8 %247, 1
  %249 = ptrtoint ptr %217 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %217, align 2
  %250 = lshr i8 %239, 1
  %251 = and i8 %250, 1
  %252 = ptrtoint ptr %218 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %218, align 1
  call void @b43legacy_handle_txstatus(ptr noundef %add.ptr, ptr noundef nonnull %stat.i) #14
  %253 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %add.ptr, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %254, align 4
  %read32.i.i.i356 = getelementptr inbounds %struct.ssb_bus_ops, ptr %256, i32 0, i32 2
  %257 = ptrtoint ptr %read32.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %read32.i.i.i356, align 4
  %call.i.i.i357 = call i32 %258(ptr noundef %254, i16 noundef zeroext 368) #14
  %and.i358 = and i32 %call.i.i.i357, 1
  %tobool.not.i359 = icmp eq i32 %and.i358, 0
  br i1 %tobool.not.i359, label %if.end.i360.handle_irq_transmit_status.exit_crit_edge, label %if.end.i360.if.end.i360_crit_edge

if.end.i360.if.end.i360_crit_edge:                ; preds = %if.end.i360
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i360

if.end.i360.handle_irq_transmit_status.exit_crit_edge: ; preds = %if.end.i360
  call void @__sanitizer_cov_trace_pc() #16
  br label %handle_irq_transmit_status.exit

handle_irq_transmit_status.exit:                  ; preds = %if.end.i360.handle_irq_transmit_status.exit_crit_edge, %if.then288.handle_irq_transmit_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stat.i) #14
  br label %if.end289

if.end289:                                        ; preds = %handle_irq_transmit_status.exit, %if.end278.if.end289_crit_edge
  %irq_mask = getelementptr i8, ptr %t, i32 -44
  %259 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %irq_mask, align 4
  %261 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %add.ptr, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %262, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %264, i32 0, i32 5
  %265 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %write32.i.i, align 4
  call void %266(ptr noundef %262, i16 noundef zeroext 300, i32 noundef %260) #14
  %267 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %wl, align 4
  %irq_lock291 = getelementptr inbounds %struct.b43legacy_wl, ptr %268, i32 0, i32 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock291, i32 noundef %call3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end289, %if.then78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_debugfs_add_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_pio_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_dma_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_handle_txstatus(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_chip_reset(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2316
  %wl1 = getelementptr i8, ptr %work, i32 -2312
  %0 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl1, align 4
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %__init_status = getelementptr i8, ptr %work, i32 -2308
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #14
  %2 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_wireless_core_stop(ptr noundef %add.ptr)
  br label %if.then3

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.end.if.then3_crit_edge, label %if.end.if.else.critedge_crit_edge

if.end.if.else.critedge_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.critedge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.thread
  tail call fastcc void @b43legacy_wireless_core_exit(ptr noundef %add.ptr)
  %call7 = tail call fastcc i32 @b43legacy_wireless_core_init(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp ne i32 %call7, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %brmerge, label %out, label %if.then12

if.then12:                                        ; preds = %if.then3
  %call13 = tail call fastcc i32 @b43legacy_wireless_core_start(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.else.critedge_crit_edge, label %out.thread44

if.then12.if.else.critedge_crit_edge:             ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.critedge

out.thread44:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @b43legacy_wireless_core_exit(ptr noundef %add.ptr)
  br label %if.then19

out:                                              ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool18.not = icmp eq i32 %call7, 0
  br i1 %tobool18.not, label %out.if.else.critedge_crit_edge, label %out.if.then19_crit_edge

out.if.then19_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

out.if.else.critedge_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.critedge

if.then19:                                        ; preds = %out.if.then19_crit_edge, %out.thread44
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %1, ptr noundef nonnull @.str.79)
  br label %if.end24

if.else.critedge:                                 ; preds = %out.if.else.critedge_crit_edge, %if.then12.if.else.critedge_crit_edge, %if.end.if.else.critedge_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  tail call void (ptr, ptr, ...) @b43legacyinfo(ptr noundef %1, ptr noundef nonnull @.str.80)
  br label %if.end24

if.end24:                                         ; preds = %if.else.critedge, %if.then19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_request_fw(ptr noundef %dev, ptr noundef %name, ptr noundef %fw, i1 noundef zeroext %async) unnamed_addr #0 align 64 {
entry:
  %path = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %path) #14
  %0 = call ptr @memset(ptr %path, i32 255, i32 48)
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %path, i32 noundef 48, ptr noundef nonnull @.str.90, ptr noundef nonnull @modparam_fwpostfix, ptr noundef nonnull %name)
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wl, align 4
  call void (ptr, ptr, ...) @b43legacyinfo(ptr noundef %2, ptr noundef nonnull @.str.91, ptr noundef nonnull %path)
  br i1 %async, label %if.then3, label %if.end21

if.then3:                                         ; preds = %if.end
  %fw_load_complete = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 30
  %3 = ptrtoint ptr %fw_load_complete to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %fw_load_complete, align 4
  %wait.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 30, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.95, ptr noundef nonnull @init_completion.__key) #14
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev6 = getelementptr inbounds %struct.ssb_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  %call7 = call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %path, ptr noundef %7, i32 noundef 3264, ptr noundef %dev, ptr noundef nonnull @b43legacy_fw_cb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wl, align 4
  call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %9, ptr noundef nonnull @.str.92)
  br label %cleanup

if.end11:                                         ; preds = %if.then3
  call void @wait_for_completion(ptr noundef %fw_load_complete) #14
  %fwp = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 29
  %10 = ptrtoint ptr %fwp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fwp, align 4
  %tobool13.not = icmp eq ptr %11, null
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %fw, align 4
  br i1 %tobool13.not, label %if.end11.if.then23_crit_edge, label %if.end11.if.end26_crit_edge

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.end11.if.then23_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

if.end21:                                         ; preds = %if.end
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dev19 = getelementptr inbounds %struct.ssb_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev19, align 4
  %call20 = call i32 @request_firmware(ptr noundef %fw, ptr noundef nonnull %path, ptr noundef %16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, 0
  br i1 %tobool22.not, label %if.end21.if.end26_crit_edge, label %if.end21.if.then23_crit_edge

if.end21.if.then23_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then23:                                        ; preds = %if.end21.if.then23_crit_edge, %if.end11.if.then23_crit_edge
  %err.173 = phi i32 [ %call20, %if.end21.if.then23_crit_edge ], [ -22, %if.end11.if.then23_crit_edge ]
  %17 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wl, align 4
  call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %18, ptr noundef nonnull @.str.93, ptr noundef nonnull %path)
  br label %cleanup

if.end26:                                         ; preds = %if.end21.if.end26_crit_edge, %if.end11.if.end26_crit_edge
  %19 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %22)
  %cmp = icmp ult i32 %22, 8
  br i1 %cmp, label %if.end26.err_format_crit_edge, label %if.end29

if.end26.err_format_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_format

if.end29:                                         ; preds = %if.end26
  %data = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %26, label %if.end29.err_format_crit_edge [
    i8 117, label %if.end29.sw.bb_crit_edge
    i8 112, label %if.end29.sw.bb_crit_edge74
    i8 105, label %if.end29.sw.bb36_crit_edge
  ]

if.end29.sw.bb36_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb36

if.end29.sw.bb_crit_edge74:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end29.sw.bb_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end29.err_format_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_format

sw.bb:                                            ; preds = %if.end29.sw.bb_crit_edge, %if.end29.sw.bb_crit_edge74
  %size30 = getelementptr inbounds %struct.b43legacy_fw_header, ptr %24, i32 0, i32 3
  %28 = ptrtoint ptr %size30 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %size30, align 1
  %sub = add i32 %22, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %sub)
  %cmp32.not = icmp eq i32 %29, %sub
  br i1 %cmp32.not, label %sw.bb.sw.bb36_crit_edge, label %sw.bb.err_format_crit_edge

sw.bb.err_format_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_format

sw.bb.sw.bb36_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb36

sw.bb36:                                          ; preds = %sw.bb.sw.bb36_crit_edge, %if.end29.sw.bb36_crit_edge
  %ver = getelementptr inbounds %struct.b43legacy_fw_header, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp38.not = icmp eq i8 %31, 1
  br i1 %cmp38.not, label %sw.bb36.cleanup_crit_edge, label %sw.bb36.err_format_crit_edge

sw.bb36.err_format_crit_edge:                     ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_format

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_format:                                       ; preds = %sw.bb36.err_format_crit_edge, %sw.bb.err_format_crit_edge, %if.end29.err_format_crit_edge, %if.end26.err_format_crit_edge
  %32 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wl, align 4
  call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %33, ptr noundef nonnull @.str.94, ptr noundef nonnull %path)
  br label %cleanup

cleanup:                                          ; preds = %err_format, %sw.bb36.cleanup_crit_edge, %if.then23, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ %err.173, %if.then23 ], [ -71, %err_format ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %path) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_one_core_detach(ptr nocapture noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %wl1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl1, align 4
  tail call void @b43legacy_debugfs_remove_device(ptr noundef %1) #14
  %fw.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw.i.i, align 4
  tail call void @release_firmware(ptr noundef %5) #14
  %6 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fw.i.i, align 4
  %pcm.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 28, i32 1
  %7 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm.i.i, align 4
  tail call void @release_firmware(ptr noundef %8) #14
  %9 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pcm.i.i, align 4
  %initvals.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 28, i32 2
  %10 = ptrtoint ptr %initvals.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %initvals.i.i, align 4
  tail call void @release_firmware(ptr noundef %11) #14
  %12 = ptrtoint ptr %initvals.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %initvals.i.i, align 4
  %initvals_band.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 28, i32 3
  %13 = ptrtoint ptr %initvals_band.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %initvals_band.i.i, align 4
  tail call void @release_firmware(ptr noundef %14) #14
  %15 = ptrtoint ptr %initvals_band.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %initvals_band.i.i, align 4
  %list = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 31, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 31, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %nr_devs = getelementptr inbounds %struct.b43legacy_wl, ptr %3, i32 0, i32 17
  %24 = ptrtoint ptr %nr_devs to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nr_devs, align 4
  %dec = add i8 %25, -1
  store i8 %dec, ptr %nr_devs, align 4
  %26 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %drvdata.i, align 4
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_fw_cb(ptr noundef %firmware, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fwp = getelementptr inbounds %struct.b43legacy_wldev, ptr %context, i32 0, i32 29
  %0 = ptrtoint ptr %fwp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %firmware, ptr %fwp, align 4
  %fw_load_complete = getelementptr inbounds %struct.b43legacy_wldev, ptr %context, i32 0, i32 30
  tail call void @complete(ptr noundef %fw_load_complete) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_debugfs_remove_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_debugfs_init() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ssb_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !78, !80, !82, !84, !85, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !126, !127, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !173, !175, !177, !179, !181, !183, !184, !186, !188, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !208, !209, !211, !212, !214, !216, !218, !219, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !290, !291}
!llvm.named.register.sp = !{!292}
!llvm.module.flags = !{!293, !294, !295, !296, !297, !298, !299, !300}
!llvm.ident = !{!301}

!0 = !{ptr @__UNIQUE_ID_description366, !1, !"__UNIQUE_ID_description366", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_author367, !3, !"__UNIQUE_ID_author367", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 44, i32 1}
!4 = !{ptr @__UNIQUE_ID_author368, !5, !"__UNIQUE_ID_author368", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 45, i32 1}
!6 = !{ptr @__UNIQUE_ID_author369, !7, !"__UNIQUE_ID_author369", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 46, i32 1}
!8 = !{ptr @__UNIQUE_ID_file370, !9, !"__UNIQUE_ID_file370", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 47, i32 1}
!10 = !{ptr @__UNIQUE_ID_license371, !9, !"__UNIQUE_ID_license371", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_firmware372, !12, !"__UNIQUE_ID_firmware372", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 49, i32 1}
!13 = !{ptr @__UNIQUE_ID_firmware373, !14, !"__UNIQUE_ID_firmware373", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 50, i32 1}
!15 = !{ptr @__param_pio, !16, !"__param_pio", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 54, i32 1}
!17 = !{ptr @__UNIQUE_ID_piotype374, !16, !"__UNIQUE_ID_piotype374", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_pio375, !19, !"__UNIQUE_ID_pio375", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 55, i32 1}
!20 = !{ptr @__param_bad_frames_preempt, !21, !"__param_bad_frames_preempt", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 63, i32 1}
!22 = !{ptr @__UNIQUE_ID_bad_frames_preempttype376, !21, !"__UNIQUE_ID_bad_frames_preempttype376", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_bad_frames_preempt377, !24, !"__UNIQUE_ID_bad_frames_preempt377", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 64, i32 1}
!25 = !{ptr @__param_fwpostfix, !26, !"__param_fwpostfix", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 68, i32 1}
!27 = !{ptr @__UNIQUE_ID_fwpostfixtype378, !26, !"__UNIQUE_ID_fwpostfixtype378", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_fwpostfix379, !29, !"__UNIQUE_ID_fwpostfix379", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 69, i32 1}
!30 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 179, i32 2}
!32 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @b43legacyinfo._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @b43legacyinfo._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 198, i32 2}
!39 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @b43legacyerr._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @b43legacyerr._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 217, i32 2}
!44 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @b43legacywarn._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @b43legacywarn._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 234, i32 2}
!49 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @b43legacydbg._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @b43legacydbg._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 617, i32 3}
!54 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @b43legacy_dummy_transmission._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @b43legacy_dummy_transmission._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1995, i32 25}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3910, i32 25}
!62 = !{ptr @__initcall__kmod_b43legacy__407_4028_b43legacy_init6, !63, !"__initcall__kmod_b43legacy__407_4028_b43legacy_init6", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 4028, i32 1}
!64 = !{ptr @__exitcall_b43legacy_exit, !65, !"__exitcall_b43legacy_exit", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 4029, i32 1}
!66 = !{ptr @modparam_pio, !67, !"modparam_pio", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 53, i32 12}
!68 = !{ptr @modparam_bad_frames_preempt, !69, !"modparam_bad_frames_preempt", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 62, i32 12}
!70 = !{ptr @__param_str_pio, !16, !"__param_str_pio", i1 false, i1 false}
!71 = !{ptr @__param_str_bad_frames_preempt, !21, !"__param_str_bad_frames_preempt", i1 false, i1 false}
!72 = !{ptr @__param_str_fwpostfix, !26, !"__param_str_fwpostfix", i1 false, i1 false}
!73 = !{ptr @__param_string_fwpostfix, !26, !"__param_string_fwpostfix", i1 false, i1 false}
!74 = !{ptr @modparam_fwpostfix, !75, !"modparam_fwpostfix", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 67, i32 13}
!76 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3973, i32 11}
!78 = !{ptr @b43legacy_ssb_driver, !79, !"b43legacy_ssb_driver", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3972, i32 26}
!80 = !{ptr @b43legacy_ssb_tbl, !81, !"b43legacy_ssb_tbl", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 72, i32 35}
!82 = !{ptr @b43legacy_probe.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3865, i32 2}
!84 = !{ptr @.str.16, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3795, i32 22}
!87 = !{ptr @b43legacy_wireless_init.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3822, i32 2}
!89 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @b43legacy_wireless_init.__key.19, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3823, i32 2}
!92 = !{ptr @.str.20, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @b43legacy_wireless_init.__key.21, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3824, i32 2}
!95 = !{ptr @.str.22, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @b43legacy_wireless_init.__key.23, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3826, i32 2}
!98 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @b43legacy_wireless_init.__key.25, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3827, i32 2}
!101 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.27, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3836, i32 20}
!104 = !{ptr @b43legacy_hw_ops, !105, !"b43legacy_hw_ops", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3532, i32 35}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2248, i32 24}
!108 = !{ptr @.str.29, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1723, i32 26}
!110 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1748, i32 25}
!112 = !{ptr @.str.31, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1756, i32 25}
!114 = !{ptr @.str.32, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1765, i32 57}
!116 = !{ptr @.str.33, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1481, i32 19}
!118 = !{ptr @.str.34, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1835, i32 24}
!120 = !{ptr @.str.35, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2110, i32 3}
!122 = !{ptr @b43legacy_mgmtframe_txantenna._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @b43legacy_mgmtframe_txantenna._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.36, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2088, i32 3}
!126 = !{ptr @b43legacy_rate_memory_init._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @b43legacy_rate_memory_init._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @b43legacy_write_mac_bssid_templates.zero_addr, !129, !"zero_addr", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 526, i32 18}
!130 = distinct !{null, !131, !"zero_addr", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 504, i32 18}
!132 = !{ptr @.str.37, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2430, i32 4}
!134 = !{ptr @.str.38, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2438, i32 20}
!136 = !{ptr @.str.39, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2962, i32 25}
!138 = !{ptr @.str.40, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2977, i32 24}
!140 = !{ptr @b43legacy_periodic_tasks_setup.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2346, i32 2}
!142 = !{ptr @.str.41, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @b43legacy_periodic_tasks_setup.__key.42, !141, !"__key", i1 false, i1 false}
!144 = !{ptr @.str.43, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.44, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2948, i32 19}
!147 = !{ptr @.str.45, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3395, i32 19}
!149 = !{ptr @.str.46, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3424, i32 19}
!151 = !{ptr @.str.47, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2739, i32 27}
!153 = !{ptr @.str.48, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2741, i32 28}
!155 = !{ptr @.str.49, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2747, i32 27}
!157 = !{ptr @.str.50, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2592, i32 20}
!159 = !{ptr @.str.51, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2600, i32 19}
!161 = !{ptr @.str.52, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2621, i32 21}
!163 = !{ptr @.str.53, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2630, i32 21}
!165 = !{ptr @.str.54, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2531, i32 10}
!167 = !{ptr @.str.55, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2533, i32 10}
!169 = !{ptr @.str.56, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2535, i32 3}
!171 = !{ptr @phymode_to_string._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @phymode_to_string._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = distinct !{null, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2537, i32 9}
!175 = !{ptr @.str.58, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1270, i32 24}
!177 = !{ptr @.str.59, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1012, i32 26}
!179 = !{ptr @.str.60, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1016, i32 25}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!183 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @__b43legacy_ratetable, !185, !"__b43legacy_ratetable", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 94, i32 30}
!186 = !{ptr @skb_queue_head_init.__key, !187, !"__key", i1 false, i1 false}
!187 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!188 = !{ptr @.str.62, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.63, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1299, i32 25}
!191 = !{ptr @.str.64, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1302, i32 25}
!193 = !{ptr @.str.65, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1305, i32 26}
!195 = !{ptr @.str.66, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1307, i32 38}
!197 = !{ptr @.str.67, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1314, i32 26}
!199 = !{ptr @.str.68, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1320, i32 38}
!201 = !{ptr @.str.69, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1325, i32 26}
!203 = !{ptr @.str.70, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3640, i32 20}
!205 = !{ptr @.str.71, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3680, i32 4}
!207 = !{ptr @b43legacy_wireless_core_attach._entry, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @b43legacy_wireless_core_attach._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @b43legacy_wireless_core_attach.__key, !210, !"__key", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3697, i32 2}
!211 = !{ptr @.str.72, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.73, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3015, i32 25}
!214 = !{ptr @.str.74, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3020, i32 24}
!216 = !{ptr @.str.75, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3054, i32 3}
!218 = !{ptr @b43legacy_phy_versioning._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @b43legacy_phy_versioning._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.76, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3057, i32 25}
!222 = !{ptr @.str.77, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3062, i32 24}
!224 = !{ptr @.str.78, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 2378, i32 24}
!226 = !{ptr @b43legacy_band_2GHz_BPHY, !227, !"b43legacy_band_2GHz_BPHY", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 135, i32 40}
!228 = !{ptr @b43legacy_bg_chantable, !229, !"b43legacy_bg_chantable", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 118, i32 33}
!230 = !{ptr @b43legacy_band_2GHz_GPHY, !231, !"b43legacy_band_2GHz_GPHY", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 142, i32 40}
!232 = !{ptr @.str.79, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3586, i32 20}
!234 = !{ptr @.str.80, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3588, i32 21}
!236 = !{ptr @.str.81, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1573, i32 15}
!238 = !{ptr @.str.82, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1575, i32 15}
!240 = !{ptr @.str.83, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1577, i32 15}
!242 = !{ptr @.str.84, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1584, i32 15}
!244 = !{ptr @.str.85, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1586, i32 15}
!246 = !{ptr @.str.86, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1596, i32 16}
!248 = !{ptr @.str.87, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1598, i32 16}
!250 = !{ptr @.str.88, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1614, i32 16}
!252 = !{ptr @.str.89, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1644, i32 24}
!254 = !{ptr @.str.90, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1507, i32 4}
!256 = !{ptr @.str.91, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1509, i32 25}
!258 = !{ptr @.str.92, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1516, i32 26}
!260 = !{ptr @.str.93, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1528, i32 25}
!262 = !{ptr @.str.94, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 1553, i32 24}
!264 = !{ptr @init_completion.__key, !265, !"__key", i1 false, i1 false}
!265 = !{!"../include/linux/completion.h", i32 87, i32 2}
!266 = !{ptr @.str.95, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.96, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3921, i32 19}
!269 = !{ptr @.str.97, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3931, i32 19}
!271 = !{ptr @.str.98, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3942, i32 19}
!273 = !{ptr @.str.99, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3948, i32 21}
!275 = !{ptr @.str.100, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3956, i32 21}
!277 = !{ptr @.str.101, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3961, i32 19}
!279 = !{ptr @.str.102, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3987, i32 13}
!281 = !{ptr @.str.103, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3990, i32 14}
!283 = !{ptr @.str.104, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3993, i32 13}
!285 = !{ptr @.str.105, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3996, i32 13}
!287 = !{ptr @.str.106, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/broadcom/b43legacy/main.c", i32 3998, i32 2}
!289 = !{ptr @.str.107, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @b43legacy_print_driverinfo._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @b43legacy_print_driverinfo._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{!"sp"}
!293 = !{i32 1, !"wchar_size", i32 2}
!294 = !{i32 1, !"min_enum_size", i32 4}
!295 = !{i32 8, !"branch-target-enforcement", i32 0}
!296 = !{i32 8, !"sign-return-address", i32 0}
!297 = !{i32 8, !"sign-return-address-all", i32 0}
!298 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!299 = !{i32 7, !"uwtable", i32 1}
!300 = !{i32 7, !"frame-pointer", i32 2}
!301 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!302 = !{!"auto-init"}
!303 = !{!"branch_weights", i32 2000, i32 1}
!304 = !{i64 2158387706, i64 2158388217, i64 2158387743, i64 2158387799, i64 2158387833, i64 2158387857, i64 2158387898, i64 2158387919, i64 2158387947, i64 2158387981}
!305 = !{!"branch_weights", i32 1, i32 2000}
!306 = !{i64 693344}
!307 = !{i64 2158545355}
!308 = !{i64 2158528864, i64 2158529376, i64 2158528901, i64 2158528957, i64 2158528991, i64 2158529015, i64 2158529056, i64 2158529077, i64 2158529105, i64 2158529139}
!309 = !{i64 2158542888, i64 2158543400, i64 2158542925, i64 2158542981, i64 2158543015, i64 2158543039, i64 2158543080, i64 2158543101, i64 2158543129, i64 2158543163}
!310 = !{i8 0, i8 2}
!311 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!312 = !{i64 2158513252, i64 2158513764, i64 2158513289, i64 2158513345, i64 2158513379, i64 2158513403, i64 2158513444, i64 2158513465, i64 2158513493, i64 2158513527}
!313 = !{i64 2158497912, i64 2158498424, i64 2158497949, i64 2158498005, i64 2158498039, i64 2158498063, i64 2158498104, i64 2158498125, i64 2158498153, i64 2158498187}
!314 = !{i64 2158536035}
!315 = !{i64 2158526655}
!316 = !{i64 2158533882}
!317 = !{i64 2158503587}
!318 = !{i64 2158525567}
!319 = !{i64 2158477147}
!320 = !{i64 2148386583}
!321 = !{i64 2148301316, i64 2148301348, i64 2148301377, i64 2148301411, i64 2148301442, i64 2148301465}
!322 = !{i64 2148386812}
