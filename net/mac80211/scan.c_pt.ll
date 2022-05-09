; ModuleID = '/llk/IR_all_yes/net/mac80211/scan.c_pt.bc'
source_filename = "../net/mac80211/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ieee80211_scan_completed\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_scan_completed\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_scan_completed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_scan_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_scan_completed\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_scan_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_sched_scan_results\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_sched_scan_results\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_sched_scan_results\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_sched_scan_results:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_sched_scan_results\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_sched_scan_results:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_sched_scan_stopped\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_sched_scan_stopped\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_sched_scan_stopped\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_sched_scan_stopped:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_sched_scan_stopped\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_sched_scan_stopped:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.134, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.134 = type { i32, i16 }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.146, i32 }
%union.anon.146 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.local_debugfsdentries = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.159, %struct.anon.193, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.124, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.124 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.125 }
%union.anon.125 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%union.anon.159 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.anon.193 = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.160 }
%union.anon.160 = type { %struct.anon.166, [16 x i8] }
%struct.anon.166 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_ext = type { i16, i16, %union.anon.194 }
%union.anon.194 = type { %struct.anon.196 }
%struct.anon.196 = type <{ [6 x i8], i32, i8, [3 x i8], [0 x i8] }>
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.ieee80211_bss = type { i32, i32, i8, i8, [32 x i8], i32, ptr, i32, i8, i8, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.133, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.133 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.130, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.130 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_scan_request = type { %struct.ieee80211_scan_ies, %struct.cfg80211_scan_request }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }

@ieee80211_bss_info_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mac80211/scan.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_scan_rx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_scan_rx.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_scan_rx.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_scan_rx.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_ieee80211_scan_completed = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_scan_completed = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_scan_completed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_scan_completed to i32), ptr @__kstrtab_ieee80211_scan_completed, ptr @__kstrtabns_ieee80211_scan_completed }, section "___ksymtab+ieee80211_scan_completed", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@ieee80211_run_deferred_scan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ieee80211_scan_work.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_scan_work.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_request_ibss_scan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_request_ibss_scan.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_scan_cancel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_request_sched_scan_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_ieee80211_sched_scan_results = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_sched_scan_results = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_sched_scan_results = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_sched_scan_results to i32), ptr @__kstrtab_ieee80211_sched_scan_results, ptr @__kstrtabns_ieee80211_sched_scan_results }, section "___ksymtab+ieee80211_sched_scan_results", align 4
@__kstrtab_ieee80211_sched_scan_stopped = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_sched_scan_stopped = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_sched_scan_stopped = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_sched_scan_stopped to i32), ptr @__kstrtab_ieee80211_sched_scan_stopped, ptr @__kstrtabns_ieee80211_sched_scan_stopped }, section "___ksymtab+ieee80211_sched_scan_stopped", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@ieee80211_have_rx_timestamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_api_scan_completed = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_api_scan_completed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/driver-ops.h\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_drv_sw_scan_start = external dso_local global %struct.tracepoint, align 4
@trace_drv_sw_scan_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_void.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_prep_hw_scan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drv_hw_scan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_drv_hw_scan = external dso_local global %struct.tracepoint, align 4
@trace_drv_hw_scan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ieee80211_scan_state_decision.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qdisc_all_tx_empty.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@ieee80211_scan_state_set_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_scan_state_send_probe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_scan_state_send_probe.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ieee80211_scan_completed.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ieee80211_scan_completed.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ieee80211_scan_completed.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ieee80211_scan_completed.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_drv_sw_scan_complete = external dso_local global %struct.tracepoint, align 4
@trace_drv_sw_scan_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drv_cancel_hw_scan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_cancel_hw_scan = external dso_local global %struct.tracepoint, align 4
@trace_drv_cancel_hw_scan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drv_sched_scan_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sched_scan_start = external dso_local global %struct.tracepoint, align 4
@trace_drv_sched_scan_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drv_sched_scan_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_sched_scan_stop = external dso_local global %struct.tracepoint, align 4
@trace_drv_sched_scan_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_api_sched_scan_results = external dso_local global %struct.tracepoint, align 4
@trace_api_sched_scan_results.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_api_sched_scan_stopped = external dso_local global %struct.tracepoint, align 4
@trace_api_sched_scan_stopped.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 7168, i64 20480]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 16, i64 7168, i64 20480, i64 32768]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 178, i32 15 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 601, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 695, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1762, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 723, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"../net/mac80211/trace.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 2162, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 108, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 350, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [29 x i8] c"../net/mac80211/driver-ops.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 287, i32 7 }
@___asan_gen_.63 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 777, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [23 x i8] c"../net/mac80211/scan.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 486, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_ieee80211_scan_completed, ptr @__ksymtab_ieee80211_sched_scan_results, ptr @__ksymtab_ieee80211_sched_scan_stopped, ptr @.str, ptr @.str.1, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.21], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_rx_bss_put(ptr nocapture noundef readonly %local, ptr noundef %bss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bss, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  %add.ptr = getelementptr i8, ptr %bss, i32 -60
  tail call void @cfg80211_put_bss(ptr noundef %1, ptr noundef %add.ptr) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ieee80211_bss_info_update(ptr noundef %local, ptr noundef %rx_status, ptr noundef %mgmt, i32 noundef %len, ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  %bss_meta = alloca %struct.cfg80211_inform_bss, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mgmt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mgmt, align 2
  %2 = and i16 %1, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp.i = icmp eq i16 %2, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 7168, i16 %2)
  %cmp.i179 = icmp eq i16 %2, 7168
  %spec.select = or i1 %cmp.i, %cmp.i179
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bss_meta) #9
  %3 = getelementptr inbounds i8, ptr %bss_meta, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %boottime_ns = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %bss_meta, i32 0, i32 3
  %boottime_ns3 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 1
  %5 = ptrtoint ptr %boottime_ns3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %boottime_ns3, align 8
  %7 = ptrtoint ptr %boottime_ns to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %boottime_ns, align 8
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flag, align 8
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 4
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %signal6 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %13 = ptrtoint ptr %signal6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %signal6, align 2
  %conv = sext i8 %14 to i32
  %mul = mul nsw i32 %conv, 100
  br label %if.end19.sink.split

if.else8:                                         ; preds = %if.else
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i181.not = icmp eq i32 %17, 0
  br i1 %tobool.i181.not, label %if.else8.if.end19_crit_edge, label %if.then11

if.else8.if.end19_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  %signal12 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %18 = ptrtoint ptr %signal12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %signal12, align 2
  %conv13 = sext i8 %19 to i16
  %mul14 = mul nsw i16 %conv13, 100
  %max_signal = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 13
  %20 = ptrtoint ptr %max_signal to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_signal, align 8
  %div.rhs.trunc = sext i8 %21 to i16
  %div195 = sdiv i16 %mul14, %div.rhs.trunc
  %div.sext = sext i16 %div195 to i32
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.then11, %if.then5
  %mul.sink = phi i32 [ %mul, %if.then5 ], [ %div.sext, %if.then11 ]
  %signal7 = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %bss_meta, i32 0, i32 2
  %22 = ptrtoint ptr %signal7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.sink, ptr %signal7, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.else8.if.end19_crit_edge, %entry.if.end19_crit_edge
  %scan_width = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %bss_meta, i32 0, i32 1
  %23 = ptrtoint ptr %scan_width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %scan_width, align 4
  %bw = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %24 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %bf.load = load i16, ptr %bw, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  %trunc = trunc i16 %bf.lshr to i3
  %25 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc, label %if.end19.if.end36_crit_edge [
    i3 1, label %if.end19.if.end36.sink.split_crit_edge
    i3 2, label %if.then33
  ]

if.end19.if.end36.sink.split_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.sink.split

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then33:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.then33, %if.end19.if.end36.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then33 ], [ 2, %if.end19.if.end36.sink.split_crit_edge ]
  %26 = ptrtoint ptr %scan_width to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %scan_width, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.end19.if.end36_crit_edge
  %27 = ptrtoint ptr %bss_meta to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %channel, ptr %bss_meta, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end36.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end36.rcu_read_lock.exit_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end36
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end36.rcu_read_lock.exit_crit_edge
  %scan_sdata37 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 85
  %32 = ptrtoint ptr %scan_sdata37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %scan_sdata37, align 8
  %call39 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end48_crit_edge

rcu_read_lock.exit.do.end48_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true.do.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true
  %.b178 = load i1, ptr @ieee80211_bss_info_update.__warned, align 1
  br i1 %.b178, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_bss_info_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 178, ptr noundef nonnull @.str.1) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true.do.end48_crit_edge, %rcu_read_lock.exit.do.end48_crit_edge
  %tobool50.not = icmp eq ptr %33, null
  br i1 %tobool50.not, label %do.end48.if.end65_crit_edge, label %land.lhs.true51

do.end48.if.end65_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

land.lhs.true51:                                  ; preds = %do.end48
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %33, i32 0, i32 59
  %34 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp52 = icmp eq i32 %35, 2
  br i1 %cmp52, label %land.lhs.true54, label %land.lhs.true51.if.end65_crit_edge

land.lhs.true51.if.end65_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %bss_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %33, i32 0, i32 59, i32 1
  %assoc = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %33, i32 0, i32 59, i32 1, i32 10
  %36 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %assoc, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool56.not = icmp eq i8 %37, 0
  br i1 %tobool56.not, label %land.lhs.true54.if.end65_crit_edge, label %land.lhs.true58

land.lhs.true54.if.end65_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

land.lhs.true58:                                  ; preds = %land.lhs.true54
  %38 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flag, align 8
  %40 = and i32 %39, 65664
  call void @__sanitizer_cov_trace_const_cmp4(i32 65664, i32 %40)
  %41 = icmp eq i32 %40, 65664
  br i1 %41, label %land.rhs6.i, label %land.lhs.true58.ieee80211_have_rx_timestamp.exit_crit_edge

land.lhs.true58.ieee80211_have_rx_timestamp.exit_crit_edge: ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_have_rx_timestamp.exit

land.rhs6.i:                                      ; preds = %land.lhs.true58
  %.b52.i = load i1, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  br i1 %.b52.i, label %land.rhs6.i.ieee80211_have_rx_timestamp.exit_crit_edge, label %if.then.i182, !prof !125

land.rhs6.i.ieee80211_have_rx_timestamp.exit_crit_edge: ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_have_rx_timestamp.exit

if.then.i182:                                     ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1763, i32 noundef 9, ptr noundef null) #9
  br label %ieee80211_have_rx_timestamp.exit

ieee80211_have_rx_timestamp.exit:                 ; preds = %if.then.i182, %land.rhs6.i.ieee80211_have_rx_timestamp.exit_crit_edge, %land.lhs.true58.ieee80211_have_rx_timestamp.exit_crit_edge
  %42 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flag, align 8
  %and42.i = and i32 %43, 65668
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.i.not = icmp eq i32 %and42.i, 0
  br i1 %tobool43.i.not, label %ieee80211_have_rx_timestamp.exit.if.end65_crit_edge, label %if.then61

ieee80211_have_rx_timestamp.exit.if.end65_crit_edge: ; preds = %ieee80211_have_rx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then61:                                        ; preds = %ieee80211_have_rx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %len, 4
  %call62 = tail call i64 @ieee80211_calculate_rx_timestamp(ptr noundef %local, ptr noundef %rx_status, i32 noundef %add, i32 noundef 24) #9
  %parent_tsf = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %bss_meta, i32 0, i32 4
  %44 = ptrtoint ptr %parent_tsf to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %call62, ptr %parent_tsf, align 8
  %parent_bssid = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %bss_meta, i32 0, i32 5
  %45 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bss_conf, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %49 = ptrtoint ptr %parent_bssid to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %parent_bssid, align 8
  %add.ptr.i = getelementptr i8, ptr %46, i32 4
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %bss_meta, i32 0, i32 5, i32 4
  %52 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %add.ptr1.i, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %ieee80211_have_rx_timestamp.exit.if.end65_crit_edge, %land.lhs.true54.if.end65_crit_edge, %land.lhs.true51.if.end65_crit_edge, %do.end48.if.end65_crit_edge
  %call.i183 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i183, label %if.end65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i186

if.end65.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i186:                               ; preds = %if.end65
  %call1.i184 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i184)
  %tobool.not.i185 = icmp eq i32 %call1.i184, 0
  br i1 %tobool.not.i185, label %land.lhs.true.i186.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i188

land.lhs.true.i186.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i188:                              ; preds = %land.lhs.true.i186
  %.b4.i187 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i187, label %land.lhs.true2.i188.rcu_read_unlock.exit_crit_edge, label %if.then.i189

land.lhs.true2.i188.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i188
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i189:                                     ; preds = %land.lhs.true2.i188
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i189, %land.lhs.true2.i188.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i186.rcu_read_unlock.exit_crit_edge, %if.end65.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %53 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i.i190 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i190 to ptr
  %preempt_count.i.i.i.i191 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i191, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i191, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %57 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wiphy, align 8
  %call67 = call ptr @cfg80211_inform_bss_frame_data(ptr noundef %58, ptr noundef nonnull %bss_meta, ptr noundef %mgmt, i32 noundef %len, i32 noundef 2592) #9
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end70

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end70:                                         ; preds = %rcu_read_unlock.exit
  %59 = ptrtoint ptr %mgmt to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %mgmt, align 2
  %61 = and i16 %60, -1024
  %62 = zext i16 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %61, label %if.else82 [
    i16 20480, label %if.then73
    i16 7168, label %if.then78
  ]

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 1, i32 2
  br label %if.end87

if.then78:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %variable80 = getelementptr inbounds %struct.ieee80211_ext, ptr %mgmt, i32 0, i32 2, i32 0, i32 3
  br label %if.end87

if.else82:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %variable84 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 1, i32 2
  br label %if.end87

if.end87:                                         ; preds = %if.else82, %if.then78, %if.then73
  %baselen.0 = phi i32 [ 36, %if.then73 ], [ 15, %if.then78 ], [ 36, %if.else82 ]
  %elements.0 = phi ptr [ %variable, %if.then73 ], [ %variable80, %if.then78 ], [ %variable84, %if.else82 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %baselen.0, i32 %len)
  %cmp88 = icmp ugt i32 %baselen.0, %len
  br i1 %cmp88, label %if.end87.cleanup_crit_edge, label %if.end91

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end91:                                         ; preds = %if.end87
  %sub = sub i32 %len, %baselen.0
  %bssid92 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 4
  %bssid94 = getelementptr inbounds %struct.cfg80211_bss, ptr %call67, i32 0, i32 11
  %call.i194 = call ptr @ieee802_11_parse_elems_crc(ptr noundef %elements.0, i32 noundef %sub, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef %bssid92, ptr noundef %bssid94) #9
  %tobool97.not = icmp eq ptr %call.i194, null
  br i1 %tobool97.not, label %if.end91.cleanup_crit_edge, label %if.end99

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end99:                                         ; preds = %if.end91
  %63 = ptrtoint ptr %call67 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call67, align 4
  %cmp101 = icmp eq ptr %64, %channel
  br i1 %cmp101, label %if.end99.if.end107_crit_edge, label %if.then105

if.end99.if.end107_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flag, align 8
  %or = or i32 %66, 256
  store i32 %or, ptr %flag, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end99.if.end107_crit_edge
  %priv = getelementptr inbounds %struct.cfg80211_bss, ptr %call67, i32 0, i32 17
  call fastcc void @ieee80211_update_bss_from_elems(ptr noundef %local, ptr noundef %priv, ptr noundef nonnull %call.i194, ptr noundef %rx_status, i1 noundef zeroext %spec.select)
  %nontrans_list = getelementptr inbounds %struct.cfg80211_bss, ptr %call67, i32 0, i32 7
  %67 = ptrtoint ptr %nontrans_list to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn196 = load ptr, ptr %nontrans_list, align 4
  %cmp113.not197 = icmp eq ptr %.pn196, %nontrans_list
  br i1 %cmp113.not197, label %if.end107.for.end_crit_edge, label %if.end107.for.body_crit_edge

if.end107.for.body_crit_edge:                     ; preds = %if.end107
  br label %for.body

if.end107.for.end_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end107.for.body_crit_edge
  %.pn198 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn196, %if.end107.for.body_crit_edge ]
  %priv115 = getelementptr i8, ptr %.pn198, i32 32
  call fastcc void @ieee80211_update_bss_from_elems(ptr noundef %local, ptr noundef %priv115, ptr noundef nonnull %call.i194, ptr noundef %rx_status, i1 noundef zeroext %spec.select)
  %68 = ptrtoint ptr %.pn198 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn = load ptr, ptr %.pn198, align 4
  %cmp113.not = icmp eq ptr %.pn, %nontrans_list
  br i1 %cmp113.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end107.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call.i194) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end91.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %priv, %for.end ], [ null, %rcu_read_unlock.exit.cleanup_crit_edge ], [ null, %if.end87.cleanup_crit_edge ], [ null, %if.end91.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bss_meta) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ieee80211_calculate_rx_timestamp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_frame_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @ieee80211_update_bss_from_elems(ptr nocapture noundef readonly %local, ptr noundef %bss, ptr nocapture noundef readonly %elems, ptr nocapture noundef readonly %rx_status, i1 noundef zeroext %beacon) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device_timestamp = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 2
  %0 = ptrtoint ptr %device_timestamp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_timestamp, align 8
  br i1 %beacon, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %bss to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bss, align 4
  %parse_error = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 76
  %3 = ptrtoint ptr %parse_error to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %parse_error, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %corrupt_data16 = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 10
  %5 = ptrtoint ptr %corrupt_data16 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %corrupt_data16, align 2
  br i1 %tobool2.not, label %if.then15.critedge, label %if.then5.critedge

if.end.thread:                                    ; preds = %entry
  %device_ts_presp = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 1
  %7 = ptrtoint ptr %device_ts_presp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %device_ts_presp, align 4
  %parse_error197 = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 76
  %8 = ptrtoint ptr %parse_error197 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %parse_error197, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not198 = icmp eq i8 %9, 0
  %corrupt_data20 = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 10
  %10 = ptrtoint ptr %corrupt_data20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %corrupt_data20, align 2
  br i1 %tobool2.not198, label %if.else19, label %if.else7

if.then5.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = or i8 %6, 1
  %13 = ptrtoint ptr %corrupt_data16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %corrupt_data16, align 2
  br label %if.end25

if.else7:                                         ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  %14 = or i8 %11, 2
  %15 = ptrtoint ptr %corrupt_data20 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %corrupt_data20, align 2
  br label %if.end25

if.then15.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = and i8 %6, -2
  %17 = ptrtoint ptr %corrupt_data16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %corrupt_data16, align 2
  br label %if.end25

if.else19:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  %18 = and i8 %11, -3
  %19 = ptrtoint ptr %corrupt_data20 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %corrupt_data20, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.else19, %if.then15.critedge, %if.else7, %if.then5.critedge
  %parse_error199 = phi ptr [ %parse_error, %if.then15.critedge ], [ %parse_error197, %if.else19 ], [ %parse_error, %if.then5.critedge ], [ %parse_error197, %if.else7 ]
  %erp_info = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 12
  %20 = ptrtoint ptr %erp_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %erp_info, align 4
  %tobool26.not = icmp eq ptr %21, null
  br i1 %tobool26.not, label %if.end25.if.end42_crit_edge, label %land.lhs.true

if.end25.if.end42_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end25
  %22 = ptrtoint ptr %parse_error199 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %parse_error199, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool28.not = icmp eq i8 %23, 0
  br i1 %tobool28.not, label %land.lhs.true.if.then32_crit_edge, label %lor.lhs.false

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

lor.lhs.false:                                    ; preds = %land.lhs.true
  %valid_data = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 11
  %24 = ptrtoint ptr %valid_data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %valid_data, align 1
  %26 = and i8 %25, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool31.not = icmp eq i8 %26, 0
  br i1 %tobool31.not, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false.if.end42_crit_edge

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %land.lhs.true.if.then32_crit_edge
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %21, align 1
  %erp_value = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 9
  %29 = ptrtoint ptr %erp_value to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %erp_value, align 1
  %has_erp_value = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 8
  %30 = ptrtoint ptr %has_erp_value to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %has_erp_value, align 4
  %31 = ptrtoint ptr %parse_error199 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %parse_error199, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool35.not = icmp eq i8 %32, 0
  br i1 %tobool35.not, label %if.then36, label %if.then32.lor.lhs.false45_crit_edge

if.then32.lor.lhs.false45_crit_edge:              ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false45

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %valid_data37 = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 11
  %33 = ptrtoint ptr %valid_data37 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %valid_data37, align 1
  %35 = or i8 %34, 8
  store i8 %35, ptr %valid_data37, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %lor.lhs.false.if.end42_crit_edge, %if.end25.if.end42_crit_edge
  %36 = ptrtoint ptr %parse_error199 to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr = load i8, ptr %parse_error199, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool44.not = icmp eq i8 %.pr, 0
  br i1 %tobool44.not, label %if.end42.if.then50_crit_edge, label %if.end42.lor.lhs.false45_crit_edge

if.end42.lor.lhs.false45_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false45

if.end42.if.then50_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

lor.lhs.false45:                                  ; preds = %if.end42.lor.lhs.false45_crit_edge, %if.then32.lor.lhs.false45_crit_edge
  %valid_data46 = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 11
  %37 = ptrtoint ptr %valid_data46 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %valid_data46, align 1
  %39 = and i8 %38, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool49.not = icmp eq i8 %39, 0
  br i1 %tobool49.not, label %lor.lhs.false45.if.then50_crit_edge, label %lor.lhs.false45.if.end88_crit_edge

lor.lhs.false45.if.end88_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

lor.lhs.false45.if.then50_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false45.if.then50_crit_edge, %if.end42.if.then50_crit_edge
  %supp_rates = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 7
  %40 = ptrtoint ptr %supp_rates to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %supp_rates, align 4
  %tobool51.not = icmp eq ptr %41, null
  br i1 %tobool51.not, label %if.then50.if.end61_crit_edge, label %if.then52

if.then50.if.end61_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %supp_rates_len = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 59
  %42 = ptrtoint ptr %supp_rates_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %supp_rates_len, align 2
  %44 = tail call i8 @llvm.umin.i8(i8 %43, i8 32)
  %spec.select = zext i8 %44 to i32
  %supp_rates59 = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 4
  %45 = call ptr @memcpy(ptr %supp_rates59, ptr %41, i32 %spec.select)
  br label %if.end61

if.end61:                                         ; preds = %if.then52, %if.then50.if.end61_crit_edge
  %srlen.0 = phi i32 [ %spec.select, %if.then52 ], [ 0, %if.then50.if.end61_crit_edge ]
  %ext_supp_rates = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 13
  %46 = ptrtoint ptr %ext_supp_rates to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ext_supp_rates, align 4
  %tobool62.not = icmp eq ptr %47, null
  br i1 %tobool62.not, label %if.end61.if.end75_crit_edge, label %if.then63

if.end61.if.end75_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub nuw nsw i32 32, %srlen.0
  %ext_supp_rates_len = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 63
  %48 = ptrtoint ptr %ext_supp_rates_len to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ext_supp_rates_len, align 2
  %conv64 = zext i8 %49 to i32
  %50 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %conv64)
  %supp_rates71 = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 4
  %add.ptr = getelementptr i8, ptr %supp_rates71, i32 %srlen.0
  %51 = call ptr @memcpy(ptr %add.ptr, ptr %47, i32 %50)
  %add74 = add nuw nsw i32 %50, %srlen.0
  br label %if.end75

if.end75:                                         ; preds = %if.then63, %if.end61.if.end75_crit_edge
  %srlen.1 = phi i32 [ %add74, %if.then63 ], [ %srlen.0, %if.end61.if.end75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srlen.1)
  %tobool76.not = icmp eq i32 %srlen.1, 0
  br i1 %tobool76.not, label %if.end75.if.end88_crit_edge, label %if.then77

if.end75.if.end88_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then77:                                        ; preds = %if.end75
  %supp_rates_len78 = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 5
  %52 = ptrtoint ptr %supp_rates_len78 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %srlen.1, ptr %supp_rates_len78, align 4
  %53 = ptrtoint ptr %parse_error199 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %parse_error199, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool80.not = icmp eq i8 %54, 0
  br i1 %tobool80.not, label %if.then81, label %if.then77.lor.lhs.false91_crit_edge

if.then77.lor.lhs.false91_crit_edge:              ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false91

if.then81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %valid_data82 = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 11
  %55 = ptrtoint ptr %valid_data82 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %valid_data82, align 1
  %57 = or i8 %56, 4
  store i8 %57, ptr %valid_data82, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then81, %if.end75.if.end88_crit_edge, %lor.lhs.false45.if.end88_crit_edge
  %58 = ptrtoint ptr %parse_error199 to i32
  call void @__asan_load1_noabort(i32 %58)
  %.pr212 = load i8, ptr %parse_error199, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr212)
  %tobool90.not = icmp eq i8 %.pr212, 0
  br i1 %tobool90.not, label %if.end88.if.then96_crit_edge, label %if.end88.lor.lhs.false91_crit_edge

if.end88.lor.lhs.false91_crit_edge:               ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false91

if.end88.if.then96_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

lor.lhs.false91:                                  ; preds = %if.end88.lor.lhs.false91_crit_edge, %if.then77.lor.lhs.false91_crit_edge
  %valid_data92 = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 11
  %59 = ptrtoint ptr %valid_data92 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %valid_data92, align 1
  %61 = and i8 %60, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool95.not = icmp eq i8 %61, 0
  br i1 %tobool95.not, label %lor.lhs.false91.if.then96_crit_edge, label %lor.lhs.false91.if.end109_crit_edge

lor.lhs.false91.if.end109_crit_edge:              ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

lor.lhs.false91.if.then96_crit_edge:              ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

if.then96:                                        ; preds = %lor.lhs.false91.if.then96_crit_edge, %if.end88.if.then96_crit_edge
  %wmm_param = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 15
  %62 = ptrtoint ptr %wmm_param to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wmm_param, align 4
  %tobool97.not = icmp eq ptr %63, null
  br i1 %tobool97.not, label %lor.rhs, label %if.then96.lor.end_crit_edge

if.then96.lor.end_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  %wmm_info = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 14
  %64 = ptrtoint ptr %wmm_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wmm_info, align 4
  %tobool98 = icmp ne ptr %65, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then96.lor.end_crit_edge
  %66 = phi i1 [ true, %if.then96.lor.end_crit_edge ], [ %tobool98, %lor.rhs ]
  %wmm_used = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 2
  %frombool99 = zext i1 %66 to i8
  %67 = ptrtoint ptr %wmm_used to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool99, ptr %wmm_used, align 4
  %wmm_info.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 14
  %68 = ptrtoint ptr %wmm_info.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wmm_info.i, align 4
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %lor.end.if.else.i_crit_edge, label %land.lhs.true.i

lor.end.if.else.i_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %lor.end
  %wmm_info_len.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 64
  %70 = ptrtoint ptr %wmm_info_len.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %wmm_info_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %71)
  %cmp.i = icmp eq i8 %71, 7
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr i8, ptr %69, i32 5
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp5.i = icmp eq i8 %73, 1
  br i1 %cmp5.i, label %land.lhs.true2.i.if.end24.i_crit_edge, label %land.lhs.true2.i.if.else.i_crit_edge

land.lhs.true2.i.if.else.i_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true2.i.if.end24.i_crit_edge:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.else.i:                                        ; preds = %land.lhs.true2.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %lor.end.if.else.i_crit_edge
  %74 = ptrtoint ptr %wmm_param to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wmm_param, align 4
  %tobool9.not.i = icmp eq ptr %75, null
  br i1 %tobool9.not.i, label %if.else.i.is_uapsd_supported.exit_crit_edge, label %land.lhs.true10.i

if.else.i.is_uapsd_supported.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_uapsd_supported.exit

land.lhs.true10.i:                                ; preds = %if.else.i
  %wmm_param_len.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 65
  %76 = ptrtoint ptr %wmm_param_len.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %wmm_param_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %77)
  %cmp12.i = icmp eq i8 %77, 24
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true10.i.is_uapsd_supported.exit_crit_edge

land.lhs.true10.i.is_uapsd_supported.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_uapsd_supported.exit

land.lhs.true14.i:                                ; preds = %land.lhs.true10.i
  %arrayidx16.i = getelementptr i8, ptr %75, i32 5
  %78 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %79)
  %cmp18.i = icmp eq i8 %79, 1
  br i1 %cmp18.i, label %land.lhs.true14.i.if.end24.i_crit_edge, label %land.lhs.true14.i.is_uapsd_supported.exit_crit_edge

land.lhs.true14.i.is_uapsd_supported.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_uapsd_supported.exit

land.lhs.true14.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.end24.i:                                       ; preds = %land.lhs.true14.i.if.end24.i_crit_edge, %land.lhs.true2.i.if.end24.i_crit_edge
  %.pn.i = phi ptr [ %69, %land.lhs.true2.i.if.end24.i_crit_edge ], [ %75, %land.lhs.true14.i.if.end24.i_crit_edge ]
  %qos_info.0.in.i = getelementptr i8, ptr %.pn.i, i32 6
  %80 = ptrtoint ptr %qos_info.0.in.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %qos_info.0.i = load i8, ptr %qos_info.0.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qos_info.0.i)
  %tobool26.i = icmp slt i8 %qos_info.0.i, 0
  br label %is_uapsd_supported.exit

is_uapsd_supported.exit:                          ; preds = %if.end24.i, %land.lhs.true14.i.is_uapsd_supported.exit_crit_edge, %land.lhs.true10.i.is_uapsd_supported.exit_crit_edge, %if.else.i.is_uapsd_supported.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool26.i, %if.end24.i ], [ false, %land.lhs.true14.i.is_uapsd_supported.exit_crit_edge ], [ false, %land.lhs.true10.i.is_uapsd_supported.exit_crit_edge ], [ false, %if.else.i.is_uapsd_supported.exit_crit_edge ]
  %uapsd_supported = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 3
  %frombool100 = zext i1 %retval.0.i to i8
  %81 = ptrtoint ptr %uapsd_supported to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %frombool100, ptr %uapsd_supported, align 1
  %82 = ptrtoint ptr %parse_error199 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %parse_error199, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool102.not = icmp eq i8 %83, 0
  br i1 %tobool102.not, label %if.then103, label %is_uapsd_supported.exit.if.end109_crit_edge

is_uapsd_supported.exit.if.end109_crit_edge:      ; preds = %is_uapsd_supported.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then103:                                       ; preds = %is_uapsd_supported.exit
  call void @__sanitizer_cov_trace_pc() #11
  %valid_data104 = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 11
  %84 = ptrtoint ptr %valid_data104 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %valid_data104, align 1
  %86 = or i8 %85, 2
  store i8 %86, ptr %valid_data104, align 1
  br label %if.end109

if.end109:                                        ; preds = %if.then103, %is_uapsd_supported.exit.if.end109_crit_edge, %lor.lhs.false91.if.end109_crit_edge
  br i1 %beacon, label %if.then111, label %if.end109.if.end128_crit_edge

if.end109.if.end128_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then111:                                       ; preds = %if.end109
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %87 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %bf.load = load i16, ptr %encoding, align 1
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.lshr.off = add nsw i16 %bf.lshr, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.lshr.off)
  %switch = icmp ult i16 %bf.lshr.off, 2
  br i1 %switch, label %if.then111.if.end128_crit_edge, label %if.then124

if.then111.if.end128_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then124:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %88 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wiphy, align 8
  %band = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %90 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %band, align 4
  %idxprom = zext i8 %91 to i32
  %arrayidx112 = getelementptr %struct.wiphy, ptr %89, i32 0, i32 53, i32 %idxprom
  %92 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx112, align 4
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bitrates, align 4
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %96 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %rate_idx, align 1
  %idxprom125 = zext i8 %97 to i32
  %arrayidx126 = getelementptr %struct.ieee80211_rate, ptr %95, i32 %idxprom125
  %beacon_rate = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 6
  %98 = ptrtoint ptr %beacon_rate to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %arrayidx126, ptr %beacon_rate, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %if.then111.if.end128_crit_edge, %if.end109.if.end128_crit_edge
  %vht_cap_elem = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 18
  %99 = ptrtoint ptr %vht_cap_elem to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vht_cap_elem, align 4
  %tobool129.not = icmp eq ptr %100, null
  br i1 %tobool129.not, label %if.end128.if.end135_crit_edge, label %if.then130

if.end128.if.end135_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %100, align 1
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %if.end128.if.end135_crit_edge
  %.sink = phi i32 [ %103, %if.then130 ], [ 0, %if.end128.if.end135_crit_edge ]
  %104 = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 7
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %.sink, ptr %104, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_scan_rx(ptr noundef %local, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = and i16 %3, -1024
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %4, label %entry.cleanup122_crit_edge [
    i16 20480, label %entry.if.end14_crit_edge
    i16 -32768, label %entry.if.end14_crit_edge170
    i16 7168, label %if.then9
  ]

entry.if.end14_crit_edge170:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

entry.cleanup122_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = and i16 %3, -1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 7169, i16 %6)
  %7 = icmp eq i16 %6, 7169
  %. = select i1 %7, i32 18, i32 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %entry.if.end14_crit_edge, %entry.if.end14_crit_edge170
  %min_hdr_len.0 = phi i32 [ %., %if.then9 ], [ 36, %entry.if.end14_crit_edge ], [ 36, %entry.if.end14_crit_edge170 ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %min_hdr_len.0)
  %cmp = icmp ult i32 %9, %min_hdr_len.0
  br i1 %cmp, label %if.end14.cleanup122_crit_edge, label %if.end16

if.end14.cleanup122_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.end16:                                         ; preds = %if.end14
  %scan_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 85
  %10 = ptrtoint ptr %scan_sdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %scan_sdata, align 8
  %call18 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %land.lhs.true19, label %if.end16.do.end27_crit_edge

if.end16.do.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

land.lhs.true19:                                  ; preds = %if.end16
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true19.do.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b163 = load i1, ptr @ieee80211_scan_rx.__warned, align 1
  br i1 %.b163, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_scan_rx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 278, ptr noundef nonnull @.str.1) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true19.do.end27_crit_edge, %if.end16.do.end27_crit_edge
  %sched_scan_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 79
  %12 = ptrtoint ptr %sched_scan_sdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %sched_scan_sdata, align 4
  %call34 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %do.end27.do.end44_crit_edge

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

land.lhs.true36:                                  ; preds = %do.end27
  %call37 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.do.end44_crit_edge, label %land.lhs.true39

land.lhs.true36.do.end44_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

land.lhs.true39:                                  ; preds = %land.lhs.true36
  %.b157162 = load i1, ptr @ieee80211_scan_rx.__warned.2, align 1
  br i1 %.b157162, label %land.lhs.true39.do.end44_crit_edge, label %if.then41

land.lhs.true39.do.end44_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_scan_rx.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 279, ptr noundef nonnull @.str.1) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %land.lhs.true39.do.end44_crit_edge, %land.lhs.true36.do.end44_crit_edge, %do.end27.do.end44_crit_edge
  %tobool46.not = icmp eq ptr %11, null
  %tobool47.not = icmp eq ptr %13, null
  %spec.select = select i1 %tobool46.not, i1 %tobool47.not, i1 false, !prof !125
  br i1 %spec.select, label %do.end44.cleanup122_crit_edge, label %if.end52, !prof !125

do.end44.cleanup122_crit_edge:                    ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.end52:                                         ; preds = %do.end44
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 2
  %16 = and i16 %15, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %16)
  %cmp.i167 = icmp eq i16 %16, 20480
  br i1 %cmp.i167, label %if.then55, label %if.end52.if.end109_crit_edge

if.end52.if.end109_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then55:                                        ; preds = %if.end52
  %scan_req60 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 70
  %17 = ptrtoint ptr %scan_req60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %scan_req60, align 8
  %call62 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true64, label %if.then55.do.end72_crit_edge

if.then55.do.end72_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

land.lhs.true64:                                  ; preds = %if.then55
  %call65 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true64.do.end72_crit_edge, label %land.lhs.true67

land.lhs.true64.do.end72_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

land.lhs.true67:                                  ; preds = %land.lhs.true64
  %.b158161 = load i1, ptr @ieee80211_scan_rx.__warned.3, align 1
  br i1 %.b158161, label %land.lhs.true67.do.end72_crit_edge, label %if.then69

land.lhs.true67.do.end72_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

if.then69:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_scan_rx.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 289, ptr noundef nonnull @.str.1) #9
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %land.lhs.true67.do.end72_crit_edge, %land.lhs.true64.do.end72_crit_edge, %if.then55.do.end72_crit_edge
  %sched_scan_req78 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 80
  %19 = ptrtoint ptr %sched_scan_req78 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %sched_scan_req78, align 8
  %call80 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %land.lhs.true82, label %do.end72.do.end90_crit_edge

do.end72.do.end90_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end90

land.lhs.true82:                                  ; preds = %do.end72
  %call83 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.lhs.true82.do.end90_crit_edge, label %land.lhs.true85

land.lhs.true82.do.end90_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end90

land.lhs.true85:                                  ; preds = %land.lhs.true82
  %.b159160 = load i1, ptr @ieee80211_scan_rx.__warned.4, align 1
  br i1 %.b159160, label %land.lhs.true85.do.end90_crit_edge, label %if.then87

land.lhs.true85.do.end90_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end90

if.then87:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_scan_rx.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 290, ptr noundef nonnull @.str.1) #9
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %land.lhs.true85.do.end90_crit_edge, %land.lhs.true82.do.end90_crit_edge, %do.end72.do.end90_crit_edge
  %tobool92.not = icmp eq ptr %18, null
  br i1 %tobool92.not, label %do.end90.if.end94_crit_edge, label %if.then93

do.end90.if.end94_crit_edge:                      ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then93:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.cfg80211_scan_request, ptr %18, i32 0, i32 8
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %do.end90.if.end94_crit_edge
  %scan_req_flags.0 = phi i32 [ %22, %if.then93 ], [ 0, %do.end90.if.end94_crit_edge ]
  %tobool95.not = icmp eq ptr %20, null
  br i1 %tobool95.not, label %if.end94.if.end98_crit_edge, label %if.then96

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %flags97 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %20, i32 0, i32 7
  %23 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags97, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end94.if.end98_crit_edge
  %sched_scan_req_flags.0 = phi i32 [ %24, %if.then96 ], [ 0, %if.end94.if.end98_crit_edge ]
  %da = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 2
  %call99 = tail call fastcc zeroext i1 @ieee80211_scan_accept_presp(ptr noundef %11, i32 noundef %scan_req_flags.0, ptr noundef %da)
  br i1 %call99, label %if.end98.if.end109_crit_edge, label %land.lhs.true100

if.end98.if.end109_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

land.lhs.true100:                                 ; preds = %if.end98
  %call103 = tail call fastcc zeroext i1 @ieee80211_scan_accept_presp(ptr noundef %13, i32 noundef %sched_scan_req_flags.0, ptr noundef %da)
  br i1 %call103, label %land.lhs.true100.if.end109_crit_edge, label %land.lhs.true100.cleanup122_crit_edge

land.lhs.true100.cleanup122_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

land.lhs.true100.if.end109_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.end109:                                        ; preds = %land.lhs.true100.if.end109_crit_edge, %if.end98.if.end109_crit_edge, %if.end52.if.end109_crit_edge
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy, align 8
  %freq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %27 = ptrtoint ptr %freq.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %freq.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 3
  %conv.i = zext i16 %bf.lshr.i to i32
  %mul.i = mul nuw nsw i32 %conv.i, 1000
  %28 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i = icmp eq i16 %28, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 500
  %add.i = add nuw nsw i32 %mul.i, %cond.i
  %call111 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %26, i32 noundef %add.i) #9
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %if.end109.cleanup122_crit_edge, label %lor.lhs.false

if.end109.cleanup122_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

lor.lhs.false:                                    ; preds = %if.end109
  %flags113 = getelementptr inbounds %struct.ieee80211_channel, ptr %call111, i32 0, i32 4
  %29 = ptrtoint ptr %flags113 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags113, align 4
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool114.not = icmp eq i32 %and, 0
  br i1 %tobool114.not, label %if.end116, label %lor.lhs.false.cleanup122_crit_edge

lor.lhs.false.cleanup122_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.end116:                                        ; preds = %lor.lhs.false
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %call118 = tail call ptr @ieee80211_bss_info_update(ptr noundef %local, ptr noundef %cb.i, ptr noundef %1, i32 noundef %32, ptr noundef nonnull %call111)
  %tobool119.not = icmp eq ptr %call118, null
  br i1 %tobool119.not, label %if.end116.cleanup122_crit_edge, label %ieee80211_rx_bss_put.exit

if.end116.cleanup122_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

ieee80211_rx_bss_put.exit:                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy, align 8
  %add.ptr.i = getelementptr i8, ptr %call118, i32 -60
  tail call void @cfg80211_put_bss(ptr noundef %34, ptr noundef %add.ptr.i) #9
  br label %cleanup122

cleanup122:                                       ; preds = %ieee80211_rx_bss_put.exit, %if.end116.cleanup122_crit_edge, %lor.lhs.false.cleanup122_crit_edge, %if.end109.cleanup122_crit_edge, %land.lhs.true100.cleanup122_crit_edge, %do.end44.cleanup122_crit_edge, %if.end14.cleanup122_crit_edge, %entry.cleanup122_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_scan_accept_presp(ptr noundef readonly %sdata, i32 noundef %scan_flags, ptr nocapture noundef readonly %da) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sdata, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %and = and i32 %scan_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %0 = ptrtoint ptr %da to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %da, align 2
  %add.ptr1.i = getelementptr i8, ptr %da, i32 2
  %2 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %3, %1
  %add.ptr3.i = getelementptr i8, ptr %da, i32 4
  %4 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp ne i16 %and510.i, -1
  %and4 = and i32 %scan_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = and i1 %tobool5.not, %cmp.i
  br i1 %or.cond, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end3:                                          ; preds = %if.end
  %and4.old = and i32 %scan_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.old)
  %tobool5.not.old = icmp eq i32 %and4.old, 0
  br i1 %tobool5.not.old, label %if.end3.if.end7_crit_edge, label %if.end3.return_crit_edge

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.end3.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %6 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %da, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %9, %7
  %add.ptr.i = getelementptr i8, ptr %da, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i12 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  %12 = ptrtoint ptr %add.ptr1.i12 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr1.i12, align 2
  %xor37.i = xor i16 %13, %11
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i13 = icmp eq i32 %or.i, 0
  br label %return

return:                                           ; preds = %if.end7, %if.end3.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp.i13, %if.end7 ], [ false, %entry.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ], [ true, %if.end3.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_scan_completed(ptr noundef %hw, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aborted = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aborted, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  tail call fastcc void @trace_api_scan_completed(ptr noundef %hw, i1 noundef zeroext %tobool)
  %scanning = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 67
  tail call void @_set_bit(i32 noundef 3, ptr noundef %scanning) #9
  %2 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aborted, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %scanning) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %scan_info = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 77
  %4 = call ptr @memcpy(ptr %scan_info, ptr %info, i32 16)
  %scan_work = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 84
  tail call void @ieee80211_queue_delayed_work(ptr noundef %hw, ptr noundef %scan_work, i32 noundef 0) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_api_scan_completed(ptr noundef %local, i1 noundef zeroext %aborted) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_scan_completed, i32 0, i32 1), ptr blockaddress(@trace_api_scan_completed, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %call43 = tail call i32 @__traceiter_api_scan_completed(ptr noundef null, ptr noundef %local, i1 noundef zeroext %aborted) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !129
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !125

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_scan_completed, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_scan_completed, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_api_scan_completed.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_api_scan_completed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2181, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_run_deferred_scan(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !132

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 595, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 70
  %1 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %scan_req, align 8
  %tobool24.not = icmp eq ptr %2, null
  br i1 %tobool24.not, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %scanning = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 67
  %3 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scanning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool25.not = icmp eq i32 %4, 0
  br i1 %tobool25.not, label %if.end27, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end27:                                         ; preds = %lor.lhs.false
  %dep_map30 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i55 = tail call i32 @lock_is_held_type(ptr noundef %dep_map30, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool32.not = icmp eq i32 %call.i55, 0
  br i1 %tobool32.not, label %land.lhs.true, label %if.end27.do.end40_crit_edge

if.end27.do.end40_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

land.lhs.true:                                    ; preds = %if.end27
  %call33 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true.do.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true
  %.b54 = load i1, ptr @ieee80211_run_deferred_scan.__warned, align 1
  br i1 %.b54, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_run_deferred_scan.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 603, ptr noundef nonnull @.str.5) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true.do.end40_crit_edge, %if.end27.do.end40_crit_edge
  %scan_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 85
  %5 = ptrtoint ptr %scan_sdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scan_sdata, align 8
  %call42 = tail call fastcc zeroext i1 @ieee80211_can_scan(ptr noundef %local, ptr noundef %6)
  br i1 %call42, label %if.end44, label %do.end40.return_crit_edge

do.end40.return_crit_edge:                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end44:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  %scan_work = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 84
  %call45 = tail call i32 @round_jiffies_relative(i32 noundef 0) #9
  tail call void @ieee80211_queue_delayed_work(ptr noundef %local, ptr noundef %scan_work, i32 noundef %call45) #9
  br label %return

return:                                           ; preds = %if.end44, %do.end40.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_can_scan(ptr noundef %local, ptr nocapture noundef readonly %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1.i, align 4
  %call.i = tail call zeroext i1 @ieee80211_is_radar_required(ptr noundef %1) #9
  br i1 %call.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy.i, align 8
  %call2.i = tail call zeroext i1 @regulatory_pre_cac_allowed(ptr noundef %3) #9
  br i1 %call2.i, label %if.end4.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  %iflist_mtx.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx.i, i32 noundef 0) #9
  %interfaces.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 62
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4.i
  %sdata_iter.0.in.i = phi ptr [ %interfaces.i, %if.end4.i ], [ %sdata_iter.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %sdata_iter.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %sdata_iter.0.i = load ptr, ptr %sdata_iter.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %sdata_iter.0.i, %interfaces.i
  br i1 %cmp.not.i, label %__ieee80211_can_leave_ch.exit.thread12, label %for.body.i

__ieee80211_can_leave_ch.exit.thread12:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %iflist_mtx.i) #9
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %cac_started.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata_iter.0.i, i32 0, i32 1, i32 36
  %5 = ptrtoint ptr %cac_started.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cac_started.i, align 1, !range !124
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %__ieee80211_can_leave_ch.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

__ieee80211_can_leave_ch.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %iflist_mtx.i) #9
  br label %return

if.end:                                           ; preds = %__ieee80211_can_leave_ch.exit.thread12, %entry.if.end_crit_edge
  %roc_list = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 139
  %7 = ptrtoint ptr %roc_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %roc_list, align 4
  %cmp.i.not = icmp eq ptr %8, %roc_list
  br i1 %cmp.i.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %9 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %land.lhs.true, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end3
  %flags = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 36, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  br label %return

return:                                           ; preds = %if.end6, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %__ieee80211_can_leave_ch.exit, %if.end.i.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end6 ], [ false, %__ieee80211_can_leave_ch.exit ], [ false, %if.end.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ], [ false, %if.end.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_scan_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %next_delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5932
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_delay) #9
  %0 = ptrtoint ptr %next_delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %next_delay, align 4
  %mtx = getelementptr i8, ptr %work, i32 -276
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %in_reconfig.i = getelementptr i8, ptr %work, i32 -4222
  %1 = ptrtoint ptr %in_reconfig.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %in_reconfig.i, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.out_complete_crit_edge

entry.out_complete_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_complete

if.end.i:                                         ; preds = %entry
  %quiescing.i = getelementptr i8, ptr %work, i32 -4224
  %3 = ptrtoint ptr %quiescing.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %quiescing.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %ieee80211_can_run_worker.exit, label %if.end.i.out_complete_crit_edge

if.end.i.out_complete_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_complete

ieee80211_can_run_worker.exit:                    ; preds = %if.end.i
  %suspended.i = getelementptr i8, ptr %work, i32 -4227
  %5 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %suspended.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not.i = icmp eq i8 %6, 0
  br i1 %tobool4.not.i, label %do.body, label %ieee80211_can_run_worker.exit.out_complete_crit_edge

ieee80211_can_run_worker.exit.out_complete_crit_edge: ; preds = %ieee80211_can_run_worker.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_complete

do.body:                                          ; preds = %ieee80211_can_run_worker.exit
  %dep_map = getelementptr i8, ptr %work, i32 -212
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b171 = load i1, ptr @ieee80211_scan_work.__warned, align 1
  br i1 %.b171, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_scan_work.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1059, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %scan_sdata = getelementptr i8, ptr %work, i32 100
  %7 = ptrtoint ptr %scan_sdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scan_sdata, align 8
  %call.i172 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool14.not = icmp eq i32 %call.i172, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %do.end.do.end23_crit_edge

do.end.do.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

land.lhs.true15:                                  ; preds = %do.end
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true15.do.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %.b167170 = load i1, ptr @ieee80211_scan_work.__warned.6, align 1
  br i1 %.b167170, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_scan_work.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1061, ptr noundef nonnull @.str.5) #9
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true15.do.end23_crit_edge, %do.end.do.end23_crit_edge
  %scan_req25 = getelementptr i8, ptr %work, i32 -140
  %9 = ptrtoint ptr %scan_req25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scan_req25, align 8
  %scanning = getelementptr i8, ptr %work, i32 -184
  %11 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %scanning, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool27.not = icmp eq i32 %13, 0
  br i1 %tobool27.not, label %if.end32, label %if.then28

if.then28:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %scanning) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31 = icmp ne i32 %call30, 0
  br label %out_complete

if.end32:                                         ; preds = %do.end23
  %call34 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %scanning) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %scanning) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39 = icmp ne i32 %call38, 0
  br label %out_complete

if.end41:                                         ; preds = %if.end32
  %tobool42.not = icmp eq ptr %8, null
  %tobool43.not = icmp eq ptr %10, null
  %or.cond = select i1 %tobool42.not, i1 true, i1 %tobool43.not
  br i1 %or.cond, label %if.end41.out_crit_edge, label %if.end45

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end45:                                         ; preds = %if.end41
  %14 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scanning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool47.not = icmp eq i32 %15, 0
  br i1 %tobool47.not, label %if.then48, label %do.body118.preheader

do.body118.preheader:                             ; preds = %if.end45
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 9
  %next_scan_state = getelementptr i8, ptr %work, i32 -4
  %ops.i = getelementptr i8, ptr %work, i32 -5200
  %leave_oper_channel_time.i189 = getelementptr i8, ptr %work, i32 -8
  %scan_channel_idx.i179 = getelementptr i8, ptr %work, i32 -100
  %scan_chandef.i = getelementptr i8, ptr %work, i32 -132
  %center_freq1.i = getelementptr i8, ptr %work, i32 -124
  %freq1_offset.i = getelementptr i8, ptr %work, i32 -108
  %center_freq2.i = getelementptr i8, ptr %work, i32 -120
  %width18.i = getelementptr i8, ptr %work, i32 -128
  %_oper_chandef.i = getelementptr i8, ptr %work, i32 104
  %width.i.i = getelementptr i8, ptr %work, i32 108
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %10, i32 0, i32 2
  %iflist_mtx.i = getelementptr i8, ptr %work, i32 -460
  %interfaces.i = getelementptr i8, ptr %work, i32 -476
  br label %do.body118

if.then48:                                        ; preds = %if.end45
  %16 = ptrtoint ptr %scan_req25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr null, ptr %scan_req25, align 8
  %17 = ptrtoint ptr %scan_sdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr null, ptr %scan_sdata, align 8
  %call75 = tail call fastcc i32 @__ieee80211_start_scan(ptr noundef nonnull %8, ptr noundef nonnull %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then48.out_crit_edge, label %cleanup.thread

if.then48.out_crit_edge:                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cleanup.thread:                                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !133
  %18 = ptrtoint ptr %scan_req25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %10, ptr %scan_req25, align 8
  br label %out_complete

do.body118:                                       ; preds = %do.cond130.do.body118_crit_edge, %do.body118.preheader
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body118.out_complete_crit_edge, label %if.end121

do.body118.out_complete_crit_edge:                ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_complete

if.end121:                                        ; preds = %do.body118
  %21 = ptrtoint ptr %next_scan_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %next_scan_state, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %22, label %if.end121.do.cond130thread-pre-split_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb125
    i32 2, label %sw.bb126
    i32 3, label %do.cond130.thread
    i32 4, label %sw.bb128
    i32 5, label %if.end121.out_complete_crit_edge
  ]

if.end121.out_complete_crit_edge:                 ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_complete

if.end121.do.cond130thread-pre-split_crit_edge:   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond130thread-pre-split

sw.bb:                                            ; preds = %if.end121
  %24 = ptrtoint ptr %scan_channel_idx.i179 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_channel_idx.i179, align 8
  %26 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp122.not = icmp ult i32 %25, %27
  br i1 %cmp122.not, label %if.end124, label %sw.bb.out_complete_crit_edge

sw.bb.out_complete_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_complete

if.end124:                                        ; preds = %sw.bb
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx.i, i32 noundef 0) #9
  %28 = ptrtoint ptr %interfaces.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %sdata.072.i = load ptr, ptr %interfaces.i, align 8
  %cmp.not73.i = icmp eq ptr %sdata.072.i, %interfaces.i
  br i1 %cmp.not73.i, label %if.end124.for.end.i_crit_edge, label %if.end124.for.body.i_crit_edge

if.end124.for.body.i_crit_edge:                   ; preds = %if.end124
  br label %for.body.i

if.end124.for.end.i_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end124.for.body.i_crit_edge
  %sdata.075.i = phi ptr [ %sdata.0.i, %for.inc.i.for.body.i_crit_edge ], [ %sdata.072.i, %if.end124.for.body.i_crit_edge ]
  %associated.0.off074.i = phi i1 [ %associated.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %if.end124.for.body.i_crit_edge ]
  %state.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.075.i, i32 0, i32 9
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i173

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i173:                                      ; preds = %for.body.i
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.075.i, i32 0, i32 59
  %31 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp2.i = icmp eq i32 %32, 2
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i173.for.inc.i_crit_edge

if.end.i173.for.inc.i_crit_edge:                  ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then3.i:                                       ; preds = %if.end.i173
  %associated4.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.075.i, i32 0, i32 57, i32 0, i32 24, i32 28
  %33 = ptrtoint ptr %associated4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %associated4.i, align 8
  %tobool.not.i174 = icmp eq ptr %34, null
  br i1 %tobool.not.i174, label %if.then3.i.for.inc.i_crit_edge, label %if.then5.i

if.then3.i.for.inc.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.then3.i
  %dev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.075.i, i32 0, i32 6
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 8
  %37 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i, label %if.then5.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then5.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then5.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then5.i.rcu_read_lock.exit.i.i_crit_edge
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 104
  %41 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp44.not.i.i = icmp eq i32 %42, 0
  br i1 %cmp44.not.i.i, label %rcu_read_lock.exit.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

rcu_read_lock.exit.i.i.for.end.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %rcu_read_lock.exit.i.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 103
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %qdisc_is_empty.exit.i.i
  %inc.i.i = add nuw i32 %i.045.i.i, 1
  %43 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %44
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.045.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %45 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i.i.i, align 128
  %qdisc.i.i = getelementptr %struct.netdev_queue, ptr %46, i32 %i.045.i.i, i32 2
  %47 = ptrtoint ptr %qdisc.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %qdisc.i.i, align 8
  %call2.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.body.i.i.do.end8.i.i_crit_edge

for.body.i.i.do.end8.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b18.i.i = load i1, ptr @qdisc_all_tx_empty.__warned, align 1
  br i1 %.b18.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_all_tx_empty.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 777, ptr noundef nonnull @.str.1) #9
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %for.body.i.i.do.end8.i.i_crit_edge
  %flags.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %do.end.i.i.i, label %if.then.i19.i.i

if.then.i19.i.i:                                  ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %state.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %48, i32 0, i32 20
  %51 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and.i4.i.i.i = and i32 %52, 12
  br label %qdisc_is_empty.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %48, i32 0, i32 17, i32 2
  %53 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %qlen.i.i.i, align 8
  br label %qdisc_is_empty.exit.i.i

qdisc_is_empty.exit.i.i:                          ; preds = %do.end.i.i.i, %if.then.i19.i.i
  %retval.0.in.i.i.i = phi i32 [ %and.i4.i.i.i, %if.then.i19.i.i ], [ %54, %do.end.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i.i.i)
  %retval.0.i.i.i = icmp eq i32 %retval.0.in.i.i.i, 0
  br i1 %retval.0.i.i.i, label %for.cond.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %qdisc_is_empty.exit.i.i
  %call.i20.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i20.i.i, label %if.then11.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i23.i.i

if.then11.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i23.i.i:                            ; preds = %if.then11.i.i
  %call1.i21.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i.i)
  %tobool.not.i22.i.i = icmp eq i32 %call1.i21.i.i, 0
  br i1 %tobool.not.i22.i.i, label %land.lhs.true.i23.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i25.i.i

land.lhs.true.i23.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i25.i.i:                           ; preds = %land.lhs.true.i23.i.i
  %.b4.i24.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24.i.i, label %land.lhs.true2.i25.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i26.i.i

land.lhs.true2.i25.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

if.then.i26.i.i:                                  ; preds = %land.lhs.true2.i25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i26.i.i, %land.lhs.true2.i25.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i23.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.then11.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %55 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i.i27.i.c.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i27.i.c.i to ptr
  %preempt_count.i.i.i.i28.i.c.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i28.i.c.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i28.i.c.i, align 4
  %sub.i.i.i.i.c.i = add i32 %58, -1
  store volatile i32 %sub.i.i.i.i.c.i, ptr %preempt_count.i.i.i.i28.i.c.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %for.end.i

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.for.end.i.i_crit_edge
  %call.i30.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i30.i.i, label %for.end.i.i.rcu_read_unlock.exit41.i.i_crit_edge, label %land.lhs.true.i33.i.i

for.end.i.i.rcu_read_unlock.exit41.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit41.i.i

land.lhs.true.i33.i.i:                            ; preds = %for.end.i.i
  %call1.i31.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31.i.i)
  %tobool.not.i32.i.i = icmp eq i32 %call1.i31.i.i, 0
  br i1 %tobool.not.i32.i.i, label %land.lhs.true.i33.i.i.rcu_read_unlock.exit41.i.i_crit_edge, label %land.lhs.true2.i35.i.i

land.lhs.true.i33.i.i.rcu_read_unlock.exit41.i.i_crit_edge: ; preds = %land.lhs.true.i33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit41.i.i

land.lhs.true2.i35.i.i:                           ; preds = %land.lhs.true.i33.i.i
  %.b4.i34.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34.i.i, label %land.lhs.true2.i35.i.i.rcu_read_unlock.exit41.i.i_crit_edge, label %if.then.i36.i.i

land.lhs.true2.i35.i.i.rcu_read_unlock.exit41.i.i_crit_edge: ; preds = %land.lhs.true2.i35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit41.i.i

if.then.i36.i.i:                                  ; preds = %land.lhs.true2.i35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_unlock.exit41.i.i

rcu_read_unlock.exit41.i.i:                       ; preds = %if.then.i36.i.i, %land.lhs.true2.i35.i.i.rcu_read_unlock.exit41.i.i_crit_edge, %land.lhs.true.i33.i.i.rcu_read_unlock.exit41.i.i_crit_edge, %for.end.i.i.rcu_read_unlock.exit41.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %59 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i.i27.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i27.i.i to ptr
  %preempt_count.i.i.i.i28.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i28.i.i, align 4
  %sub.i.i.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i28.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %rcu_read_unlock.exit41.i.i, %if.then3.i.for.inc.i_crit_edge, %if.end.i173.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %associated.1.off0.i = phi i1 [ true, %rcu_read_unlock.exit41.i.i ], [ %associated.0.off074.i, %if.then3.i.for.inc.i_crit_edge ], [ %associated.0.off074.i, %if.end.i173.for.inc.i_crit_edge ], [ %associated.0.off074.i, %for.body.i.for.inc.i_crit_edge ]
  %63 = ptrtoint ptr %sdata.075.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %sdata.0.i = load ptr, ptr %sdata.075.i, align 8
  %cmp.not.i = icmp eq ptr %sdata.0.i, %interfaces.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %rcu_read_unlock.exit.i.i, %if.end124.for.end.i_crit_edge
  %cmp.not70.i = phi i1 [ false, %rcu_read_unlock.exit.i.i ], [ true, %if.end124.for.end.i_crit_edge ], [ true, %for.inc.i.for.end.i_crit_edge ]
  %associated.2.off0.i = phi i1 [ true, %rcu_read_unlock.exit.i.i ], [ false, %if.end124.for.end.i_crit_edge ], [ %associated.1.off0.i, %for.inc.i.for.end.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %iflist_mtx.i) #9
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i, label %for.end.i.do.end.i_crit_edge

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %call19.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true21.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %.b65.i = load i1, ptr @ieee80211_scan_state_decision.__warned, align 1
  br i1 %.b65.i, label %land.lhs.true21.i.do.end.i_crit_edge, label %if.then23.i

land.lhs.true21.i.do.end.i_crit_edge:             ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then23.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_scan_state_decision.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 886, ptr noundef nonnull @.str.5) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then23.i, %land.lhs.true21.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.end.i.do.end.i_crit_edge
  %64 = ptrtoint ptr %scan_req25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %scan_req25, align 8
  %66 = ptrtoint ptr %scan_channel_idx.i179 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scan_channel_idx.i179, align 8
  %arrayidx.i = getelementptr %struct.cfg80211_scan_request, ptr %65, i32 0, i32 22, i32 %67
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 4
  %70 = ptrtoint ptr %leave_oper_channel_time.i189 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %leave_oper_channel_time.i189, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %associated.2.off0.not.i = xor i1 %associated.2.off0.i, true
  %brmerge.i = or i1 %cmp.not70.i, %associated.2.off0.not.i
  br i1 %brmerge.i, label %if.else37.i, label %if.then33.i

if.then33.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %65, i32 0, i32 8
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool34.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool34.not.i, i32 3, i32 5
  br label %ieee80211_scan_state_decision.exit

if.else37.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %69, i32 0, i32 4
  %75 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %76, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i68.i = icmp eq i32 %and.i.i, 0
  %..i.neg78.i = select i1 %tobool.not.i68.i, i32 -6, i32 -11
  %add28.neg.i = add i32 %71, 12
  %add.i = sub i32 %add28.neg.i, %72
  %sub.i = add i32 %add.i, %..i.neg78.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp29.i = icmp sgt i32 %sub.i, -1
  %brmerge67.i = select i1 %associated.2.off0.not.i, i1 true, i1 %cmp29.i
  %spec.select.i = select i1 %brmerge67.i, i32 1, i32 3
  br label %ieee80211_scan_state_decision.exit

ieee80211_scan_state_decision.exit:               ; preds = %if.else37.i, %if.then33.i
  %next_scan_state.0.i = phi i32 [ %..i, %if.then33.i ], [ %spec.select.i, %if.else37.i ]
  %77 = ptrtoint ptr %next_scan_state to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %next_scan_state.0.i, ptr %next_scan_state, align 8
  %78 = ptrtoint ptr %next_delay to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %next_delay, align 4
  br label %do.cond130

sw.bb125:                                         ; preds = %if.end121
  %call.i.i176 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176)
  %tobool.not.i177 = icmp eq i32 %call.i.i176, 0
  br i1 %tobool.not.i177, label %land.lhs.true.i178, label %sw.bb125.do.end.i181_crit_edge

sw.bb125.do.end.i181_crit_edge:                   ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i181

land.lhs.true.i178:                               ; preds = %sw.bb125
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i178.do.end.i181_crit_edge, label %land.lhs.true3.i

land.lhs.true.i178.do.end.i181_crit_edge:         ; preds = %land.lhs.true.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i181

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i178
  %.b102.i = load i1, ptr @ieee80211_scan_state_set_channel.__warned, align 1
  br i1 %.b102.i, label %land.lhs.true3.i.do.end.i181_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i181_crit_edge:           ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i181

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_scan_state_set_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 927, ptr noundef nonnull @.str.5) #9
  br label %do.end.i181

do.end.i181:                                      ; preds = %if.then.i, %land.lhs.true3.i.do.end.i181_crit_edge, %land.lhs.true.i178.do.end.i181_crit_edge, %sw.bb125.do.end.i181_crit_edge
  %79 = ptrtoint ptr %scan_req25 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %scan_req25, align 8
  %81 = ptrtoint ptr %scan_channel_idx.i179 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %scan_channel_idx.i179, align 8
  %arrayidx.i180 = getelementptr %struct.cfg80211_scan_request, ptr %80, i32 0, i32 22, i32 %82
  %83 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i180, align 4
  %85 = ptrtoint ptr %scan_chandef.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %scan_chandef.i, align 8
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %84, i32 0, i32 1
  %86 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %center_freq.i, align 4
  %88 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %center_freq1.i, align 8
  %freq_offset.i = getelementptr inbounds %struct.ieee80211_channel, ptr %84, i32 0, i32 2
  %89 = ptrtoint ptr %freq_offset.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %freq_offset.i, align 4
  %91 = ptrtoint ptr %freq1_offset.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %freq1_offset.i, align 8
  %92 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %center_freq2.i, align 4
  %93 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %94)
  %cmp.i = icmp eq i32 %94, 4
  br i1 %cmp.i, label %if.then10.i, label %if.end13.i

if.then10.i:                                      ; preds = %do.end.i181
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 @ieee80211_s1g_channel_width(ptr noundef %84) #9
  %95 = ptrtoint ptr %width18.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call11.i, ptr %width18.i, align 4
  br label %set_channel.i

if.end13.i:                                       ; preds = %do.end.i181
  %scan_width.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %80, i32 0, i32 3
  %96 = ptrtoint ptr %scan_width.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %scan_width.i, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %97, label %sw.bb19.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb16.i
    i32 4, label %if.end13.i.do.end41.i_crit_edge
    i32 3, label %if.end13.i.do.end41.i_crit_edge197
  ]

if.end13.i.do.end41.i_crit_edge197:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41.i

if.end13.i.do.end41.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41.i

sw.bb.i:                                          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %width18.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 6, ptr %width18.i, align 4
  br label %set_channel.i

sw.bb16.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %width18.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 7, ptr %width18.i, align 4
  br label %set_channel.i

sw.bb19.i:                                        ; preds = %if.end13.i
  %101 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %102)
  %switch.selectcmp.i.i = icmp eq i32 %102, 7
  %switch.select.i.i = zext i1 %switch.selectcmp.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %102)
  %switch.selectcmp2.i.i = icmp eq i32 %102, 6
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 2, i32 %switch.select.i.i
  %103 = ptrtoint ptr %_oper_chandef.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %_oper_chandef.i, align 4
  %cmp23.i = icmp eq ptr %84, %104
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select3.i.i, i32 %97)
  %cmp26.i = icmp eq i32 %switch.select3.i.i, %97
  %or.cond.i = select i1 %cmp23.i, i1 %cmp26.i, i1 false
  br i1 %or.cond.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #11
  %105 = call ptr @memcpy(ptr %scan_chandef.i, ptr %_oper_chandef.i, i32 28)
  br label %set_channel.i

if.else.i:                                        ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %width18.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %width18.i, align 4
  br label %set_channel.i

do.end41.i:                                       ; preds = %if.end13.i.do.end41.i_crit_edge, %if.end13.i.do.end41.i_crit_edge197
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 970, i32 noundef 9, ptr noundef null) #9
  br label %set_channel.i

set_channel.i:                                    ; preds = %do.end41.i, %if.else.i, %if.then27.i, %sw.bb16.i, %sw.bb.i, %if.then10.i
  %call55.i = tail call i32 @ieee80211_hw_config(ptr noundef %add.ptr, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  %107 = ptrtoint ptr %scan_channel_idx.i179 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %scan_channel_idx.i179, align 8
  %inc.i = add i32 %108, 1
  store i32 %inc.i, ptr %scan_channel_idx.i179, align 8
  br i1 %tobool56.not.i, label %if.end62.i, label %set_channel.i.ieee80211_scan_state_set_channel.exit_crit_edge

set_channel.i.ieee80211_scan_state_set_channel.exit_crit_edge: ; preds = %set_channel.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_scan_state_set_channel.exit

if.end62.i:                                       ; preds = %set_channel.i
  %flags.i182 = getelementptr inbounds %struct.ieee80211_channel, ptr %84, i32 0, i32 4
  %109 = ptrtoint ptr %flags.i182 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i182, align 4
  %and.i183 = and i32 %110, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool63.not.i = icmp eq i32 %and.i183, 0
  br i1 %tobool63.not.i, label %lor.lhs.false.i, label %if.end62.i.cleanup.sink.split.i_crit_edge

if.end62.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  %n_ssids.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %80, i32 0, i32 1
  %111 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %n_ssids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool64.not.i = icmp eq i32 %112, 0
  %spec.select.i184 = select i1 %tobool64.not.i, i32 11, i32 3
  %spec.select104.i = select i1 %tobool64.not.i, i32 0, i32 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %lor.lhs.false.i, %if.end62.i.cleanup.sink.split.i_crit_edge
  %.sink103.i = phi i32 [ 11, %if.end62.i.cleanup.sink.split.i_crit_edge ], [ %spec.select.i184, %lor.lhs.false.i ]
  %.sink.ph.i = phi i32 [ 0, %if.end62.i.cleanup.sink.split.i_crit_edge ], [ %spec.select104.i, %lor.lhs.false.i ]
  %113 = ptrtoint ptr %next_delay to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %.sink103.i, ptr %next_delay, align 4
  br label %ieee80211_scan_state_set_channel.exit

ieee80211_scan_state_set_channel.exit:            ; preds = %cleanup.sink.split.i, %set_channel.i.ieee80211_scan_state_set_channel.exit_crit_edge
  %.sink.i = phi i32 [ 0, %set_channel.i.ieee80211_scan_state_set_channel.exit_crit_edge ], [ %.sink.ph.i, %cleanup.sink.split.i ]
  %114 = ptrtoint ptr %next_scan_state to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %.sink.i, ptr %next_scan_state, align 8
  br label %do.cond130thread-pre-split

sw.bb126:                                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ieee80211_scan_state_send_probe(ptr noundef %add.ptr, ptr noundef nonnull %next_delay)
  br label %do.cond130thread-pre-split

do.cond130.thread:                                ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %scan_chandef.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %scan_chandef.i, align 8
  %call.i186 = tail call i32 @ieee80211_hw_config(ptr noundef %add.ptr, i32 noundef 64) #9
  tail call void @ieee80211_offchannel_return(ptr noundef %add.ptr) #9
  %116 = ptrtoint ptr %next_delay to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 20, ptr %next_delay, align 4
  %117 = ptrtoint ptr %next_scan_state to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 4, ptr %next_scan_state, align 8
  br label %do.end132

sw.bb128:                                         ; preds = %if.end121
  tail call void @ieee80211_offchannel_stop_vifs(ptr noundef %add.ptr) #9
  %118 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i, align 4
  %flush.i = getelementptr inbounds %struct.ieee80211_ops, ptr %119, i32 0, i32 53
  %120 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %flush.i, align 4
  %tobool.not.i187 = icmp eq ptr %121, null
  br i1 %tobool.not.i187, label %sw.bb128.ieee80211_scan_state_resume.exit_crit_edge, label %if.then.i188

sw.bb128.ieee80211_scan_state_resume.exit_crit_edge: ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_scan_state_resume.exit

if.then.i188:                                     ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ieee80211_flush_queues(ptr noundef %add.ptr, ptr noundef null, i1 noundef zeroext false) #9
  br label %ieee80211_scan_state_resume.exit

ieee80211_scan_state_resume.exit:                 ; preds = %if.then.i188, %sw.bb128.ieee80211_scan_state_resume.exit_crit_edge
  %storemerge.i = phi i32 [ 0, %if.then.i188 ], [ 10, %sw.bb128.ieee80211_scan_state_resume.exit_crit_edge ]
  %122 = ptrtoint ptr %next_delay to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %storemerge.i, ptr %next_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  %124 = ptrtoint ptr %leave_oper_channel_time.i189 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %leave_oper_channel_time.i189, align 4
  %125 = ptrtoint ptr %next_scan_state to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %next_scan_state, align 8
  br label %do.cond130thread-pre-split

do.cond130thread-pre-split:                       ; preds = %ieee80211_scan_state_resume.exit, %sw.bb126, %ieee80211_scan_state_set_channel.exit, %if.end121.do.cond130thread-pre-split_crit_edge
  %126 = ptrtoint ptr %next_delay to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr = load i32, ptr %next_delay, align 4
  br label %do.cond130

do.cond130:                                       ; preds = %do.cond130thread-pre-split, %ieee80211_scan_state_decision.exit
  %127 = phi i32 [ %.pr, %do.cond130thread-pre-split ], [ 0, %ieee80211_scan_state_decision.exit ]
  %cmp131 = icmp eq i32 %127, 0
  br i1 %cmp131, label %do.cond130.do.body118_crit_edge, label %do.cond130.do.end132_crit_edge

do.cond130.do.end132_crit_edge:                   ; preds = %do.cond130
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end132

do.cond130.do.body118_crit_edge:                  ; preds = %do.cond130
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body118

do.end132:                                        ; preds = %do.cond130.do.end132_crit_edge, %do.cond130.thread
  %128 = phi i32 [ 20, %do.cond130.thread ], [ %127, %do.cond130.do.end132_crit_edge ]
  tail call void @ieee80211_queue_delayed_work(ptr noundef %add.ptr, ptr noundef %work, i32 noundef %128) #9
  br label %out

out_complete:                                     ; preds = %sw.bb.out_complete_crit_edge, %if.end121.out_complete_crit_edge, %do.body118.out_complete_crit_edge, %cleanup.thread, %if.then36, %if.then28, %ieee80211_can_run_worker.exit.out_complete_crit_edge, %if.end.i.out_complete_crit_edge, %entry.out_complete_crit_edge
  %aborted.1.off0 = phi i1 [ %tobool31, %if.then28 ], [ %tobool39, %if.then36 ], [ true, %ieee80211_can_run_worker.exit.out_complete_crit_edge ], [ true, %cleanup.thread ], [ true, %entry.out_complete_crit_edge ], [ true, %if.end.i.out_complete_crit_edge ], [ true, %if.end121.out_complete_crit_edge ], [ false, %sw.bb.out_complete_crit_edge ], [ true, %do.body118.out_complete_crit_edge ]
  tail call fastcc void @__ieee80211_scan_completed(ptr noundef %add.ptr, i1 noundef zeroext %aborted.1.off0)
  br label %out

out:                                              ; preds = %out_complete, %do.end132, %if.then48.out_crit_edge, %if.end41.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_delay) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ieee80211_start_scan(ptr noundef %sdata, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %next_delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %hw_scan2 = getelementptr inbounds %struct.ieee80211_ops, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %hw_scan2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_scan2, align 4
  %tobool = icmp ne ptr %5, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !132

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 684, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 70
  %7 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scan_req, align 8
  %tobool27.not = icmp eq ptr %8, null
  br i1 %tobool27.not, label %if.end29, label %if.end.cleanup379_crit_edge

if.end.cleanup379_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup379

if.end29:                                         ; preds = %if.end
  %9 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %local1, align 4
  %call.i478 = tail call zeroext i1 @ieee80211_is_radar_required(ptr noundef %10) #9
  br i1 %call.i478, label %if.end.i479, label %if.end29.if.end32_crit_edge

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end.i479:                                      ; preds = %if.end29
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy.i, align 8
  %call2.i = tail call zeroext i1 @regulatory_pre_cac_allowed(ptr noundef %12) #9
  br i1 %call2.i, label %if.end4.i480, label %if.end.i479.cleanup379_crit_edge

if.end.i479.cleanup379_crit_edge:                 ; preds = %if.end.i479
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup379

if.end4.i480:                                     ; preds = %if.end.i479
  %iflist_mtx.i = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx.i, i32 noundef 0) #9
  %interfaces.i = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 62
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4.i480
  %sdata_iter.0.in.i = phi ptr [ %interfaces.i, %if.end4.i480 ], [ %sdata_iter.0.i, %for.body.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %sdata_iter.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %sdata_iter.0.i = load ptr, ptr %sdata_iter.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %sdata_iter.0.i, %interfaces.i
  br i1 %cmp.not.i, label %__ieee80211_can_leave_ch.exit.thread497, label %for.body.i

__ieee80211_can_leave_ch.exit.thread497:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %iflist_mtx.i) #9
  br label %if.end32

for.body.i:                                       ; preds = %for.cond.i
  %cac_started.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata_iter.0.i, i32 0, i32 1, i32 36
  %14 = ptrtoint ptr %cac_started.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cac_started.i, align 1, !range !124
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %__ieee80211_can_leave_ch.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

__ieee80211_can_leave_ch.exit:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %iflist_mtx.i) #9
  br label %cleanup379

if.end32:                                         ; preds = %__ieee80211_can_leave_ch.exit.thread497, %if.end29.if.end32_crit_edge
  %call33 = tail call fastcc zeroext i1 @ieee80211_can_scan(ptr noundef %1, ptr noundef %sdata)
  br i1 %call33, label %again.preheader, label %do.body35

again.preheader:                                  ; preds = %if.end32
  %scan_ies_len = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 75
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 5
  %hw_scan_ies_bufsize = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 76
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 2
  %hw_scan_req499 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 71
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 1
  %flags = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 8
  %duration = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 6
  %duration_mandatory = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 7
  %hw_scan_band = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 73
  %n_6ghz_params = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 20
  %scan_6ghz_params = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 21
  %scan_6ghz = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 19
  %scan_sdata250 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 85
  %scan_addr = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 81
  %mac_addr = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 11
  %mac_addr_mask = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 12
  %arrayidx.1.i = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 12, i32 1
  %arrayidx1.1.i = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 81, i32 1
  %arrayidx4.1.i = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 11, i32 1
  %arrayidx.2.i = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 12, i32 2
  %arrayidx1.2.i = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 81, i32 2
  %arrayidx4.2.i = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 11, i32 2
  %arrayidx.3.i = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 12, i32 3
  %arrayidx1.3.i = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 81, i32 3
  %arrayidx4.3.i = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 11, i32 3
  %arrayidx.4.i = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 12, i32 4
  %arrayidx1.4.i = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 81, i32 4
  %arrayidx4.4.i = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 11, i32 4
  %arrayidx.5.i = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 12, i32 5
  %arrayidx1.5.i = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 81, i32 5
  %arrayidx4.5.i = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 11, i32 5
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %channels281 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22
  %_oper_chandef = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 86
  %scanning303 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 67
  %use_chanctx.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 26
  %flags.i486 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 8
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %dev.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %name26.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %p2p.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 3
  br label %again

do.body35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !134
  %16 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %req, ptr %scan_req, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !135
  %scan_sdata101 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 85
  %17 = ptrtoint ptr %scan_sdata101 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %sdata, ptr %scan_sdata101, align 8
  br label %cleanup379

again:                                            ; preds = %ieee80211_vif_type_p2p.exit.again_crit_edge, %again.preheader
  %hw_scan.0.off0 = phi i1 [ false, %ieee80211_vif_type_p2p.exit.again_crit_edge ], [ %tobool, %again.preheader ]
  br i1 %hw_scan.0.off0, label %if.then115, label %again.do.body178_crit_edge

again.do.body178_crit_edge:                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body178

if.then115:                                       ; preds = %again
  %18 = ptrtoint ptr %scan_ies_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_ies_len, align 4
  %20 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ie_len, align 4
  %add = add i32 %21, %19
  %22 = ptrtoint ptr %hw_scan_ies_bufsize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %hw_scan_ies_bufsize, align 8
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %25 = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not = icmp eq i32 %25, 0
  br i1 %tobool.i.not, label %if.then115.if.end8.i_crit_edge, label %for.cond.preheader

if.then115.if.end8.i_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.cond.preheader:                               ; preds = %if.then115
  %26 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp118515.not = icmp eq i32 %27, 0
  br i1 %cmp118515.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %bands_counted.0518 = phi i8 [ %bands_counted.1, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %n_bands.0517 = phi i32 [ %n_bands.1, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0516 = phi i32 [ %inc128, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv = zext i8 %bands_counted.0518 to i32
  %arrayidx = getelementptr %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22, i32 %i.0516
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %shl = shl nuw i32 1, %31
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool119.not = icmp eq i32 %and, 0
  %32 = trunc i32 %shl to i8
  %inc = zext i1 %tobool119.not to i32
  %n_bands.1 = add i32 %n_bands.0517, %inc
  %conv127 = select i1 %tobool119.not, i8 %32, i8 0
  %bands_counted.1 = or i8 %conv127, %bands_counted.0518
  %inc128 = add nuw i32 %i.0516, 1
  %exitcond.not = icmp eq i32 %inc128, %27
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %n_bands.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %n_bands.1, %for.body.for.end_crit_edge ]
  %mul = mul i32 %n_bands.0.lcssa, %add
  %33 = ptrtoint ptr %hw_scan_ies_bufsize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul, ptr %hw_scan_ies_bufsize, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.end, %if.then115.if.end8.i_crit_edge
  %34 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_channels, align 8
  %mul132 = shl i32 %35, 2
  %add133 = add i32 %mul132, 176
  %36 = ptrtoint ptr %hw_scan_ies_bufsize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_scan_ies_bufsize, align 8
  %add135 = add i32 %add133, %37
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add135, i32 noundef 3264) #12
  %38 = ptrtoint ptr %hw_scan_req499 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i, ptr %hw_scan_req499, align 4
  %tobool138.not = icmp eq ptr %call9.i, null
  br i1 %tobool138.not, label %if.end8.i.cleanup379_crit_edge, label %if.end140

if.end8.i.cleanup379_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup379

if.end140:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req, align 8
  %req142 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %call9.i, i32 0, i32 1
  %41 = ptrtoint ptr %req142 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %req142, align 8
  %42 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_ssids, align 4
  %44 = ptrtoint ptr %hw_scan_req499 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_scan_req499, align 4
  %n_ssids146 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %45, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %n_ssids146 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %n_ssids146, align 4
  %47 = load ptr, ptr %hw_scan_req499, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 176
  %48 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_channels, align 8
  %mul149 = shl i32 %49, 2
  %add.ptr150 = getelementptr i8, ptr %add.ptr, i32 %mul149
  %ie = getelementptr inbounds %struct.ieee80211_scan_request, ptr %47, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %ie to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr150, ptr %ie, align 8
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %53 = load ptr, ptr %hw_scan_req499, align 4
  %flags155 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %53, i32 0, i32 1, i32 8
  %54 = ptrtoint ptr %flags155 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %flags155, align 4
  %55 = load ptr, ptr %hw_scan_req499, align 4
  %bssid = getelementptr inbounds %struct.ieee80211_scan_request, ptr %55, i32 0, i32 1, i32 13
  %56 = call ptr @memset(ptr %bssid, i32 255, i32 6)
  %57 = ptrtoint ptr %duration to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %duration, align 8
  %59 = load ptr, ptr %hw_scan_req499, align 4
  %duration160 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %59, i32 0, i32 1, i32 6
  %60 = ptrtoint ptr %duration160 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %58, ptr %duration160, align 8
  %61 = ptrtoint ptr %duration_mandatory to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %duration_mandatory, align 2, !range !124
  %63 = load ptr, ptr %hw_scan_req499, align 4
  %duration_mandatory164 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %63, i32 0, i32 1, i32 7
  %64 = ptrtoint ptr %duration_mandatory164 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %62, ptr %duration_mandatory164, align 2
  %65 = ptrtoint ptr %hw_scan_band to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %hw_scan_band, align 4
  %66 = ptrtoint ptr %n_6ghz_params to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_6ghz_params, align 4
  %68 = load ptr, ptr %hw_scan_req499, align 4
  %n_6ghz_params168 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %68, i32 0, i32 1, i32 20
  %69 = ptrtoint ptr %n_6ghz_params168 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %67, ptr %n_6ghz_params168, align 4
  %70 = ptrtoint ptr %scan_6ghz_params to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %scan_6ghz_params, align 8
  %72 = load ptr, ptr %hw_scan_req499, align 4
  %scan_6ghz_params171 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %72, i32 0, i32 1, i32 21
  %73 = ptrtoint ptr %scan_6ghz_params171 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %scan_6ghz_params171, align 8
  %74 = ptrtoint ptr %scan_6ghz to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %scan_6ghz, align 2, !range !124
  %76 = load ptr, ptr %hw_scan_req499, align 4
  %scan_6ghz175 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %76, i32 0, i32 1, i32 19
  %77 = ptrtoint ptr %scan_6ghz175 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %75, ptr %scan_6ghz175, align 2
  br label %do.body178

do.body178:                                       ; preds = %if.end140, %again.do.body178_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !136
  %78 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %req, ptr %scan_req, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  %79 = ptrtoint ptr %scan_sdata250 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %sdata, ptr %scan_sdata250, align 8
  %80 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags, align 4
  %and263 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %if.else269, label %if.then265

if.then265:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @get_random_bytes(ptr noundef %scan_addr, i32 noundef 6) #9
  %82 = ptrtoint ptr %mac_addr_mask to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %mac_addr_mask, align 1
  %neg.i = xor i8 %83, -1
  %84 = ptrtoint ptr %scan_addr to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %scan_addr, align 1
  %and.i = and i8 %85, %neg.i
  store i8 %and.i, ptr %scan_addr, align 1
  %86 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %mac_addr, align 1
  %88 = load i8, ptr %mac_addr_mask, align 1
  %and821.i = and i8 %88, %87
  %or22.i = or i8 %and821.i, %and.i
  store i8 %or22.i, ptr %scan_addr, align 1
  %89 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.1.i, align 1
  %neg.1.i = xor i8 %90, -1
  %91 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx1.1.i, align 1
  %and.1.i = and i8 %92, %neg.1.i
  store i8 %and.1.i, ptr %arrayidx1.1.i, align 1
  %93 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx4.1.i, align 1
  %95 = load i8, ptr %arrayidx.1.i, align 1
  %and821.1.i = and i8 %95, %94
  %or22.1.i = or i8 %and821.1.i, %and.1.i
  store i8 %or22.1.i, ptr %arrayidx1.1.i, align 1
  %96 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.2.i, align 1
  %neg.2.i = xor i8 %97, -1
  %98 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx1.2.i, align 1
  %and.2.i = and i8 %99, %neg.2.i
  store i8 %and.2.i, ptr %arrayidx1.2.i, align 1
  %100 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx4.2.i, align 1
  %102 = load i8, ptr %arrayidx.2.i, align 1
  %and821.2.i = and i8 %102, %101
  %or22.2.i = or i8 %and821.2.i, %and.2.i
  store i8 %or22.2.i, ptr %arrayidx1.2.i, align 1
  %103 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.3.i, align 1
  %neg.3.i = xor i8 %104, -1
  %105 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx1.3.i, align 1
  %and.3.i = and i8 %106, %neg.3.i
  store i8 %and.3.i, ptr %arrayidx1.3.i, align 1
  %107 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx4.3.i, align 1
  %109 = load i8, ptr %arrayidx.3.i, align 1
  %and821.3.i = and i8 %109, %108
  %or22.3.i = or i8 %and821.3.i, %and.3.i
  store i8 %or22.3.i, ptr %arrayidx1.3.i, align 1
  %110 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.4.i, align 1
  %neg.4.i = xor i8 %111, -1
  %112 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx1.4.i, align 1
  %and.4.i = and i8 %113, %neg.4.i
  store i8 %and.4.i, ptr %arrayidx1.4.i, align 1
  %114 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx4.4.i, align 1
  %116 = load i8, ptr %arrayidx.4.i, align 1
  %and821.4.i = and i8 %116, %115
  %or22.4.i = or i8 %and821.4.i, %and.4.i
  store i8 %or22.4.i, ptr %arrayidx1.4.i, align 1
  %117 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.5.i, align 1
  %neg.5.i = xor i8 %118, -1
  %119 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx1.5.i, align 1
  %and.5.i = and i8 %120, %neg.5.i
  store i8 %and.5.i, ptr %arrayidx1.5.i, align 1
  %121 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx4.5.i, align 1
  %123 = load i8, ptr %arrayidx.5.i, align 1
  %and821.5.i = and i8 %123, %122
  %or22.5.i = or i8 %and821.5.i, %and.5.i
  store i8 %or22.5.i, ptr %arrayidx1.5.i, align 1
  br label %if.end273

if.else269:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #11
  %124 = call ptr @memcpy(ptr %scan_addr, ptr %addr, i32 6)
  br label %if.end273

if.end273:                                        ; preds = %if.else269, %if.then265
  br i1 %hw_scan.0.off0, label %if.then275, label %if.else276

if.then275:                                       ; preds = %if.end273
  %125 = ptrtoint ptr %scanning303 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %scanning303, align 4
  %or.i = or i32 %126, 2
  store i32 %or.i, ptr %scanning303, align 4
  tail call void @ieee80211_recalc_idle(ptr noundef %1) #9
  %call309 = tail call fastcc zeroext i1 @ieee80211_prep_hw_scan(ptr noundef %sdata)
  br i1 %call309, label %if.then275.if.end333_crit_edge, label %do.end327, !prof !125

if.then275.if.end333_crit_edge:                   ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end333

if.else276:                                       ; preds = %if.end273
  %127 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp278 = icmp eq i32 %128, 1
  br i1 %cmp278, label %land.lhs.true280, label %if.else276.if.else302_crit_edge

if.else276.if.else302_crit_edge:                  ; preds = %if.else276
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else302

land.lhs.true280:                                 ; preds = %if.else276
  %129 = ptrtoint ptr %channels281 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %channels281, align 4
  %131 = ptrtoint ptr %_oper_chandef to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %_oper_chandef, align 4
  %cmp283 = icmp eq ptr %130, %132
  br i1 %cmp283, label %if.then285, label %land.lhs.true280.if.else302_crit_edge

land.lhs.true280.if.else302_crit_edge:            ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else302

if.then285:                                       ; preds = %land.lhs.true280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_delay) #9
  %133 = ptrtoint ptr %scanning303 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %scanning303, align 4
  %or.i476 = or i32 %134, 4
  store i32 %or.i476, ptr %scanning303, align 4
  tail call void @ieee80211_recalc_idle(ptr noundef %1) #9
  tail call fastcc void @drv_sw_scan_start(ptr noundef %1, ptr noundef %sdata, ptr noundef %scan_addr)
  tail call void @ieee80211_configure_filter(ptr noundef %1) #9
  %call289 = tail call i32 @ieee80211_hw_config(ptr noundef %1, i32 noundef 0) #9
  %135 = ptrtoint ptr %channels281 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %channels281, align 4
  %flags292 = getelementptr inbounds %struct.ieee80211_channel, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %flags292 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flags292, align 4
  %and293 = and i32 %138, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and293)
  %tobool294.not = icmp eq i32 %and293, 0
  br i1 %tobool294.not, label %lor.lhs.false, label %if.then285.if.end299_crit_edge

if.then285.if.end299_crit_edge:                   ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end299

lor.lhs.false:                                    ; preds = %if.then285
  %139 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool296.not = icmp eq i32 %140, 0
  br i1 %tobool296.not, label %lor.lhs.false.if.end299_crit_edge, label %if.else298

lor.lhs.false.if.end299_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end299

if.else298:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ieee80211_scan_state_send_probe(ptr noundef %1, ptr noundef nonnull %next_delay)
  br label %if.end299

if.end299:                                        ; preds = %if.else298, %lor.lhs.false.if.end299_crit_edge, %if.then285.if.end299_crit_edge
  %storemerge = phi i32 [ 3, %if.else298 ], [ 11, %lor.lhs.false.if.end299_crit_edge ], [ 11, %if.then285.if.end299_crit_edge ]
  %scan_work = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 84
  tail call void @ieee80211_queue_delayed_work(ptr noundef %1, ptr noundef %scan_work, i32 noundef %storemerge) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_delay) #9
  br label %cleanup379

if.else302:                                       ; preds = %land.lhs.true280.if.else302_crit_edge, %if.else276.if.else302_crit_edge
  %141 = ptrtoint ptr %scanning303 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %scanning303, align 4
  %or.i477 = or i32 %142, 1
  store i32 %or.i477, ptr %scanning303, align 4
  tail call void @ieee80211_recalc_idle(ptr noundef %1) #9
  %143 = ptrtoint ptr %use_chanctx.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %use_chanctx.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i481 = icmp eq i8 %144, 0
  br i1 %tobool.not.i481, label %if.end.i483, label %if.else302.if.end365_crit_edge

if.else302.if.end365_crit_edge:                   ; preds = %if.else302
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end365

if.end.i483:                                      ; preds = %if.else302
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 350) #9
  tail call fastcc void @trace_drv_sw_scan_start(ptr noundef %1, ptr noundef %sdata, ptr noundef %scan_addr) #9
  %145 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops, align 4
  %sw_scan_start.i.i = getelementptr inbounds %struct.ieee80211_ops, ptr %146, i32 0, i32 25
  %147 = ptrtoint ptr %sw_scan_start.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %sw_scan_start.i.i, align 4
  %tobool.not.i.i482 = icmp eq ptr %148, null
  br i1 %tobool.not.i.i482, label %if.end.i483.if.end345.thread507_crit_edge, label %if.then.i.i

if.end.i483.if.end345.thread507_crit_edge:        ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end345.thread507

if.then.i.i:                                      ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %148(ptr noundef %1, ptr noundef %vif.i, ptr noundef %scan_addr) #9
  br label %if.end345.thread507

if.end345.thread507:                              ; preds = %if.then.i.i, %if.end.i483.if.end345.thread507_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %149 = load volatile i32, ptr @jiffies, align 128
  %leave_oper_channel_time.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 82
  %150 = ptrtoint ptr %leave_oper_channel_time.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %leave_oper_channel_time.i, align 4
  %next_scan_state.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 83
  %151 = ptrtoint ptr %next_scan_state.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %next_scan_state.i, align 8
  %scan_channel_idx.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 74
  %152 = ptrtoint ptr %scan_channel_idx.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %scan_channel_idx.i, align 8
  tail call void @ieee80211_offchannel_stop_vifs(ptr noundef %1) #9
  tail call void @ieee80211_flush_queues(ptr noundef %1, ptr noundef null, i1 noundef zeroext false) #9
  tail call void @ieee80211_configure_filter(ptr noundef %1) #9
  %call.i484 = tail call i32 @ieee80211_hw_config(ptr noundef %1, i32 noundef 0) #9
  %scan_work.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 84
  tail call void @ieee80211_queue_delayed_work(ptr noundef %1, ptr noundef %scan_work.i, i32 noundef 0) #9
  br label %cleanup379

do.end327:                                        ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 807, i32 noundef 9, ptr noundef null) #9
  br label %if.end333

if.end333:                                        ; preds = %do.end327, %if.then275.if.end333_crit_edge
  %153 = ptrtoint ptr %hw_scan_req499 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hw_scan_req499, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 285) #9
  %155 = ptrtoint ptr %flags.i486 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags.i486, align 8
  %and.i487 = and i32 %156, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i487)
  %tobool.not.i488 = icmp eq i32 %and.i487, 0
  br i1 %tobool.not.i488, label %land.rhs.i, label %if.end345

land.rhs.i:                                       ; preds = %if.end333
  %.b67.i = load i1, ptr @drv_hw_scan.__already_done, align 1
  br i1 %.b67.i, label %land.rhs.i.if.end365_crit_edge, label %cleanup.critedge.i, !prof !125

land.rhs.i.if.end365_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end365

cleanup.critedge.i:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @drv_hw_scan.__already_done, align 1
  %157 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev.c.i, align 8
  %tobool24.not.c.i = icmp eq ptr %158, null
  %cond.c.i = select i1 %tobool24.not.c.i, ptr %name26.c.i, ptr %158
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %cond.c.i, i32 noundef %156) #9
  br label %if.end365

if.end345:                                        ; preds = %if.end333
  tail call fastcc void @trace_drv_hw_scan(ptr noundef %1, ptr noundef %sdata) #9
  %159 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops, align 4
  %hw_scan.i = getelementptr inbounds %struct.ieee80211_ops, ptr %160, i32 0, i32 21
  %161 = ptrtoint ptr %hw_scan.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hw_scan.i, align 4
  %call.i489 = tail call i32 %162(ptr noundef %1, ptr noundef %vif.i, ptr noundef %154) #9
  tail call fastcc void @trace_drv_return_int(ptr noundef %1, i32 noundef %call.i489) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i489)
  %tobool346.not = icmp eq i32 %call.i489, 0
  br i1 %tobool346.not, label %if.end345.cleanup379_crit_edge, label %if.end345.if.end365_crit_edge

if.end345.if.end365_crit_edge:                    ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end365

if.end345.cleanup379_crit_edge:                   ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup379

if.end365:                                        ; preds = %if.end345.if.end365_crit_edge, %cleanup.critedge.i, %land.rhs.i.if.end365_crit_edge, %if.else302.if.end365_crit_edge
  %rc.0505 = phi i32 [ %call.i489, %if.end345.if.end365_crit_edge ], [ -5, %cleanup.critedge.i ], [ -5, %land.rhs.i.if.end365_crit_edge ], [ -95, %if.else302.if.end365_crit_edge ]
  %163 = ptrtoint ptr %hw_scan_req499 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hw_scan_req499, align 4
  tail call void @kfree(ptr noundef %164) #9
  %165 = ptrtoint ptr %hw_scan_req499 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %hw_scan_req499, align 4
  %166 = ptrtoint ptr %scanning303 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %scanning303, align 4
  tail call void @ieee80211_recalc_idle(ptr noundef %1) #9
  %167 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %scan_req, align 8
  %168 = ptrtoint ptr %scan_sdata250 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr null, ptr %scan_sdata250, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rc.0505)
  %cmp369 = icmp eq i32 %rc.0505, 1
  %or.cond = and i1 %hw_scan.0.off0, %cmp369
  br i1 %or.cond, label %if.then371, label %if.end365.cleanup379_crit_edge

if.end365.cleanup379_crit_edge:                   ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup379

if.then371:                                       ; preds = %if.end365
  %169 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %vif.i, align 8
  %171 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %p2p.i, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool.not.i491 = icmp eq i8 %172, 0
  br i1 %tobool.not.i491, label %if.then371.if.end.i.i493_crit_edge, label %if.then.i.i492

if.then371.if.end.i.i493_crit_edge:               ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i493

if.then.i.i492:                                   ; preds = %if.then371
  %173 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %170, label %if.then.i.i492.if.end.i.i493_crit_edge [
    i32 2, label %if.then.i.i492.ieee80211_vif_type_p2p.exit_crit_edge
    i32 3, label %if.then.i.i492.cleanup379_crit_edge
  ]

if.then.i.i492.cleanup379_crit_edge:              ; preds = %if.then.i.i492
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup379

if.then.i.i492.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i492
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i492.if.end.i.i493_crit_edge:           ; preds = %if.then.i.i492
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i493

if.end.i.i493:                                    ; preds = %if.then.i.i492.if.end.i.i493_crit_edge, %if.then371.if.end.i.i493_crit_edge
  br label %ieee80211_vif_type_p2p.exit

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end.i.i493, %if.then.i.i492.ieee80211_vif_type_p2p.exit_crit_edge
  %retval.0.i.i = phi i32 [ %170, %if.end.i.i493 ], [ 8, %if.then.i.i492.ieee80211_vif_type_p2p.exit_crit_edge ]
  %cmp374 = icmp eq i32 %retval.0.i.i, 9
  br i1 %cmp374, label %ieee80211_vif_type_p2p.exit.cleanup379_crit_edge, label %ieee80211_vif_type_p2p.exit.again_crit_edge

ieee80211_vif_type_p2p.exit.again_crit_edge:      ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %again

ieee80211_vif_type_p2p.exit.cleanup379_crit_edge: ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup379

cleanup379:                                       ; preds = %ieee80211_vif_type_p2p.exit.cleanup379_crit_edge, %if.then.i.i492.cleanup379_crit_edge, %if.end365.cleanup379_crit_edge, %if.end345.cleanup379_crit_edge, %if.end345.thread507, %if.end299, %if.end8.i.cleanup379_crit_edge, %do.body35, %__ieee80211_can_leave_ch.exit, %if.end.i479.cleanup379_crit_edge, %if.end.cleanup379_crit_edge
  %retval.3 = phi i32 [ 0, %if.end299 ], [ 0, %do.body35 ], [ -16, %if.end.cleanup379_crit_edge ], [ -16, %__ieee80211_can_leave_ch.exit ], [ -16, %if.end.i479.cleanup379_crit_edge ], [ 0, %if.end345.thread507 ], [ -95, %if.then.i.i492.cleanup379_crit_edge ], [ 0, %if.end345.cleanup379_crit_edge ], [ -12, %if.end8.i.cleanup379_crit_edge ], [ %rc.0505, %if.end365.cleanup379_crit_edge ], [ -95, %ieee80211_vif_type_p2p.exit.cleanup379_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_scan_state_send_probe(ptr noundef %local, ptr nocapture noundef writeonly %next_delay) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %local, i32 0, i32 7
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b69 = load i1, ptr @ieee80211_scan_state_send_probe.__warned, align 1
  br i1 %.b69, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_scan_state_send_probe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 648, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %scan_req6 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 70
  %4 = ptrtoint ptr %scan_req6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scan_req6, align 8
  %no_cck = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %no_cck, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool7.not, i32 8192, i32 134225920
  %flags10 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags10, align 4
  %and = lshr i32 %9, 11
  %10 = and i32 %and, 2
  %and16 = lshr i32 %9, 9
  %11 = and i32 %and16, 4
  %12 = or i32 %11, %10
  %call.i70 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool25.not = icmp eq i32 %call.i70, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %do.end.do.end34_crit_edge

do.end.do.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

land.lhs.true26:                                  ; preds = %do.end
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true26.do.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b6768 = load i1, ptr @ieee80211_scan_state_send_probe.__warned.17, align 1
  br i1 %.b6768, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_scan_state_send_probe.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 659, ptr noundef nonnull @.str.5) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true26.do.end34_crit_edge, %do.end.do.end34_crit_edge
  %scan_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 85
  %13 = ptrtoint ptr %scan_sdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scan_sdata, align 8
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp72 = icmp sgt i32 %16, 0
  br i1 %cmp72, label %for.body.lr.ph, label %do.end34.for.end_crit_edge

do.end34.for.end_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end34
  %scan_addr = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 81
  %bssid = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 13
  %ie = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 4
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %5, i32 0, i32 5
  %arrayidx40 = getelementptr %struct.cfg80211_scan_request, ptr %5, i32 0, i32 9, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br label %for.body

for.body:                                         ; preds = %ieee80211_send_scan_probe_req.exit.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ieee80211_send_scan_probe_req.exit.for.body_crit_edge ]
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 8
  %arrayidx = getelementptr %struct.cfg80211_ssid, ptr %18, i32 %i.073
  %ssid_len = getelementptr %struct.cfg80211_ssid, ptr %18, i32 %i.073, i32 1
  %19 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ssid_len, align 1
  %conv = zext i8 %20 to i32
  %21 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ie, align 8
  %23 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ie_len, align 4
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx40, align 4
  %27 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chandef, align 4
  %call.i71 = tail call ptr @ieee80211_build_probe_req(ptr noundef %14, ptr noundef %scan_addr, ptr noundef %bssid, i32 noundef %26, ptr noundef %28, ptr noundef %arrayidx, i32 noundef %conv, ptr noundef %22, i32 noundef %24, i32 noundef %12) #9
  %tobool.not.i = icmp eq ptr %call.i71, null
  br i1 %tobool.not.i, label %for.body.ieee80211_send_scan_probe_req.exit_crit_edge, label %if.then.i

for.body.ieee80211_send_scan_probe_req.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_send_scan_probe_req.exit

if.then.i:                                        ; preds = %for.body
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i71, i32 0, i32 19
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %call4.i = tail call i32 @get_random_u32() #9
  %flags5.i = getelementptr inbounds %struct.sk_buff, ptr %call.i71, i32 0, i32 3, i32 32
  %31 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags5.i, align 8
  %or.i = or i32 %32, 128
  store i32 %or.i, ptr %flags5.i, align 8
  %call4.tr.i = trunc i32 %call4.i to i16
  %conv8.i = shl i16 %call4.tr.i, 4
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv8.i) #9
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %30, i32 0, i32 5
  %34 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %seq_ctrl.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %cb.i20.i = getelementptr inbounds %struct.sk_buff, ptr %call.i71, i32 0, i32 3
  %35 = ptrtoint ptr %cb.i20.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cb.i20.i, align 8
  %or11.i = or i32 %36, %spec.select
  store i32 %or11.i, ptr %cb.i20.i, align 8
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %28, align 4
  %39 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i, label %if.end.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.rcu_read_lock.exit.i.i_crit_edge
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %14, ptr noundef nonnull %call.i71, i32 noundef 7, i32 noundef %38) #9
  %call.i1.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i1.i.i, label %rcu_read_lock.exit.i.i.ieee80211_tx_skb_tid_band.exit.i_crit_edge, label %land.lhs.true.i4.i.i

rcu_read_lock.exit.i.i.ieee80211_tx_skb_tid_band.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_tx_skb_tid_band.exit.i

land.lhs.true.i4.i.i:                             ; preds = %rcu_read_lock.exit.i.i
  %call1.i2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %call1.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %land.lhs.true.i4.i.i.ieee80211_tx_skb_tid_band.exit.i_crit_edge, label %land.lhs.true2.i6.i.i

land.lhs.true.i4.i.i.ieee80211_tx_skb_tid_band.exit.i_crit_edge: ; preds = %land.lhs.true.i4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_tx_skb_tid_band.exit.i

land.lhs.true2.i6.i.i:                            ; preds = %land.lhs.true.i4.i.i
  %.b4.i5.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i.i, label %land.lhs.true2.i6.i.i.ieee80211_tx_skb_tid_band.exit.i_crit_edge, label %if.then.i7.i.i

land.lhs.true2.i6.i.i.ieee80211_tx_skb_tid_band.exit.i_crit_edge: ; preds = %land.lhs.true2.i6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_tx_skb_tid_band.exit.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true2.i6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %ieee80211_tx_skb_tid_band.exit.i

ieee80211_tx_skb_tid_band.exit.i:                 ; preds = %if.then.i7.i.i, %land.lhs.true2.i6.i.i.ieee80211_tx_skb_tid_band.exit.i_crit_edge, %land.lhs.true.i4.i.i.ieee80211_tx_skb_tid_band.exit.i_crit_edge, %rcu_read_lock.exit.i.i.ieee80211_tx_skb_tid_band.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !126
  %43 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i.i8.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i8.i.i to ptr
  %preempt_count.i.i.i.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i9.i.i, align 4
  %sub.i.i.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i9.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %ieee80211_send_scan_probe_req.exit

ieee80211_send_scan_probe_req.exit:               ; preds = %ieee80211_tx_skb_tid_band.exit.i, %for.body.ieee80211_send_scan_probe_req.exit_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %47 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_ssids, align 4
  %cmp = icmp slt i32 %inc, %48
  br i1 %cmp, label %ieee80211_send_scan_probe_req.exit.for.body_crit_edge, label %ieee80211_send_scan_probe_req.exit.for.end_crit_edge

ieee80211_send_scan_probe_req.exit.for.end_crit_edge: ; preds = %ieee80211_send_scan_probe_req.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ieee80211_send_scan_probe_req.exit.for.body_crit_edge: ; preds = %ieee80211_send_scan_probe_req.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %ieee80211_send_scan_probe_req.exit.for.end_crit_edge, %do.end34.for.end_crit_edge
  %49 = ptrtoint ptr %next_delay to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %next_delay, align 4
  %next_scan_state = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 83
  %50 = ptrtoint ptr %next_scan_state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %next_scan_state, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_scan_completed(ptr noundef %hw, i1 noundef zeroext %aborted) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scanning = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 67
  %0 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %scanning, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !132

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 415, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scanning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool33.not = icmp eq i32 %5, 0
  %lnot36 = xor i1 %aborted, true
  %spec.select = and i1 %tobool33.not, %lnot36
  br i1 %spec.select, label %do.end54, label %if.end.if.end60_crit_edge, !prof !132

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.end54:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 423, i32 noundef 9, ptr noundef null) #9
  br label %if.end60

if.end60:                                         ; preds = %do.end54, %if.end.if.end60_crit_edge
  %spec.select312 = or i1 %tobool33.not, %aborted
  %scan_req72 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 70
  %6 = ptrtoint ptr %scan_req72 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scan_req72, align 8
  %tobool73.not = icmp eq ptr %7, null
  br i1 %tobool73.not, label %do.end91, label %do.body108, !prof !132

do.end91:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef null) #9
  br label %cleanup246

do.body108:                                       ; preds = %if.end60
  %dep_map110 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 66, i32 5
  %call.i313 = tail call i32 @lock_is_held_type(ptr noundef %dep_map110, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313)
  %tobool112.not = icmp eq i32 %call.i313, 0
  br i1 %tobool112.not, label %land.lhs.true, label %do.body108.do.end120_crit_edge

do.body108.do.end120_crit_edge:                   ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end120

land.lhs.true:                                    ; preds = %do.body108
  %call113 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true.do.end120_crit_edge, label %land.lhs.true115

land.lhs.true.do.end120_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end120

land.lhs.true115:                                 ; preds = %land.lhs.true
  %.b311 = load i1, ptr @__ieee80211_scan_completed.__warned, align 1
  br i1 %.b311, label %land.lhs.true115.do.end120_crit_edge, label %if.then117

land.lhs.true115.do.end120_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end120

if.then117:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__ieee80211_scan_completed.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 430, ptr noundef nonnull @.str.5) #9
  br label %do.end120

do.end120:                                        ; preds = %if.then117, %land.lhs.true115.do.end120_crit_edge, %land.lhs.true.do.end120_crit_edge, %do.body108.do.end120_crit_edge
  %scan_sdata122 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 85
  %8 = ptrtoint ptr %scan_sdata122 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scan_sdata122, align 8
  %brmerge = select i1 %tobool.not, i1 true, i1 %spec.select312
  br i1 %brmerge, label %do.end120.if.end152_crit_edge, label %land.lhs.true126

do.end120.if.end152_crit_edge:                    ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

land.lhs.true126:                                 ; preds = %do.end120
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %12 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %land.lhs.true129, label %land.lhs.true126.if.end152_crit_edge

land.lhs.true126.if.end152_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

land.lhs.true129:                                 ; preds = %land.lhs.true126
  %call130 = tail call fastcc zeroext i1 @ieee80211_prep_hw_scan(ptr noundef %9)
  br i1 %call130, label %if.then131, label %land.lhs.true129.if.end152_crit_edge

land.lhs.true129.if.end152_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.then131:                                       ; preds = %land.lhs.true129
  %call.i314 = tail call i32 @lock_is_held_type(ptr noundef %dep_map110, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314)
  %tobool136.not = icmp eq i32 %call.i314, 0
  br i1 %tobool136.not, label %land.lhs.true137, label %if.then131.do.end145_crit_edge

if.then131.do.end145_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end145

land.lhs.true137:                                 ; preds = %if.then131
  %call138 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %land.lhs.true137.do.end145_crit_edge, label %land.lhs.true140

land.lhs.true137.do.end145_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end145

land.lhs.true140:                                 ; preds = %land.lhs.true137
  %.b299310 = load i1, ptr @__ieee80211_scan_completed.__warned.18, align 1
  br i1 %.b299310, label %land.lhs.true140.do.end145_crit_edge, label %if.then142

land.lhs.true140.do.end145_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end145

if.then142:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__ieee80211_scan_completed.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 439, ptr noundef nonnull @.str.5) #9
  br label %do.end145

do.end145:                                        ; preds = %if.then142, %land.lhs.true140.do.end145_crit_edge, %land.lhs.true137.do.end145_crit_edge, %if.then131.do.end145_crit_edge
  %13 = ptrtoint ptr %scan_sdata122 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scan_sdata122, align 8
  %hw_scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 71
  %15 = ptrtoint ptr %hw_scan_req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_scan_req, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 285) #9
  %flags.i315 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %flags.i315 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i315, align 8
  %and.i = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %drv_hw_scan.exit

land.rhs.i:                                       ; preds = %do.end145
  %.b67.i = load i1, ptr @drv_hw_scan.__already_done, align 1
  br i1 %.b67.i, label %land.rhs.i.cleanup_crit_edge, label %cleanup.critedge.i, !prof !125

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.critedge.i:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @drv_hw_scan.__already_done, align 1
  %dev.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 6
  %19 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.c.i, align 8
  %tobool24.not.c.i = icmp eq ptr %20, null
  %name26.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 10
  %cond.c.i = select i1 %tobool24.not.c.i, ptr %name26.c.i, ptr %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 287, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %cond.c.i, i32 noundef %18) #9
  br label %cleanup

drv_hw_scan.exit:                                 ; preds = %do.end145
  tail call fastcc void @trace_drv_hw_scan(ptr noundef %hw, ptr noundef %14) #9
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 8
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %hw_scan.i = getelementptr inbounds %struct.ieee80211_ops, ptr %22, i32 0, i32 21
  %23 = ptrtoint ptr %hw_scan.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_scan.i, align 4
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %14, i32 0, i32 59
  %call.i316 = tail call i32 %24(ptr noundef %hw, ptr noundef %vif.i, ptr noundef %16) #9
  tail call fastcc void @trace_drv_return_int(ptr noundef %hw, i32 noundef %call.i316) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316)
  %cmp149 = icmp eq i32 %call.i316, 0
  br i1 %cmp149, label %drv_hw_scan.exit.cleanup246_crit_edge, label %drv_hw_scan.exit.cleanup_crit_edge

drv_hw_scan.exit.cleanup_crit_edge:               ; preds = %drv_hw_scan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

drv_hw_scan.exit.cleanup246_crit_edge:            ; preds = %drv_hw_scan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup246

cleanup:                                          ; preds = %drv_hw_scan.exit.cleanup_crit_edge, %cleanup.critedge.i, %land.rhs.i.cleanup_crit_edge
  %scan_info = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 77
  %25 = call ptr @memset(ptr %scan_info, i32 0, i32 16)
  br label %if.end152

if.end152:                                        ; preds = %cleanup, %land.lhs.true129.if.end152_crit_edge, %land.lhs.true126.if.end152_crit_edge, %do.end120.if.end152_crit_edge
  %aborted.addr.2.off0 = phi i1 [ false, %land.lhs.true126.if.end152_crit_edge ], [ true, %cleanup ], [ false, %land.lhs.true129.if.end152_crit_edge ], [ %spec.select312, %do.end120.if.end152_crit_edge ]
  %hw_scan_req153 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 71
  %26 = ptrtoint ptr %hw_scan_req153 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_scan_req153, align 4
  tail call void @kfree(ptr noundef %27) #9
  %28 = ptrtoint ptr %hw_scan_req153 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %hw_scan_req153, align 4
  %call.i317 = tail call i32 @lock_is_held_type(ptr noundef %dep_map110, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i317)
  %tobool159.not = icmp eq i32 %call.i317, 0
  br i1 %tobool159.not, label %land.lhs.true160, label %if.end152.do.end168_crit_edge

if.end152.do.end168_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end168

land.lhs.true160:                                 ; preds = %if.end152
  %call161 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %land.lhs.true160.do.end168_crit_edge, label %land.lhs.true163

land.lhs.true160.do.end168_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end168

land.lhs.true163:                                 ; preds = %land.lhs.true160
  %.b300309 = load i1, ptr @__ieee80211_scan_completed.__warned.19, align 1
  br i1 %.b300309, label %land.lhs.true163.do.end168_crit_edge, label %if.then165

land.lhs.true163.do.end168_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end168

if.then165:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__ieee80211_scan_completed.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 456, ptr noundef nonnull @.str.5) #9
  br label %do.end168

do.end168:                                        ; preds = %if.then165, %land.lhs.true163.do.end168_crit_edge, %land.lhs.true160.do.end168_crit_edge, %if.end152.do.end168_crit_edge
  %29 = ptrtoint ptr %scan_req72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %scan_req72, align 8
  %int_scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 69
  %31 = ptrtoint ptr %int_scan_req to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %int_scan_req, align 4
  %cmp171.not = icmp eq ptr %30, %32
  br i1 %cmp171.not, label %do.end168.do.body184_crit_edge, label %if.then172

do.end168.do.body184_crit_edge:                   ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body184

if.then172:                                       ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #11
  %scan_info174 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 77
  %aborted175 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 77, i32 2
  %frombool176 = zext i1 %aborted.addr.2.off0 to i8
  %33 = ptrtoint ptr %aborted175 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool176, ptr %aborted175, align 2
  tail call void @cfg80211_scan_done(ptr noundef %30, ptr noundef %scan_info174) #9
  br label %do.body184

do.body184:                                       ; preds = %if.then172, %do.end168.do.body184_crit_edge
  %34 = ptrtoint ptr %scan_req72 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr null, ptr %scan_req72, align 8
  %35 = ptrtoint ptr %scan_sdata122 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr null, ptr %scan_sdata122, align 8
  %36 = ptrtoint ptr %scanning to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %scanning, align 4
  %scan_chandef = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 72
  %37 = ptrtoint ptr %scan_chandef to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %scan_chandef, align 8
  %call206 = tail call i32 @ieee80211_hw_config(ptr noundef %hw, i32 noundef 0) #9
  br i1 %tobool.not, label %if.then208, label %do.body184.if.end209_crit_edge

do.body184.if.end209_crit_edge:                   ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then208:                                       ; preds = %do.body184
  tail call void @ieee80211_configure_filter(ptr noundef %hw) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 361) #9
  tail call fastcc void @trace_drv_sw_scan_complete(ptr noundef %hw, ptr noundef %9) #9
  %ops.i318 = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 8
  %38 = ptrtoint ptr %ops.i318 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i318, align 4
  %sw_scan_complete.i = getelementptr inbounds %struct.ieee80211_ops, ptr %39, i32 0, i32 26
  %40 = ptrtoint ptr %sw_scan_complete.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sw_scan_complete.i, align 4
  %tobool.not.i319 = icmp eq ptr %41, null
  br i1 %tobool.not.i319, label %if.then208.drv_sw_scan_complete.exit_crit_edge, label %if.then.i

if.then208.drv_sw_scan_complete.exit_crit_edge:   ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #11
  br label %drv_sw_scan_complete.exit

if.then.i:                                        ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #11
  %vif.i320 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %9, i32 0, i32 59
  tail call void %41(ptr noundef %hw, ptr noundef %vif.i320) #9
  br label %drv_sw_scan_complete.exit

drv_sw_scan_complete.exit:                        ; preds = %if.then.i, %if.then208.drv_sw_scan_complete.exit_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %hw) #9
  tail call void @ieee80211_offchannel_return(ptr noundef %hw) #9
  br label %if.end209

if.end209:                                        ; preds = %drv_sw_scan_complete.exit, %do.body184.if.end209_crit_edge
  tail call void @ieee80211_recalc_idle(ptr noundef %hw) #9
  tail call void @ieee80211_mlme_notify_scan_completed(ptr noundef %hw) #9
  tail call void @ieee80211_ibss_notify_scan_completed(ptr noundef %hw) #9
  %call211 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %land.lhs.true213, label %if.end209.do.end221_crit_edge

if.end209.do.end221_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end221

land.lhs.true213:                                 ; preds = %if.end209
  %call214 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %land.lhs.true213.do.end221_crit_edge, label %land.lhs.true216

land.lhs.true213.do.end221_crit_edge:             ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end221

land.lhs.true216:                                 ; preds = %land.lhs.true213
  %.b301308 = load i1, ptr @__ieee80211_scan_completed.__warned.20, align 1
  br i1 %.b301308, label %land.lhs.true216.do.end221_crit_edge, label %if.then218

land.lhs.true216.do.end221_crit_edge:             ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end221

if.then218:                                       ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__ieee80211_scan_completed.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 486, ptr noundef nonnull @.str.21) #9
  br label %do.end221

do.end221:                                        ; preds = %if.then218, %land.lhs.true216.do.end221_crit_edge, %land.lhs.true213.do.end221_crit_edge, %if.end209.do.end221_crit_edge
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 62
  %42 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %42)
  %sdata.0328 = load volatile ptr, ptr %interfaces, align 8
  %cmp228.not329 = icmp eq ptr %sdata.0328, %interfaces
  br i1 %cmp228.not329, label %do.end221.for.end_crit_edge, label %do.end221.for.body_crit_edge

do.end221.for.body_crit_edge:                     ; preds = %do.end221
  br label %for.body

do.end221.for.end_crit_edge:                      ; preds = %do.end221
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end221.for.body_crit_edge
  %sdata.0330 = phi ptr [ %sdata.0, %for.inc.for.body_crit_edge ], [ %sdata.0328, %do.end221.for.body_crit_edge ]
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0330, i32 0, i32 9
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i321.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i321.not, label %for.body.for.inc_crit_edge, label %if.then230

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then230:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %local231 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0330, i32 0, i32 7
  %45 = ptrtoint ptr %local231 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %local231, align 4
  %work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.0330, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %46, ptr noundef %work) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then230, %for.body.for.inc_crit_edge
  %47 = ptrtoint ptr %sdata.0330 to i32
  call void @__asan_load4_noabort(i32 %47)
  %sdata.0 = load volatile ptr, ptr %sdata.0330, align 8
  %cmp228.not = icmp eq ptr %sdata.0, %interfaces
  br i1 %cmp228.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end221.for.end_crit_edge
  br i1 %tobool4.not, label %for.end.cleanup246_crit_edge, label %if.then244

for.end.cleanup246_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup246

if.then244:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ieee80211_start_next_roc(ptr noundef %hw) #9
  br label %cleanup246

cleanup246:                                       ; preds = %if.then244, %for.end.cleanup246_crit_edge, %drv_hw_scan.exit.cleanup246_crit_edge, %do.end91
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_request_scan(ptr noundef %sdata, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %call = tail call fastcc i32 @__ieee80211_start_scan(ptr noundef %sdata, ptr noundef %req)
  %2 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local, align 4
  %mtx2 = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 66
  tail call void @mutex_unlock(ptr noundef %mtx2) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_request_ibss_scan(ptr noundef %sdata, ptr nocapture noundef readonly %ssid, i8 noundef zeroext %ssid_len, ptr noundef readonly %channels, i32 noundef %n_channels, i32 noundef %scan_width) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 70
  %2 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scan_req, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %channels, null
  br i1 %tobool2.not, label %for.cond.preheader, label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_channels)
  %cmp78224.not = icmp eq i32 %n_channels, 0
  br i1 %cmp78224.not, label %for.cond77.preheader.land.rhs102_crit_edge, label %for.body79.lr.ph

for.cond77.preheader.land.rhs102_crit_edge:       ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs102

for.body79.lr.ph:                                 ; preds = %for.cond77.preheader
  %int_scan_req87 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 69
  br label %for.body79

for.cond.preheader:                               ; preds = %if.end
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %int_scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 69
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.cond.preheader
  %band.0233 = phi i32 [ 0, %for.cond.preheader ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %n_ch.0232 = phi i32 [ 0, %for.cond.preheader ], [ %n_ch.3, %for.inc28.for.body_crit_edge ]
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %5, i32 0, i32 53, i32 %band.0233
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %band.0233)
  %cmp5 = icmp eq i32 %band.0233, 3
  %or.cond = select i1 %tobool4.not, i1 true, i1 %cmp5
  br i1 %or.cond, label %for.body.for.inc28_crit_edge, label %if.end7

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

if.end7:                                          ; preds = %for.body
  %n_channels12 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %n_channels12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_channels12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14227 = icmp sgt i32 %9, 0
  br i1 %cmp14227, label %if.end7.for.body15_crit_edge, label %if.end7.for.inc28_crit_edge

if.end7.for.inc28_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

if.end7.for.body15_crit_edge:                     ; preds = %if.end7
  br label %for.body15

for.body15:                                       ; preds = %cleanup.for.body15_crit_edge, %if.end7.for.body15_crit_edge
  %i.0229 = phi i32 [ %inc27, %cleanup.for.body15_crit_edge ], [ 0, %if.end7.for.body15_crit_edge ]
  %n_ch.1228 = phi i32 [ %n_ch.2, %cleanup.for.body15_crit_edge ], [ %n_ch.0232, %if.end7.for.body15_crit_edge ]
  %10 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy, align 8
  %arrayidx19 = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 %band.0233
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx19, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %flags = getelementptr %struct.ieee80211_channel, ptr %15, i32 %i.0229, i32 4
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end24, label %for.body15.cleanup_crit_edge

for.body15.cleanup_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21 = getelementptr %struct.ieee80211_channel, ptr %15, i32 %i.0229
  %18 = ptrtoint ptr %int_scan_req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %int_scan_req, align 4
  %arrayidx26 = getelementptr %struct.cfg80211_scan_request, ptr %19, i32 0, i32 22, i32 %n_ch.1228
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx21, ptr %arrayidx26, align 4
  %inc = add i32 %n_ch.1228, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %for.body15.cleanup_crit_edge
  %n_ch.2 = phi i32 [ %inc, %if.end24 ], [ %n_ch.1228, %for.body15.cleanup_crit_edge ]
  %inc27 = add nuw nsw i32 %i.0229, 1
  %exitcond236.not = icmp eq i32 %inc27, %9
  br i1 %exitcond236.not, label %cleanup.for.inc28_crit_edge, label %cleanup.for.body15_crit_edge

cleanup.for.body15_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

cleanup.for.inc28_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

for.inc28:                                        ; preds = %cleanup.for.inc28_crit_edge, %if.end7.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %n_ch.3 = phi i32 [ %n_ch.0232, %for.body.for.inc28_crit_edge ], [ %n_ch.0232, %if.end7.for.inc28_crit_edge ], [ %n_ch.2, %cleanup.for.inc28_crit_edge ]
  %inc29 = add nuw nsw i32 %band.0233, 1
  %exitcond237.not = icmp eq i32 %inc29, 6
  br i1 %exitcond237.not, label %for.end30, label %for.inc28.for.body_crit_edge

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end30:                                        ; preds = %for.inc28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_ch.3)
  %cmp31 = icmp eq i32 %n_ch.3, 0
  br i1 %cmp31, label %land.rhs, label %for.end30.if.end153_crit_edge

for.end30.if.end153_crit_edge:                    ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

land.rhs:                                         ; preds = %for.end30
  %.b217 = load i1, ptr @ieee80211_request_ibss_scan.__already_done, align 1
  br i1 %.b217, label %land.rhs.unlock_crit_edge, label %if.then39, !prof !125

land.rhs.unlock_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then39:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_request_ibss_scan.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1190, i32 noundef 9, ptr noundef null) #9
  br label %unlock

for.body79:                                       ; preds = %for.inc91.for.body79_crit_edge, %for.body79.lr.ph
  %i.1226 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc92, %for.inc91.for.body79_crit_edge ]
  %n_ch.4225 = phi i32 [ 0, %for.body79.lr.ph ], [ %n_ch.5, %for.inc91.for.body79_crit_edge ]
  %arrayidx80 = getelementptr ptr, ptr %channels, i32 %i.1226
  %21 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx80, align 4
  %flags81 = getelementptr inbounds %struct.ieee80211_channel, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %flags81 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags81, align 4
  %and82 = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end85, label %for.body79.for.inc91_crit_edge

for.body79.for.inc91_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc91

if.end85:                                         ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %int_scan_req87 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %int_scan_req87, align 4
  %arrayidx89 = getelementptr %struct.cfg80211_scan_request, ptr %26, i32 0, i32 22, i32 %n_ch.4225
  %27 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %22, ptr %arrayidx89, align 4
  %inc90 = add i32 %n_ch.4225, 1
  br label %for.inc91

for.inc91:                                        ; preds = %if.end85, %for.body79.for.inc91_crit_edge
  %n_ch.5 = phi i32 [ %n_ch.4225, %for.body79.for.inc91_crit_edge ], [ %inc90, %if.end85 ]
  %inc92 = add nuw i32 %i.1226, 1
  %exitcond.not = icmp eq i32 %inc92, %n_channels
  br i1 %exitcond.not, label %for.end93, label %for.inc91.for.body79_crit_edge

for.inc91.for.body79_crit_edge:                   ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body79

for.end93:                                        ; preds = %for.inc91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_ch.5)
  %cmp95 = icmp eq i32 %n_ch.5, 0
  br i1 %cmp95, label %for.end93.land.rhs102_crit_edge, label %if.end150.critedge

for.end93.land.rhs102_crit_edge:                  ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs102

land.rhs102:                                      ; preds = %for.end93.land.rhs102_crit_edge, %for.cond77.preheader.land.rhs102_crit_edge
  %.b216218 = load i1, ptr @ieee80211_request_ibss_scan.__already_done.7, align 1
  br i1 %.b216218, label %land.rhs102.unlock_crit_edge, label %if.then113, !prof !125

land.rhs102.unlock_crit_edge:                     ; preds = %land.rhs102
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then113:                                       ; preds = %land.rhs102
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_request_ibss_scan.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1204, i32 noundef 9, ptr noundef null) #9
  br label %unlock

if.end150.critedge:                               ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #11
  %int_scan_req151 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 69
  br label %if.end153

if.end153:                                        ; preds = %if.end150.critedge, %for.end30.if.end153_crit_edge
  %int_scan_req.sink = phi ptr [ %int_scan_req151, %if.end150.critedge ], [ %int_scan_req, %for.end30.if.end153_crit_edge ]
  %n_ch.3.lcssa.sink = phi i32 [ %n_ch.5, %if.end150.critedge ], [ %n_ch.3, %for.end30.if.end153_crit_edge ]
  %28 = ptrtoint ptr %int_scan_req.sink to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %int_scan_req.sink, align 4
  %n_channels73 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %n_channels73 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %n_ch.3.lcssa.sink, ptr %n_channels73, align 8
  %scan_ssid = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 68
  %int_scan_req154 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 69
  %31 = ptrtoint ptr %int_scan_req154 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %int_scan_req154, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %scan_ssid, ptr %32, align 8
  %34 = load ptr, ptr %int_scan_req154, align 4
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %n_ssids to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %n_ssids, align 4
  %36 = load ptr, ptr %int_scan_req154, align 4
  %scan_width157 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %scan_width157 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %scan_width, ptr %scan_width157, align 4
  %38 = load ptr, ptr %int_scan_req154, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %41 = call ptr @memcpy(ptr %40, ptr %ssid, i32 32)
  %42 = load ptr, ptr %int_scan_req154, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %ssid_len165 = getelementptr inbounds %struct.cfg80211_ssid, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %ssid_len165 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %ssid_len, ptr %ssid_len165, align 1
  %46 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %local1, align 4
  %int_scan_req167 = getelementptr inbounds %struct.ieee80211_local, ptr %47, i32 0, i32 69
  %48 = ptrtoint ptr %int_scan_req167 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %int_scan_req167, align 4
  %call = tail call fastcc i32 @__ieee80211_start_scan(ptr noundef %sdata, ptr noundef %49)
  br label %unlock

unlock:                                           ; preds = %if.end153, %if.then113, %land.rhs102.unlock_crit_edge, %if.then39, %land.rhs.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ -16, %entry.unlock_crit_edge ], [ %call, %if.end153 ], [ -16, %if.then113 ], [ -16, %land.rhs102.unlock_crit_edge ], [ -16, %if.then39 ], [ -16, %land.rhs.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_scan_cancel(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 70
  %0 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_req, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %scanning = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 67
  %2 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %scanning, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %scanning, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end7_crit_edge, label %if.then5

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 5, ptr noundef %scanning) #9
  br label %out

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %8 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %scanning, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.end26, label %if.then11

if.then11:                                        ; preds = %if.end7
  tail call void @_set_bit(i32 noundef 5, ptr noundef %scanning) #9
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %cancel_hw_scan = getelementptr inbounds %struct.ieee80211_ops, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %cancel_hw_scan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cancel_hw_scan, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.then11.out_crit_edge, label %if.then14

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then14:                                        ; preds = %if.then11
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.then14.do.end_crit_edge

if.then14.do.end_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true18:                                  ; preds = %if.then14
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.do.end_crit_edge, label %land.lhs.true21

land.lhs.true18.do.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b43 = load i1, ptr @ieee80211_scan_cancel.__warned, align 1
  br i1 %.b43, label %land.lhs.true21.do.end_crit_edge, label %if.then23

land.lhs.true21.do.end_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_scan_cancel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1269, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then23, %land.lhs.true21.do.end_crit_edge, %land.lhs.true18.do.end_crit_edge, %if.then14.do.end_crit_edge
  %scan_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 85
  %15 = ptrtoint ptr %scan_sdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scan_sdata, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 299) #9
  %flags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end52.i

land.rhs.i:                                       ; preds = %do.end
  %.b64.i = load i1, ptr @drv_cancel_hw_scan.__already_done, align 1
  br i1 %.b64.i, label %land.rhs.i.out_crit_edge, label %return.critedge.i, !prof !125

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end52.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_drv_cancel_hw_scan(ptr noundef %local, ptr noundef %16) #9
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %cancel_hw_scan.i = getelementptr inbounds %struct.ieee80211_ops, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %cancel_hw_scan.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cancel_hw_scan.i, align 4
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 59
  tail call void %22(ptr noundef %local, ptr noundef %vif.i) #9
  tail call fastcc void @trace_drv_return_void(ptr noundef %local) #9
  br label %out

return.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @drv_cancel_hw_scan.__already_done, align 1
  %dev.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 6
  %23 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.c.i, align 8
  %tobool22.not.c.i = icmp eq ptr %24, null
  %name24.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 10
  %cond.c.i = select i1 %tobool22.not.c.i, ptr %name24.c.i, ptr %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 301, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %cond.c.i, i32 noundef %18) #9
  br label %out

if.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %scan_work = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 84
  %call27 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scan_work) #9
  %scan_info = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 77
  %25 = call ptr @memset(ptr %scan_info, i32 0, i32 16)
  tail call fastcc void @__ieee80211_scan_completed(ptr noundef %local, i1 noundef zeroext true)
  br label %out

out:                                              ; preds = %if.end26, %return.critedge.i, %if.end52.i, %land.rhs.i.out_crit_edge, %if.then11.out_crit_edge, %if.then5, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ieee80211_request_sched_scan_start(ptr noundef %sdata, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %sched_scan_ies = alloca %struct.ieee80211_scan_ies, align 4
  %chandef = alloca %struct.cfg80211_chan_def, align 4
  %rate_masks = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sched_scan_ies) #9
  %2 = call ptr @memset(ptr %sched_scan_ies, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rate_masks) #9
  %3 = call ptr @memset(ptr %rate_masks, i32 0, i32 24)
  %scan_ies_len = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 75
  %4 = ptrtoint ptr %scan_ies_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_ies_len, align 4
  %ie_len = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ie_len, align 4
  %add = add i32 %7, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !132

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1300, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %sched_scan_start = getelementptr inbounds %struct.ieee80211_ops, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %sched_scan_start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sched_scan_start, align 4
  %tobool25.not = icmp eq ptr %12, null
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %14, i32 0, i32 53, i32 0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool29.not = icmp eq ptr %16, null
  br i1 %tobool29.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then30

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then30:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %rate_masks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %rate_masks, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %for.cond.preheader.for.inc_crit_edge
  %num_bands.1 = phi i32 [ 1, %if.then30 ], [ 0, %for.cond.preheader.for.inc_crit_edge ]
  %bands_used.1 = phi i8 [ 1, %if.then30 ], [ 0, %for.cond.preheader.for.inc_crit_edge ]
  %18 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy, align 8
  %arrayidx.1 = getelementptr %struct.wiphy, ptr %19, i32 0, i32 53, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 4
  %tobool29.not.1 = icmp eq ptr %21, null
  br i1 %tobool29.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then30.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then30.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %conv31.1 = or i8 %bands_used.1, 2
  %arrayidx32.1 = getelementptr inbounds [6 x i32], ptr %rate_masks, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %arrayidx32.1, align 4
  %inc.1 = add nuw nsw i32 %num_bands.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then30.1, %for.inc.for.inc.1_crit_edge
  %num_bands.1.1 = phi i32 [ %inc.1, %if.then30.1 ], [ %num_bands.1, %for.inc.for.inc.1_crit_edge ]
  %bands_used.1.1 = phi i8 [ %conv31.1, %if.then30.1 ], [ %bands_used.1, %for.inc.for.inc.1_crit_edge ]
  %23 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy, align 8
  %arrayidx.2 = getelementptr %struct.wiphy, ptr %24, i32 0, i32 53, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.2, align 4
  %tobool29.not.2 = icmp eq ptr %26, null
  br i1 %tobool29.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then30.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then30.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %conv31.2 = or i8 %bands_used.1.1, 4
  %arrayidx32.2 = getelementptr inbounds [6 x i32], ptr %rate_masks, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %arrayidx32.2, align 4
  %inc.2 = add nuw nsw i32 %num_bands.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then30.2, %for.inc.1.for.inc.2_crit_edge
  %num_bands.1.2 = phi i32 [ %inc.2, %if.then30.2 ], [ %num_bands.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %bands_used.1.2 = phi i8 [ %conv31.2, %if.then30.2 ], [ %bands_used.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %28 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy, align 8
  %arrayidx.3 = getelementptr %struct.wiphy, ptr %29, i32 0, i32 53, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.3, align 4
  %tobool29.not.3 = icmp eq ptr %31, null
  br i1 %tobool29.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then30.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then30.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %conv31.3 = or i8 %bands_used.1.2, 8
  %arrayidx32.3 = getelementptr inbounds [6 x i32], ptr %rate_masks, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %arrayidx32.3, align 4
  %inc.3 = add nuw nsw i32 %num_bands.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then30.3, %for.inc.2.for.inc.3_crit_edge
  %num_bands.1.3 = phi i32 [ %inc.3, %if.then30.3 ], [ %num_bands.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %bands_used.1.3 = phi i8 [ %conv31.3, %if.then30.3 ], [ %bands_used.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %33 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy, align 8
  %arrayidx.4 = getelementptr %struct.wiphy, ptr %34, i32 0, i32 53, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.4, align 4
  %tobool29.not.4 = icmp eq ptr %36, null
  br i1 %tobool29.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then30.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then30.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %conv31.4 = or i8 %bands_used.1.3, 16
  %arrayidx32.4 = getelementptr inbounds [6 x i32], ptr %rate_masks, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %arrayidx32.4, align 4
  %inc.4 = add nuw nsw i32 %num_bands.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then30.4, %for.inc.3.for.inc.4_crit_edge
  %num_bands.1.4 = phi i32 [ %inc.4, %if.then30.4 ], [ %num_bands.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %bands_used.1.4 = phi i8 [ %conv31.4, %if.then30.4 ], [ %bands_used.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %38 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy, align 8
  %arrayidx.5 = getelementptr %struct.wiphy, ptr %39, i32 0, i32 53, i32 5
  %40 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.5, align 4
  %tobool29.not.5 = icmp eq ptr %41, null
  br i1 %tobool29.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then30.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then30.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %conv31.5 = or i8 %bands_used.1.4, 32
  %arrayidx32.5 = getelementptr inbounds [6 x i32], ptr %rate_masks, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %arrayidx32.5, align 4
  %inc.5 = add nuw nsw i32 %num_bands.1.4, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then30.5, %for.inc.4.for.inc.5_crit_edge
  %num_bands.1.5 = phi i32 [ %inc.5, %if.then30.5 ], [ %num_bands.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %bands_used.1.5 = phi i8 [ %conv31.5, %if.then30.5 ], [ %bands_used.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %flags35 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 7
  %43 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags35, align 8
  %and = lshr i32 %44, 11
  %45 = and i32 %and, 2
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 %num_bands.1.5) #9
  %47 = extractvalue { i32, i1 } %46, 1
  %48 = extractvalue { i32, i1 } %46, 0
  br i1 %47, label %for.inc.5.do.body138_crit_edge, label %if.end7.i.i, !prof !132

for.inc.5.do.body138_crit_edge:                   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body138

if.end7.i.i:                                      ; preds = %for.inc.5
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #12
  %tobool41.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool41.not, label %if.end7.i.i.do.body138_crit_edge, label %if.end43

if.end7.i.i.do.body138_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body138

if.end43:                                         ; preds = %if.end7.i.i
  %scan_width = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 4
  %49 = ptrtoint ptr %scan_width to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scan_width, align 4
  %51 = call ptr @memset(ptr %chandef, i32 0, i32 28)
  %52 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %50, label %if.end43.ieee80211_prepare_scan_chandef.exit_crit_edge [
    i32 2, label %if.end43.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.end43.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

if.end43.ieee80211_prepare_scan_chandef.exit_crit_edge: ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_prepare_scan_chandef.exit

sw.bb1.i:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %if.end43.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 7, %sw.bb1.i ], [ 6, %if.end43.sw.epilog.sink.split.i_crit_edge ]
  %width2.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %53 = ptrtoint ptr %width2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink.i, ptr %width2.i, align 4
  br label %ieee80211_prepare_scan_chandef.exit

ieee80211_prepare_scan_chandef.exit:              ; preds = %sw.epilog.sink.split.i, %if.end43.ieee80211_prepare_scan_chandef.exit_crit_edge
  %ie44 = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 5
  %54 = ptrtoint ptr %ie44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ie44, align 8
  %56 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ie_len, align 4
  %call46 = call i32 @ieee80211_build_preq_ies(ptr noundef %sdata, ptr noundef nonnull %call8.i.i, i32 noundef %48, ptr noundef nonnull %sched_scan_ies, ptr noundef %55, i32 noundef %57, i8 noundef zeroext %bands_used.1.5, ptr noundef nonnull %rate_masks, ptr noundef nonnull %chandef, i32 noundef %45) #9
  call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 317) #9
  %flags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 8
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %drv_sched_scan_start.exit

land.rhs.i:                                       ; preds = %ieee80211_prepare_scan_chandef.exit
  %.b67.i = load i1, ptr @drv_sched_scan_start.__already_done, align 1
  br i1 %.b67.i, label %land.rhs.i.out.thread215_crit_edge, label %cleanup.critedge.i, !prof !125

land.rhs.i.out.thread215_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread215

cleanup.critedge.i:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @drv_sched_scan_start.__already_done, align 1
  %dev.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %60 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.c.i, align 8
  %tobool24.not.c.i = icmp eq ptr %61, null
  %name26.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %cond.c.i = select i1 %tobool24.not.c.i, ptr %name26.c.i, ptr %61
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 319, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %cond.c.i, i32 noundef %59) #9
  br label %out.thread215

drv_sched_scan_start.exit:                        ; preds = %ieee80211_prepare_scan_chandef.exit
  call fastcc void @trace_drv_sched_scan_start(ptr noundef %1, ptr noundef %sdata) #9
  %62 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops, align 4
  %sched_scan_start.i = getelementptr inbounds %struct.ieee80211_ops, ptr %63, i32 0, i32 23
  %64 = ptrtoint ptr %sched_scan_start.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sched_scan_start.i, align 4
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %call.i201 = call i32 %65(ptr noundef %1, ptr noundef %vif.i, ptr noundef %req, ptr noundef nonnull %sched_scan_ies) #9
  call fastcc void @trace_drv_return_int(ptr noundef %1, i32 noundef %call.i201) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %cmp48 = icmp eq i32 %call.i201, 0
  br i1 %cmp48, label %out, label %drv_sched_scan_start.exit.out.thread215_crit_edge

drv_sched_scan_start.exit.out.thread215_crit_edge: ; preds = %drv_sched_scan_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread215

out.thread215:                                    ; preds = %drv_sched_scan_start.exit.out.thread215_crit_edge, %cleanup.critedge.i, %land.rhs.i.out.thread215_crit_edge
  %retval.0.i210.ph = phi i32 [ %call.i201, %drv_sched_scan_start.exit.out.thread215_crit_edge ], [ -5, %land.rhs.i.out.thread215_crit_edge ], [ -5, %cleanup.critedge.i ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %do.body138

out:                                              ; preds = %drv_sched_scan_start.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !138
  %sched_scan_sdata77 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 79
  %66 = ptrtoint ptr %sched_scan_sdata77 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %sdata, ptr %sched_scan_sdata77, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !139
  %sched_scan_req118 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 80
  %67 = ptrtoint ptr %sched_scan_req118 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %req, ptr %sched_scan_req118, align 8
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %cleanup

do.body138:                                       ; preds = %out.thread215, %if.end7.i.i.do.body138_crit_edge, %for.inc.5.do.body138_crit_edge
  %ret.0213 = phi i32 [ %retval.0.i210.ph, %out.thread215 ], [ -12, %if.end7.i.i.do.body138_crit_edge ], [ -12, %for.inc.5.do.body138_crit_edge ]
  %sched_scan_sdata139 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 79
  %68 = ptrtoint ptr %sched_scan_sdata139 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr null, ptr %sched_scan_sdata139, align 4
  %sched_scan_req152 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 80
  %69 = ptrtoint ptr %sched_scan_req152 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr null, ptr %sched_scan_req152, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body138, %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %if.end.cleanup_crit_edge ], [ %ret.0213, %do.body138 ], [ 0, %out ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rate_masks) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sched_scan_ies) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_build_preq_ies(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_request_sched_scan_start(ptr noundef %sdata, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %sched_scan_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %sched_scan_sdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sched_scan_sdata, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @__ieee80211_request_sched_scan_start(ptr noundef %sdata, ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_request_sched_scan_stop(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %sched_scan_stop = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %sched_scan_stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_scan_stop, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body3

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body3:                                         ; preds = %entry
  %sched_scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 80
  %4 = ptrtoint ptr %sched_scan_req to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %sched_scan_req, align 8
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %land.lhs.true, label %do.body3.do.end20_crit_edge

do.body3.do.end20_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

land.lhs.true:                                    ; preds = %do.body3
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end20_crit_edge, label %land.lhs.true15

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b52 = load i1, ptr @ieee80211_request_sched_scan_stop.__warned, align 1
  br i1 %.b52, label %land.lhs.true15.do.end20_crit_edge, label %if.then17

land.lhs.true15.do.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_request_sched_scan_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1382, ptr noundef nonnull @.str.5) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %land.lhs.true15.do.end20_crit_edge, %land.lhs.true.do.end20_crit_edge, %do.body3.do.end20_crit_edge
  %sched_scan_sdata21 = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 79
  %5 = ptrtoint ptr %sched_scan_sdata21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sched_scan_sdata21, align 4
  %tobool22.not = icmp eq ptr %6, null
  br i1 %tobool22.not, label %do.end20.out_crit_edge, label %if.then23

do.end20.out_crit_edge:                           ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then23:                                        ; preds = %do.end20
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 334) #9
  %flags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %drv_sched_scan_stop.exit

land.rhs.i:                                       ; preds = %if.then23
  %.b67.i = load i1, ptr @drv_sched_scan_stop.__already_done, align 1
  br i1 %.b67.i, label %land.rhs.i.out_crit_edge, label %cleanup.critedge.i, !prof !125

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cleanup.critedge.i:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @drv_sched_scan_stop.__already_done, align 1
  %dev.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.c.i, align 8
  %tobool24.not.c.i = icmp eq ptr %10, null
  %name26.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 10
  %cond.c.i = select i1 %tobool24.not.c.i, ptr %name26.c.i, ptr %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 336, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %cond.c.i, i32 noundef %8) #9
  br label %out

drv_sched_scan_stop.exit:                         ; preds = %if.then23
  tail call fastcc void @trace_drv_sched_scan_stop(ptr noundef %local, ptr noundef nonnull %6) #9
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %sched_scan_stop.i = getelementptr inbounds %struct.ieee80211_ops, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %sched_scan_stop.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sched_scan_stop.i, align 4
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %6, i32 0, i32 59
  %call.i53 = tail call i32 %14(ptr noundef %local, ptr noundef %vif.i) #9
  tail call fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %call.i53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool25.not = icmp eq i32 %call.i53, 0
  br i1 %tobool25.not, label %do.body32, label %drv_sched_scan_stop.exit.out_crit_edge

drv_sched_scan_stop.exit.out_crit_edge:           ; preds = %drv_sched_scan_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body32:                                        ; preds = %drv_sched_scan_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %sched_scan_sdata21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %sched_scan_sdata21, align 4
  br label %out

out:                                              ; preds = %do.body32, %drv_sched_scan_stop.exit.out_crit_edge, %cleanup.critedge.i, %land.rhs.i.out_crit_edge, %do.end20.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i53, %drv_sched_scan_stop.exit.out_crit_edge ], [ 0, %do.body32 ], [ -2, %do.end20.out_crit_edge ], [ -524, %entry.out_crit_edge ], [ -5, %land.rhs.i.out_crit_edge ], [ -5, %cleanup.critedge.i ]
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_sched_scan_results(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_api_sched_scan_results(ptr noundef %hw)
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy, align 8
  tail call void @cfg80211_sched_scan_results(ptr noundef %1, i64 noundef 0) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_api_sched_scan_results(ptr noundef %local) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_sched_scan_results, i32 0, i32 1), ptr blockaddress(@trace_api_sched_scan_results, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !140
  %call42 = tail call i32 @__traceiter_api_sched_scan_results(ptr noundef null, ptr noundef %local) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !141
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_sched_scan_results, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_sched_scan_results, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_api_sched_scan_results.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_api_sched_scan_results.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2199, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_results(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_sched_scan_end(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %sched_scan_sdata = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 79
  %0 = ptrtoint ptr %sched_scan_sdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sched_scan_sdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %do.body8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  br label %return

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %sched_scan_sdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %sched_scan_sdata, align 4
  %sched_scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 80
  %3 = ptrtoint ptr %sched_scan_req to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr null, ptr %sched_scan_req, align 8
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %5, i64 noundef 0) #9
  br label %return

return:                                           ; preds = %do.body8, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_sched_scan_stopped(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_sched_scan_stopped_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx.i = getelementptr i8, ptr %work, i32 -208
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #9
  %sched_scan_sdata.i = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %sched_scan_sdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sched_scan_sdata.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %do.body8.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mtx.i) #9
  br label %ieee80211_sched_scan_end.exit

do.body8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %sched_scan_sdata.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %sched_scan_sdata.i, align 4
  %sched_scan_req.i = getelementptr i8, ptr %work, i32 48
  %3 = ptrtoint ptr %sched_scan_req.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr null, ptr %sched_scan_req.i, align 8
  tail call void @mutex_unlock(ptr noundef %mtx.i) #9
  %wiphy.i = getelementptr i8, ptr %work, i32 -5808
  %4 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy.i, align 8
  tail call void @cfg80211_sched_scan_stopped(ptr noundef %5, i64 noundef 0) #9
  br label %ieee80211_sched_scan_end.exit

ieee80211_sched_scan_end.exit:                    ; preds = %do.body8.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_sched_scan_stopped(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_api_sched_scan_stopped(ptr noundef %hw)
  %in_reconfig = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 36
  %0 = ptrtoint ptr %in_reconfig to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_reconfig, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sched_scan_stopped_work = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %sched_scan_stopped_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_api_sched_scan_stopped(ptr noundef %local) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_sched_scan_stopped, i32 0, i32 1), ptr blockaddress(@trace_api_sched_scan_stopped, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !142
  %call42 = tail call i32 @__traceiter_api_sched_scan_stopped(ptr noundef null, ptr noundef %local) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !143
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_sched_scan_stopped, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_sched_scan_stopped, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_api_sched_scan_stopped.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_api_sched_scan_stopped.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2217, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_scan_completed(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_is_radar_required(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regulatory_pre_cac_allowed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drv_sw_scan_start(ptr noundef %local, ptr noundef %sdata, ptr noundef %mac_addr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 350) #9
  tail call fastcc void @trace_drv_sw_scan_start(ptr noundef %local, ptr noundef %sdata, ptr noundef %mac_addr)
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %sw_scan_start = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %sw_scan_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw_scan_start, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  tail call void %3(ptr noundef %local, ptr noundef %vif, ptr noundef %mac_addr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %local)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_configure_filter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_hw_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_prep_hw_scan(ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  %chandef = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #9
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b151 = load i1, ptr @ieee80211_prep_hw_scan.__warned, align 1
  br i1 %.b151, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_prep_hw_scan.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 350, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 70
  %2 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scan_req, align 8
  %scanning = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 67
  %4 = ptrtoint ptr %scanning to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %scanning, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %do.body19.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end9
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp157.not = icmp eq i32 %11, 0
  br i1 %cmp157.not, label %for.cond.preheader.if.end59_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end59_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hw_scan_req = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 71
  br label %for.body

do.body19.preheader:                              ; preds = %if.end9
  %hw_scan_band = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 73
  %n_channels25 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 2
  %hw_scan_req39 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 71
  %12 = ptrtoint ptr %hw_scan_band to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %hw_scan_band, align 4
  br label %do.body19

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %bands_used.0158 = phi i8 [ 0, %for.body.lr.ph ], [ %conv17, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfg80211_scan_request, ptr %3, i32 0, i32 22, i32 %i.0159
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %hw_scan_req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_scan_req, align 4
  %arrayidx14 = getelementptr %struct.ieee80211_scan_request, ptr %16, i32 0, i32 1, i32 22, i32 %i.0159
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %arrayidx14, align 4
  %18 = load ptr, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %shl = shl nuw i32 1, %20
  %21 = trunc i32 %shl to i8
  %conv17 = or i8 %bands_used.0158, %21
  %inc = add nuw i32 %i.0159, 1
  %22 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_channels, align 8
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end59_crit_edge

for.body.if.end59_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body19:                                        ; preds = %for.end53.do.body19_crit_edge, %do.body19.preheader
  %24 = phi i32 [ %.pr, %do.body19.preheader ], [ %inc55, %for.end53.do.body19_crit_edge ]
  %bands_used.1 = phi i8 [ 0, %do.body19.preheader ], [ %bands_used.2.lcssa, %for.end53.do.body19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp20 = icmp eq i32 %24, 6
  br i1 %cmp20, label %do.body19.cleanup_crit_edge, label %for.cond24.preheader

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond24.preheader:                             ; preds = %do.body19
  %25 = ptrtoint ptr %n_channels25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_channels25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp26161.not = icmp eq i32 %26, 0
  br i1 %cmp26161.not, label %for.cond24.preheader.for.end53_crit_edge, label %for.cond24.preheader.for.body28_crit_edge

for.cond24.preheader.for.body28_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body28

for.cond24.preheader.for.end53_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.body28:                                       ; preds = %for.inc51.for.body28_crit_edge, %for.cond24.preheader.for.body28_crit_edge
  %n_chans.0164 = phi i32 [ %n_chans.1, %for.inc51.for.body28_crit_edge ], [ 0, %for.cond24.preheader.for.body28_crit_edge ]
  %i.1163 = phi i32 [ %inc52, %for.inc51.for.body28_crit_edge ], [ 0, %for.cond24.preheader.for.body28_crit_edge ]
  %bands_used.2162 = phi i8 [ %bands_used.3, %for.inc51.for.body28_crit_edge ], [ %bands_used.1, %for.cond24.preheader.for.body28_crit_edge ]
  %arrayidx30 = getelementptr %struct.cfg80211_scan_request, ptr %3, i32 0, i32 22, i32 %i.1163
  %27 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx30, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = ptrtoint ptr %hw_scan_band to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hw_scan_band, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp33.not = icmp eq i32 %30, %32
  br i1 %cmp33.not, label %if.end36, label %for.body28.for.inc51_crit_edge

for.body28.for.inc51_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc51

if.end36:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %hw_scan_req39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_scan_req39, align 4
  %arrayidx42 = getelementptr %struct.ieee80211_scan_request, ptr %34, i32 0, i32 1, i32 22, i32 %n_chans.0164
  %35 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %28, ptr %arrayidx42, align 4
  %inc43 = add i32 %n_chans.0164, 1
  %36 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx30, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %shl47 = shl nuw i32 1, %39
  %40 = trunc i32 %shl47 to i8
  %conv50 = or i8 %bands_used.2162, %40
  br label %for.inc51

for.inc51:                                        ; preds = %if.end36, %for.body28.for.inc51_crit_edge
  %bands_used.3 = phi i8 [ %bands_used.2162, %for.body28.for.inc51_crit_edge ], [ %conv50, %if.end36 ]
  %n_chans.1 = phi i32 [ %n_chans.0164, %for.body28.for.inc51_crit_edge ], [ %inc43, %if.end36 ]
  %inc52 = add nuw i32 %i.1163, 1
  %41 = ptrtoint ptr %n_channels25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_channels25, align 8
  %cmp26 = icmp ult i32 %inc52, %42
  br i1 %cmp26, label %for.inc51.for.body28_crit_edge, label %for.inc51.for.end53_crit_edge

for.inc51.for.end53_crit_edge:                    ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.inc51.for.body28_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28

for.end53:                                        ; preds = %for.inc51.for.end53_crit_edge, %for.cond24.preheader.for.end53_crit_edge
  %bands_used.2.lcssa = phi i8 [ %bands_used.1, %for.cond24.preheader.for.end53_crit_edge ], [ %bands_used.3, %for.inc51.for.end53_crit_edge ]
  %n_chans.0.lcssa = phi i32 [ 0, %for.cond24.preheader.for.end53_crit_edge ], [ %n_chans.1, %for.inc51.for.end53_crit_edge ]
  %43 = ptrtoint ptr %hw_scan_band to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_scan_band, align 4
  %inc55 = add i32 %44, 1
  store i32 %inc55, ptr %hw_scan_band, align 4
  %tobool57.not = icmp eq i32 %n_chans.0.lcssa, 0
  br i1 %tobool57.not, label %for.end53.do.body19_crit_edge, label %for.end53.if.end59_crit_edge

for.end53.if.end59_crit_edge:                     ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.end53.do.body19_crit_edge:                    ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

if.end59:                                         ; preds = %for.end53.if.end59_crit_edge, %for.body.if.end59_crit_edge, %for.cond.preheader.if.end59_crit_edge
  %bands_used.4 = phi i8 [ 0, %for.cond.preheader.if.end59_crit_edge ], [ %bands_used.2.lcssa, %for.end53.if.end59_crit_edge ], [ %conv17, %for.body.if.end59_crit_edge ]
  %n_chans.2 = phi i32 [ 0, %for.cond.preheader.if.end59_crit_edge ], [ %n_chans.0.lcssa, %for.end53.if.end59_crit_edge ], [ %23, %for.body.if.end59_crit_edge ]
  %hw_scan_req60 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 71
  %45 = ptrtoint ptr %hw_scan_req60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_scan_req60, align 4
  %n_channels62 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %46, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %n_channels62 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %n_chans.2, ptr %n_channels62, align 8
  %scan_width = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 3
  %48 = ptrtoint ptr %scan_width to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %scan_width, align 4
  %50 = call ptr @memset(ptr %chandef, i32 0, i32 28)
  %51 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %49, label %if.end59.ieee80211_prepare_scan_chandef.exit_crit_edge [
    i32 2, label %if.end59.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.end59.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

if.end59.ieee80211_prepare_scan_chandef.exit_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_prepare_scan_chandef.exit

sw.bb1.i:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %if.end59.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 7, %sw.bb1.i ], [ 6, %if.end59.sw.epilog.sink.split.i_crit_edge ]
  %width2.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %52 = ptrtoint ptr %width2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink.i, ptr %width2.i, align 4
  br label %ieee80211_prepare_scan_chandef.exit

ieee80211_prepare_scan_chandef.exit:              ; preds = %sw.epilog.sink.split.i, %if.end59.ieee80211_prepare_scan_chandef.exit_crit_edge
  %flags63 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 8
  %53 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags63, align 4
  %and = lshr i32 %54, 11
  %55 = and i32 %and, 2
  %56 = ptrtoint ptr %hw_scan_req60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_scan_req60, align 4
  %ie = getelementptr inbounds %struct.ieee80211_scan_request, ptr %57, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ie, align 8
  %hw_scan_ies_bufsize = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 76
  %60 = ptrtoint ptr %hw_scan_ies_bufsize to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hw_scan_ies_bufsize, align 8
  %ie71 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 4
  %62 = ptrtoint ptr %ie71 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ie71, align 8
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 5
  %64 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ie_len, align 4
  %rates = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 9
  %call72 = call i32 @ieee80211_build_preq_ies(ptr noundef %sdata, ptr noundef %59, i32 noundef %61, ptr noundef %57, ptr noundef %63, i32 noundef %65, i8 noundef zeroext %bands_used.4, ptr noundef %rates, ptr noundef nonnull %chandef, i32 noundef %55) #9
  %66 = ptrtoint ptr %hw_scan_req60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw_scan_req60, align 4
  %ie_len75 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %67, i32 0, i32 1, i32 5
  %68 = ptrtoint ptr %ie_len75 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call72, ptr %ie_len75, align 4
  %no_cck = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 18
  %69 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %no_cck, align 1, !range !124
  %71 = load ptr, ptr %hw_scan_req60, align 4
  %no_cck79 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %71, i32 0, i32 1, i32 18
  %72 = ptrtoint ptr %no_cck79 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %70, ptr %no_cck79, align 1
  %73 = load ptr, ptr %hw_scan_req60, align 4
  %mac_addr = getelementptr inbounds %struct.ieee80211_scan_request, ptr %73, i32 0, i32 1, i32 11
  %mac_addr83 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 11
  %74 = ptrtoint ptr %mac_addr83 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mac_addr83, align 4
  %76 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.cfg80211_scan_request, ptr %3, i32 0, i32 11, i32 4
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_scan_request, ptr %73, i32 0, i32 1, i32 11, i32 4
  %79 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %add.ptr1.i, align 2
  %80 = load ptr, ptr %hw_scan_req60, align 4
  %mac_addr_mask = getelementptr inbounds %struct.ieee80211_scan_request, ptr %80, i32 0, i32 1, i32 12
  %mac_addr_mask88 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 12
  %81 = ptrtoint ptr %mac_addr_mask88 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mac_addr_mask88, align 4
  %83 = ptrtoint ptr %mac_addr_mask to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %mac_addr_mask, align 4
  %add.ptr.i152 = getelementptr %struct.cfg80211_scan_request, ptr %3, i32 0, i32 12, i32 4
  %84 = ptrtoint ptr %add.ptr.i152 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %add.ptr.i152, align 2
  %add.ptr1.i153 = getelementptr %struct.ieee80211_scan_request, ptr %80, i32 0, i32 1, i32 12, i32 4
  %86 = ptrtoint ptr %add.ptr1.i153 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %add.ptr1.i153, align 2
  %87 = load ptr, ptr %hw_scan_req60, align 4
  %bssid = getelementptr inbounds %struct.ieee80211_scan_request, ptr %87, i32 0, i32 1, i32 13
  %bssid93 = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 13
  %88 = ptrtoint ptr %bssid93 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bssid93, align 4
  %90 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %bssid, align 4
  %add.ptr.i154 = getelementptr %struct.cfg80211_scan_request, ptr %3, i32 0, i32 13, i32 4
  %91 = ptrtoint ptr %add.ptr.i154 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %add.ptr.i154, align 2
  %add.ptr1.i155 = getelementptr %struct.ieee80211_scan_request, ptr %87, i32 0, i32 1, i32 13, i32 4
  %93 = ptrtoint ptr %add.ptr1.i155 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %add.ptr1.i155, align 2
  br label %cleanup

cleanup:                                          ; preds = %ieee80211_prepare_scan_chandef.exit, %do.body19.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %ieee80211_prepare_scan_chandef.exit ], [ false, %do.end.cleanup_crit_edge ], [ false, %do.body19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #9
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_sw_scan_start(ptr noundef %local, ptr noundef %sdata, ptr noundef %mac_addr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sw_scan_start, i32 0, i32 1), ptr blockaddress(@trace_drv_sw_scan_start, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !144
  %call42 = tail call i32 @__traceiter_drv_sw_scan_start(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %mac_addr) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !145
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sw_scan_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sw_scan_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_sw_scan_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_sw_scan_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 692, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_return_void(ptr noundef %local) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), ptr blockaddress(@trace_drv_return_void, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !146
  %call42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %local) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !147
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_void.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_return_void.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 205, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sw_scan_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_hw_scan(ptr noundef %local, ptr noundef %sdata) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_hw_scan, i32 0, i32 1), ptr blockaddress(@trace_drv_hw_scan, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !148
  %call42 = tail call i32 @__traceiter_drv_hw_scan(ptr noundef null, ptr noundef %local, ptr noundef %sdata) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !149
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_hw_scan, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_hw_scan, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_hw_scan.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_hw_scan.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 651, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %ret) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), ptr blockaddress(@trace_drv_return_int, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !150
  %call42 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %local, i32 noundef %ret) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !151
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 219, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_hw_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_offchannel_stop_vifs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_s1g_channel_width(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_build_probe_req(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_offchannel_return(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_scan_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mlme_notify_scan_completed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ibss_notify_scan_completed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_start_next_roc(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_sw_scan_complete(ptr noundef %local, ptr noundef %sdata) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sw_scan_complete, i32 0, i32 1), ptr blockaddress(@trace_drv_sw_scan_complete, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !152
  %call42 = tail call i32 @__traceiter_drv_sw_scan_complete(ptr noundef null, ptr noundef %local, ptr noundef %sdata) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !153
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sw_scan_complete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sw_scan_complete, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_sw_scan_complete.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_sw_scan_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 698, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sw_scan_complete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_cancel_hw_scan(ptr noundef %local, ptr noundef %sdata) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_cancel_hw_scan, i32 0, i32 1), ptr blockaddress(@trace_drv_cancel_hw_scan, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !154
  %call42 = tail call i32 @__traceiter_drv_cancel_hw_scan(ptr noundef null, ptr noundef %local, ptr noundef %sdata) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !155
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_cancel_hw_scan, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_cancel_hw_scan, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_cancel_hw_scan.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_cancel_hw_scan.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 657, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_cancel_hw_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_sched_scan_start(ptr noundef %local, ptr noundef %sdata) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sched_scan_start, i32 0, i32 1), ptr blockaddress(@trace_drv_sched_scan_start, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !156
  %call42 = tail call i32 @__traceiter_drv_sched_scan_start(ptr noundef null, ptr noundef %local, ptr noundef %sdata) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !157
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sched_scan_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sched_scan_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_sched_scan_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_sched_scan_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 663, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sched_scan_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_sched_scan_stop(ptr noundef %local, ptr noundef %sdata) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sched_scan_stop, i32 0, i32 1), ptr blockaddress(@trace_drv_sched_scan_stop, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !127

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !125

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !158
  %call42 = tail call i32 @__traceiter_drv_sched_scan_stop(ptr noundef null, ptr noundef %local, ptr noundef %sdata) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !159
  %13 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !125

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !113) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sched_scan_stop, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sched_scan_stop, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_sched_scan_stop.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_sched_scan_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 669, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !113) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_sched_scan_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_sched_scan_results(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_sched_scan_stopped(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !50, !52, !54, !55, !57, !58, !60, !62, !63, !65, !66, !68, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !96, !97, !99, !101, !102, !104, !106, !107, !109, !110, !112}
!llvm.named.register.sp = !{!113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/mac80211/scan.c", i32 178, i32 15}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/mac80211/scan.c", i32 278, i32 11}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/mac80211/scan.c", i32 279, i32 11}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/mac80211/scan.c", i32 289, i32 14}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/mac80211/scan.c", i32 290, i32 20}
!12 = !{ptr @__ksymtab_ieee80211_scan_completed, !13, !"__ksymtab_ieee80211_scan_completed", i1 false, i1 false}
!13 = !{!"../net/mac80211/scan.c", i32 510, i32 1}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/mac80211/scan.c", i32 601, i32 5}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/mac80211/scan.c", i32 1058, i32 10}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/mac80211/scan.c", i32 1060, i32 13}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../net/mac80211/scan.c", i32 1190, i32 7}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../net/mac80211/scan.c", i32 1204, i32 7}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/mac80211/scan.c", i32 1268, i32 5}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/mac80211/scan.c", i32 1381, i32 21}
!29 = !{ptr @__ksymtab_ieee80211_sched_scan_results, !30, !"__ksymtab_ieee80211_sched_scan_results", i1 false, i1 false}
!30 = !{!"../net/mac80211/scan.c", i32 1402, i32 1}
!31 = !{ptr @__ksymtab_ieee80211_sched_scan_stopped, !32, !"__ksymtab_ieee80211_sched_scan_stopped", i1 false, i1 false}
!32 = !{!"../net/mac80211/scan.c", i32 1448, i32 1}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../net/mac80211/ieee80211_i.h", i32 1762, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../net/mac80211/trace.h", i32 2162, i32 1}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/mac80211/driver-ops.h", i32 350, i32 2}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../net/mac80211/trace.h", i32 671, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../net/mac80211/trace.h", i32 202, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/mac80211/scan.c", i32 349, i32 8}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../net/mac80211/driver-ops.h", i32 287, i32 7}
!62 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../net/mac80211/trace.h", i32 647, i32 1}
!65 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../net/mac80211/trace.h", i32 207, i32 1}
!68 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../net/mac80211/scan.c", i32 885, i32 13}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/net/sch_generic.h", i32 777, i32 27}
!73 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../net/mac80211/scan.c", i32 926, i32 13}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../net/mac80211/scan.c", i32 647, i32 13}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../net/mac80211/scan.c", i32 658, i32 10}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../net/mac80211/scan.c", i32 429, i32 15}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../net/mac80211/scan.c", i32 438, i32 4}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../net/mac80211/scan.c", i32 455, i32 13}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../net/mac80211/scan.c", i32 486, i32 2}
!88 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../net/mac80211/trace.h", i32 694, i32 1}
!91 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../net/mac80211/driver-ops.h", i32 301, i32 7}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../net/mac80211/trace.h", i32 653, i32 1}
!96 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../net/mac80211/driver-ops.h", i32 319, i32 7}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../net/mac80211/trace.h", i32 659, i32 1}
!101 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../net/mac80211/driver-ops.h", i32 336, i32 7}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../net/mac80211/trace.h", i32 665, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../net/mac80211/trace.h", i32 2183, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../net/mac80211/trace.h", i32 2201, i32 1}
!112 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!113 = !{!"sp"}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2149684812}
!124 = !{i8 0, i8 2}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2149685078}
!127 = !{i64 2148869990, i64 2148869995, i64 2148870008, i64 2148870052, i64 2148870086, i64 2148870107}
!128 = !{i64 2160928956}
!129 = !{i64 2160929183}
!130 = !{i64 2149693371}
!131 = !{i64 2149694407}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2161836777}
!134 = !{i64 2161782924}
!135 = !{i64 2161790783}
!136 = !{i64 2161799074}
!137 = !{i64 2161806933}
!138 = !{i64 2161849245}
!139 = !{i64 2161857564}
!140 = !{i64 2160949705}
!141 = !{i64 2160949922}
!142 = !{i64 2160966509}
!143 = !{i64 2160966726}
!144 = !{i64 2159575334}
!145 = !{i64 2159575575}
!146 = !{i64 2159071411}
!147 = !{i64 2159071614}
!148 = !{i64 2159502233}
!149 = !{i64 2159502442}
!150 = !{i64 2159087701}
!151 = !{i64 2159087912}
!152 = !{i64 2159592674}
!153 = !{i64 2159592901}
!154 = !{i64 2159519047}
!155 = !{i64 2159519270}
!156 = !{i64 2159540376}
!157 = !{i64 2159540603}
!158 = !{i64 2159557714}
!159 = !{i64 2159557939}
